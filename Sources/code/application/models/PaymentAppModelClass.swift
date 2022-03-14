import Foundation


import Foundation
public extension ApplicationClient {
  
        /*
            Model: AggregatorConfigDetail
            Used By: Payment
        */
        class AggregatorConfigDetail: Codable {
            
            public var userId: String?
            
            public var key: String
            
            public var secret: String
            
            public var api: String?
            
            public var merchantId: String?
            
            public var merchantKey: String?
            
            public var sdk: Bool?
            
            public var configType: String
            
            public var verifyApi: String?
            
            public var pin: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case userId = "user_id"
                
                case key = "key"
                
                case secret = "secret"
                
                case api = "api"
                
                case merchantId = "merchant_id"
                
                case merchantKey = "merchant_key"
                
                case sdk = "sdk"
                
                case configType = "config_type"
                
                case verifyApi = "verify_api"
                
                case pin = "pin"
                
            }

            public init(api: String?, configType: String, key: String, merchantId: String?, merchantKey: String?, pin: String?, sdk: Bool?, secret: String, userId: String?, verifyApi: String?) {
                
                self.userId = userId
                
                self.key = key
                
                self.secret = secret
                
                self.api = api
                
                self.merchantId = merchantId
                
                self.merchantKey = merchantKey
                
                self.sdk = sdk
                
                self.configType = configType
                
                self.verifyApi = verifyApi
                
                self.pin = pin
                
            }

