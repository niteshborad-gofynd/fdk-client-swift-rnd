import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: SaveSubscriptionSetupIntentResponse
         Used By: Payment
     */

    class SaveSubscriptionSetupIntentResponse: Codable {
        public var success: Bool

        public var data: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case success

            case data
        }

        public init(data: [String: Any], success: Bool) {
            self.success = success

            self.data = data
        }

        public func duplicate() -> SaveSubscriptionSetupIntentResponse {
            let dict = self.dictionary!
            let copy = SaveSubscriptionSetupIntentResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode([String: Any].self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}