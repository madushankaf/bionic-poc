import ballerina/http;

//import ballerina/log;

service /bionic on new http:Listener(8080) {

    resource function get campaigns(string? id) returns json|http:Ok|http:InternalServerError|error? {

        return http:OK;

    }

    resource function post campaigns(@http:Payload json campaign) returns json|http:Ok|http:InternalServerError|error? {
        return http:OK;
    }

    resource function put campaigns(string id, @http:Payload json campaign) returns json|http:Ok|http:InternalServerError|error? {
        return http:OK;
    }

    resource function delete campaigns(string id) returns json|http:Ok|http:InternalServerError|error? {
        return http:OK;
    }

}
