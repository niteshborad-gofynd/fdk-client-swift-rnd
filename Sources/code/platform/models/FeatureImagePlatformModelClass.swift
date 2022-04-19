import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: FeatureImage
         Used By: Content
     */

    class FeatureImage: Codable {
        public var secureUrl: String?

        public enum CodingKeys: String, CodingKey {
            case secureUrl = "secure_url"
        }

        public init(secureUrl: String?) {
            self.secureUrl = secureUrl
        }

        public func duplicate() -> FeatureImage {
            let dict = self.dictionary!
            let copy = FeatureImage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                secureUrl = try container.decode(String.self, forKey: .secureUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)
        }
    }
}