import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: UserObjectSchema
         Used By: User
     */

    class UserObjectSchema: Codable {
        public var user: UserSchema?

        public enum CodingKeys: String, CodingKey {
            case user
        }

        public init(user: UserSchema?) {
            self.user = user
        }

        public func duplicate() -> UserObjectSchema {
            let dict = self.dictionary!
            let copy = UserObjectSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                user = try container.decode(UserSchema.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(user, forKey: .user)
        }
    }
}