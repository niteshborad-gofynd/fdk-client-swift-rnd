

import Foundation
public extension PlatformClient {
    /*
         Model: OpenApiOrderItem
         Used By: Cart
     */

    class OpenApiOrderItem: Codable {
        public var productId: Int

        public var size: String

        public var discount: Double

        public var priceEffective: Double

        public var files: [OpenApiFiles]?

        public var employeeDiscount: Double?

        public var priceMarked: Double

        public var cashbackApplied: Double

        public var extraMeta: [String: Any]?

        public var deliveryCharges: Double

        public var loyaltyDiscount: Double?

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var codCharges: Double

        public var amountPaid: Double

        public var couponEffectiveDiscount: Double

        public var quantity: Int?

        public var meta: CartItemMeta?

        public enum CodingKeys: String, CodingKey {
            case productId = "product_id"

            case size

            case discount

            case priceEffective = "price_effective"

            case files

            case employeeDiscount = "employee_discount"

            case priceMarked = "price_marked"

            case cashbackApplied = "cashback_applied"

            case extraMeta = "extra_meta"

            case deliveryCharges = "delivery_charges"

            case loyaltyDiscount = "loyalty_discount"

            case paymentMethods = "payment_methods"

            case codCharges = "cod_charges"

            case amountPaid = "amount_paid"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case quantity

            case meta
        }

        public init(amountPaid: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, deliveryCharges: Double, discount: Double, employeeDiscount: Double? = nil, extraMeta: [String: Any]? = nil, files: [OpenApiFiles]? = nil, loyaltyDiscount: Double? = nil, meta: CartItemMeta? = nil, paymentMethods: [MultiTenderPaymentMethod], priceEffective: Double, priceMarked: Double, productId: Int, quantity: Int? = nil, size: String) {
            self.productId = productId

            self.size = size

            self.discount = discount

            self.priceEffective = priceEffective

            self.files = files

            self.employeeDiscount = employeeDiscount

            self.priceMarked = priceMarked

            self.cashbackApplied = cashbackApplied

            self.extraMeta = extraMeta

            self.deliveryCharges = deliveryCharges

            self.loyaltyDiscount = loyaltyDiscount

            self.paymentMethods = paymentMethods

            self.codCharges = codCharges

            self.amountPaid = amountPaid

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.quantity = quantity

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            productId = try container.decode(Int.self, forKey: .productId)

            size = try container.decode(String.self, forKey: .size)

            discount = try container.decode(Double.self, forKey: .discount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                files = try container.decode([OpenApiFiles].self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            do {
                extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(CartItemMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(productId, forKey: .productId)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
