import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: UserSchema
         Used By: User
     */

    class UserSchema: Codable {
        public var applicationId: String?

        public var userId: String?

        public var firstName: String?

        public var meta: [String: Any]?

        public var lastName: String?

        public var phoneNumbers: [PhoneNumber]?

        public var emails: [Email]?

        public var gender: String?

        public var dob: String?

        public var active: Bool?

        public var profilePicUrl: String?

        public var username: String?

        public var accountType: String?

        public var debug: Debug?

        public var hasOldPasswordHash: Bool?

        public var id: String?

        public var createdAt: String?

        public var updatedAt: String?

        public enum CodingKeys: String, CodingKey {
            case applicationId = "application_id"

            case userId = "user_id"

            case firstName = "first_name"

            case meta

            case lastName = "last_name"

            case phoneNumbers = "phone_numbers"

            case emails

            case gender

            case dob

            case active

            case profilePicUrl = "profile_pic_url"

            case username

            case accountType = "account_type"

            case debug

            case hasOldPasswordHash = "has_old_password_hash"

            case id = "_id"

            case createdAt = "created_at"

            case updatedAt = "updated_at"
        }

        public init(accountType: String?, active: Bool?, applicationId: String?, createdAt: String?, debug: Debug?, dob: String?, emails: [Email]?, firstName: String?, gender: String?, hasOldPasswordHash: Bool?, lastName: String?, meta: [String: Any]?, phoneNumbers: [PhoneNumber]?, profilePicUrl: String?, updatedAt: String?, username: String?, userId: String?, id: String?) {
            self.applicationId = applicationId

            self.userId = userId

            self.firstName = firstName

            self.meta = meta

            self.lastName = lastName

            self.phoneNumbers = phoneNumbers

            self.emails = emails

            self.gender = gender

            self.dob = dob

            self.active = active

            self.profilePicUrl = profilePicUrl

            self.username = username

            self.accountType = accountType

            self.debug = debug

            self.hasOldPasswordHash = hasOldPasswordHash

            self.id = id

            self.createdAt = createdAt

            self.updatedAt = updatedAt
        }

        public func duplicate() -> UserSchema {
            let dict = self.dictionary!
            let copy = UserSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                applicationId = try container.decode(String.self, forKey: .applicationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                firstName = try container.decode(String.self, forKey: .firstName)

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

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                phoneNumbers = try container.decode([PhoneNumber].self, forKey: .phoneNumbers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                emails = try container.decode([Email].self, forKey: .emails)

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
                dob = try container.decode(String.self, forKey: .dob)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                active = try container.decode(Bool.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                profilePicUrl = try container.decode(String.self, forKey: .profilePicUrl)

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

            do {
                accountType = try container.decode(String.self, forKey: .accountType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                debug = try container.decode(Debug.self, forKey: .debug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hasOldPasswordHash = try container.decode(Bool.self, forKey: .hasOldPasswordHash)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(phoneNumbers, forKey: .phoneNumbers)

            try? container.encodeIfPresent(emails, forKey: .emails)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(dob, forKey: .dob)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(profilePicUrl, forKey: .profilePicUrl)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(accountType, forKey: .accountType)

            try? container.encodeIfPresent(debug, forKey: .debug)

            try? container.encodeIfPresent(hasOldPasswordHash, forKey: .hasOldPasswordHash)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        }
    }
}
