

import Foundation
public extension PlatformClient {
    /*
         Model: TaxIdentifier
         Used By: Catalog
     */

    class TaxIdentifier: Codable {
        public var hsnCodeId: String?

        public var hsnCode: String?

        public var reportingHsn: String?

        public enum CodingKeys: String, CodingKey {
            case hsnCodeId = "hsn_code_id"

            case hsnCode = "hsn_code"

            case reportingHsn = "reporting_hsn"
        }

        public init(hsnCode: String? = nil, hsnCodeId: String? = nil, reportingHsn: String? = nil) {
            self.hsnCodeId = hsnCodeId

            self.hsnCode = hsnCode

            self.reportingHsn = reportingHsn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hsnCode = try container.decode(String.self, forKey: .hsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reportingHsn = try container.decode(String.self, forKey: .reportingHsn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(reportingHsn, forKey: .reportingHsn)
        }
    }
}