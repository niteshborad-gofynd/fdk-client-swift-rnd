import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: PayloadEmailProviderStructure
         Used By: Communication
     */

    class PayloadEmailProviderStructure: Codable {
        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"
        }

        public init(id: String?) {
            self.id = id
        }

        public func duplicate() -> PayloadEmailProviderStructure {
            let dict = self.dictionary!
            let copy = PayloadEmailProviderStructure(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
