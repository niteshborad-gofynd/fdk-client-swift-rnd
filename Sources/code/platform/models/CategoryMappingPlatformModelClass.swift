

import Foundation
public extension PlatformClient {
    /*
         Model: CategoryMapping
         Used By: Catalog
     */

    class CategoryMapping: Codable {
        public var facebook: CategoryMappingValues?

        public var google: CategoryMappingValues?

        public var ajio: CategoryMappingValues?

        public enum CodingKeys: String, CodingKey {
            case facebook

            case google

            case ajio
        }

        public init(ajio: CategoryMappingValues? = nil, facebook: CategoryMappingValues? = nil, google: CategoryMappingValues? = nil) {
            self.facebook = facebook

            self.google = google

            self.ajio = ajio
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                facebook = try container.decode(CategoryMappingValues.self, forKey: .facebook)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                google = try container.decode(CategoryMappingValues.self, forKey: .google)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ajio = try container.decode(CategoryMappingValues.self, forKey: .ajio)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(facebook, forKey: .facebook)

            try? container.encodeIfPresent(google, forKey: .google)

            try? container.encodeIfPresent(ajio, forKey: .ajio)
        }
    }
}
