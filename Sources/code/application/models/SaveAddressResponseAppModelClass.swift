

import Foundation
public extension ApplicationClient {
    /*
         Model: SaveAddressResponse
         Used By: Cart
     */
    class SaveAddressResponse: Codable {
        public var id: String?

        public var isDefaultAddress: Bool?

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case id

            case isDefaultAddress = "is_default_address"

            case success
        }

        public init(id: String? = nil, isDefaultAddress: Bool? = nil, success: Bool? = nil) {
            self.id = id

            self.isDefaultAddress = isDefaultAddress

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDefaultAddress = try container.decode(Bool.self, forKey: .isDefaultAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
