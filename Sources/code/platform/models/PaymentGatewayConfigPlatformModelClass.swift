import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentGatewayConfig
         Used By: Payment
     */

    class PaymentGatewayConfig: Codable {
        public var key: String

        public var secret: String

        public var configType: String

        public var merchantSalt: String

        public var isActive: Bool?

        public enum CodingKeys: String, CodingKey {
            case key

            case secret

            case configType = "config_type"

            case merchantSalt = "merchant_salt"

            case isActive = "is_active"
        }

        public init(configType: String, isActive: Bool?, key: String, merchantSalt: String, secret: String) {
            self.key = key

            self.secret = secret

            self.configType = configType

            self.merchantSalt = merchantSalt

            self.isActive = isActive
        }

        public func duplicate() -> PaymentGatewayConfig {
            let dict = self.dictionary!
            let copy = PaymentGatewayConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            key = try container.decode(String.self, forKey: .key)

            secret = try container.decode(String.self, forKey: .secret)

            configType = try container.decode(String.self, forKey: .configType)

            merchantSalt = try container.decode(String.self, forKey: .merchantSalt)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(merchantSalt, forKey: .merchantSalt)

            try? container.encode(isActive, forKey: .isActive)
        }
    }
}