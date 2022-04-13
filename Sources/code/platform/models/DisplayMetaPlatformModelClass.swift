import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: DisplayMeta
         Used By: Cart
     */

    class DisplayMeta: Codable {
        public var remove: DisplayMetaDict?

        public var auto: DisplayMetaDict?

        public var subtitle: String?

        public var apply: DisplayMetaDict?

        public var title: String?

        public var description: String?

        public enum CodingKeys: String, CodingKey {
            case remove

            case auto

            case subtitle

            case apply

            case title

            case description
        }

        public init(apply: DisplayMetaDict?, auto: DisplayMetaDict?, description: String?, remove: DisplayMetaDict?, subtitle: String?, title: String?) {
            self.remove = remove

            self.auto = auto

            self.subtitle = subtitle

            self.apply = apply

            self.title = title

            self.description = description
        }

        public func duplicate() -> DisplayMeta {
            let dict = self.dictionary!
            let copy = DisplayMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                remove = try container.decode(DisplayMetaDict.self, forKey: .remove)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                auto = try container.decode(DisplayMetaDict.self, forKey: .auto)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subtitle = try container.decode(String.self, forKey: .subtitle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                apply = try container.decode(DisplayMetaDict.self, forKey: .apply)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(remove, forKey: .remove)

            try? container.encodeIfPresent(auto, forKey: .auto)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(apply, forKey: .apply)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }
}
