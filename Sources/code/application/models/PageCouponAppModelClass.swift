import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: PageCoupon
         Used By: Cart
     */
    class PageCoupon: Codable {
        public var hasPrevious: Bool?

        public var current: Int?

        public var hasNext: Bool?

        public var total: Int?

        public var totalItemCount: Int?

        public enum CodingKeys: String, CodingKey {
            case hasPrevious = "has_previous"

            case current

            case hasNext = "has_next"

            case total

            case totalItemCount = "total_item_count"
        }

        public init(current: Int? = nil, hasNext: Bool? = nil, hasPrevious: Bool? = nil, total: Int? = nil, totalItemCount: Int? = nil) {
            self.hasPrevious = hasPrevious

            self.current = current

            self.hasNext = hasNext

            self.total = total

            self.totalItemCount = totalItemCount
        }

        public func duplicate() -> PageCoupon {
            let dict = self.dictionary!
            let copy = PageCoupon(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                current = try container.decode(Int.self, forKey: .current)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hasNext = try container.decode(Bool.self, forKey: .hasNext)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                total = try container.decode(Int.self, forKey: .total)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalItemCount = try container.decode(Int.self, forKey: .totalItemCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(totalItemCount, forKey: .totalItemCount)
        }
    }
}