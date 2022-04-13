import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: UpdateRefundTransferModeRequest
         Used By: Payment
     */
    class UpdateRefundTransferModeRequest: Codable {
        public var enable: Bool

        public var transferMode: String

        public enum CodingKeys: String, CodingKey {
            case enable

            case transferMode = "transfer_mode"
        }

        public init(enable: Bool, transferMode: String) {
            self.enable = enable

            self.transferMode = transferMode
        }

        public func duplicate() -> UpdateRefundTransferModeRequest {
            let dict = self.dictionary!
            let copy = UpdateRefundTransferModeRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            enable = try container.decode(Bool.self, forKey: .enable)

            transferMode = try container.decode(String.self, forKey: .transferMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enable, forKey: .enable)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
        }
    }
}
