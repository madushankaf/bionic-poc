import ballerina/graphql;
import ballerina/http;

public type Campaign record {|
    string id;
    string createdAt;
    string Company;
    string CampaignName;
    string Advertiser;
|};

configurable string backendUrl ="http://3.19.66.80:8080/bionic";

http:Client bionicBackendClient = check new (backendUrl);

service graphql:Service /bionic on new graphql:Listener(4000) {

    resource function get campaigns(string? id) returns Campaign|Campaign[]|error {
        if id == () || id.length() < 1 {
            Campaign[] campaigns = check bionicBackendClient->/campaigns;
            return campaigns;
        }
        Campaign campaign = check bionicBackendClient->/campaigns(id = id);
        return campaign;
    }

}

