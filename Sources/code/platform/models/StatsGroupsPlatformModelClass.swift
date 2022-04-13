import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: StatsGroups
         Used By: Analytics
     */

    class StatsGroups: Codable {
        public var groups: [StatGroup]?

        public enum CodingKeys: String, CodingKey {
            case groups
        }

        public init(groups: [StatGroup]?) {
            self.groups = groups
        }

        public func duplicate() -> StatsGroups {
            let dict = self.dictionary!
            let copy = StatsGroups(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                groups = try container.decode([StatGroup].self, forKey: .groups)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(groups, forKey: .groups)
        }
    }
}
