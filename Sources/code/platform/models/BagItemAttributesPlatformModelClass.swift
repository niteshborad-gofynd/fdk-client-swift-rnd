import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: BagItemAttributes
         Used By: Order
     */

    class BagItemAttributes: Codable {
        public var itemCode: String?

        public var brandName: String?

        public var countryOfOrigin: String?

        public enum CodingKeys: String, CodingKey {
            case itemCode = "item_code"

            case brandName = "brand_name"

            case countryOfOrigin = "country_of_origin"
        }

        public init(brandName: String?, countryOfOrigin: String?, itemCode: String?) {
            self.itemCode = itemCode

            self.brandName = brandName

            self.countryOfOrigin = countryOfOrigin
        }

        public func duplicate() -> BagItemAttributes {
            let dict = self.dictionary!
            let copy = BagItemAttributes(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemCode = try container.decode(String.self, forKey: .itemCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandName = try container.decode(String.self, forKey: .brandName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)
        }
    }
}
