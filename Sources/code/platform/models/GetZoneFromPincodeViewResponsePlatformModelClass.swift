import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: GetZoneFromPincodeViewResponse
         Used By: Serviceability
     */

    class GetZoneFromPincodeViewResponse: Codable {
        public var zones: [String]

        public var serviceabilityType: String

        public enum CodingKeys: String, CodingKey {
            case zones

            case serviceabilityType = "serviceability_type"
        }

        public init(serviceabilityType: String, zones: [String]) {
            self.zones = zones

            self.serviceabilityType = serviceabilityType
        }

        public func duplicate() -> GetZoneFromPincodeViewResponse {
            let dict = self.dictionary!
            let copy = GetZoneFromPincodeViewResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            zones = try container.decode([String].self, forKey: .zones)

            serviceabilityType = try container.decode(String.self, forKey: .serviceabilityType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(zones, forKey: .zones)

            try? container.encodeIfPresent(serviceabilityType, forKey: .serviceabilityType)
        }
    }
}