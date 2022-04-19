import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: BrandDetailResponse
         Used By: Catalog
     */
    class BrandDetailResponse: Codable {
        public var name: String?

        public var banners: ImageUrls?

        public var logo: Media?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case name

            case banners

            case logo

            case uid
        }

        public init(banners: ImageUrls? = nil, logo: Media? = nil, name: String? = nil, uid: Int? = nil) {
            self.name = name

            self.banners = banners

            self.logo = logo

            self.uid = uid
        }

        public func duplicate() -> BrandDetailResponse {
            let dict = self.dictionary!
            let copy = BrandDetailResponse(dictionary: dict)!
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
                banners = try container.decode(ImageUrls.self, forKey: .banners)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(Media.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}