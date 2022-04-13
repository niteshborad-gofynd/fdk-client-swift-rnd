import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: SignUrlResponse
         Used By: FileStorage
     */

    class SignUrlResponse: Codable {
        public var urls: [Urls]

        public enum CodingKeys: String, CodingKey {
            case urls
        }

        public init(urls: [Urls]) {
            self.urls = urls
        }

        public func duplicate() -> SignUrlResponse {
            let dict = self.dictionary!
            let copy = SignUrlResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            urls = try container.decode([Urls].self, forKey: .urls)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(urls, forKey: .urls)
        }
    }
}
