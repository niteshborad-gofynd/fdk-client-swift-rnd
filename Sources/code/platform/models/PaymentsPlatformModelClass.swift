import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: Payments
         Used By: Order
     */

    class Payments: Codable {
        public var isActive: Bool?

        public var displayName: String?

        public var logo: String?

        public var source: String?

        public var sourceNickname: String?

        public var displayPriority: Int?

        public var id: Int?

        public var mode: String?

        public var paymentIdentifier: String?

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case displayName = "display_name"

            case logo

            case source

            case sourceNickname = "source_nickname"

            case displayPriority = "display_priority"

            case id

            case mode

            case paymentIdentifier = "payment_identifier"
        }

        public init(displayName: String?, displayPriority: Int?, id: Int?, isActive: Bool?, logo: String?, mode: String?, paymentIdentifier: String?, source: String?, sourceNickname: String?) {
            self.isActive = isActive

            self.displayName = displayName

            self.logo = logo

            self.source = source

            self.sourceNickname = sourceNickname

            self.displayPriority = displayPriority

            self.id = id

            self.mode = mode

            self.paymentIdentifier = paymentIdentifier
        }

        public func duplicate() -> Payments {
            let dict = self.dictionary!
            let copy = Payments(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                source = try container.decode(String.self, forKey: .source)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sourceNickname = try container.decode(String.self, forKey: .sourceNickname)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mode = try container.decode(String.self, forKey: .mode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(sourceNickname, forKey: .sourceNickname)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
        }
    }
}
