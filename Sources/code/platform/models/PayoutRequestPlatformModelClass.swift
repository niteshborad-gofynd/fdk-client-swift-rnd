

import Foundation
public extension PlatformClient {
    /*
         Model: PayoutRequest
         Used By: Payment
     */

    class PayoutRequest: Codable {
        public var transferType: String

        public var isActive: Bool

        public var users: [String: Any]

        public var aggregator: String

        public var uniqueExternalId: String

        public var bankDetails: PayoutBankDetails

        public enum CodingKeys: String, CodingKey {
            case transferType = "transfer_type"

            case isActive = "is_active"

            case users

            case aggregator

            case uniqueExternalId = "unique_external_id"

            case bankDetails = "bank_details"
        }

        public init(aggregator: String, bankDetails: PayoutBankDetails, isActive: Bool, transferType: String, uniqueExternalId: String, users: [String: Any]) {
            self.transferType = transferType

            self.isActive = isActive

            self.users = users

            self.aggregator = aggregator

            self.uniqueExternalId = uniqueExternalId

            self.bankDetails = bankDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferType = try container.decode(String.self, forKey: .transferType)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            users = try container.decode([String: Any].self, forKey: .users)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)

            bankDetails = try container.decode(PayoutBankDetails.self, forKey: .bankDetails)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)
        }
    }
}
