

class APIClient {
    static func execute(config: Setup, method: String, url: String, query: [String: Any]?, body: [String: Any]?, onResponse: @escaping OnResponse) {
        let headers = [
            (key: "x-application-id", value: config.applicationID),
            (key: "x-application-token", value: config.applicationToken),
            (key: "Authorization", value: "Bearer " + "\(config.applicationID):\(config.applicationToken)".asBase64)
        ]
        AlmofireHelper.request(url, query: query, parameters: body, type: method, headers: headers, onResponse: onResponse)
    }
}