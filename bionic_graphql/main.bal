import ballerina/graphql;
import ballerina/http;

public type Campaign record {|
    string? id?;
    string? createdAt?;
    string? Company?;
    string? CampaignName?;
    string? Advertiser?;
|};

configurable string backendUrl = "http://3.19.66.80:8080/bionic";

http:Client bionicBackendClient = check new (backendUrl);

service graphql:Service /bionic on new graphql:Listener(4000) {

    resource function get campaign(string id) returns Campaign|error {

        Campaign campaign = check bionicBackendClient->/campaigns(id = id);
        return campaign;
    }

    resource function get campaigns(string? company, string? advertiser, string? campaignName) returns Campaign[]|error {
        Campaign[] allCampaigns = check bionicBackendClient->/campaigns;

        if (company == null && advertiser == null && campaignName == null) {
            return allCampaigns;
        }

        Campaign[] campaigns = [];
        if (company != null) {
            campaigns = from Campaign campaign in allCampaigns
                where campaign?.Company == company
                select campaign;
        }

        if (advertiser != null) {
            Campaign[] filteredCampaigns = from Campaign campaign in allCampaigns
                where campaign?.Advertiser == advertiser
                select campaign;

            foreach Campaign filteredCampaign in filteredCampaigns {
                boolean isDuplicate = false;
                foreach Campaign campaign in campaigns {
                    if (filteredCampaign?.id == campaign?.id) {
                        isDuplicate = true;
                        break;
                    }
                }
                if (!isDuplicate) {
                    campaigns.push(filteredCampaign);
                }
            }
        }

        if (campaignName != null) {
            Campaign[] filteredCampaigns = from Campaign campaign in allCampaigns
                where campaign?.CampaignName == campaignName
                select campaign;

            foreach Campaign filteredCampaign in filteredCampaigns {
                boolean isDuplicate = false;
                foreach Campaign campaign in campaigns {
                    if (filteredCampaign?.id == campaign?.id) {
                        isDuplicate = true;
                        break;
                    }
                }
                if (!isDuplicate) {
                    campaigns.push(filteredCampaign);
                }
            }
        }

        return campaigns;
    }

}

