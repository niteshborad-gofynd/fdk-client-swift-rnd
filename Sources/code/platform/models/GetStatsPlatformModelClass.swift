import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: GetStats
         Used By: Communication
     */

    class GetStats: Codable {
        public var items: [Stats]?

        public enum CodingKeys: String, CodingKey {
            case items
        }

        public init(items: [Stats]?) {
            self.items = items
        }

        public func duplicate() -> GetStats {
            let dict = self.dictionary!
            let copy = GetStats(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([Stats].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}