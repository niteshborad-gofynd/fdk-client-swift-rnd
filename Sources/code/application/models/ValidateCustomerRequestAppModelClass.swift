

import Foundation
public extension ApplicationClient {
    /*
         Model: ValidateCustomerRequest
         Used By: Payment
     */
    class ValidateCustomerRequest: Codable {
        public var aggregator: String

        public var merchantParams: [String: Any]

        public var phoneNumber: String

        public var payload: String

        public var transactionAmountInPaise: Int

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case merchantParams = "merchant_params"

            case phoneNumber = "phone_number"

            case payload

            case transactionAmountInPaise = "transaction_amount_in_paise"
        }

        public init(aggregator: String, merchantParams: [String: Any], payload: String, phoneNumber: String, transactionAmountInPaise: Int) {
            self.aggregator = aggregator

            self.merchantParams = merchantParams

            self.phoneNumber = phoneNumber

            self.payload = payload

            self.transactionAmountInPaise = transactionAmountInPaise
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            merchantParams = try container.decode([String: Any].self, forKey: .merchantParams)

            phoneNumber = try container.decode(String.self, forKey: .phoneNumber)

            payload = try container.decode(String.self, forKey: .payload)

            transactionAmountInPaise = try container.decode(Int.self, forKey: .transactionAmountInPaise)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(merchantParams, forKey: .merchantParams)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encode(payload, forKey: .payload)

            try? container.encodeIfPresent(transactionAmountInPaise, forKey: .transactionAmountInPaise)
        }
    }
}
