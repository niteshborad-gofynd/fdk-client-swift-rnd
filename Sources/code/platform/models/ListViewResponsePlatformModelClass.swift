import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ListViewResponse
         Used By: Serviceability
     */

    class ListViewResponse: Codable {
        public var items: [ListViewItems]

        public var summary: [ListViewSummary]

        public var page: [ZoneDataItem]

        public enum CodingKeys: String, CodingKey {
            case items

            case summary

            case page
        }

        public init(items: [ListViewItems], page: [ZoneDataItem], summary: [ListViewSummary]) {
            self.items = items

            self.summary = summary

            self.page = page
        }

        public func duplicate() -> ListViewResponse {
            let dict = self.dictionary!
            let copy = ListViewResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            items = try container.decode([ListViewItems].self, forKey: .items)

            summary = try container.decode([ListViewSummary].self, forKey: .summary)

            page = try container.decode([ZoneDataItem].self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(summary, forKey: .summary)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}
