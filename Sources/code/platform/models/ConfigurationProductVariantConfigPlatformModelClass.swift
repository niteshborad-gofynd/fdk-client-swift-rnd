

import Foundation
public extension PlatformClient {
    /*
         Model: ConfigurationProductVariantConfig
         Used By: Catalog
     */

    class ConfigurationProductVariantConfig: Codable {
        public var key: String

        public var logo: String?

        public var priority: Int

        public var isActive: Bool

        public var displayType: String

        public var size: ProductSize

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case key

            case logo

            case priority

            case isActive = "is_active"

            case displayType = "display_type"

            case size

            case name
        }

        public init(displayType: String, isActive: Bool, key: String, logo: String? = nil, name: String, priority: Int, size: ProductSize) {
            self.key = key

            self.logo = logo

            self.priority = priority

            self.isActive = isActive

            self.displayType = displayType

            self.size = size

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            key = try container.decode(String.self, forKey: .key)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priority = try container.decode(Int.self, forKey: .priority)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            displayType = try container.decode(String.self, forKey: .displayType)

            size = try container.decode(ProductSize.self, forKey: .size)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(displayType, forKey: .displayType)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
