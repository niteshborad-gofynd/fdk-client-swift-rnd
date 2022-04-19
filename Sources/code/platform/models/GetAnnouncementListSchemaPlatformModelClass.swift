import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: GetAnnouncementListSchema
         Used By: Content
     */

    class GetAnnouncementListSchema: Codable {
        public var items: [AdminAnnouncementSchema]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [AdminAnnouncementSchema]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> GetAnnouncementListSchema {
            let dict = self.dictionary!
            let copy = GetAnnouncementListSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([AdminAnnouncementSchema].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

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