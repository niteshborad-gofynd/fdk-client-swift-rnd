

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentModeList
         Used By: Payment
     */

    class PaymentModeList: Codable {
        public var displayPriority: Int?

        public var expired: Bool?

        public var merchantCode: String?

        public var cardBrandImage: String?

        public var timeout: Int?

        public var intentAppErrorDictList: [IntentAppErrorList]?

        public var expMonth: Int?

        public var cardReference: String?

        public var intentFlow: Bool?

        public var cardName: String?

        public var name: String?

        public var aggregatorName: String

        public var intentApp: [IntentApp]?

        public var cardBrand: String?

        public var displayName: String?

        public var intentAppErrorList: [String]?

        public var code: String?

        public var cardIsin: String?

        public var cardFingerprint: String?

        public var cardId: String?

        public var nickname: String?

        public var logoUrl: PaymentModeLogo?

        public var cardToken: String?

        public var retryCount: Int?

        public var fyndVpa: String?

        public var cardType: String?

        public var expYear: Int?

        public var cardNumber: String?

        public var cardIssuer: String?

        public enum CodingKeys: String, CodingKey {
            case displayPriority = "display_priority"

            case expired

            case merchantCode = "merchant_code"

            case cardBrandImage = "card_brand_image"

            case timeout

            case intentAppErrorDictList = "intent_app_error_dict_list"

            case expMonth = "exp_month"

            case cardReference = "card_reference"

            case intentFlow = "intent_flow"

            case cardName = "card_name"

            case name

            case aggregatorName = "aggregator_name"

            case intentApp = "intent_app"

            case cardBrand = "card_brand"

            case displayName = "display_name"

            case intentAppErrorList = "intent_app_error_list"

            case code

            case cardIsin = "card_isin"

            case cardFingerprint = "card_fingerprint"

            case cardId = "card_id"

            case nickname

            case logoUrl = "logo_url"

            case cardToken = "card_token"

            case retryCount = "retry_count"

            case fyndVpa = "fynd_vpa"

            case cardType = "card_type"

            case expYear = "exp_year"

            case cardNumber = "card_number"

            case cardIssuer = "card_issuer"
        }

        public init(aggregatorName: String, cardBrand: String? = nil, cardBrandImage: String? = nil, cardFingerprint: String? = nil, cardId: String? = nil, cardIsin: String? = nil, cardIssuer: String? = nil, cardName: String? = nil, cardNumber: String? = nil, cardReference: String? = nil, cardToken: String? = nil, cardType: String? = nil, code: String? = nil, displayName: String? = nil, displayPriority: Int? = nil, expired: Bool? = nil, expMonth: Int? = nil, expYear: Int? = nil, fyndVpa: String? = nil, intentApp: [IntentApp]? = nil, intentAppErrorDictList: [IntentAppErrorList]? = nil, intentAppErrorList: [String]? = nil, intentFlow: Bool? = nil, logoUrl: PaymentModeLogo? = nil, merchantCode: String? = nil, name: String? = nil, nickname: String? = nil, retryCount: Int? = nil, timeout: Int? = nil) {
            self.displayPriority = displayPriority

            self.expired = expired

            self.merchantCode = merchantCode

            self.cardBrandImage = cardBrandImage

            self.timeout = timeout

            self.intentAppErrorDictList = intentAppErrorDictList

            self.expMonth = expMonth

            self.cardReference = cardReference

            self.intentFlow = intentFlow

            self.cardName = cardName

            self.name = name

            self.aggregatorName = aggregatorName

            self.intentApp = intentApp

            self.cardBrand = cardBrand

            self.displayName = displayName

            self.intentAppErrorList = intentAppErrorList

            self.code = code

            self.cardIsin = cardIsin

            self.cardFingerprint = cardFingerprint

            self.cardId = cardId

            self.nickname = nickname

            self.logoUrl = logoUrl

            self.cardToken = cardToken

            self.retryCount = retryCount

            self.fyndVpa = fyndVpa

            self.cardType = cardType

            self.expYear = expYear

            self.cardNumber = cardNumber

            self.cardIssuer = cardIssuer
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expired = try container.decode(Bool.self, forKey: .expired)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                merchantCode = try container.decode(String.self, forKey: .merchantCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                intentAppErrorDictList = try container.decode([IntentAppErrorList].self, forKey: .intentAppErrorDictList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expMonth = try container.decode(Int.self, forKey: .expMonth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardReference = try container.decode(String.self, forKey: .cardReference)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                intentFlow = try container.decode(Bool.self, forKey: .intentFlow)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardName = try container.decode(String.self, forKey: .cardName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            do {
                intentApp = try container.decode([IntentApp].self, forKey: .intentApp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardBrand = try container.decode(String.self, forKey: .cardBrand)

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
                intentAppErrorList = try container.decode([String].self, forKey: .intentAppErrorList)

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

            do {
                cardIsin = try container.decode(String.self, forKey: .cardIsin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardFingerprint = try container.decode(String.self, forKey: .cardFingerprint)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardId = try container.decode(String.self, forKey: .cardId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nickname = try container.decode(String.self, forKey: .nickname)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logoUrl = try container.decode(PaymentModeLogo.self, forKey: .logoUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardToken = try container.decode(String.self, forKey: .cardToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                retryCount = try container.decode(Int.self, forKey: .retryCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fyndVpa = try container.decode(String.self, forKey: .fyndVpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardType = try container.decode(String.self, forKey: .cardType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expYear = try container.decode(Int.self, forKey: .expYear)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardNumber = try container.decode(String.self, forKey: .cardNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardIssuer = try container.decode(String.self, forKey: .cardIssuer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(displayPriority, forKey: .displayPriority)

            try? container.encode(expired, forKey: .expired)

            try? container.encode(merchantCode, forKey: .merchantCode)

            try? container.encode(cardBrandImage, forKey: .cardBrandImage)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encode(intentAppErrorDictList, forKey: .intentAppErrorDictList)

            try? container.encode(expMonth, forKey: .expMonth)

            try? container.encode(cardReference, forKey: .cardReference)

            try? container.encode(intentFlow, forKey: .intentFlow)

            try? container.encode(cardName, forKey: .cardName)

            try? container.encode(name, forKey: .name)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encode(intentApp, forKey: .intentApp)

            try? container.encode(cardBrand, forKey: .cardBrand)

            try? container.encode(displayName, forKey: .displayName)

            try? container.encode(intentAppErrorList, forKey: .intentAppErrorList)

            try? container.encode(code, forKey: .code)

            try? container.encode(cardIsin, forKey: .cardIsin)

            try? container.encode(cardFingerprint, forKey: .cardFingerprint)

            try? container.encode(cardId, forKey: .cardId)

            try? container.encode(nickname, forKey: .nickname)

            try? container.encode(logoUrl, forKey: .logoUrl)

            try? container.encode(cardToken, forKey: .cardToken)

            try? container.encode(retryCount, forKey: .retryCount)

            try? container.encode(fyndVpa, forKey: .fyndVpa)

            try? container.encode(cardType, forKey: .cardType)

            try? container.encode(expYear, forKey: .expYear)

            try? container.encode(cardNumber, forKey: .cardNumber)

            try? container.encode(cardIssuer, forKey: .cardIssuer)
        }
    }
}
