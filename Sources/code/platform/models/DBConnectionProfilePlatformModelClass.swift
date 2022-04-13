import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: DBConnectionProfile
         Used By: Inventory
     */

    class DBConnectionProfile: Codable {
        public var inventory: String?

        public enum CodingKeys: String, CodingKey {
            case inventory
        }

        public init(inventory: String?) {
            self.inventory = inventory
        }

        public func duplicate() -> DBConnectionProfile {
            let dict = self.dictionary!
            let copy = DBConnectionProfile(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                inventory = try container.decode(String.self, forKey: .inventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(inventory, forKey: .inventory)
        }
    }
}
