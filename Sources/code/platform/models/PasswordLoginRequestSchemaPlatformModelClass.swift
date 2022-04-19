import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: PasswordLoginRequestSchema
         Used By: User
     */

    class PasswordLoginRequestSchema: Codable {
        public var captchaCode: String?

        public var password: String?

        public var username: String?

        public enum CodingKeys: String, CodingKey {
            case captchaCode = "captcha_code"

            case password

            case username
        }

        public init(captchaCode: String?, password: String?, username: String?) {
            self.captchaCode = captchaCode

            self.password = password

            self.username = username
        }

        public func duplicate() -> PasswordLoginRequestSchema {
            let dict = self.dictionary!
            let copy = PasswordLoginRequestSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                captchaCode = try container.decode(String.self, forKey: .captchaCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                password = try container.decode(String.self, forKey: .password)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(captchaCode, forKey: .captchaCode)

            try? container.encodeIfPresent(password, forKey: .password)

            try? container.encodeIfPresent(username, forKey: .username)
        }
    }
}