import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: BagBreakupValues
         Used By: Order
     */

    class BagBreakupValues: Codable {
        public var name: String?

        public var display: String?

        public var value: Double?

        public enum CodingKeys: String, CodingKey {
            case name

            case display

            case value
        }

        public init(display: String?, name: String?, value: Double?) {
            self.name = name

            self.display = display

            self.value = value
        }

        public func duplicate() -> BagBreakupValues {
            let dict = self.dictionary!
            let copy = BagBreakupValues(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                display = try container.decode(String.self, forKey: .display)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }
}