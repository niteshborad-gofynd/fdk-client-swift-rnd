import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentGatewayConfigRequest
         Used By: Payment
     */

    class PaymentGatewayConfigRequest: Codable {
        public var appId: String

        public var isActive: Bool?

        public var aggregatorName: PaymentGatewayConfig?

        public enum CodingKeys: String, CodingKey {
            case appId = "app_id"

            case isActive = "is_active"

            case aggregatorName = "aggregator_name"
        }

        public init(aggregatorName: PaymentGatewayConfig?, appId: String, isActive: Bool?) {
            self.appId = appId

            self.isActive = isActive

            self.aggregatorName = aggregatorName
        }

        public func duplicate() -> PaymentGatewayConfigRequest {
            let dict = self.dictionary!
            let copy = PaymentGatewayConfigRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            appId = try container.decode(String.self, forKey: .appId)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorName = try container.decode(PaymentGatewayConfig.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encode(isActive, forKey: .isActive)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
        }
    }
}
