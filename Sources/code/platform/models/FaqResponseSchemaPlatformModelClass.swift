import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: FaqResponseSchema
         Used By: Content
     */

    class FaqResponseSchema: Codable {
        public var faqs: [FaqSchema]?

        public enum CodingKeys: String, CodingKey {
            case faqs
        }

        public init(faqs: [FaqSchema]?) {
            self.faqs = faqs
        }

        public func duplicate() -> FaqResponseSchema {
            let dict = self.dictionary!
            let copy = FaqResponseSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                faqs = try container.decode([FaqSchema].self, forKey: .faqs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(faqs, forKey: .faqs)
        }
    }
}
