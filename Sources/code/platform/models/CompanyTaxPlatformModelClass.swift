import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyTax
         Used By: CompanyProfile
     */

    class CompanyTax: Codable {
        public var cess: Double?

        public var effectiveDate: String

        public var rate: Double

        public var enable: Bool

        public enum CodingKeys: String, CodingKey {
            case cess

            case effectiveDate = "effective_date"

            case rate

            case enable
        }

        public init(cess: Double? = nil, effectiveDate: String, enable: Bool, rate: Double) {
            self.cess = cess

            self.effectiveDate = effectiveDate

            self.rate = rate

            self.enable = enable
        }

        public func duplicate() -> CompanyTax {
            let dict = self.dictionary!
            let copy = CompanyTax(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cess = try container.decode(Double.self, forKey: .cess)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            effectiveDate = try container.decode(String.self, forKey: .effectiveDate)

            rate = try container.decode(Double.self, forKey: .rate)

            enable = try container.decode(Bool.self, forKey: .enable)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cess, forKey: .cess)

            try? container.encodeIfPresent(effectiveDate, forKey: .effectiveDate)

            try? container.encodeIfPresent(rate, forKey: .rate)

            try? container.encodeIfPresent(enable, forKey: .enable)
        }
    }
}