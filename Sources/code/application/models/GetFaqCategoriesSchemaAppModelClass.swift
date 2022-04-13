import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: GetFaqCategoriesSchema
         Used By: Content
     */
    class GetFaqCategoriesSchema: Codable {
        public var categories: [CategorySchema]?

        public enum CodingKeys: String, CodingKey {
            case categories
        }

        public init(categories: [CategorySchema]? = nil) {
            self.categories = categories
        }

        public func duplicate() -> GetFaqCategoriesSchema {
            let dict = self.dictionary!
            let copy = GetFaqCategoriesSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                categories = try container.decode([CategorySchema].self, forKey: .categories)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(categories, forKey: .categories)
        }
    }
}