            public func duplicate() -> AggregatorConfigDetail {
                let dict = self.dictionary!
                let copy = AggregatorConfigDetail(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                key = try container.decode(String.self, forKey: .key)
                
                
                
                
                secret = try container.decode(String.self, forKey: .secret)
                
                
                
                
                do {
                    api = try container.decode(String.self, forKey: .api)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    merchantId = try container.decode(String.self, forKey: .merchantId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    merchantKey = try container.decode(String.self, forKey: .merchantKey)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sdk = try container.decode(Bool.self, forKey: .sdk)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                configType = try container.decode(String.self, forKey: .configType)
                
                
                
                
                do {
                    verifyApi = try container.decode(String.self, forKey: .verifyApi)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pin = try container.decode(String.self, forKey: .pin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(userId, forKey: .userId)
                
                
                
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                
                
                
                try? container.encodeIfPresent(secret, forKey: .secret)
                
                
                
                
                try? container.encode(api, forKey: .api)
                
                
                
                
                try? container.encode(merchantId, forKey: .merchantId)
                
                
                
                
                try? container.encode(merchantKey, forKey: .merchantKey)
                
                
                
                
                try? container.encode(sdk, forKey: .sdk)
                
                
                
                
                try? container.encodeIfPresent(configType, forKey: .configType)
                
                
                
                
                try? container.encode(verifyApi, forKey: .verifyApi)
                
                
                
                
                try? container.encode(pin, forKey: .pin)
                
                
            }
            
        }
        
        /*
            Model: AggregatorsConfigDetailResponse
            Used By: Payment
        */
        class AggregatorsConfigDetailResponse: Codable {
            
            public var razorpay: AggregatorConfigDetail?
            
            public var stripe: AggregatorConfigDetail?
            
            public var success: Bool
            
            public var payumoney: AggregatorConfigDetail?
            
            public var rupifi: AggregatorConfigDetail?
            
            public var ccavenue: AggregatorConfigDetail?
            
            public var env: String
            
            public var mswipe: AggregatorConfigDetail?
            
            public var juspay: AggregatorConfigDetail?
            
            public var simpl: AggregatorConfigDetail?
            

            public enum CodingKeys: String, CodingKey {
                
                case razorpay = "razorpay"
                
                case stripe = "stripe"
                
                case success = "success"
                
                case payumoney = "payumoney"
                
                case rupifi = "rupifi"
                
                case ccavenue = "ccavenue"
                
                case env = "env"
                
                case mswipe = "mswipe"
                
                case juspay = "juspay"
                
                case simpl = "simpl"
                
            }

            public init(ccavenue: AggregatorConfigDetail?, env: String, juspay: AggregatorConfigDetail?, mswipe: AggregatorConfigDetail?, payumoney: AggregatorConfigDetail?, razorpay: AggregatorConfigDetail?, rupifi: AggregatorConfigDetail?, simpl: AggregatorConfigDetail?, stripe: AggregatorConfigDetail?, success: Bool) {
                
                self.razorpay = razorpay
                
                self.stripe = stripe
                
                self.success = success
                
                self.payumoney = payumoney
                
                self.rupifi = rupifi
                
                self.ccavenue = ccavenue
                
                self.env = env
                
                self.mswipe = mswipe
                
                self.juspay = juspay
                
                self.simpl = simpl
                
            }

            public func duplicate() -> AggregatorsConfigDetailResponse {
                let dict = self.dictionary!
                let copy = AggregatorsConfigDetailResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    razorpay = try container.decode(AggregatorConfigDetail.self, forKey: .razorpay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    stripe = try container.decode(AggregatorConfigDetail.self, forKey: .stripe)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                do {
                    payumoney = try container.decode(AggregatorConfigDetail.self, forKey: .payumoney)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    rupifi = try container.decode(AggregatorConfigDetail.self, forKey: .rupifi)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    ccavenue = try container.decode(AggregatorConfigDetail.self, forKey: .ccavenue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                env = try container.decode(String.self, forKey: .env)
                
                
                
                
                do {
                    mswipe = try container.decode(AggregatorConfigDetail.self, forKey: .mswipe)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    juspay = try container.decode(AggregatorConfigDetail.self, forKey: .juspay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    simpl = try container.decode(AggregatorConfigDetail.self, forKey: .simpl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(razorpay, forKey: .razorpay)
                
                
                
                
                try? container.encodeIfPresent(stripe, forKey: .stripe)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(payumoney, forKey: .payumoney)
                
                
                
                
                try? container.encodeIfPresent(rupifi, forKey: .rupifi)
                
                
                
                
                try? container.encodeIfPresent(ccavenue, forKey: .ccavenue)
                
                
                
                
                try? container.encodeIfPresent(env, forKey: .env)
                
                
                
                
                try? container.encodeIfPresent(mswipe, forKey: .mswipe)
                
                
                
                
                try? container.encodeIfPresent(juspay, forKey: .juspay)
                
                
                
                
                try? container.encodeIfPresent(simpl, forKey: .simpl)
                
                
            }
            
        }
        
        /*
            Model: ErrorCodeAndDescription
            Used By: Payment
        */
        class ErrorCodeAndDescription: Codable {
            
            public var code: String
            
            public var description: String
            

            public enum CodingKeys: String, CodingKey {
                
                case code = "code"
                
                case description = "description"
                
            }

            public init(code: String, description: String) {
                
                self.code = code
                
                self.description = description
                
            }

            public func duplicate() -> ErrorCodeAndDescription {
                let dict = self.dictionary!
                let copy = ErrorCodeAndDescription(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                code = try container.decode(String.self, forKey: .code)
                
                
                
                
                description = try container.decode(String.self, forKey: .description)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
            }
            
        }
        
        /*
            Model: HttpErrorCodeAndResponse
            Used By: Payment
        */
        class HttpErrorCodeAndResponse: Codable {
            
            public var success: Bool
            
            public var error: ErrorCodeAndDescription
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case error = "error"
                
            }

            public init(error: ErrorCodeAndDescription, success: Bool) {
                
                self.success = success
                
                self.error = error
                
            }

            public func duplicate() -> HttpErrorCodeAndResponse {
                let dict = self.dictionary!
                let copy = HttpErrorCodeAndResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                error = try container.decode(ErrorCodeAndDescription.self, forKey: .error)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(error, forKey: .error)
                
                
            }
            
        }
        
        /*
            Model: AttachCardRequest
            Used By: Payment
        */
        class AttachCardRequest: Codable {
            
            public var nickname: String?
            
            public var nameOnCard: String?
            
            public var cardId: String
            
            public var refresh: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case nickname = "nickname"
                
                case nameOnCard = "name_on_card"
                
                case cardId = "card_id"
                
                case refresh = "refresh"
                
            }

            public init(cardId: String, nameOnCard: String?, nickname: String?, refresh: Bool?) {
                
                self.nickname = nickname
                
                self.nameOnCard = nameOnCard
                
                self.cardId = cardId
                
                self.refresh = refresh
                
            }

            public func duplicate() -> AttachCardRequest {
                let dict = self.dictionary!
                let copy = AttachCardRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    nickname = try container.decode(String.self, forKey: .nickname)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    nameOnCard = try container.decode(String.self, forKey: .nameOnCard)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                cardId = try container.decode(String.self, forKey: .cardId)
                
                
                
                
                do {
                    refresh = try container.decode(Bool.self, forKey: .refresh)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(nickname, forKey: .nickname)
                
                
                
                
                try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)
                
                
                
                
                try? container.encode(cardId, forKey: .cardId)
                
                
                
                
                try? container.encode(refresh, forKey: .refresh)
                
                
            }
            
        }
        
        /*
            Model: AttachCardsResponse
            Used By: Payment
        */
        class AttachCardsResponse: Codable {
            
            public var message: String?
            
            public var success: Bool
            
            public var data: [String: Any]
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case success = "success"
                
                case data = "data"
                
            }

            public init(data: [String: Any], message: String?, success: Bool) {
                
                self.message = message
                
                self.success = success
                
                self.data = data
                
            }

            public func duplicate() -> AttachCardsResponse {
                let dict = self.dictionary!
                let copy = AttachCardsResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                data = try container.decode([String: Any].self, forKey: .data)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
            }
            
        }
        
        /*
            Model: CardPaymentGateway
            Used By: Payment
        */
        class CardPaymentGateway: Codable {
            
            public var aggregator: String
            
            public var api: String?
            
            public var customerId: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case aggregator = "aggregator"
                
                case api = "api"
                
                case customerId = "customer_id"
                
            }

            public init(aggregator: String, api: String?, customerId: String?) {
                
                self.aggregator = aggregator
                
                self.api = api
                
                self.customerId = customerId
                
            }

            public func duplicate() -> CardPaymentGateway {
                let dict = self.dictionary!
                let copy = CardPaymentGateway(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                do {
                    api = try container.decode(String.self, forKey: .api)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    customerId = try container.decode(String.self, forKey: .customerId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encode(api, forKey: .api)
                
                
                
                
                try? container.encode(customerId, forKey: .customerId)
                
                
            }
            
        }
        
        /*
            Model: ActiveCardPaymentGatewayResponse
            Used By: Payment
        */
        class ActiveCardPaymentGatewayResponse: Codable {
            
            public var message: String
            
            public var cards: CardPaymentGateway
            
            public var success: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case cards = "cards"
                
                case success = "success"
                
            }

            public init(cards: CardPaymentGateway, message: String, success: Bool) {
                
                self.message = message
                
                self.cards = cards
                
                self.success = success
                
            }

            public func duplicate() -> ActiveCardPaymentGatewayResponse {
                let dict = self.dictionary!
                let copy = ActiveCardPaymentGatewayResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
                
                cards = try container.decode(CardPaymentGateway.self, forKey: .cards)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(cards, forKey: .cards)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: Card
            Used By: Payment
        */
        class Card: Codable {
            
            public var cardType: String?
            
            public var cardName: String?
            
            public var cardFingerprint: String?
            
            public var cardToken: String?
            
            public var cardIssuer: String?
            
            public var cardIsin: String?
            
            public var expYear: Int?
            
            public var expMonth: Int?
            
            public var cardBrand: String?
            
            public var cardBrandImage: String?
            
            public var cardId: String?
            
            public var cardNumber: String?
            
            public var nickname: String?
            
            public var aggregatorName: String
            
            public var cardReference: String?
            
            public var expired: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case cardType = "card_type"
                
                case cardName = "card_name"
                
                case cardFingerprint = "card_fingerprint"
                
                case cardToken = "card_token"
                
                case cardIssuer = "card_issuer"
                
                case cardIsin = "card_isin"
                
                case expYear = "exp_year"
                
                case expMonth = "exp_month"
                
                case cardBrand = "card_brand"
                
                case cardBrandImage = "card_brand_image"
                
                case cardId = "card_id"
                
                case cardNumber = "card_number"
                
                case nickname = "nickname"
                
                case aggregatorName = "aggregator_name"
                
                case cardReference = "card_reference"
                
                case expired = "expired"
                
            }

            public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, expired: Bool?, expMonth: Int?, expYear: Int?, nickname: String?) {
                
                self.cardType = cardType
                
                self.cardName = cardName
                
                self.cardFingerprint = cardFingerprint
                
                self.cardToken = cardToken
                
                self.cardIssuer = cardIssuer
                
                self.cardIsin = cardIsin
                
                self.expYear = expYear
                
                self.expMonth = expMonth
                
                self.cardBrand = cardBrand
                
                self.cardBrandImage = cardBrandImage
                
                self.cardId = cardId
                
                self.cardNumber = cardNumber
                
                self.nickname = nickname
                
                self.aggregatorName = aggregatorName
                
                self.cardReference = cardReference
                
                self.expired = expired
                
            }

            public func duplicate() -> Card {
                let dict = self.dictionary!
                let copy = Card(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    cardType = try container.decode(String.self, forKey: .cardType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardName = try container.decode(String.self, forKey: .cardName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardFingerprint = try container.decode(String.self, forKey: .cardFingerprint)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardToken = try container.decode(String.self, forKey: .cardToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardIssuer = try container.decode(String.self, forKey: .cardIssuer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardIsin = try container.decode(String.self, forKey: .cardIsin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    expYear = try container.decode(Int.self, forKey: .expYear)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    expMonth = try container.decode(Int.self, forKey: .expMonth)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardBrand = try container.decode(String.self, forKey: .cardBrand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardId = try container.decode(String.self, forKey: .cardId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardNumber = try container.decode(String.self, forKey: .cardNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    nickname = try container.decode(String.self, forKey: .nickname)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                
                
                
                do {
                    cardReference = try container.decode(String.self, forKey: .cardReference)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    expired = try container.decode(Bool.self, forKey: .expired)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(cardType, forKey: .cardType)
                
                
                
                
                try? container.encode(cardName, forKey: .cardName)
                
                
                
                
                try? container.encode(cardFingerprint, forKey: .cardFingerprint)
                
                
                
                
                try? container.encode(cardToken, forKey: .cardToken)
                
                
                
                
                try? container.encode(cardIssuer, forKey: .cardIssuer)
                
                
                
                
                try? container.encode(cardIsin, forKey: .cardIsin)
                
                
                
                
                try? container.encode(expYear, forKey: .expYear)
                
                
                
                
                try? container.encode(expMonth, forKey: .expMonth)
                
                
                
                
                try? container.encode(cardBrand, forKey: .cardBrand)
                
                
                
                
                try? container.encode(cardBrandImage, forKey: .cardBrandImage)
                
                
                
                
                try? container.encode(cardId, forKey: .cardId)
                
                
                
                
                try? container.encode(cardNumber, forKey: .cardNumber)
                
                
                
                
                try? container.encode(nickname, forKey: .nickname)
                
                
                
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                
                
                
                try? container.encode(cardReference, forKey: .cardReference)
                
                
                
                
                try? container.encode(expired, forKey: .expired)
                
                
            }
            
        }
        
        /*
            Model: ListCardsResponse
            Used By: Payment
        */
        class ListCardsResponse: Codable {
            
            public var message: String
            
            public var success: Bool
            
            public var data: [Card]?
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case success = "success"
                
                case data = "data"
                
            }

            public init(data: [Card]?, message: String, success: Bool) {
                
                self.message = message
                
                self.success = success
                
                self.data = data
                
            }

            public func duplicate() -> ListCardsResponse {
                let dict = self.dictionary!
                let copy = ListCardsResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                do {
                    data = try container.decode([Card].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
            }
            
        }
        
        /*
            Model: DeletehCardRequest
            Used By: Payment
        */
        class DeletehCardRequest: Codable {
            
            public var cardId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case cardId = "card_id"
                
            }

            public init(cardId: String) {
                
                self.cardId = cardId
                
            }

            public func duplicate() -> DeletehCardRequest {
                let dict = self.dictionary!
                let copy = DeletehCardRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                cardId = try container.decode(String.self, forKey: .cardId)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(cardId, forKey: .cardId)
                
                
            }
            
        }
        
        /*
            Model: DeleteCardsResponse
            Used By: Payment
        */
        class DeleteCardsResponse: Codable {
            
            public var message: String?
            
            public var success: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case success = "success"
                
            }

            public init(message: String?, success: Bool) {
                
                self.message = message
                
                self.success = success
                
            }

            public func duplicate() -> DeleteCardsResponse {
                let dict = self.dictionary!
                let copy = DeleteCardsResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: ValidateCustomerRequest
            Used By: Payment
        */
        class ValidateCustomerRequest: Codable {
            
            public var transactionAmountInPaise: Int
            
            public var payload: String
            
            public var aggregator: String
            
            public var merchantParams: [String: Any]
            
            public var phoneNumber: String
            

            public enum CodingKeys: String, CodingKey {
                
                case transactionAmountInPaise = "transaction_amount_in_paise"
                
                case payload = "payload"
                
                case aggregator = "aggregator"
                
                case merchantParams = "merchant_params"
                
                case phoneNumber = "phone_number"
                
            }

            public init(aggregator: String, merchantParams: [String: Any], payload: String, phoneNumber: String, transactionAmountInPaise: Int) {
                
                self.transactionAmountInPaise = transactionAmountInPaise
                
                self.payload = payload
                
                self.aggregator = aggregator
                
                self.merchantParams = merchantParams
                
                self.phoneNumber = phoneNumber
                
            }

            public func duplicate() -> ValidateCustomerRequest {
                let dict = self.dictionary!
                let copy = ValidateCustomerRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                transactionAmountInPaise = try container.decode(Int.self, forKey: .transactionAmountInPaise)
                
                
                
                
                payload = try container.decode(String.self, forKey: .payload)
                
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                merchantParams = try container.decode([String: Any].self, forKey: .merchantParams)
                
                
                
                
                phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(transactionAmountInPaise, forKey: .transactionAmountInPaise)
                
                
                
                
                try? container.encode(payload, forKey: .payload)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encodeIfPresent(merchantParams, forKey: .merchantParams)
                
                
                
                
                try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
                
                
            }
            
        }
        
        /*
            Model: ValidateCustomerResponse
            Used By: Payment
        */
        class ValidateCustomerResponse: Codable {
            
            public var message: String
            
            public var success: Bool
            
            public var data: [String: Any]
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case success = "success"
                
                case data = "data"
                
            }

            public init(data: [String: Any], message: String, success: Bool) {
                
                self.message = message
                
                self.success = success
                
                self.data = data
                
            }

            public func duplicate() -> ValidateCustomerResponse {
                let dict = self.dictionary!
                let copy = ValidateCustomerResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                data = try container.decode([String: Any].self, forKey: .data)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
            }
            
        }
        
        /*
            Model: ChargeCustomerRequest
            Used By: Payment
        */
        class ChargeCustomerRequest: Codable {
            
            public var orderId: String
            
            public var transactionToken: String?
            
            public var aggregator: String
            
            public var verified: Bool?
            
            public var amount: Int
            

            public enum CodingKeys: String, CodingKey {
                
                case orderId = "order_id"
                
                case transactionToken = "transaction_token"
                
                case aggregator = "aggregator"
                
                case verified = "verified"
                
                case amount = "amount"
                
            }

            public init(aggregator: String, amount: Int, orderId: String, transactionToken: String?, verified: Bool?) {
                
                self.orderId = orderId
                
                self.transactionToken = transactionToken
                
                self.aggregator = aggregator
                
                self.verified = verified
                
                self.amount = amount
                
            }

            public func duplicate() -> ChargeCustomerRequest {
                let dict = self.dictionary!
                let copy = ChargeCustomerRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
                do {
                    transactionToken = try container.decode(String.self, forKey: .transactionToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                do {
                    verified = try container.decode(Bool.self, forKey: .verified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                amount = try container.decode(Int.self, forKey: .amount)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encode(transactionToken, forKey: .transactionToken)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encode(verified, forKey: .verified)
                
                
                
                
                try? container.encode(amount, forKey: .amount)
                
                
            }
            
        }
        
        /*
            Model: ChargeCustomerResponse
            Used By: Payment
        */
        class ChargeCustomerResponse: Codable {
            
            public var success: Bool
            
            public var orderId: String
            
            public var deliveryAddressId: String?
            
            public var status: String
            
            public var aggregator: String
            
            public var cartId: String?
            
            public var message: String
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case orderId = "order_id"
                
                case deliveryAddressId = "delivery_address_id"
                
                case status = "status"
                
                case aggregator = "aggregator"
                
                case cartId = "cart_id"
                
                case message = "message"
                
            }

            public init(aggregator: String, cartId: String?, deliveryAddressId: String?, message: String, orderId: String, status: String, success: Bool) {
                
                self.success = success
                
                self.orderId = orderId
                
                self.deliveryAddressId = deliveryAddressId
                
                self.status = status
                
                self.aggregator = aggregator
                
                self.cartId = cartId
                
                self.message = message
                
            }

            public func duplicate() -> ChargeCustomerResponse {
                let dict = self.dictionary!
                let copy = ChargeCustomerResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
                do {
                    deliveryAddressId = try container.decode(String.self, forKey: .deliveryAddressId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                status = try container.decode(String.self, forKey: .status)
                
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                do {
                    cartId = try container.decode(String.self, forKey: .cartId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encode(deliveryAddressId, forKey: .deliveryAddressId)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encode(cartId, forKey: .cartId)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
            }
            
        }
        
        /*
            Model: PaymentInitializationRequest
            Used By: Payment
        */
        class PaymentInitializationRequest: Codable {
            
            public var timeout: Int?
            
            public var orderId: String
            
            public var method: String
            
            public var razorpayPaymentId: String?
            
            public var contact: String
            
            public var aggregator: String
            
            public var currency: String
            
            public var email: String
            
            public var amount: Int
            
            public var merchantOrderId: String
            
            public var customerId: String
            
            public var vpa: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case timeout = "timeout"
                
                case orderId = "order_id"
                
                case method = "method"
                
                case razorpayPaymentId = "razorpay_payment_id"
                
                case contact = "contact"
                
                case aggregator = "aggregator"
                
                case currency = "currency"
                
                case email = "email"
                
                case amount = "amount"
                
                case merchantOrderId = "merchant_order_id"
                
                case customerId = "customer_id"
                
                case vpa = "vpa"
                
            }

            public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String?, timeout: Int?, vpa: String?) {
                
                self.timeout = timeout
                
                self.orderId = orderId
                
                self.method = method
                
                self.razorpayPaymentId = razorpayPaymentId
                
                self.contact = contact
                
                self.aggregator = aggregator
                
                self.currency = currency
                
                self.email = email
                
                self.amount = amount
                
                self.merchantOrderId = merchantOrderId
                
                self.customerId = customerId
                
                self.vpa = vpa
                
            }

            public func duplicate() -> PaymentInitializationRequest {
                let dict = self.dictionary!
                let copy = PaymentInitializationRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    timeout = try container.decode(Int.self, forKey: .timeout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
                method = try container.decode(String.self, forKey: .method)
                
                
                
                
                do {
                    razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                contact = try container.decode(String.self, forKey: .contact)
                
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                currency = try container.decode(String.self, forKey: .currency)
                
                
                
                
                email = try container.decode(String.self, forKey: .email)
                
                
                
                
                amount = try container.decode(Int.self, forKey: .amount)
                
                
                
                
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                
                
                
                customerId = try container.decode(String.self, forKey: .customerId)
                
                
                
                
                do {
                    vpa = try container.decode(String.self, forKey: .vpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(timeout, forKey: .timeout)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encodeIfPresent(method, forKey: .method)
                
                
                
                
                try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)
                
                
                
                
                try? container.encodeIfPresent(contact, forKey: .contact)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encode(amount, forKey: .amount)
                
                
                
                
                try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
                
                
                
                
                try? container.encodeIfPresent(customerId, forKey: .customerId)
                
                
                
                
                try? container.encode(vpa, forKey: .vpa)
                
                
            }
            
        }
        
        /*
            Model: PaymentInitializationResponse
            Used By: Payment
        */
        class PaymentInitializationResponse: Codable {
            
            public var upiPollUrl: String?
            
            public var timeout: Int?
            
            public var success: Bool
            
            public var method: String
            
            public var razorpayPaymentId: String?
            
            public var status: String?
            
            public var aggregator: String
            
            public var currency: String?
            
            public var amount: Int?
            
            public var merchantOrderId: String
            
            public var pollingUrl: String
            
            public var aggregatorOrderId: String?
            
            public var bqrImage: String?
            
            public var customerId: String?
            
            public var vpa: String?
            
            public var virtualId: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case upiPollUrl = "upi_poll_url"
                
                case timeout = "timeout"
                
                case success = "success"
                
                case method = "method"
                
                case razorpayPaymentId = "razorpay_payment_id"
                
                case status = "status"
                
                case aggregator = "aggregator"
                
                case currency = "currency"
                
                case amount = "amount"
                
                case merchantOrderId = "merchant_order_id"
                
                case pollingUrl = "polling_url"
                
                case aggregatorOrderId = "aggregator_order_id"
                
                case bqrImage = "bqr_image"
                
                case customerId = "customer_id"
                
                case vpa = "vpa"
                
                case virtualId = "virtual_id"
                
            }

            public init(aggregator: String, aggregatorOrderId: String?, amount: Int?, bqrImage: String?, currency: String?, customerId: String?, merchantOrderId: String, method: String, pollingUrl: String, razorpayPaymentId: String?, status: String?, success: Bool, timeout: Int?, upiPollUrl: String?, virtualId: String?, vpa: String?) {
                
                self.upiPollUrl = upiPollUrl
                
                self.timeout = timeout
                
                self.success = success
                
                self.method = method
                
                self.razorpayPaymentId = razorpayPaymentId
                
                self.status = status
                
                self.aggregator = aggregator
                
                self.currency = currency
                
                self.amount = amount
                
                self.merchantOrderId = merchantOrderId
                
                self.pollingUrl = pollingUrl
                
                self.aggregatorOrderId = aggregatorOrderId
                
                self.bqrImage = bqrImage
                
                self.customerId = customerId
                
                self.vpa = vpa
                
                self.virtualId = virtualId
                
            }

            public func duplicate() -> PaymentInitializationResponse {
                let dict = self.dictionary!
                let copy = PaymentInitializationResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    upiPollUrl = try container.decode(String.self, forKey: .upiPollUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    timeout = try container.decode(Int.self, forKey: .timeout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                method = try container.decode(String.self, forKey: .method)
                
                
                
                
                do {
                    razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    amount = try container.decode(Int.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                
                
                
                pollingUrl = try container.decode(String.self, forKey: .pollingUrl)
                
                
                
                
                do {
                    aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    bqrImage = try container.decode(String.self, forKey: .bqrImage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    customerId = try container.decode(String.self, forKey: .customerId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    vpa = try container.decode(String.self, forKey: .vpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    virtualId = try container.decode(String.self, forKey: .virtualId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(upiPollUrl, forKey: .upiPollUrl)
                
                
                
                
                try? container.encode(timeout, forKey: .timeout)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(method, forKey: .method)
                
                
                
                
                try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encode(currency, forKey: .currency)
                
                
                
                
                try? container.encode(amount, forKey: .amount)
                
                
                
                
                try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
                
                
                
                
                try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)
                
                
                
                
                try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
                
                
                
                
                try? container.encode(bqrImage, forKey: .bqrImage)
                
                
                
                
                try? container.encode(customerId, forKey: .customerId)
                
                
                
                
                try? container.encode(vpa, forKey: .vpa)
                
                
                
                
                try? container.encode(virtualId, forKey: .virtualId)
                
                
            }
            
        }
        
        /*
            Model: PaymentStatusUpdateRequest
            Used By: Payment
        */
        class PaymentStatusUpdateRequest: Codable {
            
            public var orderId: String
            
            public var method: String
            
            public var contact: String
            
            public var status: String
            
            public var aggregator: String
            
            public var currency: String
            
            public var email: String
            
            public var amount: Int
            
            public var merchantOrderId: String
            
            public var customerId: String
            
            public var vpa: String
            

            public enum CodingKeys: String, CodingKey {
                
                case orderId = "order_id"
                
                case method = "method"
                
                case contact = "contact"
                
                case status = "status"
                
                case aggregator = "aggregator"
                
                case currency = "currency"
                
                case email = "email"
                
                case amount = "amount"
                
                case merchantOrderId = "merchant_order_id"
                
                case customerId = "customer_id"
                
                case vpa = "vpa"
                
            }

            public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
                
                self.orderId = orderId
                
                self.method = method
                
                self.contact = contact
                
                self.status = status
                
                self.aggregator = aggregator
                
                self.currency = currency
                
                self.email = email
                
                self.amount = amount
                
                self.merchantOrderId = merchantOrderId
                
                self.customerId = customerId
                
                self.vpa = vpa
                
            }

            public func duplicate() -> PaymentStatusUpdateRequest {
                let dict = self.dictionary!
                let copy = PaymentStatusUpdateRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
                method = try container.decode(String.self, forKey: .method)
                
                
                
                
                contact = try container.decode(String.self, forKey: .contact)
                
                
                
                
                status = try container.decode(String.self, forKey: .status)
                
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                currency = try container.decode(String.self, forKey: .currency)
                
                
                
                
                email = try container.decode(String.self, forKey: .email)
                
                
                
                
                amount = try container.decode(Int.self, forKey: .amount)
                
                
                
                
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                
                
                
                customerId = try container.decode(String.self, forKey: .customerId)
                
                
                
                
                vpa = try container.decode(String.self, forKey: .vpa)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encodeIfPresent(method, forKey: .method)
                
                
                
                
                try? container.encodeIfPresent(contact, forKey: .contact)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encode(amount, forKey: .amount)
                
                
                
                
                try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
                
                
                
                
                try? container.encodeIfPresent(customerId, forKey: .customerId)
                
                
                
                
                try? container.encodeIfPresent(vpa, forKey: .vpa)
                
                
            }
            
        }
        
        /*
            Model: PaymentStatusUpdateResponse
            Used By: Payment
        */
        class PaymentStatusUpdateResponse: Codable {
            
            public var status: String
            
            public var aggregatorName: String
            
            public var retry: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case status = "status"
                
                case aggregatorName = "aggregator_name"
                
                case retry = "retry"
                
            }

            public init(aggregatorName: String, retry: Bool, status: String) {
                
                self.status = status
                
                self.aggregatorName = aggregatorName
                
                self.retry = retry
                
            }

            public func duplicate() -> PaymentStatusUpdateResponse {
                let dict = self.dictionary!
                let copy = PaymentStatusUpdateResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                status = try container.decode(String.self, forKey: .status)
                
                
                
                
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                
                
                
                retry = try container.decode(Bool.self, forKey: .retry)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                
                
                
                try? container.encodeIfPresent(retry, forKey: .retry)
                
                
            }
            
        }
        
        /*
            Model: PaymentModeLogo
            Used By: Payment
        */
        class PaymentModeLogo: Codable {
            
            public var large: String
            
            public var small: String
            

            public enum CodingKeys: String, CodingKey {
                
                case large = "large"
                
                case small = "small"
                
            }

            public init(large: String, small: String) {
                
                self.large = large
                
                self.small = small
                
            }

            public func duplicate() -> PaymentModeLogo {
                let dict = self.dictionary!
                let copy = PaymentModeLogo(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                large = try container.decode(String.self, forKey: .large)
                
                
                
                
                small = try container.decode(String.self, forKey: .small)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(large, forKey: .large)
                
                
                
                
                try? container.encodeIfPresent(small, forKey: .small)
                
                
            }
            
        }
        
        /*
            Model: IntentAppErrorList
            Used By: Payment
        */
        class IntentAppErrorList: Codable {
            
            public var code: String?
            
            public var packageName: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case code = "code"
                
                case packageName = "package_name"
                
            }

            public init(code: String?, packageName: String?) {
                
                self.code = code
                
                self.packageName = packageName
                
            }

            public func duplicate() -> IntentAppErrorList {
                let dict = self.dictionary!
                let copy = IntentAppErrorList(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    packageName = try container.decode(String.self, forKey: .packageName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(code, forKey: .code)
                
                
                
                
                try? container.encode(packageName, forKey: .packageName)
                
                
            }
            
        }
        
        /*
            Model: IntentApp
            Used By: Payment
        */
        class IntentApp: Codable {
            
            public var code: String?
            
            public var logos: PaymentModeLogo?
            
            public var displayName: String?
            
            public var packageName: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case code = "code"
                
                case logos = "logos"
                
                case displayName = "display_name"
                
                case packageName = "package_name"
                
            }

            public init(code: String?, displayName: String?, logos: PaymentModeLogo?, packageName: String?) {
                
                self.code = code
                
                self.logos = logos
                
                self.displayName = displayName
                
                self.packageName = packageName
                
            }

            public func duplicate() -> IntentApp {
                let dict = self.dictionary!
                let copy = IntentApp(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    logos = try container.decode(PaymentModeLogo.self, forKey: .logos)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    packageName = try container.decode(String.self, forKey: .packageName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(code, forKey: .code)
                
                
                
                
                try? container.encode(logos, forKey: .logos)
                
                
                
                
                try? container.encode(displayName, forKey: .displayName)
                
                
                
                
                try? container.encode(packageName, forKey: .packageName)
                
                
            }
            
        }
        
        /*
            Model: PaymentModeList
            Used By: Payment
        */
        class PaymentModeList: Codable {
            
            public var code: String?
            
            public var intentFlow: Bool?
            
            public var cardType: String?
            
            public var timeout: Int?
            
            public var name: String?
            
            public var cardToken: String?
            
            public var cardReference: String?
            
            public var retryCount: Int?
            
            public var cardFingerprint: String?
            
            public var displayPriority: Int?
            
            public var expMonth: Int?
            
            public var cardBrand: String?
            
            public var cardBrandImage: String?
            
            public var displayName: String?
            
            public var cardId: String?
            
            public var cardIssuer: String?
            
            public var cardIsin: String?
            
            public var expYear: Int?
            
            public var cardNumber: String?
            
            public var intentAppErrorList: [String]?
            
            public var nickname: String?
            
            public var aggregatorName: String
            
            public var expired: Bool?
            
            public var cardName: String?
            
            public var logoUrl: PaymentModeLogo?
            
            public var intentAppErrorDictList: [IntentAppErrorList]?
            
            public var merchantCode: String?
            
            public var fyndVpa: String?
            
            public var intentApp: [IntentApp]?
            

            public enum CodingKeys: String, CodingKey {
                
                case code = "code"
                
                case intentFlow = "intent_flow"
                
                case cardType = "card_type"
                
                case timeout = "timeout"
                
                case name = "name"
                
                case cardToken = "card_token"
                
                case cardReference = "card_reference"
                
                case retryCount = "retry_count"
                
                case cardFingerprint = "card_fingerprint"
                
                case displayPriority = "display_priority"
                
                case expMonth = "exp_month"
                
                case cardBrand = "card_brand"
                
                case cardBrandImage = "card_brand_image"
                
                case displayName = "display_name"
                
                case cardId = "card_id"
                
                case cardIssuer = "card_issuer"
                
                case cardIsin = "card_isin"
                
                case expYear = "exp_year"
                
                case cardNumber = "card_number"
                
                case intentAppErrorList = "intent_app_error_list"
                
                case nickname = "nickname"
                
                case aggregatorName = "aggregator_name"
                
                case expired = "expired"
                
                case cardName = "card_name"
                
                case logoUrl = "logo_url"
                
                case intentAppErrorDictList = "intent_app_error_dict_list"
                
                case merchantCode = "merchant_code"
                
                case fyndVpa = "fynd_vpa"
                
                case intentApp = "intent_app"
                
            }

            public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, code: String?, displayName: String?, displayPriority: Int?, expired: Bool?, expMonth: Int?, expYear: Int?, fyndVpa: String?, intentApp: [IntentApp]?, intentAppErrorDictList: [IntentAppErrorList]?, intentAppErrorList: [String]?, intentFlow: Bool?, logoUrl: PaymentModeLogo?, merchantCode: String?, name: String?, nickname: String?, retryCount: Int?, timeout: Int?) {
                
                self.code = code
                
                self.intentFlow = intentFlow
                
                self.cardType = cardType
                
                self.timeout = timeout
                
                self.name = name
                
                self.cardToken = cardToken
                
                self.cardReference = cardReference
                
                self.retryCount = retryCount
                
                self.cardFingerprint = cardFingerprint
                
                self.displayPriority = displayPriority
                
                self.expMonth = expMonth
                
                self.cardBrand = cardBrand
                
                self.cardBrandImage = cardBrandImage
                
                self.displayName = displayName
                
                self.cardId = cardId
                
                self.cardIssuer = cardIssuer
                
                self.cardIsin = cardIsin
                
                self.expYear = expYear
                
                self.cardNumber = cardNumber
                
                self.intentAppErrorList = intentAppErrorList
                
                self.nickname = nickname
                
                self.aggregatorName = aggregatorName
                
                self.expired = expired
                
                self.cardName = cardName
                
                self.logoUrl = logoUrl
                
                self.intentAppErrorDictList = intentAppErrorDictList
                
                self.merchantCode = merchantCode
                
                self.fyndVpa = fyndVpa
                
                self.intentApp = intentApp
                
            }

            public func duplicate() -> PaymentModeList {
                let dict = self.dictionary!
                let copy = PaymentModeList(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    intentFlow = try container.decode(Bool.self, forKey: .intentFlow)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardType = try container.decode(String.self, forKey: .cardType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    timeout = try container.decode(Int.self, forKey: .timeout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardToken = try container.decode(String.self, forKey: .cardToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardReference = try container.decode(String.self, forKey: .cardReference)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    retryCount = try container.decode(Int.self, forKey: .retryCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardFingerprint = try container.decode(String.self, forKey: .cardFingerprint)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    displayPriority = try container.decode(Int.self, forKey: .displayPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    expMonth = try container.decode(Int.self, forKey: .expMonth)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardBrand = try container.decode(String.self, forKey: .cardBrand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardId = try container.decode(String.self, forKey: .cardId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardIssuer = try container.decode(String.self, forKey: .cardIssuer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardIsin = try container.decode(String.self, forKey: .cardIsin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    expYear = try container.decode(Int.self, forKey: .expYear)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardNumber = try container.decode(String.self, forKey: .cardNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    intentAppErrorList = try container.decode([String].self, forKey: .intentAppErrorList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    nickname = try container.decode(String.self, forKey: .nickname)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                
                
                
                do {
                    expired = try container.decode(Bool.self, forKey: .expired)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardName = try container.decode(String.self, forKey: .cardName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    logoUrl = try container.decode(PaymentModeLogo.self, forKey: .logoUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    intentAppErrorDictList = try container.decode([IntentAppErrorList].self, forKey: .intentAppErrorDictList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    merchantCode = try container.decode(String.self, forKey: .merchantCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    fyndVpa = try container.decode(String.self, forKey: .fyndVpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    intentApp = try container.decode([IntentApp].self, forKey: .intentApp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(code, forKey: .code)
                
                
                
                
                try? container.encode(intentFlow, forKey: .intentFlow)
                
                
                
                
                try? container.encode(cardType, forKey: .cardType)
                
                
                
                
                try? container.encode(timeout, forKey: .timeout)
                
                
                
                
                try? container.encode(name, forKey: .name)
                
                
                
                
                try? container.encode(cardToken, forKey: .cardToken)
                
                
                
                
                try? container.encode(cardReference, forKey: .cardReference)
                
                
                
                
                try? container.encode(retryCount, forKey: .retryCount)
                
                
                
                
                try? container.encode(cardFingerprint, forKey: .cardFingerprint)
                
                
                
                
                try? container.encode(displayPriority, forKey: .displayPriority)
                
                
                
                
                try? container.encode(expMonth, forKey: .expMonth)
                
                
                
                
                try? container.encode(cardBrand, forKey: .cardBrand)
                
                
                
                
                try? container.encode(cardBrandImage, forKey: .cardBrandImage)
                
                
                
                
                try? container.encode(displayName, forKey: .displayName)
                
                
                
                
                try? container.encode(cardId, forKey: .cardId)
                
                
                
                
                try? container.encode(cardIssuer, forKey: .cardIssuer)
                
                
                
                
                try? container.encode(cardIsin, forKey: .cardIsin)
                
                
                
                
                try? container.encode(expYear, forKey: .expYear)
                
                
                
                
                try? container.encode(cardNumber, forKey: .cardNumber)
                
                
                
                
                try? container.encode(intentAppErrorList, forKey: .intentAppErrorList)
                
                
                
                
                try? container.encode(nickname, forKey: .nickname)
                
                
                
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                
                
                
                try? container.encode(expired, forKey: .expired)
                
                
                
                
                try? container.encode(cardName, forKey: .cardName)
                
                
                
                
                try? container.encode(logoUrl, forKey: .logoUrl)
                
                
                
                
                try? container.encode(intentAppErrorDictList, forKey: .intentAppErrorDictList)
                
                
                
                
                try? container.encode(merchantCode, forKey: .merchantCode)
                
                
                
                
                try? container.encode(fyndVpa, forKey: .fyndVpa)
                
                
                
                
                try? container.encode(intentApp, forKey: .intentApp)
                
                
            }
            
        }
        
        /*
            Model: RootPaymentMode
            Used By: Payment
        */
        class RootPaymentMode: Codable {
            
            public var name: String
            
            public var displayPriority: Int
            
            public var addCardEnabled: Bool?
            
            public var displayName: String
            
            public var anonymousEnable: Bool?
            
            public var aggregatorName: String?
            
            public var list: [PaymentModeList]?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case displayPriority = "display_priority"
                
                case addCardEnabled = "add_card_enabled"
                
                case displayName = "display_name"
                
                case anonymousEnable = "anonymous_enable"
                
                case aggregatorName = "aggregator_name"
                
                case list = "list"
                
            }

            public init(addCardEnabled: Bool?, aggregatorName: String?, anonymousEnable: Bool?, displayName: String, displayPriority: Int, list: [PaymentModeList]?, name: String) {
                
                self.name = name
                
                self.displayPriority = displayPriority
                
                self.addCardEnabled = addCardEnabled
                
                self.displayName = displayName
                
                self.anonymousEnable = anonymousEnable
                
                self.aggregatorName = aggregatorName
                
                self.list = list
                
            }

            public func duplicate() -> RootPaymentMode {
                let dict = self.dictionary!
                let copy = RootPaymentMode(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                name = try container.decode(String.self, forKey: .name)
                
                
                
                
                displayPriority = try container.decode(Int.self, forKey: .displayPriority)
                
                
                
                
                do {
                    addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                displayName = try container.decode(String.self, forKey: .displayName)
                
                
                
                
                do {
                    anonymousEnable = try container.decode(Bool.self, forKey: .anonymousEnable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    list = try container.decode([PaymentModeList].self, forKey: .list)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
                
                
                
                
                try? container.encode(addCardEnabled, forKey: .addCardEnabled)
                
                
                
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                
                
                
                try? container.encode(anonymousEnable, forKey: .anonymousEnable)
                
                
                
                
                try? container.encode(aggregatorName, forKey: .aggregatorName)
                
                
                
                
                try? container.encodeIfPresent(list, forKey: .list)
                
                
            }
            
        }
        
        /*
            Model: AggregatorRoute
            Used By: Payment
        */
        class AggregatorRoute: Codable {
            
            public var paymentFlowData: String?
            
            public var paymentFlow: String?
            
            public var data: [String: Any]?
            
            public var apiLink: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case paymentFlowData = "payment_flow_data"
                
                case paymentFlow = "payment_flow"
                
                case data = "data"
                
                case apiLink = "api_link"
                
            }

            public init(apiLink: String?, data: [String: Any]?, paymentFlow: String?, paymentFlowData: String?) {
                
                self.paymentFlowData = paymentFlowData
                
                self.paymentFlow = paymentFlow
                
                self.data = data
                
                self.apiLink = apiLink
                
            }

            public func duplicate() -> AggregatorRoute {
                let dict = self.dictionary!
                let copy = AggregatorRoute(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    paymentFlowData = try container.decode(String.self, forKey: .paymentFlowData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentFlow = try container.decode(String.self, forKey: .paymentFlow)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    data = try container.decode([String: Any].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    apiLink = try container.decode(String.self, forKey: .apiLink)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(paymentFlowData, forKey: .paymentFlowData)
                
                
                
                
                try? container.encode(paymentFlow, forKey: .paymentFlow)
                
                
                
                
                try? container.encode(data, forKey: .data)
                
                
                
                
                try? container.encode(apiLink, forKey: .apiLink)
                
                
            }
            
        }
        
        /*
            Model: PaymentFlow
            Used By: Payment
        */
        class PaymentFlow: Codable {
            
            public var razorpay: AggregatorRoute?
            
            public var stripe: AggregatorRoute?
            
            public var fynd: AggregatorRoute?
            
            public var payubiz: AggregatorRoute?
            
            public var rupifi: AggregatorRoute?
            
            public var ccavenue: AggregatorRoute?
            
            public var mswipe: AggregatorRoute?
            
            public var juspay: AggregatorRoute?
            
            public var bqrRazorpay: AggregatorRoute?
            
            public var upiRazorpay: AggregatorRoute?
            
            public var simpl: AggregatorRoute?
            

            public enum CodingKeys: String, CodingKey {
                
                case razorpay = "razorpay"
                
                case stripe = "stripe"
                
                case fynd = "fynd"
                
                case payubiz = "payubiz"
                
                case rupifi = "rupifi"
                
                case ccavenue = "ccavenue"
                
                case mswipe = "mswipe"
                
                case juspay = "juspay"
                
                case bqrRazorpay = "bqr_razorpay"
                
                case upiRazorpay = "upi_razorpay"
                
                case simpl = "simpl"
                
            }

            public init(bqrRazorpay: AggregatorRoute?, ccavenue: AggregatorRoute?, fynd: AggregatorRoute?, juspay: AggregatorRoute?, mswipe: AggregatorRoute?, payubiz: AggregatorRoute?, razorpay: AggregatorRoute?, rupifi: AggregatorRoute?, simpl: AggregatorRoute?, stripe: AggregatorRoute?, upiRazorpay: AggregatorRoute?) {
                
                self.razorpay = razorpay
                
                self.stripe = stripe
                
                self.fynd = fynd
                
                self.payubiz = payubiz
                
                self.rupifi = rupifi
                
                self.ccavenue = ccavenue
                
                self.mswipe = mswipe
                
                self.juspay = juspay
                
                self.bqrRazorpay = bqrRazorpay
                
                self.upiRazorpay = upiRazorpay
                
                self.simpl = simpl
                
            }

            public func duplicate() -> PaymentFlow {
                let dict = self.dictionary!
                let copy = PaymentFlow(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    razorpay = try container.decode(AggregatorRoute.self, forKey: .razorpay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    stripe = try container.decode(AggregatorRoute.self, forKey: .stripe)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    fynd = try container.decode(AggregatorRoute.self, forKey: .fynd)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    payubiz = try container.decode(AggregatorRoute.self, forKey: .payubiz)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    rupifi = try container.decode(AggregatorRoute.self, forKey: .rupifi)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    ccavenue = try container.decode(AggregatorRoute.self, forKey: .ccavenue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    mswipe = try container.decode(AggregatorRoute.self, forKey: .mswipe)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    juspay = try container.decode(AggregatorRoute.self, forKey: .juspay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    bqrRazorpay = try container.decode(AggregatorRoute.self, forKey: .bqrRazorpay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    upiRazorpay = try container.decode(AggregatorRoute.self, forKey: .upiRazorpay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    simpl = try container.decode(AggregatorRoute.self, forKey: .simpl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(razorpay, forKey: .razorpay)
                
                
                
                
                try? container.encode(stripe, forKey: .stripe)
                
                
                
                
                try? container.encode(fynd, forKey: .fynd)
                
                
                
                
                try? container.encode(payubiz, forKey: .payubiz)
                
                
                
                
                try? container.encode(rupifi, forKey: .rupifi)
                
                
                
                
                try? container.encode(ccavenue, forKey: .ccavenue)
                
                
                
                
                try? container.encode(mswipe, forKey: .mswipe)
                
                
                
                
                try? container.encode(juspay, forKey: .juspay)
                
                
                
                
                try? container.encode(bqrRazorpay, forKey: .bqrRazorpay)
                
                
                
                
                try? container.encode(upiRazorpay, forKey: .upiRazorpay)
                
                
                
                
                try? container.encode(simpl, forKey: .simpl)
                
                
            }
            
        }
        
        /*
            Model: PaymentOptionAndFlow
            Used By: Payment
        */
        class PaymentOptionAndFlow: Codable {
            
            public var paymentOption: [RootPaymentMode]
            
            public var paymentFlows: PaymentFlow
            

            public enum CodingKeys: String, CodingKey {
                
                case paymentOption = "payment_option"
                
                case paymentFlows = "payment_flows"
                
            }

            public init(paymentFlows: PaymentFlow, paymentOption: [RootPaymentMode]) {
                
                self.paymentOption = paymentOption
                
                self.paymentFlows = paymentFlows
                
            }

            public func duplicate() -> PaymentOptionAndFlow {
                let dict = self.dictionary!
                let copy = PaymentOptionAndFlow(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                paymentOption = try container.decode([RootPaymentMode].self, forKey: .paymentOption)
                
                
                
                
                paymentFlows = try container.decode(PaymentFlow.self, forKey: .paymentFlows)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(paymentOption, forKey: .paymentOption)
                
                
                
                
                try? container.encodeIfPresent(paymentFlows, forKey: .paymentFlows)
                
                
            }
            
        }
        
        /*
            Model: PaymentModeRouteResponse
            Used By: Payment
        */
        class PaymentModeRouteResponse: Codable {
            
            public var success: Bool
            
            public var paymentOptions: PaymentOptionAndFlow
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case paymentOptions = "payment_options"
                
            }

            public init(paymentOptions: PaymentOptionAndFlow, success: Bool) {
                
                self.success = success
                
                self.paymentOptions = paymentOptions
                
            }

            public func duplicate() -> PaymentModeRouteResponse {
                let dict = self.dictionary!
                let copy = PaymentModeRouteResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                paymentOptions = try container.decode(PaymentOptionAndFlow.self, forKey: .paymentOptions)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
                
                
            }
            
        }
        
        /*
            Model: RupifiBannerData
            Used By: Payment
        */
        class RupifiBannerData: Codable {
            
            public var kycUrl: String?
            
            public var status: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case kycUrl = "kyc_url"
                
                case status = "status"
                
            }

            public init(kycUrl: String?, status: String?) {
                
                self.kycUrl = kycUrl
                
                self.status = status
                
            }

            public func duplicate() -> RupifiBannerData {
                let dict = self.dictionary!
                let copy = RupifiBannerData(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    kycUrl = try container.decode(String.self, forKey: .kycUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(kycUrl, forKey: .kycUrl)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
            }
            
        }
        
        /*
            Model: RupifiBannerResponse
            Used By: Payment
        */
        class RupifiBannerResponse: Codable {
            
            public var success: Bool
            
            public var data: RupifiBannerData
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case data = "data"
                
            }

            public init(data: RupifiBannerData, success: Bool) {
                
                self.success = success
                
                self.data = data
                
            }

            public func duplicate() -> RupifiBannerResponse {
                let dict = self.dictionary!
                let copy = RupifiBannerResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                data = try container.decode(RupifiBannerData.self, forKey: .data)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
            }
            
        }
        
        /*
            Model: TransferItemsDetails
            Used By: Payment
        */
        class TransferItemsDetails: Codable {
            
            public var name: String
            
            public var displayName: String?
            
            public var logoLarge: String
            
            public var logoSmall: String
            
            public var id: Int
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case displayName = "display_name"
                
                case logoLarge = "logo_large"
                
                case logoSmall = "logo_small"
                
                case id = "id"
                
            }

            public init(displayName: String?, id: Int, logoLarge: String, logoSmall: String, name: String) {
                
                self.name = name
                
                self.displayName = displayName
                
                self.logoLarge = logoLarge
                
                self.logoSmall = logoSmall
                
                self.id = id
                
            }

            public func duplicate() -> TransferItemsDetails {
                let dict = self.dictionary!
                let copy = TransferItemsDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                name = try container.decode(String.self, forKey: .name)
                
                
                
                
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                logoLarge = try container.decode(String.self, forKey: .logoLarge)
                
                
                
                
                logoSmall = try container.decode(String.self, forKey: .logoSmall)
                
                
                
                
                id = try container.decode(Int.self, forKey: .id)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                
                
                
                try? container.encodeIfPresent(logoLarge, forKey: .logoLarge)
                
                
                
                
                try? container.encodeIfPresent(logoSmall, forKey: .logoSmall)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
            }
            
        }
        
        /*
            Model: TransferModeDetails
            Used By: Payment
        */
        class TransferModeDetails: Codable {
            
            public var displayName: String
            
            public var items: [TransferItemsDetails]?
            

            public enum CodingKeys: String, CodingKey {
                
                case displayName = "display_name"
                
                case items = "items"
                
            }

            public init(displayName: String, items: [TransferItemsDetails]?) {
                
                self.displayName = displayName
                
                self.items = items
                
            }

            public func duplicate() -> TransferModeDetails {
                let dict = self.dictionary!
                let copy = TransferModeDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                displayName = try container.decode(String.self, forKey: .displayName)
                
                
                
                
                do {
                    items = try container.decode([TransferItemsDetails].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
            }
            
        }
        
        /*
            Model: TransferModeResponse
            Used By: Payment
        */
        class TransferModeResponse: Codable {
            
            public var data: [TransferModeDetails]
            

            public enum CodingKeys: String, CodingKey {
                
                case data = "data"
                
            }

            public init(data: [TransferModeDetails]) {
                
                self.data = data
                
            }

            public func duplicate() -> TransferModeResponse {
                let dict = self.dictionary!
                let copy = TransferModeResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                data = try container.decode([TransferModeDetails].self, forKey: .data)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
            }
            
        }
        
        /*
            Model: UpdateRefundTransferModeRequest
            Used By: Payment
        */
        class UpdateRefundTransferModeRequest: Codable {
            
            public var enable: Bool
            
            public var transferMode: String
            

            public enum CodingKeys: String, CodingKey {
                
                case enable = "enable"
                
                case transferMode = "transfer_mode"
                
            }

            public init(enable: Bool, transferMode: String) {
                
                self.enable = enable
                
                self.transferMode = transferMode
                
            }

            public func duplicate() -> UpdateRefundTransferModeRequest {
                let dict = self.dictionary!
                let copy = UpdateRefundTransferModeRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                enable = try container.decode(Bool.self, forKey: .enable)
                
                
                
                
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(enable, forKey: .enable)
                
                
                
                
                try? container.encodeIfPresent(transferMode, forKey: .transferMode)
                
                
            }
            
        }
        
        /*
            Model: UpdateRefundTransferModeResponse
            Used By: Payment
        */
        class UpdateRefundTransferModeResponse: Codable {
            
            public var success: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
            }

            public init(success: Bool?) {
                
                self.success = success
                
            }

            public func duplicate() -> UpdateRefundTransferModeResponse {
                let dict = self.dictionary!
                let copy = UpdateRefundTransferModeResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: OrderBeneficiaryDetails
            Used By: Payment
        */
        class OrderBeneficiaryDetails: Codable {
            
            public var title: String
            
            public var branchName: Bool?
            
            public var bankName: String
            
            public var beneficiaryId: String
            
            public var createdOn: String
            
            public var ifscCode: String
            
            public var address: String
            
            public var displayName: String
            
            public var id: Int
            
            public var comment: Bool?
            
            public var mobile: Bool?
            
            public var subtitle: String
            
            public var delightsUserName: String?
            
            public var accountHolder: String
            
            public var email: String
            
            public var isActive: Bool
            
            public var modifiedOn: String
            
            public var accountNo: String
            
            public var transferMode: String
            

            public enum CodingKeys: String, CodingKey {
                
                case title = "title"
                
                case branchName = "branch_name"
                
                case bankName = "bank_name"
                
                case beneficiaryId = "beneficiary_id"
                
                case createdOn = "created_on"
                
                case ifscCode = "ifsc_code"
                
                case address = "address"
                
                case displayName = "display_name"
                
                case id = "id"
                
                case comment = "comment"
                
                case mobile = "mobile"
                
                case subtitle = "subtitle"
                
                case delightsUserName = "delights_user_name"
                
                case accountHolder = "account_holder"
                
                case email = "email"
                
                case isActive = "is_active"
                
                case modifiedOn = "modified_on"
                
                case accountNo = "account_no"
                
                case transferMode = "transfer_mode"
                
            }

            public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool?, comment: Bool?, createdOn: String, delightsUserName: String?, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool?, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
                
                self.title = title
                
                self.branchName = branchName
                
                self.bankName = bankName
                
                self.beneficiaryId = beneficiaryId
                
                self.createdOn = createdOn
                
                self.ifscCode = ifscCode
                
                self.address = address
                
                self.displayName = displayName
                
                self.id = id
                
                self.comment = comment
                
                self.mobile = mobile
                
                self.subtitle = subtitle
                
                self.delightsUserName = delightsUserName
                
                self.accountHolder = accountHolder
                
                self.email = email
                
                self.isActive = isActive
                
                self.modifiedOn = modifiedOn
                
                self.accountNo = accountNo
                
                self.transferMode = transferMode
                
            }

            public func duplicate() -> OrderBeneficiaryDetails {
                let dict = self.dictionary!
                let copy = OrderBeneficiaryDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                title = try container.decode(String.self, forKey: .title)
                
                
                
                
                do {
                    branchName = try container.decode(Bool.self, forKey: .branchName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                
                
                
                beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
                
                
                
                
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
                
                
                
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
                
                
                
                address = try container.decode(String.self, forKey: .address)
                
                
                
                
                displayName = try container.decode(String.self, forKey: .displayName)
                
                
                
                
                id = try container.decode(Int.self, forKey: .id)
                
                
                
                
                do {
                    comment = try container.decode(Bool.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    mobile = try container.decode(Bool.self, forKey: .mobile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                subtitle = try container.decode(String.self, forKey: .subtitle)
                
                
                
                
                do {
                    delightsUserName = try container.decode(String.self, forKey: .delightsUserName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
                
                
                
                email = try container.decode(String.self, forKey: .email)
                
                
                
                
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
                
                
                
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                
                
                
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
                
                
                
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
                
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
                
                
                
                try? container.encodeIfPresent(bankName, forKey: .bankName)
                
                
                
                
                try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
                
                
                
                
                try? container.encodeIfPresent(createdOn, forKey: .createdOn)
                
                
                
                
                try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
                
                
                
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                
                
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                
                
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
                
                
                
                try? container.encodeIfPresent(subtitle, forKey: .subtitle)
                
                
                
                
                try? container.encode(delightsUserName, forKey: .delightsUserName)
                
                
                
                
                try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                
                
                
                try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
                
                
                
                
                try? container.encodeIfPresent(accountNo, forKey: .accountNo)
                
                
                
                
                try? container.encodeIfPresent(transferMode, forKey: .transferMode)
                
                
            }
            
        }
        
        /*
            Model: OrderBeneficiaryResponse
            Used By: Payment
        */
        class OrderBeneficiaryResponse: Codable {
            
            public var showBeneficiaryDetails: Bool?
            
            public var beneficiaries: [OrderBeneficiaryDetails]?
            

            public enum CodingKeys: String, CodingKey {
                
                case showBeneficiaryDetails = "show_beneficiary_details"
                
                case beneficiaries = "beneficiaries"
                
            }

            public init(beneficiaries: [OrderBeneficiaryDetails]?, showBeneficiaryDetails: Bool?) {
                
                self.showBeneficiaryDetails = showBeneficiaryDetails
                
                self.beneficiaries = beneficiaries
                
            }

            public func duplicate() -> OrderBeneficiaryResponse {
                let dict = self.dictionary!
                let copy = OrderBeneficiaryResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    showBeneficiaryDetails = try container.decode(Bool.self, forKey: .showBeneficiaryDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    beneficiaries = try container.decode([OrderBeneficiaryDetails].self, forKey: .beneficiaries)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(showBeneficiaryDetails, forKey: .showBeneficiaryDetails)
                
                
                
                
                try? container.encode(beneficiaries, forKey: .beneficiaries)
                
                
            }
            
        }
        
        /*
            Model: NotFoundResourceError
            Used By: Payment
        */
        class NotFoundResourceError: Codable {
            
            public var code: String
            
            public var description: String
            
            public var success: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case code = "code"
                
                case description = "description"
                
                case success = "success"
                
            }

            public init(code: String, description: String, success: Bool) {
                
                self.code = code
                
                self.description = description
                
                self.success = success
                
            }

            public func duplicate() -> NotFoundResourceError {
                let dict = self.dictionary!
                let copy = NotFoundResourceError(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                code = try container.decode(String.self, forKey: .code)
                
                
                
                
                description = try container.decode(String.self, forKey: .description)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: IfscCodeResponse
            Used By: Payment
        */
        class IfscCodeResponse: Codable {
            
            public var success: Bool?
            
            public var branchName: String
            
            public var bankName: String
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case branchName = "branch_name"
                
                case bankName = "bank_name"
                
            }

            public init(bankName: String, branchName: String, success: Bool?) {
                
                self.success = success
                
                self.branchName = branchName
                
                self.bankName = bankName
                
            }

            public func duplicate() -> IfscCodeResponse {
                let dict = self.dictionary!
                let copy = IfscCodeResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                branchName = try container.decode(String.self, forKey: .branchName)
                
                
                
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
                
                
                
                try? container.encodeIfPresent(bankName, forKey: .bankName)
                
                
            }
            
        }
        
        /*
            Model: ErrorCodeDescription
            Used By: Payment
        */
        class ErrorCodeDescription: Codable {
            
            public var code: String
            
            public var description: String
            
            public var success: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case code = "code"
                
                case description = "description"
                
                case success = "success"
                
            }

            public init(code: String, description: String, success: Bool) {
                
                self.code = code
                
                self.description = description
                
                self.success = success
                
            }

            public func duplicate() -> ErrorCodeDescription {
                let dict = self.dictionary!
                let copy = ErrorCodeDescription(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                code = try container.decode(String.self, forKey: .code)
                
                
                
                
                description = try container.decode(String.self, forKey: .description)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: AddBeneficiaryViaOtpVerificationRequest
            Used By: Payment
        */
        class AddBeneficiaryViaOtpVerificationRequest: Codable {
            
            public var otp: String
            
            public var hashKey: String
            
            public var requestId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case otp = "otp"
                
                case hashKey = "hash_key"
                
                case requestId = "request_id"
                
            }

            public init(hashKey: String, otp: String, requestId: String) {
                
                self.otp = otp
                
                self.hashKey = hashKey
                
                self.requestId = requestId
                
            }

            public func duplicate() -> AddBeneficiaryViaOtpVerificationRequest {
                let dict = self.dictionary!
                let copy = AddBeneficiaryViaOtpVerificationRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                otp = try container.decode(String.self, forKey: .otp)
                
                
                
                
                hashKey = try container.decode(String.self, forKey: .hashKey)
                
                
                
                
                requestId = try container.decode(String.self, forKey: .requestId)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(otp, forKey: .otp)
                
                
                
                
                try? container.encodeIfPresent(hashKey, forKey: .hashKey)
                
                
                
                
                try? container.encodeIfPresent(requestId, forKey: .requestId)
                
                
            }
            
        }
        
        /*
            Model: AddBeneficiaryViaOtpVerificationResponse
            Used By: Payment
        */
        class AddBeneficiaryViaOtpVerificationResponse: Codable {
            
            public var message: String
            
            public var success: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case success = "success"
                
            }

            public init(message: String, success: Bool?) {
                
                self.message = message
                
                self.success = success
                
            }

            public func duplicate() -> AddBeneficiaryViaOtpVerificationResponse {
                let dict = self.dictionary!
                let copy = AddBeneficiaryViaOtpVerificationResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: WrongOtpError
            Used By: Payment
        */
        class WrongOtpError: Codable {
            
            public var description: String
            
            public var success: String
            
            public var isVerifiedFlag: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case description = "description"
                
                case success = "success"
                
                case isVerifiedFlag = "is_verified_flag"
                
            }

            public init(description: String, isVerifiedFlag: Bool, success: String) {
                
                self.description = description
                
                self.success = success
                
                self.isVerifiedFlag = isVerifiedFlag
                
            }

            public func duplicate() -> WrongOtpError {
                let dict = self.dictionary!
                let copy = WrongOtpError(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                description = try container.decode(String.self, forKey: .description)
                
                
                
                
                success = try container.decode(String.self, forKey: .success)
                
                
                
                
                isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
                
                
            }
            
        }
        
        /*
            Model: BeneficiaryModeDetails
            Used By: Payment
        */
        class BeneficiaryModeDetails: Codable {
            
            public var branchName: String
            
            public var wallet: String?
            
            public var address: String?
            
            public var accountHolder: String
            
            public var accountNo: String
            
            public var bankName: String
            
            public var email: String
            
            public var ifscCode: String
            
            public var mobile: String
            
            public var comment: String?
            
            public var vpa: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case branchName = "branch_name"
                
                case wallet = "wallet"
                
                case address = "address"
                
                case accountHolder = "account_holder"
                
                case accountNo = "account_no"
                
                case bankName = "bank_name"
                
                case email = "email"
                
                case ifscCode = "ifsc_code"
                
                case mobile = "mobile"
                
                case comment = "comment"
                
                case vpa = "vpa"
                
            }

            public init(accountHolder: String, accountNo: String, address: String?, bankName: String, branchName: String, comment: String?, email: String, ifscCode: String, mobile: String, vpa: String?, wallet: String?) {
                
                self.branchName = branchName
                
                self.wallet = wallet
                
                self.address = address
                
                self.accountHolder = accountHolder
                
                self.accountNo = accountNo
                
                self.bankName = bankName
                
                self.email = email
                
                self.ifscCode = ifscCode
                
                self.mobile = mobile
                
                self.comment = comment
                
                self.vpa = vpa
                
            }

            public func duplicate() -> BeneficiaryModeDetails {
                let dict = self.dictionary!
                let copy = BeneficiaryModeDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                branchName = try container.decode(String.self, forKey: .branchName)
                
                
                
                
                do {
                    wallet = try container.decode(String.self, forKey: .wallet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    address = try container.decode(String.self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
                
                
                
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
                
                
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                
                
                
                email = try container.decode(String.self, forKey: .email)
                
                
                
                
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
                
                
                
                mobile = try container.decode(String.self, forKey: .mobile)
                
                
                
                
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    vpa = try container.decode(String.self, forKey: .vpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
                
                
                
                try? container.encode(wallet, forKey: .wallet)
                
                
                
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                
                
                
                try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
                
                
                
                
                try? container.encodeIfPresent(accountNo, forKey: .accountNo)
                
                
                
                
                try? container.encodeIfPresent(bankName, forKey: .bankName)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
                
                
                
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
                
                
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                
                
                
                try? container.encode(vpa, forKey: .vpa)
                
                
            }
            
        }
        
        /*
            Model: AddBeneficiaryDetailsRequest
            Used By: Payment
        */
        class AddBeneficiaryDetailsRequest: Codable {
            
            public var orderId: String
            
            public var details: BeneficiaryModeDetails
            
            public var shipmentId: String
            
            public var otp: String?
            
            public var requestId: String?
            
            public var delights: Bool
            
            public var transferMode: String
            

            public enum CodingKeys: String, CodingKey {
                
                case orderId = "order_id"
                
                case details = "details"
                
                case shipmentId = "shipment_id"
                
                case otp = "otp"
                
                case requestId = "request_id"
                
                case delights = "delights"
                
                case transferMode = "transfer_mode"
                
            }

            public init(delights: Bool, details: BeneficiaryModeDetails, orderId: String, otp: String?, requestId: String?, shipmentId: String, transferMode: String) {
                
                self.orderId = orderId
                
                self.details = details
                
                self.shipmentId = shipmentId
                
                self.otp = otp
                
                self.requestId = requestId
                
                self.delights = delights
                
                self.transferMode = transferMode
                
            }

            public func duplicate() -> AddBeneficiaryDetailsRequest {
                let dict = self.dictionary!
                let copy = AddBeneficiaryDetailsRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
                details = try container.decode(BeneficiaryModeDetails.self, forKey: .details)
                
                
                
                
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
                
                
                
                do {
                    otp = try container.decode(String.self, forKey: .otp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    requestId = try container.decode(String.self, forKey: .requestId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                delights = try container.decode(Bool.self, forKey: .delights)
                
                
                
                
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encodeIfPresent(details, forKey: .details)
                
                
                
                
                try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
                
                
                
                
                try? container.encodeIfPresent(otp, forKey: .otp)
                
                
                
                
                try? container.encodeIfPresent(requestId, forKey: .requestId)
                
                
                
                
                try? container.encodeIfPresent(delights, forKey: .delights)
                
                
                
                
                try? container.encodeIfPresent(transferMode, forKey: .transferMode)
                
                
            }
            
        }
        
        /*
            Model: RefundAccountResponse
            Used By: Payment
        */
        class RefundAccountResponse: Codable {
            
            public var message: String
            
            public var success: Bool
            
            public var data: [String: Any]?
            
            public var isVerifiedFlag: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case success = "success"
                
                case data = "data"
                
                case isVerifiedFlag = "is_verified_flag"
                
            }

            public init(data: [String: Any]?, isVerifiedFlag: Bool?, message: String, success: Bool) {
                
                self.message = message
                
                self.success = success
                
                self.data = data
                
                self.isVerifiedFlag = isVerifiedFlag
                
            }

            public func duplicate() -> RefundAccountResponse {
                let dict = self.dictionary!
                let copy = RefundAccountResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                do {
                    data = try container.decode([String: Any].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
                
                
                try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
                
                
            }
            
        }
        
        /*
            Model: BankDetailsForOTP
            Used By: Payment
        */
        class BankDetailsForOTP: Codable {
            
            public var branchName: String
            
            public var bankName: String
            
            public var accountHolder: String
            
            public var accountNo: String
            
            public var ifscCode: String
            

            public enum CodingKeys: String, CodingKey {
                
                case branchName = "branch_name"
                
                case bankName = "bank_name"
                
                case accountHolder = "account_holder"
                
                case accountNo = "account_no"
                
                case ifscCode = "ifsc_code"
                
            }

            public init(accountHolder: String, accountNo: String, bankName: String, branchName: String, ifscCode: String) {
                
                self.branchName = branchName
                
                self.bankName = bankName
                
                self.accountHolder = accountHolder
                
                self.accountNo = accountNo
                
                self.ifscCode = ifscCode
                
            }

            public func duplicate() -> BankDetailsForOTP {
                let dict = self.dictionary!
                let copy = BankDetailsForOTP(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                branchName = try container.decode(String.self, forKey: .branchName)
                
                
                
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                
                
                
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
                
                
                
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
                
                
                
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
                
                
                
                try? container.encodeIfPresent(bankName, forKey: .bankName)
                
                
                
                
                try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
                
                
                
                
                try? container.encodeIfPresent(accountNo, forKey: .accountNo)
                
                
                
                
                try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
                
                
            }
            
        }
        
        /*
            Model: AddBeneficiaryDetailsOTPRequest
            Used By: Payment
        */
        class AddBeneficiaryDetailsOTPRequest: Codable {
            
            public var orderId: String
            
            public var details: BankDetailsForOTP
            

            public enum CodingKeys: String, CodingKey {
                
                case orderId = "order_id"
                
                case details = "details"
                
            }

            public init(details: BankDetailsForOTP, orderId: String) {
                
                self.orderId = orderId
                
                self.details = details
                
            }

            public func duplicate() -> AddBeneficiaryDetailsOTPRequest {
                let dict = self.dictionary!
                let copy = AddBeneficiaryDetailsOTPRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
                details = try container.decode(BankDetailsForOTP.self, forKey: .details)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encodeIfPresent(details, forKey: .details)
                
                
            }
            
        }
        
        /*
            Model: WalletOtpRequest
            Used By: Payment
        */
        class WalletOtpRequest: Codable {
            
            public var countryCode: String
            
            public var mobile: String
            

            public enum CodingKeys: String, CodingKey {
                
                case countryCode = "country_code"
                
                case mobile = "mobile"
                
            }

            public init(countryCode: String, mobile: String) {
                
                self.countryCode = countryCode
                
                self.mobile = mobile
                
            }

            public func duplicate() -> WalletOtpRequest {
                let dict = self.dictionary!
                let copy = WalletOtpRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                countryCode = try container.decode(String.self, forKey: .countryCode)
                
                
                
                
                mobile = try container.decode(String.self, forKey: .mobile)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(countryCode, forKey: .countryCode)
                
                
                
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
                
            }
            
        }
        
        /*
            Model: WalletOtpResponse
            Used By: Payment
        */
        class WalletOtpResponse: Codable {
            
            public var requestId: String
            
            public var success: Bool?
            
            public var isVerifiedFlag: String
            

            public enum CodingKeys: String, CodingKey {
                
                case requestId = "request_id"
                
                case success = "success"
                
                case isVerifiedFlag = "is_verified_flag"
                
            }

            public init(isVerifiedFlag: String, requestId: String, success: Bool?) {
                
                self.requestId = requestId
                
                self.success = success
                
                self.isVerifiedFlag = isVerifiedFlag
                
            }

            public func duplicate() -> WalletOtpResponse {
                let dict = self.dictionary!
                let copy = WalletOtpResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                requestId = try container.decode(String.self, forKey: .requestId)
                
                
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                isVerifiedFlag = try container.decode(String.self, forKey: .isVerifiedFlag)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(requestId, forKey: .requestId)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
                
                
            }
            
        }
        
        /*
            Model: SetDefaultBeneficiaryRequest
            Used By: Payment
        */
        class SetDefaultBeneficiaryRequest: Codable {
            
            public var orderId: String
            
            public var beneficiaryId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case orderId = "order_id"
                
                case beneficiaryId = "beneficiary_id"
                
            }

            public init(beneficiaryId: String, orderId: String) {
                
                self.orderId = orderId
                
                self.beneficiaryId = beneficiaryId
                
            }

            public func duplicate() -> SetDefaultBeneficiaryRequest {
                let dict = self.dictionary!
                let copy = SetDefaultBeneficiaryRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
                beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
                
                
            }
            
        }
        
        /*
            Model: SetDefaultBeneficiaryResponse
            Used By: Payment
        */
        class SetDefaultBeneficiaryResponse: Codable {
            
            public var success: Bool?
            
            public var isBeneficiarySet: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case isBeneficiarySet = "is_beneficiary_set"
                
            }

            public init(isBeneficiarySet: Bool, success: Bool?) {
                
                self.success = success
                
                self.isBeneficiarySet = isBeneficiarySet
                
            }

            public func duplicate() -> SetDefaultBeneficiaryResponse {
                let dict = self.dictionary!
                let copy = SetDefaultBeneficiaryResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                isBeneficiarySet = try container.decode(Bool.self, forKey: .isBeneficiarySet)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(isBeneficiarySet, forKey: .isBeneficiarySet)
                
                
            }
            
        }
        
}
