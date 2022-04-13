import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: CustomerListResponseSchema
         Used By: User
     */

    class CustomerListResponseSchema: Codable {
        public var items: [UserSchema]?

        public var page: PaginationSchema?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [UserSchema]?, page: PaginationSchema?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> CustomerListResponseSchema {
            let dict = self.dictionary!
            let copy = CustomerListResponseSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([UserSchema].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(PaginationSchema.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}
