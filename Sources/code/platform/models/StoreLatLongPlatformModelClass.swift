import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: StoreLatLong
         Used By: Configuration
     */

    class StoreLatLong: Codable {
        public var type: String?

        public var coordinates: [Double]?

        public enum CodingKeys: String, CodingKey {
            case type

            case coordinates
        }

        public init(coordinates: [Double]?, type: String?) {
            self.type = type

            self.coordinates = coordinates
        }

        public func duplicate() -> StoreLatLong {
            let dict = self.dictionary!
            let copy = StoreLatLong(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                coordinates = try container.decode([Double].self, forKey: .coordinates)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(coordinates, forKey: .coordinates)
        }
    }
}