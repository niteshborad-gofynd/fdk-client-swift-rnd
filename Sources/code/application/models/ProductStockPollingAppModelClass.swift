import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: ProductStockPolling
         Used By: Catalog
     */
    class ProductStockPolling: Codable {
        public var page: Page

        public var items: [ProductStockStatusItem]?

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: [ProductStockStatusItem]? = nil, page: Page) {
            self.page = page

            self.items = items
        }

        public func duplicate() -> ProductStockPolling {
            let dict = self.dictionary!
            let copy = ProductStockPolling(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            page = try container.decode(Page.self, forKey: .page)

            do {
                items = try container.decode([ProductStockStatusItem].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
