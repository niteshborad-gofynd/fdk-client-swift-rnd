import Foundation


import Foundation
public extension ApplicationClient {
  
        /*
            Model: CartCurrency
            Used By: Cart
        */
        class CartCurrency: Codable {
            
            public var symbol: String?
            
            public var code: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case symbol = "symbol"
                
                case code = "code"
                
            }

            public init(code: String?, symbol: String?) {
                
                self.symbol = symbol
                
                self.code = code
                
            }

            public func duplicate() -> CartCurrency {
                let dict = self.dictionary!
                let copy = CartCurrency(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    symbol = try container.decode(String.self, forKey: .symbol)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(symbol, forKey: .symbol)
                
                
                
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                
            }
            
        }
        
        /*
            Model: LoyaltyPoints
            Used By: Cart
        */
        class LoyaltyPoints: Codable {
            
            public var description: String?
            
            public var total: Double?
            
            public var isApplied: Bool?
            
            public var applicable: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case description = "description"
                
                case total = "total"
                
                case isApplied = "is_applied"
                
                case applicable = "applicable"
                
            }

            public init(applicable: Double?, description: String?, isApplied: Bool?, total: Double?) {
                
                self.description = description
                
                self.total = total
                
                self.isApplied = isApplied
                
                self.applicable = applicable
                
            }

