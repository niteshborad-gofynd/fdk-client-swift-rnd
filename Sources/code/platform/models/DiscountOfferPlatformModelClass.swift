import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: DiscountOffer
         Used By: Cart
     */

    class DiscountOffer: Codable {
        public var discountAmount: Double?

        public var minOfferQuantity: Int?

        public var discountPercentage: Double?

        public var maxDiscountAmount: Double?

        public var code: String?

        public var discountPrice: Double?

        public var maxOfferQuantity: Int?

        public enum CodingKeys: String, CodingKey {
            case discountAmount = "discount_amount"

            case minOfferQuantity = "min_offer_quantity"

            case discountPercentage = "discount_percentage"

            case maxDiscountAmount = "max_discount_amount"

            case code

            case discountPrice = "discount_price"

            case maxOfferQuantity = "max_offer_quantity"
        }

        public init(code: String?, discountAmount: Double?, discountPercentage: Double?, discountPrice: Double?, maxDiscountAmount: Double?, maxOfferQuantity: Int?, minOfferQuantity: Int?) {
            self.discountAmount = discountAmount

            self.minOfferQuantity = minOfferQuantity

            self.discountPercentage = discountPercentage

            self.maxDiscountAmount = maxDiscountAmount

            self.code = code

            self.discountPrice = discountPrice

            self.maxOfferQuantity = maxOfferQuantity
        }

        public func duplicate() -> DiscountOffer {
            let dict = self.dictionary!
            let copy = DiscountOffer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                discountAmount = try container.decode(Double.self, forKey: .discountAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                minOfferQuantity = try container.decode(Int.self, forKey: .minOfferQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discountPercentage = try container.decode(Double.self, forKey: .discountPercentage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                maxDiscountAmount = try container.decode(Double.self, forKey: .maxDiscountAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discountPrice = try container.decode(Double.self, forKey: .discountPrice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                maxOfferQuantity = try container.decode(Int.self, forKey: .maxOfferQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discountAmount, forKey: .discountAmount)

            try? container.encodeIfPresent(minOfferQuantity, forKey: .minOfferQuantity)

            try? container.encodeIfPresent(discountPercentage, forKey: .discountPercentage)

            try? container.encodeIfPresent(maxDiscountAmount, forKey: .maxDiscountAmount)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(discountPrice, forKey: .discountPrice)

            try? container.encodeIfPresent(maxOfferQuantity, forKey: .maxOfferQuantity)
        }
    }
}
