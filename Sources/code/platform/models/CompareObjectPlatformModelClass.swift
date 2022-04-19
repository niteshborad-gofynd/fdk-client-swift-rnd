import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: CompareObject
         Used By: Cart
     */

    class CompareObject: Codable {
        public var lessThanEquals: Double?

        public var equals: Double?

        public var greaterThanEquals: Double?

        public var lessThan: Double?

        public var greaterThan: Double?

        public enum CodingKeys: String, CodingKey {
            case lessThanEquals = "less_than_equals"

            case equals

            case greaterThanEquals = "greater_than_equals"

            case lessThan = "less_than"

            case greaterThan = "greater_than"
        }

        public init(equals: Double?, greaterThan: Double?, greaterThanEquals: Double?, lessThan: Double?, lessThanEquals: Double?) {
            self.lessThanEquals = lessThanEquals

            self.equals = equals

            self.greaterThanEquals = greaterThanEquals

            self.lessThan = lessThan

            self.greaterThan = greaterThan
        }

        public func duplicate() -> CompareObject {
            let dict = self.dictionary!
            let copy = CompareObject(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                lessThanEquals = try container.decode(Double.self, forKey: .lessThanEquals)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                equals = try container.decode(Double.self, forKey: .equals)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                greaterThanEquals = try container.decode(Double.self, forKey: .greaterThanEquals)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lessThan = try container.decode(Double.self, forKey: .lessThan)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                greaterThan = try container.decode(Double.self, forKey: .greaterThan)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lessThanEquals, forKey: .lessThanEquals)

            try? container.encodeIfPresent(equals, forKey: .equals)

            try? container.encodeIfPresent(greaterThanEquals, forKey: .greaterThanEquals)

            try? container.encodeIfPresent(lessThan, forKey: .lessThan)

            try? container.encodeIfPresent(greaterThan, forKey: .greaterThan)
        }
    }
}