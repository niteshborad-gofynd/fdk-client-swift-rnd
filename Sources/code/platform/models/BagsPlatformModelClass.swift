import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: Bags
         Used By: Order
     */

    class Bags: Codable {
        public var item: BagItem?

        public var id: Int?

        public enum CodingKeys: String, CodingKey {
            case item

            case id
        }

        public init(id: Int?, item: BagItem?) {
            self.item = item

            self.id = id
        }

        public func duplicate() -> Bags {
            let dict = self.dictionary!
            let copy = Bags(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                item = try container.decode(BagItem.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}