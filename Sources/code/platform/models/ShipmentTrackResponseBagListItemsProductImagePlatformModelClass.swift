import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentTrackResponseBagListItemsProductImage
         Used By: Order
     */

    class ShipmentTrackResponseBagListItemsProductImage: Codable {
        public var aspectRatio: String?

        public var url: String?

        public enum CodingKeys: String, CodingKey {
            case aspectRatio = "aspect_ratio"

            case url
        }

        public init(aspectRatio: String?, url: String?) {
            self.aspectRatio = aspectRatio

            self.url = url
        }

        public func duplicate() -> ShipmentTrackResponseBagListItemsProductImage {
            let dict = self.dictionary!
            let copy = ShipmentTrackResponseBagListItemsProductImage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aspectRatio = try container.decode(String.self, forKey: .aspectRatio)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }
}
