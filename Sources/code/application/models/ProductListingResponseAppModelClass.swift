import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: ProductListingResponse
         Used By: Catalog
     */
    class ProductListingResponse: Codable {
        public var page: Page

        public var items: [ProductListingDetail]?

        public var sortOn: [ProductSortOn]?

        public var filters: [ProductFilters]?

        public enum CodingKeys: String, CodingKey {
            case page

            case items

            case sortOn = "sort_on"

            case filters
        }

        public init(filters: [ProductFilters]? = nil, items: [ProductListingDetail]? = nil, page: Page, sortOn: [ProductSortOn]? = nil) {
            self.page = page

            self.items = items

            self.sortOn = sortOn

            self.filters = filters
        }

        public func duplicate() -> ProductListingResponse {
            let dict = self.dictionary!
            let copy = ProductListingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            page = try container.decode(Page.self, forKey: .page)

            do {
                items = try container.decode([ProductListingDetail].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sortOn = try container.decode([ProductSortOn].self, forKey: .sortOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode([ProductFilters].self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(filters, forKey: .filters)
        }
    }
}
