import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: CreateSearchKeyword
         Used By: Catalog
     */

    class CreateSearchKeyword: Codable {
        public var customJson: [String: Any]?

        public var isActive: Bool?

        public var words: [String]?

        public var appId: String?

        public var result: SearchKeywordResult

        public enum CodingKeys: String, CodingKey {
            case customJson = "_custom_json"

            case isActive = "is_active"

            case words

            case appId = "app_id"

            case result
        }

        public init(appId: String?, isActive: Bool?, result: SearchKeywordResult, words: [String]?, customJson: [String: Any]?) {
            self.customJson = customJson

            self.isActive = isActive

            self.words = words

            self.appId = appId

            self.result = result
        }

        public func duplicate() -> CreateSearchKeyword {
            let dict = self.dictionary!
            let copy = CreateSearchKeyword(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                words = try container.decode([String].self, forKey: .words)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appId = try container.decode(String.self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            result = try container.decode(SearchKeywordResult.self, forKey: .result)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(words, forKey: .words)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(result, forKey: .result)
        }
    }
}