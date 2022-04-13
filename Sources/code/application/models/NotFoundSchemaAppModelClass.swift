import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: NotFoundSchema
         Used By: User
     */
    class NotFoundSchema: Codable {
        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case message
        }

        public init(message: String? = nil) {
            self.message = message
        }

        public func duplicate() -> NotFoundSchema {
            let dict = self.dictionary!
            let copy = NotFoundSchema(dictionary: dict)!
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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