            public func duplicate() -> LoyaltyPoints {
                let dict = self.dictionary!
                let copy = LoyaltyPoints(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    total = try container.decode(Double.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isApplied = try container.decode(Bool.self, forKey: .isApplied)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    applicable = try container.decode(Double.self, forKey: .applicable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(total, forKey: .total)
                
                
                
                
                try? container.encodeIfPresent(isApplied, forKey: .isApplied)
                
                
                
                
                try? container.encodeIfPresent(applicable, forKey: .applicable)
                
                
            }
            
        }
        
        /*
            Model: RawBreakup
            Used By: Cart
        */
        class RawBreakup: Codable {
            
            public var youSaved: Double?
            
            public var vog: Double?
            
            public var deliveryCharge: Double?
            
            public var convenienceFee: Double?
            
            public var codCharge: Double?
            
            public var discount: Double?
            
            public var coupon: Double?
            
            public var total: Double?
            
            public var mrpTotal: Double?
            
            public var gstCharges: Double?
            
            public var fyndCash: Double?
            
            public var subtotal: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case youSaved = "you_saved"
                
                case vog = "vog"
                
                case deliveryCharge = "delivery_charge"
                
                case convenienceFee = "convenience_fee"
                
                case codCharge = "cod_charge"
                
                case discount = "discount"
                
                case coupon = "coupon"
                
                case total = "total"
                
                case mrpTotal = "mrp_total"
                
                case gstCharges = "gst_charges"
                
                case fyndCash = "fynd_cash"
                
                case subtotal = "subtotal"
                
            }

            public init(codCharge: Double?, convenienceFee: Double?, coupon: Double?, deliveryCharge: Double?, discount: Double?, fyndCash: Double?, gstCharges: Double?, mrpTotal: Double?, subtotal: Double?, total: Double?, vog: Double?, youSaved: Double?) {
                
                self.youSaved = youSaved
                
                self.vog = vog
                
                self.deliveryCharge = deliveryCharge
                
                self.convenienceFee = convenienceFee
                
                self.codCharge = codCharge
                
                self.discount = discount
                
                self.coupon = coupon
                
                self.total = total
                
                self.mrpTotal = mrpTotal
                
                self.gstCharges = gstCharges
                
                self.fyndCash = fyndCash
                
                self.subtotal = subtotal
                
            }

            public func duplicate() -> RawBreakup {
                let dict = self.dictionary!
                let copy = RawBreakup(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    youSaved = try container.decode(Double.self, forKey: .youSaved)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    vog = try container.decode(Double.self, forKey: .vog)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    convenienceFee = try container.decode(Double.self, forKey: .convenienceFee)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    codCharge = try container.decode(Double.self, forKey: .codCharge)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    discount = try container.decode(Double.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    coupon = try container.decode(Double.self, forKey: .coupon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    total = try container.decode(Double.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    mrpTotal = try container.decode(Double.self, forKey: .mrpTotal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    gstCharges = try container.decode(Double.self, forKey: .gstCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    fyndCash = try container.decode(Double.self, forKey: .fyndCash)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    subtotal = try container.decode(Double.self, forKey: .subtotal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(youSaved, forKey: .youSaved)
                
                
                
                
                try? container.encodeIfPresent(vog, forKey: .vog)
                
                
                
                
                try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
                
                
                
                
                try? container.encodeIfPresent(convenienceFee, forKey: .convenienceFee)
                
                
                
                
                try? container.encodeIfPresent(codCharge, forKey: .codCharge)
                
                
                
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                
                
                
                try? container.encodeIfPresent(coupon, forKey: .coupon)
                
                
                
                
                try? container.encodeIfPresent(total, forKey: .total)
                
                
                
                
                try? container.encodeIfPresent(mrpTotal, forKey: .mrpTotal)
                
                
                
                
                try? container.encodeIfPresent(gstCharges, forKey: .gstCharges)
                
                
                
                
                try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)
                
                
                
                
                try? container.encodeIfPresent(subtotal, forKey: .subtotal)
                
                
            }
            
        }
        
        /*
            Model: CouponBreakup
            Used By: Cart
        */
        class CouponBreakup: Codable {
            
            public var minimumCartValue: Double?
            
            public var couponValue: Double?
            
            public var subTitle: String?
            
            public var couponType: String?
            
            public var type: String?
            
            public var description: String?
            
            public var value: Double?
            
            public var title: String?
            
            public var isApplied: Bool?
            
            public var code: String?
            
            public var uid: String?
            
            public var maxDiscountValue: Double?
            
            public var message: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case minimumCartValue = "minimum_cart_value"
                
                case couponValue = "coupon_value"
                
                case subTitle = "sub_title"
                
                case couponType = "coupon_type"
                
                case type = "type"
                
                case description = "description"
                
                case value = "value"
                
                case title = "title"
                
                case isApplied = "is_applied"
                
                case code = "code"
                
                case uid = "uid"
                
                case maxDiscountValue = "max_discount_value"
                
                case message = "message"
                
            }

            public init(code: String?, couponType: String?, couponValue: Double?, description: String?, isApplied: Bool?, maxDiscountValue: Double?, message: String?, minimumCartValue: Double?, subTitle: String?, title: String?, type: String?, uid: String?, value: Double?) {
                
                self.minimumCartValue = minimumCartValue
                
                self.couponValue = couponValue
                
                self.subTitle = subTitle
                
                self.couponType = couponType
                
                self.type = type
                
                self.description = description
                
                self.value = value
                
                self.title = title
                
                self.isApplied = isApplied
                
                self.code = code
                
                self.uid = uid
                
                self.maxDiscountValue = maxDiscountValue
                
                self.message = message
                
            }

            public func duplicate() -> CouponBreakup {
                let dict = self.dictionary!
                let copy = CouponBreakup(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    minimumCartValue = try container.decode(Double.self, forKey: .minimumCartValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    couponValue = try container.decode(Double.self, forKey: .couponValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    subTitle = try container.decode(String.self, forKey: .subTitle)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    couponType = try container.decode(String.self, forKey: .couponType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    value = try container.decode(Double.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isApplied = try container.decode(Bool.self, forKey: .isApplied)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    maxDiscountValue = try container.decode(Double.self, forKey: .maxDiscountValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(minimumCartValue, forKey: .minimumCartValue)
                
                
                
                
                try? container.encodeIfPresent(couponValue, forKey: .couponValue)
                
                
                
                
                try? container.encode(subTitle, forKey: .subTitle)
                
                
                
                
                try? container.encode(couponType, forKey: .couponType)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encode(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                
                
                
                try? container.encode(title, forKey: .title)
                
                
                
                
                try? container.encodeIfPresent(isApplied, forKey: .isApplied)
                
                
                
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(maxDiscountValue, forKey: .maxDiscountValue)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
            }
            
        }
        
        /*
            Model: DisplayBreakup
            Used By: Cart
        */
        class DisplayBreakup: Codable {
            
            public var display: String?
            
            public var value: Double?
            
            public var currencyCode: String?
            
            public var currencySymbol: String?
            
            public var message: [String]?
            
            public var key: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case display = "display"
                
                case value = "value"
                
                case currencyCode = "currency_code"
                
                case currencySymbol = "currency_symbol"
                
                case message = "message"
                
                case key = "key"
                
            }

            public init(currencyCode: String?, currencySymbol: String?, display: String?, key: String?, message: [String]?, value: Double?) {
                
                self.display = display
                
                self.value = value
                
                self.currencyCode = currencyCode
                
                self.currencySymbol = currencySymbol
                
                self.message = message
                
                self.key = key
                
            }

            public func duplicate() -> DisplayBreakup {
                let dict = self.dictionary!
                let copy = DisplayBreakup(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    display = try container.decode(String.self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    value = try container.decode(Double.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode([String].self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                
                
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                
                
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                
                
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                
            }
            
        }
        
        /*
            Model: CartBreakup
            Used By: Cart
        */
        class CartBreakup: Codable {
            
            public var loyaltyPoints: LoyaltyPoints?
            
            public var raw: RawBreakup?
            
            public var coupon: CouponBreakup?
            
            public var display: [DisplayBreakup]?
            

            public enum CodingKeys: String, CodingKey {
                
                case loyaltyPoints = "loyalty_points"
                
                case raw = "raw"
                
                case coupon = "coupon"
                
                case display = "display"
                
            }

            public init(coupon: CouponBreakup?, display: [DisplayBreakup]?, loyaltyPoints: LoyaltyPoints?, raw: RawBreakup?) {
                
                self.loyaltyPoints = loyaltyPoints
                
                self.raw = raw
                
                self.coupon = coupon
                
                self.display = display
                
            }

            public func duplicate() -> CartBreakup {
                let dict = self.dictionary!
                let copy = CartBreakup(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    loyaltyPoints = try container.decode(LoyaltyPoints.self, forKey: .loyaltyPoints)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    raw = try container.decode(RawBreakup.self, forKey: .raw)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    coupon = try container.decode(CouponBreakup.self, forKey: .coupon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    display = try container.decode([DisplayBreakup].self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(loyaltyPoints, forKey: .loyaltyPoints)
                
                
                
                
                try? container.encodeIfPresent(raw, forKey: .raw)
                
                
                
                
                try? container.encodeIfPresent(coupon, forKey: .coupon)
                
                
                
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                
            }
            
        }
        
        /*
            Model: ProductPrice
            Used By: Cart
        */
        class ProductPrice: Codable {
            
            public var effective: Double?
            
            public var currencyCode: String?
            
            public var marked: Double?
            
            public var currencySymbol: String?
            
            public var addOn: Double?
            
            public var selling: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case effective = "effective"
                
                case currencyCode = "currency_code"
                
                case marked = "marked"
                
                case currencySymbol = "currency_symbol"
                
                case addOn = "add_on"
                
                case selling = "selling"
                
            }

            public init(addOn: Double?, currencyCode: String?, currencySymbol: String?, effective: Double?, marked: Double?, selling: Double?) {
                
                self.effective = effective
                
                self.currencyCode = currencyCode
                
                self.marked = marked
                
                self.currencySymbol = currencySymbol
                
                self.addOn = addOn
                
                self.selling = selling
                
            }

            public func duplicate() -> ProductPrice {
                let dict = self.dictionary!
                let copy = ProductPrice(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    effective = try container.decode(Double.self, forKey: .effective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    marked = try container.decode(Double.self, forKey: .marked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    addOn = try container.decode(Double.self, forKey: .addOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    selling = try container.decode(Double.self, forKey: .selling)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(effective, forKey: .effective)
                
                
                
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                
                
                
                try? container.encodeIfPresent(marked, forKey: .marked)
                
                
                
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                
                
                
                try? container.encodeIfPresent(addOn, forKey: .addOn)
                
                
                
                
                try? container.encodeIfPresent(selling, forKey: .selling)
                
                
            }
            
        }
        
        /*
            Model: ProductPriceInfo
            Used By: Cart
        */
        class ProductPriceInfo: Codable {
            
            public var base: ProductPrice?
            
            public var converted: ProductPrice?
            

            public enum CodingKeys: String, CodingKey {
                
                case base = "base"
                
                case converted = "converted"
                
            }

            public init(base: ProductPrice?, converted: ProductPrice?) {
                
                self.base = base
                
                self.converted = converted
                
            }

            public func duplicate() -> ProductPriceInfo {
                let dict = self.dictionary!
                let copy = ProductPriceInfo(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    base = try container.decode(ProductPrice.self, forKey: .base)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    converted = try container.decode(ProductPrice.self, forKey: .converted)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(base, forKey: .base)
                
                
                
                
                try? container.encodeIfPresent(converted, forKey: .converted)
                
                
            }
            
        }
        
        /*
            Model: CartProductIdentifer
            Used By: Cart
        */
        class CartProductIdentifer: Codable {
            
            public var identifier: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case identifier = "identifier"
                
            }

            public init(identifier: String?) {
                
                self.identifier = identifier
                
            }

            public func duplicate() -> CartProductIdentifer {
                let dict = self.dictionary!
                let copy = CartProductIdentifer(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    identifier = try container.decode(String.self, forKey: .identifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(identifier, forKey: .identifier)
                
                
            }
            
        }
        
        /*
            Model: ProductImage
            Used By: Cart
        */
        class ProductImage: Codable {
            
            public var url: String?
            
            public var secureUrl: String?
            
            public var aspectRatio: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case url = "url"
                
                case secureUrl = "secure_url"
                
                case aspectRatio = "aspect_ratio"
                
            }

            public init(aspectRatio: String?, secureUrl: String?, url: String?) {
                
                self.url = url
                
                self.secureUrl = secureUrl
                
                self.aspectRatio = aspectRatio
                
            }

            public func duplicate() -> ProductImage {
                let dict = self.dictionary!
                let copy = ProductImage(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    url = try container.decode(String.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    secureUrl = try container.decode(String.self, forKey: .secureUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    aspectRatio = try container.decode(String.self, forKey: .aspectRatio)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(url, forKey: .url)
                
                
                
                
                try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)
                
                
                
                
                try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
                
                
            }
            
        }
        
        /*
            Model: CategoryInfo
            Used By: Cart
        */
        class CategoryInfo: Codable {
            
            public var name: String?
            
            public var uid: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case uid = "uid"
                
            }

            public init(name: String?, uid: Int?) {
                
                self.name = name
                
                self.uid = uid
                
            }

            public func duplicate() -> CategoryInfo {
                let dict = self.dictionary!
                let copy = CategoryInfo(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
            }
            
        }
        
        /*
            Model: BaseInfo
            Used By: Cart
        */
        class BaseInfo: Codable {
            
            public var name: String?
            
            public var uid: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case uid = "uid"
                
            }

            public init(name: String?, uid: Int?) {
                
                self.name = name
                
                self.uid = uid
                
            }

            public func duplicate() -> BaseInfo {
                let dict = self.dictionary!
                let copy = BaseInfo(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
            }
            
        }
        
        /*
            Model: ActionQuery
            Used By: Cart
        */
        class ActionQuery: Codable {
            
            public var productSlug: [String]?
            

            public enum CodingKeys: String, CodingKey {
                
                case productSlug = "product_slug"
                
            }

            public init(productSlug: [String]?) {
                
                self.productSlug = productSlug
                
            }

            public func duplicate() -> ActionQuery {
                let dict = self.dictionary!
                let copy = ActionQuery(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    productSlug = try container.decode([String].self, forKey: .productSlug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(productSlug, forKey: .productSlug)
                
                
            }
            
        }
        
        /*
            Model: ProductAction
            Used By: Cart
        */
        class ProductAction: Codable {
            
            public var url: String?
            
            public var query: ActionQuery?
            
            public var type: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case url = "url"
                
                case query = "query"
                
                case type = "type"
                
            }

            public init(query: ActionQuery?, type: String?, url: String?) {
                
                self.url = url
                
                self.query = query
                
                self.type = type
                
            }

            public func duplicate() -> ProductAction {
                let dict = self.dictionary!
                let copy = ProductAction(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    url = try container.decode(String.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    query = try container.decode(ActionQuery.self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(url, forKey: .url)
                
                
                
                
                try? container.encodeIfPresent(query, forKey: .query)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
            }
            
        }
        
        /*
            Model: CartProduct
            Used By: Cart
        */
        class CartProduct: Codable {
            
            public var name: String?
            
            public var slug: String?
            
            public var images: [ProductImage]?
            
            public var categories: [CategoryInfo]?
            
            public var brand: BaseInfo?
            
            public var type: String?
            
            public var action: ProductAction?
            
            public var uid: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case slug = "slug"
                
                case images = "images"
                
                case categories = "categories"
                
                case brand = "brand"
                
                case type = "type"
                
                case action = "action"
                
                case uid = "uid"
                
            }

            public init(action: ProductAction?, brand: BaseInfo?, categories: [CategoryInfo]?, images: [ProductImage]?, name: String?, slug: String?, type: String?, uid: Int?) {
                
                self.name = name
                
                self.slug = slug
                
                self.images = images
                
                self.categories = categories
                
                self.brand = brand
                
                self.type = type
                
                self.action = action
                
                self.uid = uid
                
            }

            public func duplicate() -> CartProduct {
                let dict = self.dictionary!
                let copy = CartProduct(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    images = try container.decode([ProductImage].self, forKey: .images)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    categories = try container.decode([CategoryInfo].self, forKey: .categories)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    brand = try container.decode(BaseInfo.self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    action = try container.decode(ProductAction.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                
                
                
                try? container.encodeIfPresent(images, forKey: .images)
                
                
                
                
                try? container.encodeIfPresent(categories, forKey: .categories)
                
                
                
                
                try? container.encodeIfPresent(brand, forKey: .brand)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
            }
            
        }
        
        /*
            Model: PromoMeta
            Used By: Cart
        */
        class PromoMeta: Codable {
            
            public var message: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
            }

            public init(message: String?) {
                
                self.message = message
                
            }

            public func duplicate() -> PromoMeta {
                let dict = self.dictionary!
                let copy = PromoMeta(dictionary: dict)!
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
            }
            
        }
        
        /*
            Model: BasePrice
            Used By: Cart
        */
        class BasePrice: Codable {
            
            public var currencySymbol: String?
            
            public var effective: Double?
            
            public var currencyCode: String?
            
            public var marked: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case currencySymbol = "currency_symbol"
                
                case effective = "effective"
                
                case currencyCode = "currency_code"
                
                case marked = "marked"
                
            }

            public init(currencyCode: String?, currencySymbol: String?, effective: Double?, marked: Double?) {
                
                self.currencySymbol = currencySymbol
                
                self.effective = effective
                
                self.currencyCode = currencyCode
                
                self.marked = marked
                
            }

            public func duplicate() -> BasePrice {
                let dict = self.dictionary!
                let copy = BasePrice(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    effective = try container.decode(Double.self, forKey: .effective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    marked = try container.decode(Double.self, forKey: .marked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                
                
                
                try? container.encodeIfPresent(effective, forKey: .effective)
                
                
                
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                
                
                
                try? container.encodeIfPresent(marked, forKey: .marked)
                
                
            }
            
        }
        
        /*
            Model: ArticlePriceInfo
            Used By: Cart
        */
        class ArticlePriceInfo: Codable {
            
            public var base: BasePrice?
            
            public var converted: BasePrice?
            

            public enum CodingKeys: String, CodingKey {
                
                case base = "base"
                
                case converted = "converted"
                
            }

            public init(base: BasePrice?, converted: BasePrice?) {
                
                self.base = base
                
                self.converted = converted
                
            }

            public func duplicate() -> ArticlePriceInfo {
                let dict = self.dictionary!
                let copy = ArticlePriceInfo(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    base = try container.decode(BasePrice.self, forKey: .base)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    converted = try container.decode(BasePrice.self, forKey: .converted)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(base, forKey: .base)
                
                
                
                
                try? container.encodeIfPresent(converted, forKey: .converted)
                
                
            }
            
        }
        
        /*
            Model: ProductArticle
            Used By: Cart
        */
        class ProductArticle: Codable {
            
            public var parentItemSize: String?
            
            public var productGroupTags: [String]?
            
            public var size: String?
            
            public var seller: BaseInfo?
            
            public var extraMeta: [String: Any]?
            
            public var type: String?
            
            public var store: BaseInfo?
            
            public var quantity: Int?
            
            public var price: ArticlePriceInfo?
            
            public var uid: String?
            
            public var parentItemId: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case parentItemSize = "parent_item_size"
                
                case productGroupTags = "product_group_tags"
                
                case size = "size"
                
                case seller = "seller"
                
                case extraMeta = "extra_meta"
                
                case type = "type"
                
                case store = "store"
                
                case quantity = "quantity"
                
                case price = "price"
                
                case uid = "uid"
                
                case parentItemId = "parent_item_id"
                
            }

            public init(extraMeta: [String: Any]?, parentItemId: String?, parentItemSize: String?, price: ArticlePriceInfo?, productGroupTags: [String]?, quantity: Int?, seller: BaseInfo?, size: String?, store: BaseInfo?, type: String?, uid: String?) {
                
                self.parentItemSize = parentItemSize
                
                self.productGroupTags = productGroupTags
                
                self.size = size
                
                self.seller = seller
                
                self.extraMeta = extraMeta
                
                self.type = type
                
                self.store = store
                
                self.quantity = quantity
                
                self.price = price
                
                self.uid = uid
                
                self.parentItemId = parentItemId
                
            }

            public func duplicate() -> ProductArticle {
                let dict = self.dictionary!
                let copy = ProductArticle(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    parentItemSize = try container.decode(String.self, forKey: .parentItemSize)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    productGroupTags = try container.decode([String].self, forKey: .productGroupTags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    size = try container.decode(String.self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    seller = try container.decode(BaseInfo.self, forKey: .seller)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    store = try container.decode(BaseInfo.self, forKey: .store)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    price = try container.decode(ArticlePriceInfo.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    parentItemId = try container.decode(String.self, forKey: .parentItemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(parentItemSize, forKey: .parentItemSize)
                
                
                
                
                try? container.encodeIfPresent(productGroupTags, forKey: .productGroupTags)
                
                
                
                
                try? container.encodeIfPresent(size, forKey: .size)
                
                
                
                
                try? container.encodeIfPresent(seller, forKey: .seller)
                
                
                
                
                try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(store, forKey: .store)
                
                
                
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                
                
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(parentItemId, forKey: .parentItemId)
                
                
            }
            
        }
        
        /*
            Model: ProductAvailability
            Used By: Cart
        */
        class ProductAvailability: Codable {
            
            public var sizes: [String]?
            
            public var deliverable: Bool?
            
            public var otherStoreQuantity: Int?
            
            public var outOfStock: Bool?
            
            public var isValid: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case sizes = "sizes"
                
                case deliverable = "deliverable"
                
                case otherStoreQuantity = "other_store_quantity"
                
                case outOfStock = "out_of_stock"
                
                case isValid = "is_valid"
                
            }

            public init(deliverable: Bool?, isValid: Bool?, otherStoreQuantity: Int?, outOfStock: Bool?, sizes: [String]?) {
                
                self.sizes = sizes
                
                self.deliverable = deliverable
                
                self.otherStoreQuantity = otherStoreQuantity
                
                self.outOfStock = outOfStock
                
                self.isValid = isValid
                
            }

            public func duplicate() -> ProductAvailability {
                let dict = self.dictionary!
                let copy = ProductAvailability(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    sizes = try container.decode([String].self, forKey: .sizes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliverable = try container.decode(Bool.self, forKey: .deliverable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    otherStoreQuantity = try container.decode(Int.self, forKey: .otherStoreQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    outOfStock = try container.decode(Bool.self, forKey: .outOfStock)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isValid = try container.decode(Bool.self, forKey: .isValid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(sizes, forKey: .sizes)
                
                
                
                
                try? container.encodeIfPresent(deliverable, forKey: .deliverable)
                
                
                
                
                try? container.encodeIfPresent(otherStoreQuantity, forKey: .otherStoreQuantity)
                
                
                
                
                try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)
                
                
                
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
                
            }
            
        }
        
        /*
            Model: AppliedPromotion
            Used By: Cart
        */
        class AppliedPromotion: Codable {
            
            public var articleQuantity: Int?
            
            public var mrpPromotion: Bool?
            
            public var promotionType: String?
            
            public var amount: Double?
            
            public var promoId: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case articleQuantity = "article_quantity"
                
                case mrpPromotion = "mrp_promotion"
                
                case promotionType = "promotion_type"
                
                case amount = "amount"
                
                case promoId = "promo_id"
                
            }

            public init(amount: Double?, articleQuantity: Int?, mrpPromotion: Bool?, promotionType: String?, promoId: String?) {
                
                self.articleQuantity = articleQuantity
                
                self.mrpPromotion = mrpPromotion
                
                self.promotionType = promotionType
                
                self.amount = amount
                
                self.promoId = promoId
                
            }

            public func duplicate() -> AppliedPromotion {
                let dict = self.dictionary!
                let copy = AppliedPromotion(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    articleQuantity = try container.decode(Int.self, forKey: .articleQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    mrpPromotion = try container.decode(Bool.self, forKey: .mrpPromotion)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    promotionType = try container.decode(String.self, forKey: .promotionType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    amount = try container.decode(Double.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    promoId = try container.decode(String.self, forKey: .promoId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(articleQuantity, forKey: .articleQuantity)
                
                
                
                
                try? container.encodeIfPresent(mrpPromotion, forKey: .mrpPromotion)
                
                
                
                
                try? container.encodeIfPresent(promotionType, forKey: .promotionType)
                
                
                
                
                try? container.encodeIfPresent(amount, forKey: .amount)
                
                
                
                
                try? container.encodeIfPresent(promoId, forKey: .promoId)
                
                
            }
            
        }
        
        /*
            Model: CartProductInfo
            Used By: Cart
        */
        class CartProductInfo: Codable {
            
            public var pricePerUnit: ProductPriceInfo?
            
            public var identifiers: CartProductIdentifer
            
            public var couponMessage: String?
            
            public var discount: String?
            
            public var isSet: Bool?
            
            public var product: CartProduct?
            
            public var bulkOffer: [String: Any]?
            
            public var promoMeta: PromoMeta?
            
            public var article: ProductArticle?
            
            public var quantity: Int?
            
            public var availability: ProductAvailability?
            
            public var price: ProductPriceInfo?
            
            public var message: String?
            
            public var promotionApplied: [AppliedPromotion]?
            
            public var key: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case pricePerUnit = "price_per_unit"
                
                case identifiers = "identifiers"
                
                case couponMessage = "coupon_message"
                
                case discount = "discount"
                
                case isSet = "is_set"
                
                case product = "product"
                
                case bulkOffer = "bulk_offer"
                
                case promoMeta = "promo_meta"
                
                case article = "article"
                
                case quantity = "quantity"
                
                case availability = "availability"
                
                case price = "price"
                
                case message = "message"
                
                case promotionApplied = "promotion_applied"
                
                case key = "key"
                
            }

            public init(article: ProductArticle?, availability: ProductAvailability?, bulkOffer: [String: Any]?, couponMessage: String?, discount: String?, identifiers: CartProductIdentifer, isSet: Bool?, key: String?, message: String?, price: ProductPriceInfo?, pricePerUnit: ProductPriceInfo?, product: CartProduct?, promotionApplied: [AppliedPromotion]?, promoMeta: PromoMeta?, quantity: Int?) {
                
                self.pricePerUnit = pricePerUnit
                
                self.identifiers = identifiers
                
                self.couponMessage = couponMessage
                
                self.discount = discount
                
                self.isSet = isSet
                
                self.product = product
                
                self.bulkOffer = bulkOffer
                
                self.promoMeta = promoMeta
                
                self.article = article
                
                self.quantity = quantity
                
                self.availability = availability
                
                self.price = price
                
                self.message = message
                
                self.promotionApplied = promotionApplied
                
                self.key = key
                
            }

            public func duplicate() -> CartProductInfo {
                let dict = self.dictionary!
                let copy = CartProductInfo(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    pricePerUnit = try container.decode(ProductPriceInfo.self, forKey: .pricePerUnit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                identifiers = try container.decode(CartProductIdentifer.self, forKey: .identifiers)
                
                
                
                
                do {
                    couponMessage = try container.decode(String.self, forKey: .couponMessage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    discount = try container.decode(String.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isSet = try container.decode(Bool.self, forKey: .isSet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    product = try container.decode(CartProduct.self, forKey: .product)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    bulkOffer = try container.decode([String: Any].self, forKey: .bulkOffer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    promoMeta = try container.decode(PromoMeta.self, forKey: .promoMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    article = try container.decode(ProductArticle.self, forKey: .article)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    availability = try container.decode(ProductAvailability.self, forKey: .availability)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    price = try container.decode(ProductPriceInfo.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    promotionApplied = try container.decode([AppliedPromotion].self, forKey: .promotionApplied)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(pricePerUnit, forKey: .pricePerUnit)
                
                
                
                
                try? container.encodeIfPresent(identifiers, forKey: .identifiers)
                
                
                
                
                try? container.encodeIfPresent(couponMessage, forKey: .couponMessage)
                
                
                
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                
                
                
                try? container.encodeIfPresent(isSet, forKey: .isSet)
                
                
                
                
                try? container.encodeIfPresent(product, forKey: .product)
                
                
                
                
                try? container.encodeIfPresent(bulkOffer, forKey: .bulkOffer)
                
                
                
                
                try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)
                
                
                
                
                try? container.encodeIfPresent(article, forKey: .article)
                
                
                
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                
                
                
                try? container.encodeIfPresent(availability, forKey: .availability)
                
                
                
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(promotionApplied, forKey: .promotionApplied)
                
                
                
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                
            }
            
        }
        
        /*
            Model: PaymentSelectionLock
            Used By: Cart
        */
        class PaymentSelectionLock: Codable {
            
            public var defaultOptions: String?
            
            public var paymentIdentifier: String?
            
            public var enabled: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case defaultOptions = "default_options"
                
                case paymentIdentifier = "payment_identifier"
                
                case enabled = "enabled"
                
            }

            public init(defaultOptions: String?, enabled: Bool?, paymentIdentifier: String?) {
                
                self.defaultOptions = defaultOptions
                
                self.paymentIdentifier = paymentIdentifier
                
                self.enabled = enabled
                
            }

            public func duplicate() -> PaymentSelectionLock {
                let dict = self.dictionary!
                let copy = PaymentSelectionLock(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    defaultOptions = try container.decode(String.self, forKey: .defaultOptions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(defaultOptions, forKey: .defaultOptions)
                
                
                
                
                try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
                
                
                
                
                try? container.encodeIfPresent(enabled, forKey: .enabled)
                
                
            }
            
        }
        
        /*
            Model: PromiseTimestamp
            Used By: Cart
        */
        class PromiseTimestamp: Codable {
            
            public var min: Double?
            
            public var max: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case min = "min"
                
                case max = "max"
                
            }

            public init(max: Double?, min: Double?) {
                
                self.min = min
                
                self.max = max
                
            }

            public func duplicate() -> PromiseTimestamp {
                let dict = self.dictionary!
                let copy = PromiseTimestamp(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    min = try container.decode(Double.self, forKey: .min)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    max = try container.decode(Double.self, forKey: .max)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(min, forKey: .min)
                
                
                
                
                try? container.encodeIfPresent(max, forKey: .max)
                
                
            }
            
        }
        
        /*
            Model: PromiseFormatted
            Used By: Cart
        */
        class PromiseFormatted: Codable {
            
            public var min: String?
            
            public var max: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case min = "min"
                
                case max = "max"
                
            }

            public init(max: String?, min: String?) {
                
                self.min = min
                
                self.max = max
                
            }

            public func duplicate() -> PromiseFormatted {
                let dict = self.dictionary!
                let copy = PromiseFormatted(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    min = try container.decode(String.self, forKey: .min)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    max = try container.decode(String.self, forKey: .max)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(min, forKey: .min)
                
                
                
                
                try? container.encodeIfPresent(max, forKey: .max)
                
                
            }
            
        }
        
        /*
            Model: ShipmentPromise
            Used By: Cart
        */
        class ShipmentPromise: Codable {
            
            public var timestamp: PromiseTimestamp?
            
            public var formatted: PromiseFormatted?
            

            public enum CodingKeys: String, CodingKey {
                
                case timestamp = "timestamp"
                
                case formatted = "formatted"
                
            }

            public init(formatted: PromiseFormatted?, timestamp: PromiseTimestamp?) {
                
                self.timestamp = timestamp
                
                self.formatted = formatted
                
            }

            public func duplicate() -> ShipmentPromise {
                let dict = self.dictionary!
                let copy = ShipmentPromise(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    timestamp = try container.decode(PromiseTimestamp.self, forKey: .timestamp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    formatted = try container.decode(PromiseFormatted.self, forKey: .formatted)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(timestamp, forKey: .timestamp)
                
                
                
                
                try? container.encodeIfPresent(formatted, forKey: .formatted)
                
                
            }
            
        }
        
        /*
            Model: CartDetailResponse
            Used By: Cart
        */
        class CartDetailResponse: Codable {
            
            public var gstin: String?
            
            public var currency: CartCurrency?
            
            public var deliveryChargeInfo: String?
            
            public var breakupValues: CartBreakup?
            
            public var checkoutMode: String?
            
            public var items: [CartProductInfo]?
            
            public var paymentSelectionLock: PaymentSelectionLock?
            
            public var lastModified: String?
            
            public var restrictCheckout: Bool?
            
            public var couponText: String?
            
            public var isValid: Bool?
            
            public var comment: String?
            
            public var deliveryPromise: ShipmentPromise?
            
            public var message: String?
            
            public var id: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case gstin = "gstin"
                
                case currency = "currency"
                
                case deliveryChargeInfo = "delivery_charge_info"
                
                case breakupValues = "breakup_values"
                
                case checkoutMode = "checkout_mode"
                
                case items = "items"
                
                case paymentSelectionLock = "payment_selection_lock"
                
                case lastModified = "last_modified"
                
                case restrictCheckout = "restrict_checkout"
                
                case couponText = "coupon_text"
                
                case isValid = "is_valid"
                
                case comment = "comment"
                
                case deliveryPromise = "delivery_promise"
                
                case message = "message"
                
                case id = "id"
                
            }

            public init(breakupValues: CartBreakup?, checkoutMode: String?, comment: String?, couponText: String?, currency: CartCurrency?, deliveryChargeInfo: String?, deliveryPromise: ShipmentPromise?, gstin: String?, id: String?, isValid: Bool?, items: [CartProductInfo]?, lastModified: String?, message: String?, paymentSelectionLock: PaymentSelectionLock?, restrictCheckout: Bool?) {
                
                self.gstin = gstin
                
                self.currency = currency
                
                self.deliveryChargeInfo = deliveryChargeInfo
                
                self.breakupValues = breakupValues
                
                self.checkoutMode = checkoutMode
                
                self.items = items
                
                self.paymentSelectionLock = paymentSelectionLock
                
                self.lastModified = lastModified
                
                self.restrictCheckout = restrictCheckout
                
                self.couponText = couponText
                
                self.isValid = isValid
                
                self.comment = comment
                
                self.deliveryPromise = deliveryPromise
                
                self.message = message
                
                self.id = id
                
            }

            public func duplicate() -> CartDetailResponse {
                let dict = self.dictionary!
                let copy = CartDetailResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    gstin = try container.decode(String.self, forKey: .gstin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currency = try container.decode(CartCurrency.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryChargeInfo = try container.decode(String.self, forKey: .deliveryChargeInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    checkoutMode = try container.decode(String.self, forKey: .checkoutMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    items = try container.decode([CartProductInfo].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentSelectionLock = try container.decode(PaymentSelectionLock.self, forKey: .paymentSelectionLock)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    lastModified = try container.decode(String.self, forKey: .lastModified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    restrictCheckout = try container.decode(Bool.self, forKey: .restrictCheckout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    couponText = try container.decode(String.self, forKey: .couponText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isValid = try container.decode(Bool.self, forKey: .isValid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
                
                
                
                
                try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
                
                
                
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
                
                
                try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)
                
                
                
                
                try? container.encodeIfPresent(lastModified, forKey: .lastModified)
                
                
                
                
                try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
                
                
                
                
                try? container.encodeIfPresent(couponText, forKey: .couponText)
                
                
                
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
                
                
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                
                
                
                try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
            }
            
        }
        
        /*
            Model: AddProductCart
            Used By: Cart
        */
        class AddProductCart: Codable {
            
            public var itemSize: String?
            
            public var storeId: Int?
            
            public var itemId: Int?
            
            public var display: String?
            
            public var extraMeta: [String: Any]?
            
            public var sellerId: Int?
            
            public var quantity: Int?
            
            public var articleId: String?
            
            public var pos: Bool?
            
            public var articleAssignment: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case itemSize = "item_size"
                
                case storeId = "store_id"
                
                case itemId = "item_id"
                
                case display = "display"
                
                case extraMeta = "extra_meta"
                
                case sellerId = "seller_id"
                
                case quantity = "quantity"
                
                case articleId = "article_id"
                
                case pos = "pos"
                
                case articleAssignment = "article_assignment"
                
            }

            public init(articleAssignment: [String: Any]?, articleId: String?, display: String?, extraMeta: [String: Any]?, itemId: Int?, itemSize: String?, pos: Bool?, quantity: Int?, sellerId: Int?, storeId: Int?) {
                
                self.itemSize = itemSize
                
                self.storeId = storeId
                
                self.itemId = itemId
                
                self.display = display
                
                self.extraMeta = extraMeta
                
                self.sellerId = sellerId
                
                self.quantity = quantity
                
                self.articleId = articleId
                
                self.pos = pos
                
                self.articleAssignment = articleAssignment
                
            }

            public func duplicate() -> AddProductCart {
                let dict = self.dictionary!
                let copy = AddProductCart(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    itemSize = try container.decode(String.self, forKey: .itemSize)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    storeId = try container.decode(Int.self, forKey: .storeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    itemId = try container.decode(Int.self, forKey: .itemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    display = try container.decode(String.self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sellerId = try container.decode(Int.self, forKey: .sellerId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    articleId = try container.decode(String.self, forKey: .articleId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pos = try container.decode(Bool.self, forKey: .pos)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    articleAssignment = try container.decode([String: Any].self, forKey: .articleAssignment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(itemSize, forKey: .itemSize)
                
                
                
                
                try? container.encodeIfPresent(storeId, forKey: .storeId)
                
                
                
                
                try? container.encodeIfPresent(itemId, forKey: .itemId)
                
                
                
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                
                
                
                try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
                
                
                
                
                try? container.encodeIfPresent(sellerId, forKey: .sellerId)
                
                
                
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                
                
                
                try? container.encodeIfPresent(articleId, forKey: .articleId)
                
                
                
                
                try? container.encodeIfPresent(pos, forKey: .pos)
                
                
                
                
                try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
                
                
            }
            
        }
        
        /*
            Model: AddCartRequest
            Used By: Cart
        */
        class AddCartRequest: Codable {
            
            public var items: [AddProductCart]?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
            }

            public init(items: [AddProductCart]?) {
                
                self.items = items
                
            }

            public func duplicate() -> AddCartRequest {
                let dict = self.dictionary!
                let copy = AddCartRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([AddProductCart].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
            }
            
        }
        
        /*
            Model: AddCartDetailResponse
            Used By: Cart
        */
        class AddCartDetailResponse: Codable {
            
            public var success: Bool?
            
            public var partial: Bool?
            
            public var message: String?
            
            public var cart: CartDetailResponse?
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case partial = "partial"
                
                case message = "message"
                
                case cart = "cart"
                
            }

            public init(cart: CartDetailResponse?, message: String?, partial: Bool?, success: Bool?) {
                
                self.success = success
                
                self.partial = partial
                
                self.message = message
                
                self.cart = cart
                
            }

            public func duplicate() -> AddCartDetailResponse {
                let dict = self.dictionary!
                let copy = AddCartDetailResponse(dictionary: dict)!
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
                
                
                
                do {
                    partial = try container.decode(Bool.self, forKey: .partial)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cart = try container.decode(CartDetailResponse.self, forKey: .cart)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(partial, forKey: .partial)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(cart, forKey: .cart)
                
                
            }
            
        }
        
        /*
            Model: UpdateProductCart
            Used By: Cart
        */
        class UpdateProductCart: Codable {
            
            public var itemSize: String?
            
            public var identifiers: CartProductIdentifer
            
            public var itemId: Int?
            
            public var extraMeta: [String: Any]?
            
            public var quantity: Int?
            
            public var articleId: String?
            
            public var itemIndex: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case itemSize = "item_size"
                
                case identifiers = "identifiers"
                
                case itemId = "item_id"
                
                case extraMeta = "extra_meta"
                
                case quantity = "quantity"
                
                case articleId = "article_id"
                
                case itemIndex = "item_index"
                
            }

            public init(articleId: String?, extraMeta: [String: Any]?, identifiers: CartProductIdentifer, itemId: Int?, itemIndex: Int?, itemSize: String?, quantity: Int?) {
                
                self.itemSize = itemSize
                
                self.identifiers = identifiers
                
                self.itemId = itemId
                
                self.extraMeta = extraMeta
                
                self.quantity = quantity
                
                self.articleId = articleId
                
                self.itemIndex = itemIndex
                
            }

            public func duplicate() -> UpdateProductCart {
                let dict = self.dictionary!
                let copy = UpdateProductCart(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    itemSize = try container.decode(String.self, forKey: .itemSize)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                identifiers = try container.decode(CartProductIdentifer.self, forKey: .identifiers)
                
                
                
                
                do {
                    itemId = try container.decode(Int.self, forKey: .itemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    articleId = try container.decode(String.self, forKey: .articleId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    itemIndex = try container.decode(Int.self, forKey: .itemIndex)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(itemSize, forKey: .itemSize)
                
                
                
                
                try? container.encodeIfPresent(identifiers, forKey: .identifiers)
                
                
                
                
                try? container.encodeIfPresent(itemId, forKey: .itemId)
                
                
                
                
                try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
                
                
                
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                
                
                
                try? container.encodeIfPresent(articleId, forKey: .articleId)
                
                
                
                
                try? container.encodeIfPresent(itemIndex, forKey: .itemIndex)
                
                
            }
            
        }
        
        /*
            Model: UpdateCartRequest
            Used By: Cart
        */
        class UpdateCartRequest: Codable {
            
            public var items: [UpdateProductCart]?
            
            public var operation: String
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case operation = "operation"
                
            }

            public init(items: [UpdateProductCart]?, operation: String) {
                
                self.items = items
                
                self.operation = operation
                
            }

            public func duplicate() -> UpdateCartRequest {
                let dict = self.dictionary!
                let copy = UpdateCartRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([UpdateProductCart].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                operation = try container.decode(String.self, forKey: .operation)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
                
                
                try? container.encodeIfPresent(operation, forKey: .operation)
                
                
            }
            
        }
        
        /*
            Model: UpdateCartDetailResponse
            Used By: Cart
        */
        class UpdateCartDetailResponse: Codable {
            
            public var success: Bool?
            
            public var message: String?
            
            public var cart: CartDetailResponse?
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case message = "message"
                
                case cart = "cart"
                
            }

            public init(cart: CartDetailResponse?, message: String?, success: Bool?) {
                
                self.success = success
                
                self.message = message
                
                self.cart = cart
                
            }

            public func duplicate() -> UpdateCartDetailResponse {
                let dict = self.dictionary!
                let copy = UpdateCartDetailResponse(dictionary: dict)!
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
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cart = try container.decode(CartDetailResponse.self, forKey: .cart)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(cart, forKey: .cart)
                
                
            }
            
        }
        
        /*
            Model: CartItemCountResponse
            Used By: Cart
        */
        class CartItemCountResponse: Codable {
            
            public var userCartItemsCount: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case userCartItemsCount = "user_cart_items_count"
                
            }

            public init(userCartItemsCount: Int?) {
                
                self.userCartItemsCount = userCartItemsCount
                
            }

            public func duplicate() -> CartItemCountResponse {
                let dict = self.dictionary!
                let copy = CartItemCountResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    userCartItemsCount = try container.decode(Int.self, forKey: .userCartItemsCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(userCartItemsCount, forKey: .userCartItemsCount)
                
                
            }
            
        }
        
        /*
            Model: PageCoupon
            Used By: Cart
        */
        class PageCoupon: Codable {
            
            public var totalItemCount: Int?
            
            public var hasNext: Bool?
            
            public var current: Int?
            
            public var total: Int?
            
            public var hasPrevious: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case totalItemCount = "total_item_count"
                
                case hasNext = "has_next"
                
                case current = "current"
                
                case total = "total"
                
                case hasPrevious = "has_previous"
                
            }

            public init(current: Int?, hasNext: Bool?, hasPrevious: Bool?, total: Int?, totalItemCount: Int?) {
                
                self.totalItemCount = totalItemCount
                
                self.hasNext = hasNext
                
                self.current = current
                
                self.total = total
                
                self.hasPrevious = hasPrevious
                
            }

            public func duplicate() -> PageCoupon {
                let dict = self.dictionary!
                let copy = PageCoupon(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    totalItemCount = try container.decode(Int.self, forKey: .totalItemCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    hasNext = try container.decode(Bool.self, forKey: .hasNext)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    current = try container.decode(Int.self, forKey: .current)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    total = try container.decode(Int.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(totalItemCount, forKey: .totalItemCount)
                
                
                
                
                try? container.encodeIfPresent(hasNext, forKey: .hasNext)
                
                
                
                
                try? container.encodeIfPresent(current, forKey: .current)
                
                
                
                
                try? container.encodeIfPresent(total, forKey: .total)
                
                
                
                
                try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
                
                
            }
            
        }
        
        /*
            Model: Coupon
            Used By: Cart
        */
        class Coupon: Codable {
            
            public var minimumCartValue: Double?
            
            public var couponValue: Double?
            
            public var isApplicable: Bool?
            
            public var expiresOn: String?
            
            public var message: String?
            
            public var description: String?
            
            public var title: String?
            
            public var isApplied: Bool?
            
            public var maxDiscountValue: Double?
            
            public var couponType: String?
            
            public var subTitle: String?
            
            public var couponCode: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case minimumCartValue = "minimum_cart_value"
                
                case couponValue = "coupon_value"
                
                case isApplicable = "is_applicable"
                
                case expiresOn = "expires_on"
                
                case message = "message"
                
                case description = "description"
                
                case title = "title"
                
                case isApplied = "is_applied"
                
                case maxDiscountValue = "max_discount_value"
                
                case couponType = "coupon_type"
                
                case subTitle = "sub_title"
                
                case couponCode = "coupon_code"
                
            }

            public init(couponCode: String?, couponType: String?, couponValue: Double?, description: String?, expiresOn: String?, isApplicable: Bool?, isApplied: Bool?, maxDiscountValue: Double?, message: String?, minimumCartValue: Double?, subTitle: String?, title: String?) {
                
                self.minimumCartValue = minimumCartValue
                
                self.couponValue = couponValue
                
                self.isApplicable = isApplicable
                
                self.expiresOn = expiresOn
                
                self.message = message
                
                self.description = description
                
                self.title = title
                
                self.isApplied = isApplied
                
                self.maxDiscountValue = maxDiscountValue
                
                self.couponType = couponType
                
                self.subTitle = subTitle
                
                self.couponCode = couponCode
                
            }

            public func duplicate() -> Coupon {
                let dict = self.dictionary!
                let copy = Coupon(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    minimumCartValue = try container.decode(Double.self, forKey: .minimumCartValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    couponValue = try container.decode(Double.self, forKey: .couponValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isApplicable = try container.decode(Bool.self, forKey: .isApplicable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    expiresOn = try container.decode(String.self, forKey: .expiresOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isApplied = try container.decode(Bool.self, forKey: .isApplied)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    maxDiscountValue = try container.decode(Double.self, forKey: .maxDiscountValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    couponType = try container.decode(String.self, forKey: .couponType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    subTitle = try container.decode(String.self, forKey: .subTitle)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    couponCode = try container.decode(String.self, forKey: .couponCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(minimumCartValue, forKey: .minimumCartValue)
                
                
                
                
                try? container.encodeIfPresent(couponValue, forKey: .couponValue)
                
                
                
                
                try? container.encodeIfPresent(isApplicable, forKey: .isApplicable)
                
                
                
                
                try? container.encodeIfPresent(expiresOn, forKey: .expiresOn)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encode(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
                
                
                try? container.encodeIfPresent(isApplied, forKey: .isApplied)
                
                
                
                
                try? container.encodeIfPresent(maxDiscountValue, forKey: .maxDiscountValue)
                
                
                
                
                try? container.encode(couponType, forKey: .couponType)
                
                
                
                
                try? container.encodeIfPresent(subTitle, forKey: .subTitle)
                
                
                
                
                try? container.encodeIfPresent(couponCode, forKey: .couponCode)
                
                
            }
            
        }
        
        /*
            Model: GetCouponResponse
            Used By: Cart
        */
        class GetCouponResponse: Codable {
            
            public var page: PageCoupon?
            
            public var availableCouponList: [Coupon]?
            

            public enum CodingKeys: String, CodingKey {
                
                case page = "page"
                
                case availableCouponList = "available_coupon_list"
                
            }

            public init(availableCouponList: [Coupon]?, page: PageCoupon?) {
                
                self.page = page
                
                self.availableCouponList = availableCouponList
                
            }

            public func duplicate() -> GetCouponResponse {
                let dict = self.dictionary!
                let copy = GetCouponResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    page = try container.decode(PageCoupon.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    availableCouponList = try container.decode([Coupon].self, forKey: .availableCouponList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(page, forKey: .page)
                
                
                
                
                try? container.encodeIfPresent(availableCouponList, forKey: .availableCouponList)
                
                
            }
            
        }
        
        /*
            Model: ApplyCouponRequest
            Used By: Cart
        */
        class ApplyCouponRequest: Codable {
            
            public var couponCode: String
            

            public enum CodingKeys: String, CodingKey {
                
                case couponCode = "coupon_code"
                
            }

            public init(couponCode: String) {
                
                self.couponCode = couponCode
                
            }

            public func duplicate() -> ApplyCouponRequest {
                let dict = self.dictionary!
                let copy = ApplyCouponRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                couponCode = try container.decode(String.self, forKey: .couponCode)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(couponCode, forKey: .couponCode)
                
                
            }
            
        }
        
        /*
            Model: OfferPrice
            Used By: Cart
        */
        class OfferPrice: Codable {
            
            public var effective: Int?
            
            public var bulkEffective: Double?
            
            public var currencyCode: String?
            
            public var marked: Int?
            
            public var currencySymbol: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case effective = "effective"
                
                case bulkEffective = "bulk_effective"
                
                case currencyCode = "currency_code"
                
                case marked = "marked"
                
                case currencySymbol = "currency_symbol"
                
            }

            public init(bulkEffective: Double?, currencyCode: String?, currencySymbol: String?, effective: Int?, marked: Int?) {
                
                self.effective = effective
                
                self.bulkEffective = bulkEffective
                
                self.currencyCode = currencyCode
                
                self.marked = marked
                
                self.currencySymbol = currencySymbol
                
            }

            public func duplicate() -> OfferPrice {
                let dict = self.dictionary!
                let copy = OfferPrice(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    effective = try container.decode(Int.self, forKey: .effective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    bulkEffective = try container.decode(Double.self, forKey: .bulkEffective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    marked = try container.decode(Int.self, forKey: .marked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(effective, forKey: .effective)
                
                
                
                
                try? container.encodeIfPresent(bulkEffective, forKey: .bulkEffective)
                
                
                
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                
                
                
                try? container.encodeIfPresent(marked, forKey: .marked)
                
                
                
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                
            }
            
        }
        
        /*
            Model: OfferItem
            Used By: Cart
        */
        class OfferItem: Codable {
            
            public var best: Bool?
            
            public var margin: Int?
            
            public var autoApplied: Bool?
            
            public var type: String?
            
            public var quantity: Int?
            
            public var total: Double?
            
            public var price: OfferPrice?
            

            public enum CodingKeys: String, CodingKey {
                
                case best = "best"
                
                case margin = "margin"
                
                case autoApplied = "auto_applied"
                
                case type = "type"
                
                case quantity = "quantity"
                
                case total = "total"
                
                case price = "price"
                
            }

            public init(autoApplied: Bool?, best: Bool?, margin: Int?, price: OfferPrice?, quantity: Int?, total: Double?, type: String?) {
                
                self.best = best
                
                self.margin = margin
                
                self.autoApplied = autoApplied
                
                self.type = type
                
                self.quantity = quantity
                
                self.total = total
                
                self.price = price
                
            }

            public func duplicate() -> OfferItem {
                let dict = self.dictionary!
                let copy = OfferItem(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    best = try container.decode(Bool.self, forKey: .best)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    margin = try container.decode(Int.self, forKey: .margin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    autoApplied = try container.decode(Bool.self, forKey: .autoApplied)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    total = try container.decode(Double.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    price = try container.decode(OfferPrice.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(best, forKey: .best)
                
                
                
                
                try? container.encodeIfPresent(margin, forKey: .margin)
                
                
                
                
                try? container.encodeIfPresent(autoApplied, forKey: .autoApplied)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                
                
                
                try? container.encodeIfPresent(total, forKey: .total)
                
                
                
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                
            }
            
        }
        
        /*
            Model: OfferSeller
            Used By: Cart
        */
        class OfferSeller: Codable {
            
            public var name: String?
            
            public var uid: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case uid = "uid"
                
            }

            public init(name: String?, uid: Int?) {
                
                self.name = name
                
                self.uid = uid
                
            }

            public func duplicate() -> OfferSeller {
                let dict = self.dictionary!
                let copy = OfferSeller(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
            }
            
        }
        
        /*
            Model: BulkPriceOffer
            Used By: Cart
        */
        class BulkPriceOffer: Codable {
            
            public var offers: [OfferItem]?
            
            public var seller: OfferSeller?
            

            public enum CodingKeys: String, CodingKey {
                
                case offers = "offers"
                
                case seller = "seller"
                
            }

            public init(offers: [OfferItem]?, seller: OfferSeller?) {
                
                self.offers = offers
                
                self.seller = seller
                
            }

            public func duplicate() -> BulkPriceOffer {
                let dict = self.dictionary!
                let copy = BulkPriceOffer(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    offers = try container.decode([OfferItem].self, forKey: .offers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    seller = try container.decode(OfferSeller.self, forKey: .seller)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(offers, forKey: .offers)
                
                
                
                
                try? container.encodeIfPresent(seller, forKey: .seller)
                
                
            }
            
        }
        
        /*
            Model: BulkPriceResponse
            Used By: Cart
        */
        class BulkPriceResponse: Codable {
            
            public var data: [BulkPriceOffer]?
            

            public enum CodingKeys: String, CodingKey {
                
                case data = "data"
                
            }

            public init(data: [BulkPriceOffer]?) {
                
                self.data = data
                
            }

            public func duplicate() -> BulkPriceResponse {
                let dict = self.dictionary!
                let copy = BulkPriceResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    data = try container.decode([BulkPriceOffer].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
            }
            
        }
        
        /*
            Model: RewardPointRequest
            Used By: Cart
        */
        class RewardPointRequest: Codable {
            
            public var points: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case points = "points"
                
            }

            public init(points: Bool) {
                
                self.points = points
                
            }

            public func duplicate() -> RewardPointRequest {
                let dict = self.dictionary!
                let copy = RewardPointRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                points = try container.decode(Bool.self, forKey: .points)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(points, forKey: .points)
                
                
            }
            
        }
        
        /*
            Model: GeoLocation
            Used By: Cart
        */
        class GeoLocation: Codable {
            
            public var latitude: Double?
            
            public var longitude: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case latitude = "latitude"
                
                case longitude = "longitude"
                
            }

            public init(latitude: Double?, longitude: Double?) {
                
                self.latitude = latitude
                
                self.longitude = longitude
                
            }

            public func duplicate() -> GeoLocation {
                let dict = self.dictionary!
                let copy = GeoLocation(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    latitude = try container.decode(Double.self, forKey: .latitude)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    longitude = try container.decode(Double.self, forKey: .longitude)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(latitude, forKey: .latitude)
                
                
                
                
                try? container.encodeIfPresent(longitude, forKey: .longitude)
                
                
            }
            
        }
        
        /*
            Model: Address
            Used By: Cart
        */
        class Address: Codable {
            
            public var area: String?
            
            public var email: String?
            
            public var landmark: String?
            
            public var areaCode: String?
            
            public var areaCodeSlug: String?
            
            public var state: String?
            
            public var countryCode: String?
            
            public var country: String?
            
            public var name: String?
            
            public var isDefaultAddress: Bool?
            
            public var checkoutMode: String?
            
            public var address: String?
            
            public var geoLocation: GeoLocation?
            
            public var userId: String?
            
            public var city: String?
            
            public var tags: [String]?
            
            public var id: String?
            
            public var isActive: Bool?
            
            public var phone: String?
            
            public var googleMapPoint: [String: Any]?
            
            public var meta: [String: Any]?
            
            public var addressType: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case area = "area"
                
                case email = "email"
                
                case landmark = "landmark"
                
                case areaCode = "area_code"
                
                case areaCodeSlug = "area_code_slug"
                
                case state = "state"
                
                case countryCode = "country_code"
                
                case country = "country"
                
                case name = "name"
                
                case isDefaultAddress = "is_default_address"
                
                case checkoutMode = "checkout_mode"
                
                case address = "address"
                
                case geoLocation = "geo_location"
                
                case userId = "user_id"
                
                case city = "city"
                
                case tags = "tags"
                
                case id = "id"
                
                case isActive = "is_active"
                
                case phone = "phone"
                
                case googleMapPoint = "google_map_point"
                
                case meta = "meta"
                
                case addressType = "address_type"
                
            }

            public init(address: String?, addressType: String?, area: String?, areaCode: String?, areaCodeSlug: String?, checkoutMode: String?, city: String?, country: String?, countryCode: String?, email: String?, geoLocation: GeoLocation?, googleMapPoint: [String: Any]?, id: String?, isActive: Bool?, isDefaultAddress: Bool?, landmark: String?, meta: [String: Any]?, name: String?, phone: String?, state: String?, tags: [String]?, userId: String?) {
                
                self.area = area
                
                self.email = email
                
                self.landmark = landmark
                
                self.areaCode = areaCode
                
                self.areaCodeSlug = areaCodeSlug
                
                self.state = state
                
                self.countryCode = countryCode
                
                self.country = country
                
                self.name = name
                
                self.isDefaultAddress = isDefaultAddress
                
                self.checkoutMode = checkoutMode
                
                self.address = address
                
                self.geoLocation = geoLocation
                
                self.userId = userId
                
                self.city = city
                
                self.tags = tags
                
                self.id = id
                
                self.isActive = isActive
                
                self.phone = phone
                
                self.googleMapPoint = googleMapPoint
                
                self.meta = meta
                
                self.addressType = addressType
                
            }

            public func duplicate() -> Address {
                let dict = self.dictionary!
                let copy = Address(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    area = try container.decode(String.self, forKey: .area)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    landmark = try container.decode(String.self, forKey: .landmark)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    areaCode = try container.decode(String.self, forKey: .areaCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    areaCodeSlug = try container.decode(String.self, forKey: .areaCodeSlug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    state = try container.decode(String.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    country = try container.decode(String.self, forKey: .country)
                
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
                    isDefaultAddress = try container.decode(Bool.self, forKey: .isDefaultAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    checkoutMode = try container.decode(String.self, forKey: .checkoutMode)
                
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
                
                
                
                do {
                    geoLocation = try container.decode(GeoLocation.self, forKey: .geoLocation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    city = try container.decode(String.self, forKey: .city)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    phone = try container.decode(String.self, forKey: .phone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    googleMapPoint = try container.decode([String: Any].self, forKey: .googleMapPoint)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    addressType = try container.decode(String.self, forKey: .addressType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(area, forKey: .area)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(landmark, forKey: .landmark)
                
                
                
                
                try? container.encodeIfPresent(areaCode, forKey: .areaCode)
                
                
                
                
                try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)
                
                
                
                
                try? container.encodeIfPresent(state, forKey: .state)
                
                
                
                
                try? container.encodeIfPresent(countryCode, forKey: .countryCode)
                
                
                
                
                try? container.encodeIfPresent(country, forKey: .country)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
                
                
                
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                
                
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                
                
                
                try? container.encodeIfPresent(geoLocation, forKey: .geoLocation)
                
                
                
                
                try? container.encodeIfPresent(userId, forKey: .userId)
                
                
                
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                
                
                
                try? container.encodeIfPresent(tags, forKey: .tags)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                
                
                
                try? container.encodeIfPresent(phone, forKey: .phone)
                
                
                
                
                try? container.encodeIfPresent(googleMapPoint, forKey: .googleMapPoint)
                
                
                
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                
                
                
                try? container.encodeIfPresent(addressType, forKey: .addressType)
                
                
            }
            
        }
        
        /*
            Model: GetAddressesResponse
            Used By: Cart
        */
        class GetAddressesResponse: Codable {
            
            public var address: [Address]?
            

            public enum CodingKeys: String, CodingKey {
                
                case address = "address"
                
            }

            public init(address: [Address]?) {
                
                self.address = address
                
            }

            public func duplicate() -> GetAddressesResponse {
                let dict = self.dictionary!
                let copy = GetAddressesResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    address = try container.decode([Address].self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                
            }
            
        }
        
        /*
            Model: SaveAddressResponse
            Used By: Cart
        */
        class SaveAddressResponse: Codable {
            
            public var isDefaultAddress: Bool?
            
            public var success: Bool?
            
            public var id: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case isDefaultAddress = "is_default_address"
                
                case success = "success"
                
                case id = "id"
                
            }

            public init(id: String?, isDefaultAddress: Bool?, success: Bool?) {
                
                self.isDefaultAddress = isDefaultAddress
                
                self.success = success
                
                self.id = id
                
            }

            public func duplicate() -> SaveAddressResponse {
                let dict = self.dictionary!
                let copy = SaveAddressResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    isDefaultAddress = try container.decode(Bool.self, forKey: .isDefaultAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
            }
            
        }
        
        /*
            Model: UpdateAddressResponse
            Used By: Cart
        */
        class UpdateAddressResponse: Codable {
            
            public var isDefaultAddress: Bool?
            
            public var isUpdated: Bool?
            
            public var success: Bool?
            
            public var id: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case isDefaultAddress = "is_default_address"
                
                case isUpdated = "is_updated"
                
                case success = "success"
                
                case id = "id"
                
            }

            public init(id: String?, isDefaultAddress: Bool?, isUpdated: Bool?, success: Bool?) {
                
                self.isDefaultAddress = isDefaultAddress
                
                self.isUpdated = isUpdated
                
                self.success = success
                
                self.id = id
                
            }

            public func duplicate() -> UpdateAddressResponse {
                let dict = self.dictionary!
                let copy = UpdateAddressResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    isDefaultAddress = try container.decode(Bool.self, forKey: .isDefaultAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isUpdated = try container.decode(Bool.self, forKey: .isUpdated)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
                
                
                
                
                try? container.encodeIfPresent(isUpdated, forKey: .isUpdated)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
            }
            
        }
        
        /*
            Model: DeleteAddressResponse
            Used By: Cart
        */
        class DeleteAddressResponse: Codable {
            
            public var isDeleted: Bool?
            
            public var id: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case isDeleted = "is_deleted"
                
                case id = "id"
                
            }

            public init(id: String?, isDeleted: Bool?) {
                
                self.isDeleted = isDeleted
                
                self.id = id
                
            }

            public func duplicate() -> DeleteAddressResponse {
                let dict = self.dictionary!
                let copy = DeleteAddressResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    isDeleted = try container.decode(Bool.self, forKey: .isDeleted)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(isDeleted, forKey: .isDeleted)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
            }
            
        }
        
        /*
            Model: SelectCartAddressRequest
            Used By: Cart
        */
        class SelectCartAddressRequest: Codable {
            
            public var cartId: String?
            
            public var billingAddressId: String?
            
            public var id: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case cartId = "cart_id"
                
                case billingAddressId = "billing_address_id"
                
                case id = "id"
                
            }

            public init(billingAddressId: String?, cartId: String?, id: String?) {
                
                self.cartId = cartId
                
                self.billingAddressId = billingAddressId
                
                self.id = id
                
            }

            public func duplicate() -> SelectCartAddressRequest {
                let dict = self.dictionary!
                let copy = SelectCartAddressRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    cartId = try container.decode(String.self, forKey: .cartId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    billingAddressId = try container.decode(String.self, forKey: .billingAddressId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(cartId, forKey: .cartId)
                
                
                
                
                try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
            }
            
        }
        
        /*
            Model: UpdateCartPaymentRequest
            Used By: Cart
        */
        class UpdateCartPaymentRequest: Codable {
            
            public var merchantCode: String?
            
            public var paymentIdentifier: String?
            
            public var aggregatorName: String?
            
            public var paymentMode: String?
            
            public var addressId: String?
            
            public var id: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case merchantCode = "merchant_code"
                
                case paymentIdentifier = "payment_identifier"
                
                case aggregatorName = "aggregator_name"
                
                case paymentMode = "payment_mode"
                
                case addressId = "address_id"
                
                case id = "id"
                
            }

            public init(addressId: String?, aggregatorName: String?, id: String?, merchantCode: String?, paymentIdentifier: String?, paymentMode: String?) {
                
                self.merchantCode = merchantCode
                
                self.paymentIdentifier = paymentIdentifier
                
                self.aggregatorName = aggregatorName
                
                self.paymentMode = paymentMode
                
                self.addressId = addressId
                
                self.id = id
                
            }

            public func duplicate() -> UpdateCartPaymentRequest {
                let dict = self.dictionary!
                let copy = UpdateCartPaymentRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    merchantCode = try container.decode(String.self, forKey: .merchantCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)
                
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
                    paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    addressId = try container.decode(String.self, forKey: .addressId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
                
                
                
                
                try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)
                
                
                
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                
                
                
                try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
                
                
                
                
                try? container.encodeIfPresent(addressId, forKey: .addressId)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
            }
            
        }
        
        /*
            Model: CouponValidity
            Used By: Cart
        */
        class CouponValidity: Codable {
            
            public var discount: Double?
            
            public var valid: Bool?
            
            public var title: String?
            
            public var code: String?
            
            public var displayMessageEn: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case discount = "discount"
                
                case valid = "valid"
                
                case title = "title"
                
                case code = "code"
                
                case displayMessageEn = "display_message_en"
                
            }

            public init(code: String?, discount: Double?, displayMessageEn: String?, title: String?, valid: Bool?) {
                
                self.discount = discount
                
                self.valid = valid
                
                self.title = title
                
                self.code = code
                
                self.displayMessageEn = displayMessageEn
                
            }

            public func duplicate() -> CouponValidity {
                let dict = self.dictionary!
                let copy = CouponValidity(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    discount = try container.decode(Double.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    valid = try container.decode(Bool.self, forKey: .valid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    displayMessageEn = try container.decode(String.self, forKey: .displayMessageEn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                
                
                
                try? container.encodeIfPresent(valid, forKey: .valid)
                
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
                
                
                try? container.encode(code, forKey: .code)
                
                
                
                
                try? container.encode(displayMessageEn, forKey: .displayMessageEn)
                
                
            }
            
        }
        
        /*
            Model: PaymentCouponValidate
            Used By: Cart
        */
        class PaymentCouponValidate: Codable {
            
            public var success: Bool
            
            public var message: String?
            
            public var couponValidity: CouponValidity?
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case message = "message"
                
                case couponValidity = "coupon_validity"
                
            }

            public init(couponValidity: CouponValidity?, message: String?, success: Bool) {
                
                self.success = success
                
                self.message = message
                
                self.couponValidity = couponValidity
                
            }

            public func duplicate() -> PaymentCouponValidate {
                let dict = self.dictionary!
                let copy = PaymentCouponValidate(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    couponValidity = try container.decode(CouponValidity.self, forKey: .couponValidity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(couponValidity, forKey: .couponValidity)
                
                
            }
            
        }
        
        /*
            Model: ShipmentResponse
            Used By: Cart
        */
        class ShipmentResponse: Codable {
            
            public var dpOptions: [String: Any]?
            
            public var fulfillmentType: String?
            
            public var items: [CartProductInfo]?
            
            public var dpId: String?
            
            public var shipments: Int?
            
            public var orderType: String?
            
            public var fulfillmentId: Int?
            
            public var promise: ShipmentPromise?
            
            public var boxType: String?
            
            public var shipmentType: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case dpOptions = "dp_options"
                
                case fulfillmentType = "fulfillment_type"
                
                case items = "items"
                
                case dpId = "dp_id"
                
                case shipments = "shipments"
                
                case orderType = "order_type"
                
                case fulfillmentId = "fulfillment_id"
                
                case promise = "promise"
                
                case boxType = "box_type"
                
                case shipmentType = "shipment_type"
                
            }

            public init(boxType: String?, dpId: String?, dpOptions: [String: Any]?, fulfillmentId: Int?, fulfillmentType: String?, items: [CartProductInfo]?, orderType: String?, promise: ShipmentPromise?, shipments: Int?, shipmentType: String?) {
                
                self.dpOptions = dpOptions
                
                self.fulfillmentType = fulfillmentType
                
                self.items = items
                
                self.dpId = dpId
                
                self.shipments = shipments
                
                self.orderType = orderType
                
                self.fulfillmentId = fulfillmentId
                
                self.promise = promise
                
                self.boxType = boxType
                
                self.shipmentType = shipmentType
                
            }

            public func duplicate() -> ShipmentResponse {
                let dict = self.dictionary!
                let copy = ShipmentResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    dpOptions = try container.decode([String: Any].self, forKey: .dpOptions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    fulfillmentType = try container.decode(String.self, forKey: .fulfillmentType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    items = try container.decode([CartProductInfo].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    dpId = try container.decode(String.self, forKey: .dpId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    shipments = try container.decode(Int.self, forKey: .shipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    orderType = try container.decode(String.self, forKey: .orderType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    promise = try container.decode(ShipmentPromise.self, forKey: .promise)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    boxType = try container.decode(String.self, forKey: .boxType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    shipmentType = try container.decode(String.self, forKey: .shipmentType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(dpOptions, forKey: .dpOptions)
                
                
                
                
                try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)
                
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
                
                
                try? container.encode(dpId, forKey: .dpId)
                
                
                
                
                try? container.encodeIfPresent(shipments, forKey: .shipments)
                
                
                
                
                try? container.encodeIfPresent(orderType, forKey: .orderType)
                
                
                
                
                try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
                
                
                
                
                try? container.encodeIfPresent(promise, forKey: .promise)
                
                
                
                
                try? container.encode(boxType, forKey: .boxType)
                
                
                
                
                try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)
                
                
            }
            
        }
        
        /*
            Model: CartShipmentsResponse
            Used By: Cart
        */
        class CartShipmentsResponse: Codable {
            
            public var gstin: String?
            
            public var breakupValues: CartBreakup?
            
            public var checkoutMode: String?
            
            public var shipments: [ShipmentResponse]?
            
            public var restrictCheckout: Bool?
            
            public var lastModified: String?
            
            public var isValid: Bool?
            
            public var uid: String?
            
            public var deliveryPromise: ShipmentPromise?
            
            public var message: String?
            
            public var id: String?
            
            public var currency: CartCurrency?
            
            public var deliveryChargeInfo: String?
            
            public var cartId: Int?
            
            public var paymentSelectionLock: PaymentSelectionLock?
            
            public var couponText: String?
            
            public var error: Bool?
            
            public var comment: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case gstin = "gstin"
                
                case breakupValues = "breakup_values"
                
                case checkoutMode = "checkout_mode"
                
                case shipments = "shipments"
                
                case restrictCheckout = "restrict_checkout"
                
                case lastModified = "last_modified"
                
                case isValid = "is_valid"
                
                case uid = "uid"
                
                case deliveryPromise = "delivery_promise"
                
                case message = "message"
                
                case id = "id"
                
                case currency = "currency"
                
                case deliveryChargeInfo = "delivery_charge_info"
                
                case cartId = "cart_id"
                
                case paymentSelectionLock = "payment_selection_lock"
                
                case couponText = "coupon_text"
                
                case error = "error"
                
                case comment = "comment"
                
            }

            public init(breakupValues: CartBreakup?, cartId: Int?, checkoutMode: String?, comment: String?, couponText: String?, currency: CartCurrency?, deliveryChargeInfo: String?, deliveryPromise: ShipmentPromise?, error: Bool?, gstin: String?, id: String?, isValid: Bool?, lastModified: String?, message: String?, paymentSelectionLock: PaymentSelectionLock?, restrictCheckout: Bool?, shipments: [ShipmentResponse]?, uid: String?) {
                
                self.gstin = gstin
                
                self.breakupValues = breakupValues
                
                self.checkoutMode = checkoutMode
                
                self.shipments = shipments
                
                self.restrictCheckout = restrictCheckout
                
                self.lastModified = lastModified
                
                self.isValid = isValid
                
                self.uid = uid
                
                self.deliveryPromise = deliveryPromise
                
                self.message = message
                
                self.id = id
                
                self.currency = currency
                
                self.deliveryChargeInfo = deliveryChargeInfo
                
                self.cartId = cartId
                
                self.paymentSelectionLock = paymentSelectionLock
                
                self.couponText = couponText
                
                self.error = error
                
                self.comment = comment
                
            }

            public func duplicate() -> CartShipmentsResponse {
                let dict = self.dictionary!
                let copy = CartShipmentsResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    gstin = try container.decode(String.self, forKey: .gstin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    checkoutMode = try container.decode(String.self, forKey: .checkoutMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    shipments = try container.decode([ShipmentResponse].self, forKey: .shipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    restrictCheckout = try container.decode(Bool.self, forKey: .restrictCheckout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    lastModified = try container.decode(String.self, forKey: .lastModified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isValid = try container.decode(Bool.self, forKey: .isValid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currency = try container.decode(CartCurrency.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryChargeInfo = try container.decode(String.self, forKey: .deliveryChargeInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cartId = try container.decode(Int.self, forKey: .cartId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentSelectionLock = try container.decode(PaymentSelectionLock.self, forKey: .paymentSelectionLock)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    couponText = try container.decode(String.self, forKey: .couponText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    error = try container.decode(Bool.self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                
                
                
                try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
                
                
                
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                
                
                
                try? container.encodeIfPresent(shipments, forKey: .shipments)
                
                
                
                
                try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
                
                
                
                
                try? container.encodeIfPresent(lastModified, forKey: .lastModified)
                
                
                
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
                
                
                
                
                try? container.encodeIfPresent(cartId, forKey: .cartId)
                
                
                
                
                try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)
                
                
                
                
                try? container.encodeIfPresent(couponText, forKey: .couponText)
                
                
                
                
                try? container.encodeIfPresent(error, forKey: .error)
                
                
                
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                
            }
            
        }
        
        /*
            Model: StaffCheckout
            Used By: Cart
        */
        class StaffCheckout: Codable {
            
            public var user: String
            
            public var lastName: String
            
            public var firstName: String
            
            public var id: String
            

            public enum CodingKeys: String, CodingKey {
                
                case user = "user"
                
                case lastName = "last_name"
                
                case firstName = "first_name"
                
                case id = "_id"
                
            }

            public init(firstName: String, lastName: String, user: String, id: String) {
                
                self.user = user
                
                self.lastName = lastName
                
                self.firstName = firstName
                
                self.id = id
                
            }

            public func duplicate() -> StaffCheckout {
                let dict = self.dictionary!
                let copy = StaffCheckout(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                user = try container.decode(String.self, forKey: .user)
                
                
                
                
                lastName = try container.decode(String.self, forKey: .lastName)
                
                
                
                
                firstName = try container.decode(String.self, forKey: .firstName)
                
                
                
                
                id = try container.decode(String.self, forKey: .id)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(user, forKey: .user)
                
                
                
                
                try? container.encodeIfPresent(lastName, forKey: .lastName)
                
                
                
                
                try? container.encodeIfPresent(firstName, forKey: .firstName)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
            }
            
        }
        
        /*
            Model: CartCheckoutDetailRequest
            Used By: Cart
        */
        class CartCheckoutDetailRequest: Codable {
            
            public var merchantCode: String?
            
            public var aggregator: String?
            
            public var orderingStore: Int?
            
            public var paymentAutoConfirm: Bool?
            
            public var callbackUrl: String?
            
            public var extraMeta: [String: Any]?
            
            public var paymentIdentifier: String?
            
            public var paymentParams: [String: Any]?
            
            public var staff: StaffCheckout?
            
            public var deliveryAddress: [String: Any]?
            
            public var paymentMode: String
            
            public var billingAddress: [String: Any]?
            
            public var addressId: String?
            
            public var meta: [String: Any]?
            
            public var billingAddressId: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case merchantCode = "merchant_code"
                
                case aggregator = "aggregator"
                
                case orderingStore = "ordering_store"
                
                case paymentAutoConfirm = "payment_auto_confirm"
                
                case callbackUrl = "callback_url"
                
                case extraMeta = "extra_meta"
                
                case paymentIdentifier = "payment_identifier"
                
                case paymentParams = "payment_params"
                
                case staff = "staff"
                
                case deliveryAddress = "delivery_address"
                
                case paymentMode = "payment_mode"
                
                case billingAddress = "billing_address"
                
                case addressId = "address_id"
                
                case meta = "meta"
                
                case billingAddressId = "billing_address_id"
                
            }

            public init(addressId: String?, aggregator: String?, billingAddress: [String: Any]?, billingAddressId: String?, callbackUrl: String?, deliveryAddress: [String: Any]?, extraMeta: [String: Any]?, merchantCode: String?, meta: [String: Any]?, orderingStore: Int?, paymentAutoConfirm: Bool?, paymentIdentifier: String?, paymentMode: String, paymentParams: [String: Any]?, staff: StaffCheckout?) {
                
                self.merchantCode = merchantCode
                
                self.aggregator = aggregator
                
                self.orderingStore = orderingStore
                
                self.paymentAutoConfirm = paymentAutoConfirm
                
                self.callbackUrl = callbackUrl
                
                self.extraMeta = extraMeta
                
                self.paymentIdentifier = paymentIdentifier
                
                self.paymentParams = paymentParams
                
                self.staff = staff
                
                self.deliveryAddress = deliveryAddress
                
                self.paymentMode = paymentMode
                
                self.billingAddress = billingAddress
                
                self.addressId = addressId
                
                self.meta = meta
                
                self.billingAddressId = billingAddressId
                
            }

            public func duplicate() -> CartCheckoutDetailRequest {
                let dict = self.dictionary!
                let copy = CartCheckoutDetailRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    merchantCode = try container.decode(String.self, forKey: .merchantCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    aggregator = try container.decode(String.self, forKey: .aggregator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    orderingStore = try container.decode(Int.self, forKey: .orderingStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentAutoConfirm = try container.decode(Bool.self, forKey: .paymentAutoConfirm)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    callbackUrl = try container.decode(String.self, forKey: .callbackUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentParams = try container.decode([String: Any].self, forKey: .paymentParams)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    staff = try container.decode(StaffCheckout.self, forKey: .staff)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryAddress = try container.decode([String: Any].self, forKey: .deliveryAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
                
                
                
                do {
                    billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    addressId = try container.decode(String.self, forKey: .addressId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    billingAddressId = try container.decode(String.self, forKey: .billingAddressId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encode(orderingStore, forKey: .orderingStore)
                
                
                
                
                try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)
                
                
                
                
                try? container.encode(callbackUrl, forKey: .callbackUrl)
                
                
                
                
                try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
                
                
                
                
                try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)
                
                
                
                
                try? container.encode(paymentParams, forKey: .paymentParams)
                
                
                
                
                try? container.encodeIfPresent(staff, forKey: .staff)
                
                
                
                
                try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)
                
                
                
                
                try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
                
                
                
                
                try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
                
                
                
                
                try? container.encodeIfPresent(addressId, forKey: .addressId)
                
                
                
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                
                
                
                try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)
                
                
            }
            
        }
        
        /*
            Model: CheckCart
            Used By: Cart
        */
        class CheckCart: Codable {
            
            public var breakupValues: CartBreakup?
            
            public var errorMessage: String?
            
            public var restrictCheckout: Bool?
            
            public var storeEmps: [[String: Any]]?
            
            public var codAvailable: Bool?
            
            public var uid: String?
            
            public var deliveryPromise: ShipmentPromise?
            
            public var orderId: String?
            
            public var currency: CartCurrency?
            
            public var deliveryChargeInfo: String?
            
            public var cartId: Int?
            
            public var paymentSelectionLock: PaymentSelectionLock?
            
            public var userType: String?
            
            public var deliveryCharges: Int?
            
            public var gstin: String?
            
            public var checkoutMode: String?
            
            public var items: [CartProductInfo]?
            
            public var lastModified: String?
            
            public var codCharges: Int?
            
            public var isValid: Bool?
            
            public var deliveryChargeOrderValue: Int?
            
            public var message: String?
            
            public var id: String?
            
            public var success: Bool?
            
            public var storeCode: String?
            
            public var codMessage: String?
            
            public var couponText: String?
            
            public var comment: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case breakupValues = "breakup_values"
                
                case errorMessage = "error_message"
                
                case restrictCheckout = "restrict_checkout"
                
                case storeEmps = "store_emps"
                
                case codAvailable = "cod_available"
                
                case uid = "uid"
                
                case deliveryPromise = "delivery_promise"
                
                case orderId = "order_id"
                
                case currency = "currency"
                
                case deliveryChargeInfo = "delivery_charge_info"
                
                case cartId = "cart_id"
                
                case paymentSelectionLock = "payment_selection_lock"
                
                case userType = "user_type"
                
                case deliveryCharges = "delivery_charges"
                
                case gstin = "gstin"
                
                case checkoutMode = "checkout_mode"
                
                case items = "items"
                
                case lastModified = "last_modified"
                
                case codCharges = "cod_charges"
                
                case isValid = "is_valid"
                
                case deliveryChargeOrderValue = "delivery_charge_order_value"
                
                case message = "message"
                
                case id = "id"
                
                case success = "success"
                
                case storeCode = "store_code"
                
                case codMessage = "cod_message"
                
                case couponText = "coupon_text"
                
                case comment = "comment"
                
            }

            public init(breakupValues: CartBreakup?, cartId: Int?, checkoutMode: String?, codAvailable: Bool?, codCharges: Int?, codMessage: String?, comment: String?, couponText: String?, currency: CartCurrency?, deliveryCharges: Int?, deliveryChargeInfo: String?, deliveryChargeOrderValue: Int?, deliveryPromise: ShipmentPromise?, errorMessage: String?, gstin: String?, id: String?, isValid: Bool?, items: [CartProductInfo]?, lastModified: String?, message: String?, orderId: String?, paymentSelectionLock: PaymentSelectionLock?, restrictCheckout: Bool?, storeCode: String?, storeEmps: [[String: Any]]?, success: Bool?, uid: String?, userType: String?) {
                
                self.breakupValues = breakupValues
                
                self.errorMessage = errorMessage
                
                self.restrictCheckout = restrictCheckout
                
                self.storeEmps = storeEmps
                
                self.codAvailable = codAvailable
                
                self.uid = uid
                
                self.deliveryPromise = deliveryPromise
                
                self.orderId = orderId
                
                self.currency = currency
                
                self.deliveryChargeInfo = deliveryChargeInfo
                
                self.cartId = cartId
                
                self.paymentSelectionLock = paymentSelectionLock
                
                self.userType = userType
                
                self.deliveryCharges = deliveryCharges
                
                self.gstin = gstin
                
                self.checkoutMode = checkoutMode
                
                self.items = items
                
                self.lastModified = lastModified
                
                self.codCharges = codCharges
                
                self.isValid = isValid
                
                self.deliveryChargeOrderValue = deliveryChargeOrderValue
                
                self.message = message
                
                self.id = id
                
                self.success = success
                
                self.storeCode = storeCode
                
                self.codMessage = codMessage
                
                self.couponText = couponText
                
                self.comment = comment
                
            }

            public func duplicate() -> CheckCart {
                let dict = self.dictionary!
                let copy = CheckCart(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    errorMessage = try container.decode(String.self, forKey: .errorMessage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    restrictCheckout = try container.decode(Bool.self, forKey: .restrictCheckout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    storeEmps = try container.decode([[String: Any]].self, forKey: .storeEmps)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    codAvailable = try container.decode(Bool.self, forKey: .codAvailable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    orderId = try container.decode(String.self, forKey: .orderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currency = try container.decode(CartCurrency.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryChargeInfo = try container.decode(String.self, forKey: .deliveryChargeInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cartId = try container.decode(Int.self, forKey: .cartId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentSelectionLock = try container.decode(PaymentSelectionLock.self, forKey: .paymentSelectionLock)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    userType = try container.decode(String.self, forKey: .userType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryCharges = try container.decode(Int.self, forKey: .deliveryCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    gstin = try container.decode(String.self, forKey: .gstin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    checkoutMode = try container.decode(String.self, forKey: .checkoutMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    items = try container.decode([CartProductInfo].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    lastModified = try container.decode(String.self, forKey: .lastModified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    codCharges = try container.decode(Int.self, forKey: .codCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isValid = try container.decode(Bool.self, forKey: .isValid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryChargeOrderValue = try container.decode(Int.self, forKey: .deliveryChargeOrderValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    storeCode = try container.decode(String.self, forKey: .storeCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    codMessage = try container.decode(String.self, forKey: .codMessage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    couponText = try container.decode(String.self, forKey: .couponText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
                
                
                
                
                try? container.encodeIfPresent(errorMessage, forKey: .errorMessage)
                
                
                
                
                try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
                
                
                
                
                try? container.encodeIfPresent(storeEmps, forKey: .storeEmps)
                
                
                
                
                try? container.encodeIfPresent(codAvailable, forKey: .codAvailable)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
                
                
                
                
                try? container.encodeIfPresent(cartId, forKey: .cartId)
                
                
                
                
                try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)
                
                
                
                
                try? container.encodeIfPresent(userType, forKey: .userType)
                
                
                
                
                try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
                
                
                
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                
                
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
                
                
                try? container.encodeIfPresent(lastModified, forKey: .lastModified)
                
                
                
                
                try? container.encodeIfPresent(codCharges, forKey: .codCharges)
                
                
                
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
                
                
                
                try? container.encodeIfPresent(deliveryChargeOrderValue, forKey: .deliveryChargeOrderValue)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(storeCode, forKey: .storeCode)
                
                
                
                
                try? container.encodeIfPresent(codMessage, forKey: .codMessage)
                
                
                
                
                try? container.encodeIfPresent(couponText, forKey: .couponText)
                
                
                
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                
            }
            
        }
        
        /*
            Model: CartCheckoutResponse
            Used By: Cart
        */
        class CartCheckoutResponse: Codable {
            
            public var success: Bool?
            
            public var orderId: String?
            
            public var cart: CheckCart?
            
            public var data: [String: Any]?
            
            public var callbackUrl: String?
            
            public var appInterceptUrl: String?
            
            public var message: String?
            
            public var paymentConfirmUrl: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case orderId = "order_id"
                
                case cart = "cart"
                
                case data = "data"
                
                case callbackUrl = "callback_url"
                
                case appInterceptUrl = "app_intercept_url"
                
                case message = "message"
                
                case paymentConfirmUrl = "payment_confirm_url"
                
            }

            public init(appInterceptUrl: String?, callbackUrl: String?, cart: CheckCart?, data: [String: Any]?, message: String?, orderId: String?, paymentConfirmUrl: String?, success: Bool?) {
                
                self.success = success
                
                self.orderId = orderId
                
                self.cart = cart
                
                self.data = data
                
                self.callbackUrl = callbackUrl
                
                self.appInterceptUrl = appInterceptUrl
                
                self.message = message
                
                self.paymentConfirmUrl = paymentConfirmUrl
                
            }

            public func duplicate() -> CartCheckoutResponse {
                let dict = self.dictionary!
                let copy = CartCheckoutResponse(dictionary: dict)!
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
                
                
                
                do {
                    orderId = try container.decode(String.self, forKey: .orderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cart = try container.decode(CheckCart.self, forKey: .cart)
                
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
                    callbackUrl = try container.decode(String.self, forKey: .callbackUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    appInterceptUrl = try container.decode(String.self, forKey: .appInterceptUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentConfirmUrl = try container.decode(String.self, forKey: .paymentConfirmUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encodeIfPresent(cart, forKey: .cart)
                
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
                
                
                try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
                
                
                
                
                try? container.encodeIfPresent(appInterceptUrl, forKey: .appInterceptUrl)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(paymentConfirmUrl, forKey: .paymentConfirmUrl)
                
                
            }
            
        }
        
        /*
            Model: CartMetaRequest
            Used By: Cart
        */
        class CartMetaRequest: Codable {
            
            public var checkoutMode: String?
            
            public var gstin: String?
            
            public var pickUpCustomerDetails: [String: Any]?
            
            public var comment: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case checkoutMode = "checkout_mode"
                
                case gstin = "gstin"
                
                case pickUpCustomerDetails = "pick_up_customer_details"
                
                case comment = "comment"
                
            }

            public init(checkoutMode: String?, comment: String?, gstin: String?, pickUpCustomerDetails: [String: Any]?) {
                
                self.checkoutMode = checkoutMode
                
                self.gstin = gstin
                
                self.pickUpCustomerDetails = pickUpCustomerDetails
                
                self.comment = comment
                
            }

            public func duplicate() -> CartMetaRequest {
                let dict = self.dictionary!
                let copy = CartMetaRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    checkoutMode = try container.decode(String.self, forKey: .checkoutMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    gstin = try container.decode(String.self, forKey: .gstin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pickUpCustomerDetails = try container.decode([String: Any].self, forKey: .pickUpCustomerDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                
                
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                
                
                
                try? container.encodeIfPresent(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)
                
                
                
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                
            }
            
        }
        
        /*
            Model: CartMetaResponse
            Used By: Cart
        */
        class CartMetaResponse: Codable {
            
            public var message: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
            }

            public init(message: String?) {
                
                self.message = message
                
            }

            public func duplicate() -> CartMetaResponse {
                let dict = self.dictionary!
                let copy = CartMetaResponse(dictionary: dict)!
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
            }
            
        }
        
        /*
            Model: CartMetaMissingResponse
            Used By: Cart
        */
        class CartMetaMissingResponse: Codable {
            
            public var errors: [String]?
            

            public enum CodingKeys: String, CodingKey {
                
                case errors = "errors"
                
            }

            public init(errors: [String]?) {
                
                self.errors = errors
                
            }

            public func duplicate() -> CartMetaMissingResponse {
                let dict = self.dictionary!
                let copy = CartMetaMissingResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    errors = try container.decode([String].self, forKey: .errors)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(errors, forKey: .errors)
                
                
            }
            
        }
        
        /*
            Model: GetShareCartLinkRequest
            Used By: Cart
        */
        class GetShareCartLinkRequest: Codable {
            
            public var meta: [String: Any]?
            
            public var id: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case meta = "meta"
                
                case id = "id"
                
            }

            public init(id: String?, meta: [String: Any]?) {
                
                self.meta = meta
                
                self.id = id
                
            }

            public func duplicate() -> GetShareCartLinkRequest {
                let dict = self.dictionary!
                let copy = GetShareCartLinkRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
            }
            
        }
        
        /*
            Model: GetShareCartLinkResponse
            Used By: Cart
        */
        class GetShareCartLinkResponse: Codable {
            
            public var shareUrl: String?
            
            public var token: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case shareUrl = "share_url"
                
                case token = "token"
                
            }

            public init(shareUrl: String?, token: String?) {
                
                self.shareUrl = shareUrl
                
                self.token = token
                
            }

            public func duplicate() -> GetShareCartLinkResponse {
                let dict = self.dictionary!
                let copy = GetShareCartLinkResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    shareUrl = try container.decode(String.self, forKey: .shareUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    token = try container.decode(String.self, forKey: .token)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(shareUrl, forKey: .shareUrl)
                
                
                
                
                try? container.encodeIfPresent(token, forKey: .token)
                
                
            }
            
        }
        
        /*
            Model: SharedCartDetails
            Used By: Cart
        */
        class SharedCartDetails: Codable {
            
            public var createdOn: String?
            
            public var source: [String: Any]?
            
            public var user: [String: Any]?
            
            public var token: String?
            
            public var meta: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case createdOn = "created_on"
                
                case source = "source"
                
                case user = "user"
                
                case token = "token"
                
                case meta = "meta"
                
            }

            public init(createdOn: String?, meta: [String: Any]?, source: [String: Any]?, token: String?, user: [String: Any]?) {
                
                self.createdOn = createdOn
                
                self.source = source
                
                self.user = user
                
                self.token = token
                
                self.meta = meta
                
            }

            public func duplicate() -> SharedCartDetails {
                let dict = self.dictionary!
                let copy = SharedCartDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    source = try container.decode([String: Any].self, forKey: .source)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    user = try container.decode([String: Any].self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    token = try container.decode(String.self, forKey: .token)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(createdOn, forKey: .createdOn)
                
                
                
                
                try? container.encodeIfPresent(source, forKey: .source)
                
                
                
                
                try? container.encodeIfPresent(user, forKey: .user)
                
                
                
                
                try? container.encodeIfPresent(token, forKey: .token)
                
                
                
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                
            }
            
        }
        
        /*
            Model: SharedCart
            Used By: Cart
        */
        class SharedCart: Codable {
            
            public var gstin: String?
            
            public var currency: CartCurrency?
            
            public var deliveryChargeInfo: String?
            
            public var breakupValues: CartBreakup?
            
            public var cartId: Int?
            
            public var checkoutMode: String?
            
            public var items: [CartProductInfo]?
            
            public var paymentSelectionLock: PaymentSelectionLock?
            
            public var lastModified: String?
            
            public var restrictCheckout: Bool?
            
            public var sharedCartDetails: SharedCartDetails?
            
            public var couponText: String?
            
            public var isValid: Bool?
            
            public var uid: String?
            
            public var deliveryPromise: ShipmentPromise?
            
            public var comment: String?
            
            public var message: String?
            
            public var id: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case gstin = "gstin"
                
                case currency = "currency"
                
                case deliveryChargeInfo = "delivery_charge_info"
                
                case breakupValues = "breakup_values"
                
                case cartId = "cart_id"
                
                case checkoutMode = "checkout_mode"
                
                case items = "items"
                
                case paymentSelectionLock = "payment_selection_lock"
                
                case lastModified = "last_modified"
                
                case restrictCheckout = "restrict_checkout"
                
                case sharedCartDetails = "shared_cart_details"
                
                case couponText = "coupon_text"
                
                case isValid = "is_valid"
                
                case uid = "uid"
                
                case deliveryPromise = "delivery_promise"
                
                case comment = "comment"
                
                case message = "message"
                
                case id = "id"
                
            }

            public init(breakupValues: CartBreakup?, cartId: Int?, checkoutMode: String?, comment: String?, couponText: String?, currency: CartCurrency?, deliveryChargeInfo: String?, deliveryPromise: ShipmentPromise?, gstin: String?, id: String?, isValid: Bool?, items: [CartProductInfo]?, lastModified: String?, message: String?, paymentSelectionLock: PaymentSelectionLock?, restrictCheckout: Bool?, sharedCartDetails: SharedCartDetails?, uid: String?) {
                
                self.gstin = gstin
                
                self.currency = currency
                
                self.deliveryChargeInfo = deliveryChargeInfo
                
                self.breakupValues = breakupValues
                
                self.cartId = cartId
                
                self.checkoutMode = checkoutMode
                
                self.items = items
                
                self.paymentSelectionLock = paymentSelectionLock
                
                self.lastModified = lastModified
                
                self.restrictCheckout = restrictCheckout
                
                self.sharedCartDetails = sharedCartDetails
                
                self.couponText = couponText
                
                self.isValid = isValid
                
                self.uid = uid
                
                self.deliveryPromise = deliveryPromise
                
                self.comment = comment
                
                self.message = message
                
                self.id = id
                
            }

            public func duplicate() -> SharedCart {
                let dict = self.dictionary!
                let copy = SharedCart(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    gstin = try container.decode(String.self, forKey: .gstin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currency = try container.decode(CartCurrency.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryChargeInfo = try container.decode(String.self, forKey: .deliveryChargeInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cartId = try container.decode(Int.self, forKey: .cartId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    checkoutMode = try container.decode(String.self, forKey: .checkoutMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    items = try container.decode([CartProductInfo].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentSelectionLock = try container.decode(PaymentSelectionLock.self, forKey: .paymentSelectionLock)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    lastModified = try container.decode(String.self, forKey: .lastModified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    restrictCheckout = try container.decode(Bool.self, forKey: .restrictCheckout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sharedCartDetails = try container.decode(SharedCartDetails.self, forKey: .sharedCartDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    couponText = try container.decode(String.self, forKey: .couponText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isValid = try container.decode(Bool.self, forKey: .isValid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(gstin, forKey: .gstin)
                
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
                
                
                
                
                try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
                
                
                
                
                try? container.encodeIfPresent(cartId, forKey: .cartId)
                
                
                
                
                try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
                
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
                
                
                try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)
                
                
                
                
                try? container.encodeIfPresent(lastModified, forKey: .lastModified)
                
                
                
                
                try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)
                
                
                
                
                try? container.encodeIfPresent(sharedCartDetails, forKey: .sharedCartDetails)
                
                
                
                
                try? container.encodeIfPresent(couponText, forKey: .couponText)
                
                
                
                
                try? container.encodeIfPresent(isValid, forKey: .isValid)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
                
                
                
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
            }
            
        }
        
        /*
            Model: SharedCartResponse
            Used By: Cart
        */
        class SharedCartResponse: Codable {
            
            public var error: String?
            
            public var cart: SharedCart?
            

            public enum CodingKeys: String, CodingKey {
                
                case error = "error"
                
                case cart = "cart"
                
            }

            public init(cart: SharedCart?, error: String?) {
                
                self.error = error
                
                self.cart = cart
                
            }

            public func duplicate() -> SharedCartResponse {
                let dict = self.dictionary!
                let copy = SharedCartResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    error = try container.decode(String.self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cart = try container.decode(SharedCart.self, forKey: .cart)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(error, forKey: .error)
                
                
                
                
                try? container.encodeIfPresent(cart, forKey: .cart)
                
                
            }
            
        }
        
        /*
            Model: PromotionOffer
            Used By: Cart
        */
        class PromotionOffer: Codable {
            
            public var description: String?
            
            public var offerText: String?
            
            public var id: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case description = "description"
                
                case offerText = "offer_text"
                
                case id = "id"
                
            }

            public init(description: String?, id: String?, offerText: String?) {
                
                self.description = description
                
                self.offerText = offerText
                
                self.id = id
                
            }

            public func duplicate() -> PromotionOffer {
                let dict = self.dictionary!
                let copy = PromotionOffer(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    offerText = try container.decode(String.self, forKey: .offerText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(offerText, forKey: .offerText)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
            }
            
        }
        
        /*
            Model: PromotionOffersResponse
            Used By: Cart
        */
        class PromotionOffersResponse: Codable {
            
            public var availablePromotions: [PromotionOffer]?
            

            public enum CodingKeys: String, CodingKey {
                
                case availablePromotions = "available_promotions"
                
            }

            public init(availablePromotions: [PromotionOffer]?) {
                
                self.availablePromotions = availablePromotions
                
            }

            public func duplicate() -> PromotionOffersResponse {
                let dict = self.dictionary!
                let copy = PromotionOffersResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    availablePromotions = try container.decode([PromotionOffer].self, forKey: .availablePromotions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(availablePromotions, forKey: .availablePromotions)
                
                
            }
            
        }
        
        /*
            Model: OperationErrorResponse
            Used By: Cart
        */
        class OperationErrorResponse: Codable {
            
            public var success: Bool?
            
            public var message: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case message = "message"
                
            }

            public init(message: String?, success: Bool?) {
                
                self.success = success
                
                self.message = message
                
            }

            public func duplicate() -> OperationErrorResponse {
                let dict = self.dictionary!
                let copy = OperationErrorResponse(dictionary: dict)!
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
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
            }
            
        }
        
        /*
            Model: CurrencyInfo
            Used By: Cart
        */
        class CurrencyInfo: Codable {
            
            public var symbol: String?
            
            public var code: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case symbol = "symbol"
                
                case code = "code"
                
            }

            public init(code: String?, symbol: String?) {
                
                self.symbol = symbol
                
                self.code = code
                
            }

            public func duplicate() -> CurrencyInfo {
                let dict = self.dictionary!
                let copy = CurrencyInfo(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    symbol = try container.decode(String.self, forKey: .symbol)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(symbol, forKey: .symbol)
                
                
                
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                
            }
            
        }
        
        /*
            Model: LadderPrice
            Used By: Cart
        */
        class LadderPrice: Codable {
            
            public var effective: Int?
            
            public var offerPrice: Double?
            
            public var currencyCode: String?
            
            public var marked: Int?
            
            public var currencySymbol: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case effective = "effective"
                
                case offerPrice = "offer_price"
                
                case currencyCode = "currency_code"
                
                case marked = "marked"
                
                case currencySymbol = "currency_symbol"
                
            }

            public init(currencyCode: String?, currencySymbol: String?, effective: Int?, marked: Int?, offerPrice: Double?) {
                
                self.effective = effective
                
                self.offerPrice = offerPrice
                
                self.currencyCode = currencyCode
                
                self.marked = marked
                
                self.currencySymbol = currencySymbol
                
            }

            public func duplicate() -> LadderPrice {
                let dict = self.dictionary!
                let copy = LadderPrice(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    effective = try container.decode(Int.self, forKey: .effective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    offerPrice = try container.decode(Double.self, forKey: .offerPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    marked = try container.decode(Int.self, forKey: .marked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(effective, forKey: .effective)
                
                
                
                
                try? container.encodeIfPresent(offerPrice, forKey: .offerPrice)
                
                
                
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                
                
                
                try? container.encodeIfPresent(marked, forKey: .marked)
                
                
                
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                
            }
            
        }
        
        /*
            Model: LadderOfferItem
            Used By: Cart
        */
        class LadderOfferItem: Codable {
            
            public var margin: Int?
            
            public var type: String?
            
            public var minQuantity: Int?
            
            public var price: LadderPrice?
            
            public var maxQuantity: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case margin = "margin"
                
                case type = "type"
                
                case minQuantity = "min_quantity"
                
                case price = "price"
                
                case maxQuantity = "max_quantity"
                
            }

            public init(margin: Int?, maxQuantity: Int?, minQuantity: Int?, price: LadderPrice?, type: String?) {
                
                self.margin = margin
                
                self.type = type
                
                self.minQuantity = minQuantity
                
                self.price = price
                
                self.maxQuantity = maxQuantity
                
            }

            public func duplicate() -> LadderOfferItem {
                let dict = self.dictionary!
                let copy = LadderOfferItem(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    margin = try container.decode(Int.self, forKey: .margin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    minQuantity = try container.decode(Int.self, forKey: .minQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    price = try container.decode(LadderPrice.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    maxQuantity = try container.decode(Int.self, forKey: .maxQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(margin, forKey: .margin)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)
                
                
                
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                
                
                
                try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)
                
                
            }
            
        }
        
        /*
            Model: LadderPriceOffer
            Used By: Cart
        */
        class LadderPriceOffer: Codable {
            
            public var offerPrices: [LadderOfferItem]?
            
            public var description: String?
            
            public var offerText: String?
            
            public var id: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case offerPrices = "offer_prices"
                
                case description = "description"
                
                case offerText = "offer_text"
                
                case id = "id"
                
            }

            public init(description: String?, id: String?, offerPrices: [LadderOfferItem]?, offerText: String?) {
                
                self.offerPrices = offerPrices
                
                self.description = description
                
                self.offerText = offerText
                
                self.id = id
                
            }

            public func duplicate() -> LadderPriceOffer {
                let dict = self.dictionary!
                let copy = LadderPriceOffer(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    offerPrices = try container.decode([LadderOfferItem].self, forKey: .offerPrices)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    offerText = try container.decode(String.self, forKey: .offerText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(offerPrices, forKey: .offerPrices)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(offerText, forKey: .offerText)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
            }
            
        }
        
        /*
            Model: LadderPriceOffers
            Used By: Cart
        */
        class LadderPriceOffers: Codable {
            
            public var currency: CurrencyInfo?
            
            public var availableOffers: [LadderPriceOffer]?
            

            public enum CodingKeys: String, CodingKey {
                
                case currency = "currency"
                
                case availableOffers = "available_offers"
                
            }

            public init(availableOffers: [LadderPriceOffer]?, currency: CurrencyInfo?) {
                
                self.currency = currency
                
                self.availableOffers = availableOffers
                
            }

            public func duplicate() -> LadderPriceOffers {
                let dict = self.dictionary!
                let copy = LadderPriceOffers(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    currency = try container.decode(CurrencyInfo.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    availableOffers = try container.decode([LadderPriceOffer].self, forKey: .availableOffers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(availableOffers, forKey: .availableOffers)
                
                
            }
            
        }
        
}
