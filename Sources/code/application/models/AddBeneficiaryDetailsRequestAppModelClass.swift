

import Foundation
public extension ApplicationClient {
    /*
         Model: AddBeneficiaryDetailsRequest
         Used By: Payment
     */
    class AddBeneficiaryDetailsRequest: Codable {
        public var otp: String?

        public var shipmentId: String

        public var requestId: String?

        public var orderId: String

        public var transferMode: String

        public var details: BeneficiaryModeDetails

        public var delights: Bool

        public enum CodingKeys: String, CodingKey {
            case otp

            case shipmentId = "shipment_id"

            case requestId = "request_id"

            case orderId = "order_id"

            case transferMode = "transfer_mode"

            case details

            case delights
        }

        public init(delights: Bool, details: BeneficiaryModeDetails, orderId: String, otp: String? = nil, requestId: String? = nil, shipmentId: String, transferMode: String) {
            self.otp = otp

            self.shipmentId = shipmentId

            self.requestId = requestId

            self.orderId = orderId

            self.transferMode = transferMode

            self.details = details

            self.delights = delights
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                otp = try container.decode(String.self, forKey: .otp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                requestId = try container.decode(String.self, forKey: .requestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            details = try container.decode(BeneficiaryModeDetails.self, forKey: .details)

            delights = try container.decode(Bool.self, forKey: .delights)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(otp, forKey: .otp)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(details, forKey: .details)

            try? container.encodeIfPresent(delights, forKey: .delights)
        }
    }
}
