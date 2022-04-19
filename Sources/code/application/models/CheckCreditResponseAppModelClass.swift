import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: CheckCreditResponse
         Used By: Payment
     */
    class CheckCreditResponse: Codable {
        public var data: CreditDetail

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case data

            case success
        }

        public init(data: CreditDetail, success: Bool) {
            self.data = data

            self.success = success
        }

        public func duplicate() -> CheckCreditResponse {
            let dict = self.dictionary!
            let copy = CheckCreditResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode(CreditDetail.self, forKey: .data)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}