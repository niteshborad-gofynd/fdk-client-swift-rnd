import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentModeRouteResponse
         Used By: Payment
     */
    class PaymentModeRouteResponse: Codable {
        public var paymentOptions: PaymentOptionAndFlow

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case paymentOptions = "payment_options"

            case success
        }

        public init(paymentOptions: PaymentOptionAndFlow, success: Bool) {
            self.paymentOptions = paymentOptions

            self.success = success
        }

        public func duplicate() -> PaymentModeRouteResponse {
            let dict = self.dictionary!
            let copy = PaymentModeRouteResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentOptions = try container.decode(PaymentOptionAndFlow.self, forKey: .paymentOptions)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
