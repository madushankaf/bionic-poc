import ballerina/graphql;
import ballerina/http;

public type Campaign record {|
    string id;
    string createdAt;
    string Company;
    string CampaignName;
    string Advertiser;
|};

configurable string backendUrl = "http://3.19.66.80:8080/bionic";

http:Client bionicBackendClient = check new (backendUrl);

service graphql:Service /bionic on new graphql:Listener(4000) {

    resource function get campaign(string id) returns Campaign|error {

        Campaign campaign = check bionicBackendClient->/campaigns(id = id);
        return campaign;
    }

    resource function get campaigns(string? company, string? advertiser, string? campaignName) returns Campaign[]|error {
        Campaign[] campaigns = check bionicBackendClient->/campaigns;

        if (company != null) {
            campaigns = from Campaign campaign in campaigns
                where campaign.Company == company
                select campaign;
        }

        if (advertiser != null) {
            campaigns = from Campaign campaign in campaigns
                where campaign.Advertiser == advertiser
                select campaign;

        }

        if (campaignName != null) {
            campaigns = from Campaign campaign in campaigns
                where campaign.CampaignName == campaignName
                select campaign;
        }

        return campaigns;
    }

}

