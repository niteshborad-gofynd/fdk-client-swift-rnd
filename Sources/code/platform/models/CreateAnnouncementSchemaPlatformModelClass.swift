import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: CreateAnnouncementSchema
         Used By: Content
     */

    class CreateAnnouncementSchema: Codable {
        public var message: String?

        public var data: AdminAnnouncementSchema?

        public enum CodingKeys: String, CodingKey {
            case message

            case data
        }

        public init(data: AdminAnnouncementSchema?, message: String?) {
            self.message = message

            self.data = data
        }

        public func duplicate() -> CreateAnnouncementSchema {
            let dict = self.dictionary!
            let copy = CreateAnnouncementSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode(AdminAnnouncementSchema.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}