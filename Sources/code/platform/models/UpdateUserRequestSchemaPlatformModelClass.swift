import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: UpdateUserRequestSchema
         Used By: User
     */

    class UpdateUserRequestSchema: Codable {
        public var firstName: String?

        public var lastName: String?

        public var gender: String?

        public var externalId: String?

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case firstName = "first_name"

            case lastName = "last_name"

            case gender

            case externalId = "external_id"

            case meta
        }

        public init(externalId: String?, firstName: String?, gender: String?, lastName: String?, meta: [String: Any]?) {
            self.firstName = firstName

            self.lastName = lastName

            self.gender = gender

            self.externalId = externalId

            self.meta = meta
        }

        public func duplicate() -> UpdateUserRequestSchema {
            let dict = self.dictionary!
            let copy = UpdateUserRequestSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                firstName = try container.decode(String.self, forKey: .firstName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gender = try container.decode(String.self, forKey: .gender)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                externalId = try container.decode(String.self, forKey: .externalId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(externalId, forKey: .externalId)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}