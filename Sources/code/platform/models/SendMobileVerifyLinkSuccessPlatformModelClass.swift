import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: SendMobileVerifyLinkSuccess
         Used By: User
     */

    class SendMobileVerifyLinkSuccess: Codable {
        public var verifyMobileLink: Bool?

        public enum CodingKeys: String, CodingKey {
            case verifyMobileLink = "verify_mobile_link"
        }

        public init(verifyMobileLink: Bool?) {
            self.verifyMobileLink = verifyMobileLink
        }

        public func duplicate() -> SendMobileVerifyLinkSuccess {
            let dict = self.dictionary!
            let copy = SendMobileVerifyLinkSuccess(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                verifyMobileLink = try container.decode(Bool.self, forKey: .verifyMobileLink)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(verifyMobileLink, forKey: .verifyMobileLink)
        }
    }
}