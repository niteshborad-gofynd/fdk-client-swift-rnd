import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: Rule
         Used By: Cart
     */

    class Rule: Codable {
        public var key: Double?

        public var min: Double?

        public var value: Double?

        public var discountQty: Double?

        public var max: Double?

        public enum CodingKeys: String, CodingKey {
            case key

            case min

            case value

            case discountQty = "discount_qty"

            case max
        }

        public init(discountQty: Double?, key: Double?, max: Double?, min: Double?, value: Double?) {
            self.key = key

            self.min = min

            self.value = value

            self.discountQty = discountQty

            self.max = max
        }

        public func duplicate() -> Rule {
            let dict = self.dictionary!
            let copy = Rule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                key = try container.decode(Double.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                min = try container.decode(Double.self, forKey: .min)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(Double.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discountQty = try container.decode(Double.self, forKey: .discountQty)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                max = try container.decode(Double.self, forKey: .max)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(min, forKey: .min)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(discountQty, forKey: .discountQty)

            try? container.encodeIfPresent(max, forKey: .max)
        }
    }
}