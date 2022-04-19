import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: SupportedLanguage
         Used By: Configuration
     */
    class SupportedLanguage: Codable {
        public var name: String?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case code
        }

        public init(code: String? = nil, name: String? = nil) {
            self.name = name

            self.code = code
        }

        public func duplicate() -> SupportedLanguage {
            let dict = self.dictionary!
            let copy = SupportedLanguage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}