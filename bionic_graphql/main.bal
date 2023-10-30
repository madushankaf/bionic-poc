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

    resource function get campaigns() returns Campaign[]|error {
        Campaign[] campaigns = check bionicBackendClient->/campaigns;
        return campaigns;
    }

}

