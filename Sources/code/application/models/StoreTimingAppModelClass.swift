import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: StoreTiming
         Used By: Catalog
     */
    class StoreTiming: Codable {
        public var closing: Time?

        public var opening: Time?

        public var weekday: String?

        public var open: Bool?

        public enum CodingKeys: String, CodingKey {
            case closing

            case opening

            case weekday

            case open
        }

        public init(closing: Time? = nil, open: Bool? = nil, opening: Time? = nil, weekday: String? = nil) {
            self.closing = closing

            self.opening = opening

            self.weekday = weekday

            self.open = open
        }

        public func duplicate() -> StoreTiming {
            let dict = self.dictionary!
            let copy = StoreTiming(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                closing = try container.decode(Time.self, forKey: .closing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                opening = try container.decode(Time.self, forKey: .opening)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                weekday = try container.decode(String.self, forKey: .weekday)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                open = try container.decode(Bool.self, forKey: .open)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(closing, forKey: .closing)

            try? container.encodeIfPresent(opening, forKey: .opening)

            try? container.encodeIfPresent(weekday, forKey: .weekday)

            try? container.encodeIfPresent(open, forKey: .open)
        }
    }
}