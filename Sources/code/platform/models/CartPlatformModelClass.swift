import Foundation


import Foundation
public extension PlatformClient {
    
    /*
        Model: CouponDateMeta
        Used By: Cart
    */

    class CouponDateMeta: Codable {
        
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
        }

        public init(createdOn: String?, modifiedOn: String?) {
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
        }

        public func duplicate() -> CouponDateMeta {
            let dict = self.dictionary!
            let copy = CouponDateMeta(dictionary: dict)!
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
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encode(modifiedOn, forKey: .modifiedOn)
            
            
        }
        
    }
    
    /*
        Model: Validation
        Used By: Cart
    */

    class Validation: Codable {
        
        
        public var anonymous: Bool?
        
        public var appId: [String]?
        
        public var userRegisteredAfter: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case anonymous = "anonymous"
            
            case appId = "app_id"
            
            case userRegisteredAfter = "user_registered_after"
            
        }

        public init(anonymous: Bool?, appId: [String]?, userRegisteredAfter: String?) {
            
            self.anonymous = anonymous
            
            self.appId = appId
            
            self.userRegisteredAfter = userRegisteredAfter
            
        }

        public func duplicate() -> Validation {
            let dict = self.dictionary!
            let copy = Validation(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    anonymous = try container.decode(Bool.self, forKey: .anonymous)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appId = try container.decode([String].self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userRegisteredAfter = try container.decode(String.self, forKey: .userRegisteredAfter)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(anonymous, forKey: .anonymous)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encode(userRegisteredAfter, forKey: .userRegisteredAfter)
            
            
        }
        
    }
    
    /*
        Model: DisplayMetaDict
        Used By: Cart
    */

    class DisplayMetaDict: Codable {
        
        
        public var subtitle: String?
        
        public var title: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case subtitle = "subtitle"
            
            case title = "title"
            
        }

        public init(subtitle: String?, title: String?) {
            
            self.subtitle = subtitle
            
            self.title = title
            
        }

        public func duplicate() -> DisplayMetaDict {
            let dict = self.dictionary!
            let copy = DisplayMetaDict(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    subtitle = try container.decode(String.self, forKey: .subtitle)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
        }
        
    }
    
    /*
        Model: DisplayMeta
        Used By: Cart
    */

    class DisplayMeta: Codable {
        
        
        public var remove: DisplayMetaDict?
        
        public var description: String?
        
        public var title: String?
        
        public var auto: DisplayMetaDict?
        
        public var apply: DisplayMetaDict?
        
        public var subtitle: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case remove = "remove"
            
            case description = "description"
            
            case title = "title"
            
            case auto = "auto"
            
            case apply = "apply"
            
            case subtitle = "subtitle"
            
        }

        public init(apply: DisplayMetaDict?, auto: DisplayMetaDict?, description: String?, remove: DisplayMetaDict?, subtitle: String?, title: String?) {
            
            self.remove = remove
            
            self.description = description
            
            self.title = title
            
            self.auto = auto
            
            self.apply = apply
            
            self.subtitle = subtitle
            
        }

        public func duplicate() -> DisplayMeta {
            let dict = self.dictionary!
            let copy = DisplayMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    remove = try container.decode(DisplayMetaDict.self, forKey: .remove)
                
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
                    auto = try container.decode(DisplayMetaDict.self, forKey: .auto)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    apply = try container.decode(DisplayMetaDict.self, forKey: .apply)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subtitle = try container.decode(String.self, forKey: .subtitle)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(remove, forKey: .remove)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(auto, forKey: .auto)
            
            
            
            
            try? container.encodeIfPresent(apply, forKey: .apply)
            
            
            
            
            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
            
            
        }
        
    }
    
    /*
        Model: CouponAuthor
        Used By: Cart
    */

    class CouponAuthor: Codable {
        
        
        public var modifiedBy: String?
        
        public var createdBy: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case modifiedBy = "modified_by"
            
            case createdBy = "created_by"
            
        }

        public init(createdBy: String?, modifiedBy: String?) {
            
            self.modifiedBy = modifiedBy
            
            self.createdBy = createdBy
            
        }

        public func duplicate() -> CouponAuthor {
            let dict = self.dictionary!
            let copy = CouponAuthor(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    modifiedBy = try container.decode(String.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(String.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encode(createdBy, forKey: .createdBy)
            
            
        }
        
    }
    
    /*
        Model: RuleDefinition
        Used By: Cart
    */

    class RuleDefinition: Codable {
        
        
        public var isExact: Bool?
        
        public var autoApply: Bool?
        
        public var currencyCode: String?
        
        public var type: String
        
        public var valueType: String
        
        public var applicableOn: String
        
        public var calculateOn: String
        
        public var scope: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case isExact = "is_exact"
            
            case autoApply = "auto_apply"
            
            case currencyCode = "currency_code"
            
            case type = "type"
            
            case valueType = "value_type"
            
            case applicableOn = "applicable_on"
            
            case calculateOn = "calculate_on"
            
            case scope = "scope"
            
        }

        public init(applicableOn: String, autoApply: Bool?, calculateOn: String, currencyCode: String?, isExact: Bool?, scope: [String]?, type: String, valueType: String) {
            
            self.isExact = isExact
            
            self.autoApply = autoApply
            
            self.currencyCode = currencyCode
            
            self.type = type
            
            self.valueType = valueType
            
            self.applicableOn = applicableOn
            
            self.calculateOn = calculateOn
            
            self.scope = scope
            
        }

        public func duplicate() -> RuleDefinition {
            let dict = self.dictionary!
            let copy = RuleDefinition(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isExact = try container.decode(Bool.self, forKey: .isExact)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    autoApply = try container.decode(Bool.self, forKey: .autoApply)
                
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
                
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                valueType = try container.decode(String.self, forKey: .valueType)
                
            
            
            
                applicableOn = try container.decode(String.self, forKey: .applicableOn)
                
            
            
            
                calculateOn = try container.decode(String.self, forKey: .calculateOn)
                
            
            
            
                do {
                    scope = try container.decode([String].self, forKey: .scope)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isExact, forKey: .isExact)
            
            
            
            
            try? container.encodeIfPresent(autoApply, forKey: .autoApply)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(valueType, forKey: .valueType)
            
            
            
            
            try? container.encodeIfPresent(applicableOn, forKey: .applicableOn)
            
            
            
            
            try? container.encodeIfPresent(calculateOn, forKey: .calculateOn)
            
            
            
            
            try? container.encodeIfPresent(scope, forKey: .scope)
            
            
        }
        
    }
    
    /*
        Model: CouponAction
        Used By: Cart
    */

    class CouponAction: Codable {
        
        
        public var txnMode: String?
        
        public var actionDate: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case txnMode = "txn_mode"
            
            case actionDate = "action_date"
            
        }

        public init(actionDate: String?, txnMode: String?) {
            
            self.txnMode = txnMode
            
            self.actionDate = actionDate
            
        }

        public func duplicate() -> CouponAction {
            let dict = self.dictionary!
            let copy = CouponAction(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    txnMode = try container.decode(String.self, forKey: .txnMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    actionDate = try container.decode(String.self, forKey: .actionDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(txnMode, forKey: .txnMode)
            
            
            
            
            try? container.encode(actionDate, forKey: .actionDate)
            
            
        }
        
    }
    
    /*
        Model: State
        Used By: Cart
    */

    class State: Codable {
        
        
        public var isPublic: Bool?
        
        public var isDisplay: Bool?
        
        public var isArchived: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case isPublic = "is_public"
            
            case isDisplay = "is_display"
            
            case isArchived = "is_archived"
            
        }

        public init(isArchived: Bool?, isDisplay: Bool?, isPublic: Bool?) {
            
            self.isPublic = isPublic
            
            self.isDisplay = isDisplay
            
            self.isArchived = isArchived
            
        }

        public func duplicate() -> State {
            let dict = self.dictionary!
            let copy = State(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isPublic = try container.decode(Bool.self, forKey: .isPublic)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isDisplay = try container.decode(Bool.self, forKey: .isDisplay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isArchived = try container.decode(Bool.self, forKey: .isArchived)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isPublic, forKey: .isPublic)
            
            
            
            
            try? container.encodeIfPresent(isDisplay, forKey: .isDisplay)
            
            
            
            
            try? container.encodeIfPresent(isArchived, forKey: .isArchived)
            
            
        }
        
    }
    
    /*
        Model: Ownership
        Used By: Cart
    */

    class Ownership: Codable {
        
        
        public var payableCategory: String
        
        public var payableBy: String
        

        public enum CodingKeys: String, CodingKey {
            
            case payableCategory = "payable_category"
            
            case payableBy = "payable_by"
            
        }

        public init(payableBy: String, payableCategory: String) {
            
            self.payableCategory = payableCategory
            
            self.payableBy = payableBy
            
        }

        public func duplicate() -> Ownership {
            let dict = self.dictionary!
            let copy = Ownership(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                payableCategory = try container.decode(String.self, forKey: .payableCategory)
                
            
            
            
                payableBy = try container.decode(String.self, forKey: .payableBy)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(payableCategory, forKey: .payableCategory)
            
            
            
            
            try? container.encodeIfPresent(payableBy, forKey: .payableBy)
            
            
        }
        
    }
    
    /*
        Model: CouponSchedule
        Used By: Cart
    */

    class CouponSchedule: Codable {
        
        
        public var duration: Int?
        
        public var end: String?
        
        public var start: String?
        
        public var nextSchedule: [[String: Any]]?
        
        public var cron: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case duration = "duration"
            
            case end = "end"
            
            case start = "start"
            
            case nextSchedule = "next_schedule"
            
            case cron = "cron"
            
        }

        public init(cron: String?, duration: Int?, end: String?, nextSchedule: [[String: Any]]?, start: String?) {
            
            self.duration = duration
            
            self.end = end
            
            self.start = start
            
            self.nextSchedule = nextSchedule
            
            self.cron = cron
            
        }

        public func duplicate() -> CouponSchedule {
            let dict = self.dictionary!
            let copy = CouponSchedule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    duration = try container.decode(Int.self, forKey: .duration)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    end = try container.decode(String.self, forKey: .end)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    start = try container.decode(String.self, forKey: .start)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    nextSchedule = try container.decode([[String: Any]].self, forKey: .nextSchedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cron = try container.decode(String.self, forKey: .cron)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(duration, forKey: .duration)
            
            
            
            
            try? container.encode(end, forKey: .end)
            
            
            
            
            try? container.encodeIfPresent(start, forKey: .start)
            
            
            
            
            try? container.encodeIfPresent(nextSchedule, forKey: .nextSchedule)
            
            
            
            
            try? container.encode(cron, forKey: .cron)
            
            
        }
        
    }
    
    /*
        Model: Identifier
        Used By: Cart
    */

    class Identifier: Codable {
        
        
        public var companyId: [Int]?
        
        public var articleId: [String]?
        
        public var categoryId: [Int]?
        
        public var itemId: [Int]?
        
        public var userId: [String]?
        
        public var storeId: [Int]?
        
        public var collectionId: [String]?
        
        public var brandId: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyId = "company_id"
            
            case articleId = "article_id"
            
            case categoryId = "category_id"
            
            case itemId = "item_id"
            
            case userId = "user_id"
            
            case storeId = "store_id"
            
            case collectionId = "collection_id"
            
            case brandId = "brand_id"
            
        }

        public init(articleId: [String]?, brandId: [Int]?, categoryId: [Int]?, collectionId: [String]?, companyId: [Int]?, itemId: [Int]?, storeId: [Int]?, userId: [String]?) {
            
            self.companyId = companyId
            
            self.articleId = articleId
            
            self.categoryId = categoryId
            
            self.itemId = itemId
            
            self.userId = userId
            
            self.storeId = storeId
            
            self.collectionId = collectionId
            
            self.brandId = brandId
            
        }

        public func duplicate() -> Identifier {
            let dict = self.dictionary!
            let copy = Identifier(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    companyId = try container.decode([Int].self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    articleId = try container.decode([String].self, forKey: .articleId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    categoryId = try container.decode([Int].self, forKey: .categoryId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemId = try container.decode([Int].self, forKey: .itemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userId = try container.decode([String].self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeId = try container.decode([Int].self, forKey: .storeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    collectionId = try container.decode([String].self, forKey: .collectionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandId = try container.decode([Int].self, forKey: .brandId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(articleId, forKey: .articleId)
            
            
            
            
            try? container.encodeIfPresent(categoryId, forKey: .categoryId)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(storeId, forKey: .storeId)
            
            
            
            
            try? container.encodeIfPresent(collectionId, forKey: .collectionId)
            
            
            
            
            try? container.encodeIfPresent(brandId, forKey: .brandId)
            
            
        }
        
    }
    
    /*
        Model: PaymentAllowValue
        Used By: Cart
    */

    class PaymentAllowValue: Codable {
        
        
        public var max: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case max = "max"
            
        }

        public init(max: Int?) {
            
            self.max = max
            
        }

        public func duplicate() -> PaymentAllowValue {
            let dict = self.dictionary!
            let copy = PaymentAllowValue(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    max = try container.decode(Int.self, forKey: .max)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            
        }
        
    }
    
    /*
        Model: PaymentModes
        Used By: Cart
    */

    class PaymentModes: Codable {
        
        
        public var codes: [String]?
        
        public var networks: [String]?
        
        public var types: [String]?
        
        public var uses: PaymentAllowValue?
        

        public enum CodingKeys: String, CodingKey {
            
            case codes = "codes"
            
            case networks = "networks"
            
            case types = "types"
            
            case uses = "uses"
            
        }

        public init(codes: [String]?, networks: [String]?, types: [String]?, uses: PaymentAllowValue?) {
            
            self.codes = codes
            
            self.networks = networks
            
            self.types = types
            
            self.uses = uses
            
        }

        public func duplicate() -> PaymentModes {
            let dict = self.dictionary!
            let copy = PaymentModes(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    codes = try container.decode([String].self, forKey: .codes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    networks = try container.decode([String].self, forKey: .networks)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    types = try container.decode([String].self, forKey: .types)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uses = try container.decode(PaymentAllowValue.self, forKey: .uses)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(codes, forKey: .codes)
            
            
            
            
            try? container.encodeIfPresent(networks, forKey: .networks)
            
            
            
            
            try? container.encodeIfPresent(types, forKey: .types)
            
            
            
            
            try? container.encodeIfPresent(uses, forKey: .uses)
            
            
        }
        
    }
    
    /*
        Model: BulkBundleRestriction
        Used By: Cart
    */

    class BulkBundleRestriction: Codable {
        
        
        public var multiStoreAllowed: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case multiStoreAllowed = "multi_store_allowed"
            
        }

        public init(multiStoreAllowed: Bool) {
            
            self.multiStoreAllowed = multiStoreAllowed
            
        }

        public func duplicate() -> BulkBundleRestriction {
            let dict = self.dictionary!
            let copy = BulkBundleRestriction(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                multiStoreAllowed = try container.decode(Bool.self, forKey: .multiStoreAllowed)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(multiStoreAllowed, forKey: .multiStoreAllowed)
            
            
        }
        
    }
    
    /*
        Model: PostOrder
        Used By: Cart
    */

    class PostOrder: Codable {
        
        
        public var cancellationAllowed: Bool?
        
        public var returnAllowed: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case cancellationAllowed = "cancellation_allowed"
            
            case returnAllowed = "return_allowed"
            
        }

        public init(cancellationAllowed: Bool?, returnAllowed: Bool?) {
            
            self.cancellationAllowed = cancellationAllowed
            
            self.returnAllowed = returnAllowed
            
        }

        public func duplicate() -> PostOrder {
            let dict = self.dictionary!
            let copy = PostOrder(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cancellationAllowed = try container.decode(Bool.self, forKey: .cancellationAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnAllowed = try container.decode(Bool.self, forKey: .returnAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cancellationAllowed, forKey: .cancellationAllowed)
            
            
            
            
            try? container.encodeIfPresent(returnAllowed, forKey: .returnAllowed)
            
            
        }
        
    }
    
    /*
        Model: PriceRange
        Used By: Cart
    */

    class PriceRange: Codable {
        
        
        public var min: Int?
        
        public var max: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case min = "min"
            
            case max = "max"
            
        }

        public init(max: Int?, min: Int?) {
            
            self.min = min
            
            self.max = max
            
        }

        public func duplicate() -> PriceRange {
            let dict = self.dictionary!
            let copy = PriceRange(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    min = try container.decode(Int.self, forKey: .min)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    max = try container.decode(Int.self, forKey: .max)
                
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
        Model: UsesRemaining
        Used By: Cart
    */

    class UsesRemaining: Codable {
        
        
        public var app: Int?
        
        public var total: Int?
        
        public var user: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case app = "app"
            
            case total = "total"
            
            case user = "user"
            
        }

        public init(app: Int?, total: Int?, user: Int?) {
            
            self.app = app
            
            self.total = total
            
            self.user = user
            
        }

        public func duplicate() -> UsesRemaining {
            let dict = self.dictionary!
            let copy = UsesRemaining(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    app = try container.decode(Int.self, forKey: .app)
                
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
                    user = try container.decode(Int.self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(app, forKey: .app)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
        }
        
    }
    
    /*
        Model: UsesRestriction
        Used By: Cart
    */

    class UsesRestriction: Codable {
        
        
        public var maximum: UsesRemaining?
        
        public var remaining: UsesRemaining?
        

        public enum CodingKeys: String, CodingKey {
            
            case maximum = "maximum"
            
            case remaining = "remaining"
            
        }

        public init(maximum: UsesRemaining?, remaining: UsesRemaining?) {
            
            self.maximum = maximum
            
            self.remaining = remaining
            
        }

        public func duplicate() -> UsesRestriction {
            let dict = self.dictionary!
            let copy = UsesRestriction(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    maximum = try container.decode(UsesRemaining.self, forKey: .maximum)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    remaining = try container.decode(UsesRemaining.self, forKey: .remaining)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(maximum, forKey: .maximum)
            
            
            
            
            try? container.encodeIfPresent(remaining, forKey: .remaining)
            
            
        }
        
    }
    
    /*
        Model: Restrictions
        Used By: Cart
    */

    class Restrictions: Codable {
        
        
        public var couponAllowed: Bool?
        
        public var payments: [String: PaymentModes]?
        
        public var bulkBundle: BulkBundleRestriction?
        
        public var postOrder: PostOrder?
        
        public var orderingStores: [Int]?
        
        public var priceRange: PriceRange?
        
        public var platforms: [String]?
        
        public var uses: UsesRestriction?
        
        public var userGroups: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case couponAllowed = "coupon_allowed"
            
            case payments = "payments"
            
            case bulkBundle = "bulk_bundle"
            
            case postOrder = "post_order"
            
            case orderingStores = "ordering_stores"
            
            case priceRange = "price_range"
            
            case platforms = "platforms"
            
            case uses = "uses"
            
            case userGroups = "user_groups"
            
        }

        public init(bulkBundle: BulkBundleRestriction?, couponAllowed: Bool?, orderingStores: [Int]?, payments: [String: PaymentModes]?, platforms: [String]?, postOrder: PostOrder?, priceRange: PriceRange?, userGroups: [Int]?, uses: UsesRestriction?) {
            
            self.couponAllowed = couponAllowed
            
            self.payments = payments
            
            self.bulkBundle = bulkBundle
            
            self.postOrder = postOrder
            
            self.orderingStores = orderingStores
            
            self.priceRange = priceRange
            
            self.platforms = platforms
            
            self.uses = uses
            
            self.userGroups = userGroups
            
        }

        public func duplicate() -> Restrictions {
            let dict = self.dictionary!
            let copy = Restrictions(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    couponAllowed = try container.decode(Bool.self, forKey: .couponAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payments = try container.decode([String: PaymentModes].self, forKey: .payments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bulkBundle = try container.decode(BulkBundleRestriction.self, forKey: .bulkBundle)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    postOrder = try container.decode(PostOrder.self, forKey: .postOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingStores = try container.decode([Int].self, forKey: .orderingStores)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceRange = try container.decode(PriceRange.self, forKey: .priceRange)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    platforms = try container.decode([String].self, forKey: .platforms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uses = try container.decode(UsesRestriction.self, forKey: .uses)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userGroups = try container.decode([Int].self, forKey: .userGroups)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(couponAllowed, forKey: .couponAllowed)
            
            
            
            
            try? container.encodeIfPresent(payments, forKey: .payments)
            
            
            
            
            try? container.encodeIfPresent(bulkBundle, forKey: .bulkBundle)
            
            
            
            
            try? container.encodeIfPresent(postOrder, forKey: .postOrder)
            
            
            
            
            try? container.encodeIfPresent(orderingStores, forKey: .orderingStores)
            
            
            
            
            try? container.encodeIfPresent(priceRange, forKey: .priceRange)
            
            
            
            
            try? container.encodeIfPresent(platforms, forKey: .platforms)
            
            
            
            
            try? container.encodeIfPresent(uses, forKey: .uses)
            
            
            
            
            try? container.encodeIfPresent(userGroups, forKey: .userGroups)
            
            
        }
        
    }
    
    /*
        Model: Rule
        Used By: Cart
    */

    class Rule: Codable {
        
        
        public var key: Double?
        
        public var min: Double?
        
        public var discountQty: Double?
        
        public var value: Double?
        
        public var max: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case min = "min"
            
            case discountQty = "discount_qty"
            
            case value = "value"
            
            case max = "max"
            
        }

        public init(discountQty: Double?, key: Double?, max: Double?, min: Double?, value: Double?) {
            
            self.key = key
            
            self.min = min
            
            self.discountQty = discountQty
            
            self.value = value
            
            self.max = max
            
        }

        public func duplicate() -> Rule {
            let dict = self.dictionary!
            let copy = Rule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    key = try container.decode(Double.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    min = try container.decode(Double.self, forKey: .min)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discountQty = try container.decode(Double.self, forKey: .discountQty)
                
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
                    max = try container.decode(Double.self, forKey: .max)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(min, forKey: .min)
            
            
            
            
            try? container.encodeIfPresent(discountQty, forKey: .discountQty)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            
        }
        
    }
    
    /*
        Model: Validity
        Used By: Cart
    */

    class Validity: Codable {
        
        
        public var priority: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case priority = "priority"
            
        }

        public init(priority: Int?) {
            
            self.priority = priority
            
        }

        public func duplicate() -> Validity {
            let dict = self.dictionary!
            let copy = Validity(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    priority = try container.decode(Int.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
        }
        
    }
    
    /*
        Model: CouponAdd
        Used By: Cart
    */

    class CouponAdd: Codable {
        
        
        public var tags: [String]?
        
        public var dateMeta: CouponDateMeta?
        
        public var code: String
        
        public var validation: Validation?
        
        public var displayMeta: DisplayMeta
        
        public var author: CouponAuthor?
        
        public var ruleDefinition: RuleDefinition
        
        public var action: CouponAction?
        
        public var state: State?
        
        public var ownership: Ownership
        
        public var schedule: CouponSchedule?
        
        public var identifiers: Identifier
        
        public var restrictions: Restrictions?
        
        public var rule: [Rule]
        
        public var typeSlug: String
        
        public var validity: Validity
        

        public enum CodingKeys: String, CodingKey {
            
            case tags = "tags"
            
            case dateMeta = "date_meta"
            
            case code = "code"
            
            case validation = "validation"
            
            case displayMeta = "display_meta"
            
            case author = "author"
            
            case ruleDefinition = "rule_definition"
            
            case action = "action"
            
            case state = "state"
            
            case ownership = "ownership"
            
            case schedule = "_schedule"
            
            case identifiers = "identifiers"
            
            case restrictions = "restrictions"
            
            case rule = "rule"
            
            case typeSlug = "type_slug"
            
            case validity = "validity"
            
        }

        public init(action: CouponAction?, author: CouponAuthor?, code: String, dateMeta: CouponDateMeta?, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions?, rule: [Rule], ruleDefinition: RuleDefinition, state: State?, tags: [String]?, typeSlug: String, validation: Validation?, validity: Validity, schedule: CouponSchedule?) {
            
            self.tags = tags
            
            self.dateMeta = dateMeta
            
            self.code = code
            
            self.validation = validation
            
            self.displayMeta = displayMeta
            
            self.author = author
            
            self.ruleDefinition = ruleDefinition
            
            self.action = action
            
            self.state = state
            
            self.ownership = ownership
            
            self.schedule = schedule
            
            self.identifiers = identifiers
            
            self.restrictions = restrictions
            
            self.rule = rule
            
            self.typeSlug = typeSlug
            
            self.validity = validity
            
        }

        public func duplicate() -> CouponAdd {
            let dict = self.dictionary!
            let copy = CouponAdd(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dateMeta = try container.decode(CouponDateMeta.self, forKey: .dateMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
            
                do {
                    validation = try container.decode(Validation.self, forKey: .validation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)
                
            
            
            
                do {
                    author = try container.decode(CouponAuthor.self, forKey: .author)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)
                
            
            
            
                do {
                    action = try container.decode(CouponAction.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    state = try container.decode(State.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                ownership = try container.decode(Ownership.self, forKey: .ownership)
                
            
            
            
                do {
                    schedule = try container.decode(CouponSchedule.self, forKey: .schedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                identifiers = try container.decode(Identifier.self, forKey: .identifiers)
                
            
            
            
                do {
                    restrictions = try container.decode(Restrictions.self, forKey: .restrictions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                rule = try container.decode([Rule].self, forKey: .rule)
                
            
            
            
                typeSlug = try container.decode(String.self, forKey: .typeSlug)
                
            
            
            
                validity = try container.decode(Validity.self, forKey: .validity)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(validation, forKey: .validation)
            
            
            
            
            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)
            
            
            
            
            try? container.encodeIfPresent(author, forKey: .author)
            
            
            
            
            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(ownership, forKey: .ownership)
            
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(restrictions, forKey: .restrictions)
            
            
            
            
            try? container.encodeIfPresent(rule, forKey: .rule)
            
            
            
            
            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)
            
            
            
            
            try? container.encodeIfPresent(validity, forKey: .validity)
            
            
        }
        
    }
    
    /*
        Model: CouponsResponse
        Used By: Cart
    */

    class CouponsResponse: Codable {
        
        
        public var items: CouponAdd?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(items: CouponAdd?, page: Page?) {
            
            self.items = items
            
            self.page = page
            
        }

        public func duplicate() -> CouponsResponse {
            let dict = self.dictionary!
            let copy = CouponsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    items = try container.decode(CouponAdd.self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
    
    /*
        Model: SuccessMessage
        Used By: Cart
    */

    class SuccessMessage: Codable {
        
        
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

        public func duplicate() -> SuccessMessage {
            let dict = self.dictionary!
            let copy = SuccessMessage(dictionary: dict)!
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
        Model: CouponUpdate
        Used By: Cart
    */

    class CouponUpdate: Codable {
        
        
        public var tags: [String]?
        
        public var dateMeta: CouponDateMeta?
        
        public var code: String
        
        public var validation: Validation?
        
        public var displayMeta: DisplayMeta
        
        public var author: CouponAuthor?
        
        public var ruleDefinition: RuleDefinition
        
        public var action: CouponAction?
        
        public var state: State?
        
        public var ownership: Ownership
        
        public var schedule: CouponSchedule?
        
        public var identifiers: Identifier
        
        public var restrictions: Restrictions?
        
        public var rule: [Rule]
        
        public var typeSlug: String
        
        public var validity: Validity
        

        public enum CodingKeys: String, CodingKey {
            
            case tags = "tags"
            
            case dateMeta = "date_meta"
            
            case code = "code"
            
            case validation = "validation"
            
            case displayMeta = "display_meta"
            
            case author = "author"
            
            case ruleDefinition = "rule_definition"
            
            case action = "action"
            
            case state = "state"
            
            case ownership = "ownership"
            
            case schedule = "_schedule"
            
            case identifiers = "identifiers"
            
            case restrictions = "restrictions"
            
            case rule = "rule"
            
            case typeSlug = "type_slug"
            
            case validity = "validity"
            
        }

        public init(action: CouponAction?, author: CouponAuthor?, code: String, dateMeta: CouponDateMeta?, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions?, rule: [Rule], ruleDefinition: RuleDefinition, state: State?, tags: [String]?, typeSlug: String, validation: Validation?, validity: Validity, schedule: CouponSchedule?) {
            
            self.tags = tags
            
            self.dateMeta = dateMeta
            
            self.code = code
            
            self.validation = validation
            
            self.displayMeta = displayMeta
            
            self.author = author
            
            self.ruleDefinition = ruleDefinition
            
            self.action = action
            
            self.state = state
            
            self.ownership = ownership
            
            self.schedule = schedule
            
            self.identifiers = identifiers
            
            self.restrictions = restrictions
            
            self.rule = rule
            
            self.typeSlug = typeSlug
            
            self.validity = validity
            
        }

        public func duplicate() -> CouponUpdate {
            let dict = self.dictionary!
            let copy = CouponUpdate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dateMeta = try container.decode(CouponDateMeta.self, forKey: .dateMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
            
                do {
                    validation = try container.decode(Validation.self, forKey: .validation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)
                
            
            
            
                do {
                    author = try container.decode(CouponAuthor.self, forKey: .author)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)
                
            
            
            
                do {
                    action = try container.decode(CouponAction.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    state = try container.decode(State.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                ownership = try container.decode(Ownership.self, forKey: .ownership)
                
            
            
            
                do {
                    schedule = try container.decode(CouponSchedule.self, forKey: .schedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                identifiers = try container.decode(Identifier.self, forKey: .identifiers)
                
            
            
            
                do {
                    restrictions = try container.decode(Restrictions.self, forKey: .restrictions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                rule = try container.decode([Rule].self, forKey: .rule)
                
            
            
            
                typeSlug = try container.decode(String.self, forKey: .typeSlug)
                
            
            
            
                validity = try container.decode(Validity.self, forKey: .validity)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(validation, forKey: .validation)
            
            
            
            
            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)
            
            
            
            
            try? container.encodeIfPresent(author, forKey: .author)
            
            
            
            
            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(ownership, forKey: .ownership)
            
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(restrictions, forKey: .restrictions)
            
            
            
            
            try? container.encodeIfPresent(rule, forKey: .rule)
            
            
            
            
            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)
            
            
            
            
            try? container.encodeIfPresent(validity, forKey: .validity)
            
            
        }
        
    }
    
    /*
        Model: CouponPartialUpdate
        Used By: Cart
    */

    class CouponPartialUpdate: Codable {
        
        
        public var schedule: CouponSchedule?
        
        public var archive: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case schedule = "schedule"
            
            case archive = "archive"
            
        }

        public init(archive: Bool?, schedule: CouponSchedule?) {
            
            self.schedule = schedule
            
            self.archive = archive
            
        }

        public func duplicate() -> CouponPartialUpdate {
            let dict = self.dictionary!
            let copy = CouponPartialUpdate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    schedule = try container.decode(CouponSchedule.self, forKey: .schedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    archive = try container.decode(Bool.self, forKey: .archive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
            
            
            try? container.encodeIfPresent(archive, forKey: .archive)
            
            
        }
        
    }
    
    /*
        Model: DiscountOffer
        Used By: Cart
    */

    class DiscountOffer: Codable {
        
        
        public var maxOfferQuantity: Int?
        
        public var minOfferQuantity: Int?
        
        public var discountAmount: Double?
        
        public var discountPrice: Double?
        
        public var discountPercentage: Double?
        
        public var code: String?
        
        public var maxDiscountAmount: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case maxOfferQuantity = "max_offer_quantity"
            
            case minOfferQuantity = "min_offer_quantity"
            
            case discountAmount = "discount_amount"
            
            case discountPrice = "discount_price"
            
            case discountPercentage = "discount_percentage"
            
            case code = "code"
            
            case maxDiscountAmount = "max_discount_amount"
            
        }

        public init(code: String?, discountAmount: Double?, discountPercentage: Double?, discountPrice: Double?, maxDiscountAmount: Double?, maxOfferQuantity: Int?, minOfferQuantity: Int?) {
            
            self.maxOfferQuantity = maxOfferQuantity
            
            self.minOfferQuantity = minOfferQuantity
            
            self.discountAmount = discountAmount
            
            self.discountPrice = discountPrice
            
            self.discountPercentage = discountPercentage
            
            self.code = code
            
            self.maxDiscountAmount = maxDiscountAmount
            
        }

        public func duplicate() -> DiscountOffer {
            let dict = self.dictionary!
            let copy = DiscountOffer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    maxOfferQuantity = try container.decode(Int.self, forKey: .maxOfferQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    minOfferQuantity = try container.decode(Int.self, forKey: .minOfferQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discountAmount = try container.decode(Double.self, forKey: .discountAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discountPrice = try container.decode(Double.self, forKey: .discountPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discountPercentage = try container.decode(Double.self, forKey: .discountPercentage)
                
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
                    maxDiscountAmount = try container.decode(Double.self, forKey: .maxDiscountAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(maxOfferQuantity, forKey: .maxOfferQuantity)
            
            
            
            
            try? container.encodeIfPresent(minOfferQuantity, forKey: .minOfferQuantity)
            
            
            
            
            try? container.encodeIfPresent(discountAmount, forKey: .discountAmount)
            
            
            
            
            try? container.encodeIfPresent(discountPrice, forKey: .discountPrice)
            
            
            
            
            try? container.encodeIfPresent(discountPercentage, forKey: .discountPercentage)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(maxDiscountAmount, forKey: .maxDiscountAmount)
            
            
        }
        
    }
    
    /*
        Model: CompareObject
        Used By: Cart
    */

    class CompareObject: Codable {
        
        
        public var greaterThanEquals: Double?
        
        public var lessThanEquals: Double?
        
        public var equals: Double?
        
        public var greaterThan: Double?
        
        public var lessThan: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case greaterThanEquals = "greater_than_equals"
            
            case lessThanEquals = "less_than_equals"
            
            case equals = "equals"
            
            case greaterThan = "greater_than"
            
            case lessThan = "less_than"
            
        }

        public init(equals: Double?, greaterThan: Double?, greaterThanEquals: Double?, lessThan: Double?, lessThanEquals: Double?) {
            
            self.greaterThanEquals = greaterThanEquals
            
            self.lessThanEquals = lessThanEquals
            
            self.equals = equals
            
            self.greaterThan = greaterThan
            
            self.lessThan = lessThan
            
        }

        public func duplicate() -> CompareObject {
            let dict = self.dictionary!
            let copy = CompareObject(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    greaterThanEquals = try container.decode(Double.self, forKey: .greaterThanEquals)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lessThanEquals = try container.decode(Double.self, forKey: .lessThanEquals)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    equals = try container.decode(Double.self, forKey: .equals)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    greaterThan = try container.decode(Double.self, forKey: .greaterThan)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lessThan = try container.decode(Double.self, forKey: .lessThan)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(greaterThanEquals, forKey: .greaterThanEquals)
            
            
            
            
            try? container.encodeIfPresent(lessThanEquals, forKey: .lessThanEquals)
            
            
            
            
            try? container.encodeIfPresent(equals, forKey: .equals)
            
            
            
            
            try? container.encodeIfPresent(greaterThan, forKey: .greaterThan)
            
            
            
            
            try? container.encodeIfPresent(lessThan, forKey: .lessThan)
            
            
        }
        
    }
    
    /*
        Model: ItemCriteria
        Used By: Cart
    */

    class ItemCriteria: Codable {
        
        
        public var itemExcludeStore: [Int]?
        
        public var cartQuantity: CompareObject?
        
        public var itemCategory: [Int]?
        
        public var itemCompany: [Int]?
        
        public var itemExcludeCategory: [Int]?
        
        public var itemStore: [Int]?
        
        public var itemId: [Int]?
        
        public var cartTotal: CompareObject?
        
        public var itemExcludeCompany: [Int]?
        
        public var itemExcludeBrand: [Int]?
        
        public var itemExcludeSku: [String]?
        
        public var buyExpression: String?
        
        public var itemBrand: [Int]?
        
        public var itemSku: [String]?
        
        public var itemSize: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemExcludeStore = "item_exclude_store"
            
            case cartQuantity = "cart_quantity"
            
            case itemCategory = "item_category"
            
            case itemCompany = "item_company"
            
            case itemExcludeCategory = "item_exclude_category"
            
            case itemStore = "item_store"
            
            case itemId = "item_id"
            
            case cartTotal = "cart_total"
            
            case itemExcludeCompany = "item_exclude_company"
            
            case itemExcludeBrand = "item_exclude_brand"
            
            case itemExcludeSku = "item_exclude_sku"
            
            case buyExpression = "buy_expression"
            
            case itemBrand = "item_brand"
            
            case itemSku = "item_sku"
            
            case itemSize = "item_size"
            
        }

        public init(buyExpression: String?, cartQuantity: CompareObject?, cartTotal: CompareObject?, itemBrand: [Int]?, itemCategory: [Int]?, itemCompany: [Int]?, itemExcludeBrand: [Int]?, itemExcludeCategory: [Int]?, itemExcludeCompany: [Int]?, itemExcludeSku: [String]?, itemExcludeStore: [Int]?, itemId: [Int]?, itemSize: [String]?, itemSku: [String]?, itemStore: [Int]?) {
            
            self.itemExcludeStore = itemExcludeStore
            
            self.cartQuantity = cartQuantity
            
            self.itemCategory = itemCategory
            
            self.itemCompany = itemCompany
            
            self.itemExcludeCategory = itemExcludeCategory
            
            self.itemStore = itemStore
            
            self.itemId = itemId
            
            self.cartTotal = cartTotal
            
            self.itemExcludeCompany = itemExcludeCompany
            
            self.itemExcludeBrand = itemExcludeBrand
            
            self.itemExcludeSku = itemExcludeSku
            
            self.buyExpression = buyExpression
            
            self.itemBrand = itemBrand
            
            self.itemSku = itemSku
            
            self.itemSize = itemSize
            
        }

        public func duplicate() -> ItemCriteria {
            let dict = self.dictionary!
            let copy = ItemCriteria(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    itemExcludeStore = try container.decode([Int].self, forKey: .itemExcludeStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cartQuantity = try container.decode(CompareObject.self, forKey: .cartQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemCategory = try container.decode([Int].self, forKey: .itemCategory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemCompany = try container.decode([Int].self, forKey: .itemCompany)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemExcludeCategory = try container.decode([Int].self, forKey: .itemExcludeCategory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemStore = try container.decode([Int].self, forKey: .itemStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemId = try container.decode([Int].self, forKey: .itemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cartTotal = try container.decode(CompareObject.self, forKey: .cartTotal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemExcludeCompany = try container.decode([Int].self, forKey: .itemExcludeCompany)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemExcludeBrand = try container.decode([Int].self, forKey: .itemExcludeBrand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemExcludeSku = try container.decode([String].self, forKey: .itemExcludeSku)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    buyExpression = try container.decode(String.self, forKey: .buyExpression)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemBrand = try container.decode([Int].self, forKey: .itemBrand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemSku = try container.decode([String].self, forKey: .itemSku)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemSize = try container.decode([String].self, forKey: .itemSize)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemExcludeStore, forKey: .itemExcludeStore)
            
            
            
            
            try? container.encodeIfPresent(cartQuantity, forKey: .cartQuantity)
            
            
            
            
            try? container.encodeIfPresent(itemCategory, forKey: .itemCategory)
            
            
            
            
            try? container.encodeIfPresent(itemCompany, forKey: .itemCompany)
            
            
            
            
            try? container.encodeIfPresent(itemExcludeCategory, forKey: .itemExcludeCategory)
            
            
            
            
            try? container.encodeIfPresent(itemStore, forKey: .itemStore)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(cartTotal, forKey: .cartTotal)
            
            
            
            
            try? container.encodeIfPresent(itemExcludeCompany, forKey: .itemExcludeCompany)
            
            
            
            
            try? container.encodeIfPresent(itemExcludeBrand, forKey: .itemExcludeBrand)
            
            
            
            
            try? container.encodeIfPresent(itemExcludeSku, forKey: .itemExcludeSku)
            
            
            
            
            try? container.encodeIfPresent(buyExpression, forKey: .buyExpression)
            
            
            
            
            try? container.encodeIfPresent(itemBrand, forKey: .itemBrand)
            
            
            
            
            try? container.encodeIfPresent(itemSku, forKey: .itemSku)
            
            
            
            
            try? container.encodeIfPresent(itemSize, forKey: .itemSize)
            
            
        }
        
    }
    
    /*
        Model: DiscountRule
        Used By: Cart
    */

    class DiscountRule: Codable {
        
        
        public var discountType: String
        
        public var offer: DiscountOffer
        
        public var itemCriteria: ItemCriteria
        
        public var buyCondition: String
        

        public enum CodingKeys: String, CodingKey {
            
            case discountType = "discount_type"
            
            case offer = "offer"
            
            case itemCriteria = "item_criteria"
            
            case buyCondition = "buy_condition"
            
        }

        public init(buyCondition: String, discountType: String, itemCriteria: ItemCriteria, offer: DiscountOffer) {
            
            self.discountType = discountType
            
            self.offer = offer
            
            self.itemCriteria = itemCriteria
            
            self.buyCondition = buyCondition
            
        }

        public func duplicate() -> DiscountRule {
            let dict = self.dictionary!
            let copy = DiscountRule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                discountType = try container.decode(String.self, forKey: .discountType)
                
            
            
            
                offer = try container.decode(DiscountOffer.self, forKey: .offer)
                
            
            
            
                itemCriteria = try container.decode(ItemCriteria.self, forKey: .itemCriteria)
                
            
            
            
                buyCondition = try container.decode(String.self, forKey: .buyCondition)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(discountType, forKey: .discountType)
            
            
            
            
            try? container.encodeIfPresent(offer, forKey: .offer)
            
            
            
            
            try? container.encodeIfPresent(itemCriteria, forKey: .itemCriteria)
            
            
            
            
            try? container.encodeIfPresent(buyCondition, forKey: .buyCondition)
            
            
        }
        
    }
    
    /*
        Model: Visibility
        Used By: Cart
    */

    class Visibility: Codable {
        
        
        public var couponList: Bool
        
        public var pdp: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case couponList = "coupon_list"
            
            case pdp = "pdp"
            
        }

        public init(couponList: Bool, pdp: Bool) {
            
            self.couponList = couponList
            
            self.pdp = pdp
            
        }

        public func duplicate() -> Visibility {
            let dict = self.dictionary!
            let copy = Visibility(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                couponList = try container.decode(Bool.self, forKey: .couponList)
                
            
            
            
                pdp = try container.decode(Bool.self, forKey: .pdp)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(couponList, forKey: .couponList)
            
            
            
            
            try? container.encodeIfPresent(pdp, forKey: .pdp)
            
            
        }
        
    }
    
    /*
        Model: PromotionSchedule
        Used By: Cart
    */

    class PromotionSchedule: Codable {
        
        
        public var duration: Int?
        
        public var end: String?
        
        public var start: String
        
        public var published: Bool
        
        public var nextSchedule: [[String: Any]]?
        
        public var cron: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case duration = "duration"
            
            case end = "end"
            
            case start = "start"
            
            case published = "published"
            
            case nextSchedule = "next_schedule"
            
            case cron = "cron"
            
        }

        public init(cron: String?, duration: Int?, end: String?, nextSchedule: [[String: Any]]?, published: Bool, start: String) {
            
            self.duration = duration
            
            self.end = end
            
            self.start = start
            
            self.published = published
            
            self.nextSchedule = nextSchedule
            
            self.cron = cron
            
        }

        public func duplicate() -> PromotionSchedule {
            let dict = self.dictionary!
            let copy = PromotionSchedule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    duration = try container.decode(Int.self, forKey: .duration)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    end = try container.decode(String.self, forKey: .end)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                start = try container.decode(String.self, forKey: .start)
                
            
            
            
                published = try container.decode(Bool.self, forKey: .published)
                
            
            
            
                do {
                    nextSchedule = try container.decode([[String: Any]].self, forKey: .nextSchedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cron = try container.decode(String.self, forKey: .cron)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(duration, forKey: .duration)
            
            
            
            
            try? container.encode(end, forKey: .end)
            
            
            
            
            try? container.encodeIfPresent(start, forKey: .start)
            
            
            
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            
            
            
            try? container.encodeIfPresent(nextSchedule, forKey: .nextSchedule)
            
            
            
            
            try? container.encode(cron, forKey: .cron)
            
            
        }
        
    }
    
    /*
        Model: PaymentAllowValue1
        Used By: Cart
    */

    class PaymentAllowValue1: Codable {
        
        
        public var max: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case max = "max"
            
        }

        public init(max: Int?) {
            
            self.max = max
            
        }

        public func duplicate() -> PaymentAllowValue1 {
            let dict = self.dictionary!
            let copy = PaymentAllowValue1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    max = try container.decode(Int.self, forKey: .max)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            
        }
        
    }
    
    /*
        Model: PromotionPaymentModes
        Used By: Cart
    */

    class PromotionPaymentModes: Codable {
        
        
        public var codes: [String]?
        
        public var uses: PaymentAllowValue1?
        
        public var type: String
        

        public enum CodingKeys: String, CodingKey {
            
            case codes = "codes"
            
            case uses = "uses"
            
            case type = "type"
            
        }

        public init(codes: [String]?, type: String, uses: PaymentAllowValue1?) {
            
            self.codes = codes
            
            self.uses = uses
            
            self.type = type
            
        }

        public func duplicate() -> PromotionPaymentModes {
            let dict = self.dictionary!
            let copy = PromotionPaymentModes(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    codes = try container.decode([String].self, forKey: .codes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uses = try container.decode(PaymentAllowValue1.self, forKey: .uses)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(codes, forKey: .codes)
            
            
            
            
            try? container.encodeIfPresent(uses, forKey: .uses)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
    
    /*
        Model: PostOrder1
        Used By: Cart
    */

    class PostOrder1: Codable {
        
        
        public var cancellationAllowed: Bool?
        
        public var returnAllowed: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case cancellationAllowed = "cancellation_allowed"
            
            case returnAllowed = "return_allowed"
            
        }

        public init(cancellationAllowed: Bool?, returnAllowed: Bool?) {
            
            self.cancellationAllowed = cancellationAllowed
            
            self.returnAllowed = returnAllowed
            
        }

        public func duplicate() -> PostOrder1 {
            let dict = self.dictionary!
            let copy = PostOrder1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cancellationAllowed = try container.decode(Bool.self, forKey: .cancellationAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnAllowed = try container.decode(Bool.self, forKey: .returnAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cancellationAllowed, forKey: .cancellationAllowed)
            
            
            
            
            try? container.encodeIfPresent(returnAllowed, forKey: .returnAllowed)
            
            
        }
        
    }
    
    /*
        Model: UsesRemaining1
        Used By: Cart
    */

    class UsesRemaining1: Codable {
        
        
        public var total: Int?
        
        public var user: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case total = "total"
            
            case user = "user"
            
        }

        public init(total: Int?, user: Int?) {
            
            self.total = total
            
            self.user = user
            
        }

        public func duplicate() -> UsesRemaining1 {
            let dict = self.dictionary!
            let copy = UsesRemaining1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    total = try container.decode(Int.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    user = try container.decode(Int.self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
        }
        
    }
    
    /*
        Model: UsesRestriction1
        Used By: Cart
    */

    class UsesRestriction1: Codable {
        
        
        public var maximum: UsesRemaining1?
        
        public var remaining: UsesRemaining1?
        

        public enum CodingKeys: String, CodingKey {
            
            case maximum = "maximum"
            
            case remaining = "remaining"
            
        }

        public init(maximum: UsesRemaining1?, remaining: UsesRemaining1?) {
            
            self.maximum = maximum
            
            self.remaining = remaining
            
        }

        public func duplicate() -> UsesRestriction1 {
            let dict = self.dictionary!
            let copy = UsesRestriction1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    maximum = try container.decode(UsesRemaining1.self, forKey: .maximum)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    remaining = try container.decode(UsesRemaining1.self, forKey: .remaining)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(maximum, forKey: .maximum)
            
            
            
            
            try? container.encodeIfPresent(remaining, forKey: .remaining)
            
            
        }
        
    }
    
    /*
        Model: UserRegistered
        Used By: Cart
    */

    class UserRegistered: Codable {
        
        
        public var start: String?
        
        public var end: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case start = "start"
            
            case end = "end"
            
        }

        public init(end: String?, start: String?) {
            
            self.start = start
            
            self.end = end
            
        }

        public func duplicate() -> UserRegistered {
            let dict = self.dictionary!
            let copy = UserRegistered(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    start = try container.decode(String.self, forKey: .start)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    end = try container.decode(String.self, forKey: .end)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(start, forKey: .start)
            
            
            
            
            try? container.encode(end, forKey: .end)
            
            
        }
        
    }
    
    /*
        Model: Restrictions1
        Used By: Cart
    */

    class Restrictions1: Codable {
        
        
        public var payments: [PromotionPaymentModes]?
        
        public var postOrder: PostOrder1?
        
        public var userId: [String]?
        
        public var platforms: [String]?
        
        public var uses: UsesRestriction1
        
        public var orderQuantity: Int?
        
        public var userRegistered: UserRegistered?
        
        public var anonymousUsers: Bool?
        
        public var userGroups: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case payments = "payments"
            
            case postOrder = "post_order"
            
            case userId = "user_id"
            
            case platforms = "platforms"
            
            case uses = "uses"
            
            case orderQuantity = "order_quantity"
            
            case userRegistered = "user_registered"
            
            case anonymousUsers = "anonymous_users"
            
            case userGroups = "user_groups"
            
        }

        public init(anonymousUsers: Bool?, orderQuantity: Int?, payments: [PromotionPaymentModes]?, platforms: [String]?, postOrder: PostOrder1?, userGroups: [Int]?, userId: [String]?, userRegistered: UserRegistered?, uses: UsesRestriction1) {
            
            self.payments = payments
            
            self.postOrder = postOrder
            
            self.userId = userId
            
            self.platforms = platforms
            
            self.uses = uses
            
            self.orderQuantity = orderQuantity
            
            self.userRegistered = userRegistered
            
            self.anonymousUsers = anonymousUsers
            
            self.userGroups = userGroups
            
        }

        public func duplicate() -> Restrictions1 {
            let dict = self.dictionary!
            let copy = Restrictions1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    payments = try container.decode([PromotionPaymentModes].self, forKey: .payments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    postOrder = try container.decode(PostOrder1.self, forKey: .postOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userId = try container.decode([String].self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    platforms = try container.decode([String].self, forKey: .platforms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                uses = try container.decode(UsesRestriction1.self, forKey: .uses)
                
            
            
            
                do {
                    orderQuantity = try container.decode(Int.self, forKey: .orderQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userRegistered = try container.decode(UserRegistered.self, forKey: .userRegistered)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    anonymousUsers = try container.decode(Bool.self, forKey: .anonymousUsers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userGroups = try container.decode([Int].self, forKey: .userGroups)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(payments, forKey: .payments)
            
            
            
            
            try? container.encodeIfPresent(postOrder, forKey: .postOrder)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(platforms, forKey: .platforms)
            
            
            
            
            try? container.encodeIfPresent(uses, forKey: .uses)
            
            
            
            
            try? container.encodeIfPresent(orderQuantity, forKey: .orderQuantity)
            
            
            
            
            try? container.encode(userRegistered, forKey: .userRegistered)
            
            
            
            
            try? container.encodeIfPresent(anonymousUsers, forKey: .anonymousUsers)
            
            
            
            
            try? container.encodeIfPresent(userGroups, forKey: .userGroups)
            
            
        }
        
    }
    
    /*
        Model: DisplayMeta1
        Used By: Cart
    */

    class DisplayMeta1: Codable {
        
        
        public var description: String?
        
        public var offerText: String?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case offerText = "offer_text"
            
            case name = "name"
            
        }

        public init(description: String?, name: String?, offerText: String?) {
            
            self.description = description
            
            self.offerText = offerText
            
            self.name = name
            
        }

        public func duplicate() -> DisplayMeta1 {
            let dict = self.dictionary!
            let copy = DisplayMeta1(dictionary: dict)!
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
                    name = try container.decode(String.self, forKey: .name)
                
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
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
    
    /*
        Model: PromotionDateMeta
        Used By: Cart
    */

    class PromotionDateMeta: Codable {
        
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
        }

        public init(createdOn: String?, modifiedOn: String?) {
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
        }

        public func duplicate() -> PromotionDateMeta {
            let dict = self.dictionary!
            let copy = PromotionDateMeta(dictionary: dict)!
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
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encode(modifiedOn, forKey: .modifiedOn)
            
            
        }
        
    }
    
    /*
        Model: PromotionAuthor
        Used By: Cart
    */

    class PromotionAuthor: Codable {
        
        
        public var modifiedBy: String?
        
        public var createdBy: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case modifiedBy = "modified_by"
            
            case createdBy = "created_by"
            
        }

        public init(createdBy: String?, modifiedBy: String?) {
            
            self.modifiedBy = modifiedBy
            
            self.createdBy = createdBy
            
        }

        public func duplicate() -> PromotionAuthor {
            let dict = self.dictionary!
            let copy = PromotionAuthor(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    modifiedBy = try container.decode(String.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(String.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encode(createdBy, forKey: .createdBy)
            
            
        }
        
    }
    
    /*
        Model: PromotionAction
        Used By: Cart
    */

    class PromotionAction: Codable {
        
        
        public var actionDate: String
        
        public var actionType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case actionDate = "action_date"
            
            case actionType = "action_type"
            
        }

        public init(actionDate: String, actionType: String) {
            
            self.actionDate = actionDate
            
            self.actionType = actionType
            
        }

        public func duplicate() -> PromotionAction {
            let dict = self.dictionary!
            let copy = PromotionAction(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                actionDate = try container.decode(String.self, forKey: .actionDate)
                
            
            
            
                actionType = try container.decode(String.self, forKey: .actionType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(actionDate, forKey: .actionDate)
            
            
            
            
            try? container.encodeIfPresent(actionType, forKey: .actionType)
            
            
        }
        
    }
    
    /*
        Model: Ownership1
        Used By: Cart
    */

    class Ownership1: Codable {
        
        
        public var payableCategory: String
        
        public var payableBy: String
        

        public enum CodingKeys: String, CodingKey {
            
            case payableCategory = "payable_category"
            
            case payableBy = "payable_by"
            
        }

        public init(payableBy: String, payableCategory: String) {
            
            self.payableCategory = payableCategory
            
            self.payableBy = payableBy
            
        }

        public func duplicate() -> Ownership1 {
            let dict = self.dictionary!
            let copy = Ownership1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                payableCategory = try container.decode(String.self, forKey: .payableCategory)
                
            
            
            
                payableBy = try container.decode(String.self, forKey: .payableBy)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(payableCategory, forKey: .payableCategory)
            
            
            
            
            try? container.encodeIfPresent(payableBy, forKey: .payableBy)
            
            
        }
        
    }
    
    /*
        Model: PromotionListItem
        Used By: Cart
    */

    class PromotionListItem: Codable {
        
        
        public var customJson: [String: Any]?
        
        public var promoGroup: String
        
        public var discountRules: [DiscountRule]
        
        public var applicationId: String
        
        public var visiblility: Visibility?
        
        public var applyPriority: Int?
        
        public var mode: String
        
        public var schedule: PromotionSchedule?
        
        public var restrictions: Restrictions1?
        
        public var applyAllDiscount: Bool?
        
        public var buyRules: [String: ItemCriteria]
        
        public var currency: String?
        
        public var displayMeta: DisplayMeta1
        
        public var applyExclusive: String?
        
        public var stackable: Bool?
        
        public var dateMeta: PromotionDateMeta?
        
        public var author: PromotionAuthor?
        
        public var postOrderAction: PromotionAction?
        
        public var promotionType: String
        
        public var code: String?
        
        public var ownership: Ownership1
        

        public enum CodingKeys: String, CodingKey {
            
            case customJson = "_custom_json"
            
            case promoGroup = "promo_group"
            
            case discountRules = "discount_rules"
            
            case applicationId = "application_id"
            
            case visiblility = "visiblility"
            
            case applyPriority = "apply_priority"
            
            case mode = "mode"
            
            case schedule = "_schedule"
            
            case restrictions = "restrictions"
            
            case applyAllDiscount = "apply_all_discount"
            
            case buyRules = "buy_rules"
            
            case currency = "currency"
            
            case displayMeta = "display_meta"
            
            case applyExclusive = "apply_exclusive"
            
            case stackable = "stackable"
            
            case dateMeta = "date_meta"
            
            case author = "author"
            
            case postOrderAction = "post_order_action"
            
            case promotionType = "promotion_type"
            
            case code = "code"
            
            case ownership = "ownership"
            
        }

        public init(applicationId: String, applyAllDiscount: Bool?, applyExclusive: String?, applyPriority: Int?, author: PromotionAuthor?, buyRules: [String: ItemCriteria], code: String?, currency: String?, dateMeta: PromotionDateMeta?, discountRules: [DiscountRule], displayMeta: DisplayMeta1, mode: String, ownership: Ownership1, postOrderAction: PromotionAction?, promotionType: String, promoGroup: String, restrictions: Restrictions1?, stackable: Bool?, visiblility: Visibility?, customJson: [String: Any]?, schedule: PromotionSchedule?) {
            
            self.customJson = customJson
            
            self.promoGroup = promoGroup
            
            self.discountRules = discountRules
            
            self.applicationId = applicationId
            
            self.visiblility = visiblility
            
            self.applyPriority = applyPriority
            
            self.mode = mode
            
            self.schedule = schedule
            
            self.restrictions = restrictions
            
            self.applyAllDiscount = applyAllDiscount
            
            self.buyRules = buyRules
            
            self.currency = currency
            
            self.displayMeta = displayMeta
            
            self.applyExclusive = applyExclusive
            
            self.stackable = stackable
            
            self.dateMeta = dateMeta
            
            self.author = author
            
            self.postOrderAction = postOrderAction
            
            self.promotionType = promotionType
            
            self.code = code
            
            self.ownership = ownership
            
        }

        public func duplicate() -> PromotionListItem {
            let dict = self.dictionary!
            let copy = PromotionListItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                promoGroup = try container.decode(String.self, forKey: .promoGroup)
                
            
            
            
                discountRules = try container.decode([DiscountRule].self, forKey: .discountRules)
                
            
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                do {
                    visiblility = try container.decode(Visibility.self, forKey: .visiblility)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applyPriority = try container.decode(Int.self, forKey: .applyPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                mode = try container.decode(String.self, forKey: .mode)
                
            
            
            
                do {
                    schedule = try container.decode(PromotionSchedule.self, forKey: .schedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    restrictions = try container.decode(Restrictions1.self, forKey: .restrictions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applyAllDiscount = try container.decode(Bool.self, forKey: .applyAllDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                buyRules = try container.decode([String: ItemCriteria].self, forKey: .buyRules)
                
            
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                displayMeta = try container.decode(DisplayMeta1.self, forKey: .displayMeta)
                
            
            
            
                do {
                    applyExclusive = try container.decode(String.self, forKey: .applyExclusive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stackable = try container.decode(Bool.self, forKey: .stackable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dateMeta = try container.decode(PromotionDateMeta.self, forKey: .dateMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    author = try container.decode(PromotionAuthor.self, forKey: .author)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    postOrderAction = try container.decode(PromotionAction.self, forKey: .postOrderAction)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                promotionType = try container.decode(String.self, forKey: .promotionType)
                
            
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                ownership = try container.decode(Ownership1.self, forKey: .ownership)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)
            
            
            
            
            try? container.encodeIfPresent(discountRules, forKey: .discountRules)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(visiblility, forKey: .visiblility)
            
            
            
            
            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
            
            
            try? container.encodeIfPresent(restrictions, forKey: .restrictions)
            
            
            
            
            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)
            
            
            
            
            try? container.encodeIfPresent(buyRules, forKey: .buyRules)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)
            
            
            
            
            try? container.encode(applyExclusive, forKey: .applyExclusive)
            
            
            
            
            try? container.encodeIfPresent(stackable, forKey: .stackable)
            
            
            
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            
            
            
            try? container.encodeIfPresent(author, forKey: .author)
            
            
            
            
            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)
            
            
            
            
            try? container.encodeIfPresent(promotionType, forKey: .promotionType)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(ownership, forKey: .ownership)
            
            
        }
        
    }
    
    /*
        Model: PromotionsResponse
        Used By: Cart
    */

    class PromotionsResponse: Codable {
        
        
        public var items: PromotionListItem?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(items: PromotionListItem?, page: Page?) {
            
            self.items = items
            
            self.page = page
            
        }

        public func duplicate() -> PromotionsResponse {
            let dict = self.dictionary!
            let copy = PromotionsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    items = try container.decode(PromotionListItem.self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
    
    /*
        Model: PromotionAdd
        Used By: Cart
    */

    class PromotionAdd: Codable {
        
        
        public var customJson: [String: Any]?
        
        public var promoGroup: String
        
        public var discountRules: [DiscountRule]
        
        public var applicationId: String
        
        public var visiblility: Visibility?
        
        public var applyPriority: Int?
        
        public var mode: String
        
        public var schedule: PromotionSchedule?
        
        public var restrictions: Restrictions1?
        
        public var applyAllDiscount: Bool?
        
        public var buyRules: [String: ItemCriteria]
        
        public var currency: String?
        
        public var displayMeta: DisplayMeta1
        
        public var applyExclusive: String?
        
        public var stackable: Bool?
        
        public var dateMeta: PromotionDateMeta?
        
        public var author: PromotionAuthor?
        
        public var postOrderAction: PromotionAction?
        
        public var promotionType: String
        
        public var code: String?
        
        public var ownership: Ownership1
        

        public enum CodingKeys: String, CodingKey {
            
            case customJson = "_custom_json"
            
            case promoGroup = "promo_group"
            
            case discountRules = "discount_rules"
            
            case applicationId = "application_id"
            
            case visiblility = "visiblility"
            
            case applyPriority = "apply_priority"
            
            case mode = "mode"
            
            case schedule = "_schedule"
            
            case restrictions = "restrictions"
            
            case applyAllDiscount = "apply_all_discount"
            
            case buyRules = "buy_rules"
            
            case currency = "currency"
            
            case displayMeta = "display_meta"
            
            case applyExclusive = "apply_exclusive"
            
            case stackable = "stackable"
            
            case dateMeta = "date_meta"
            
            case author = "author"
            
            case postOrderAction = "post_order_action"
            
            case promotionType = "promotion_type"
            
            case code = "code"
            
            case ownership = "ownership"
            
        }

        public init(applicationId: String, applyAllDiscount: Bool?, applyExclusive: String?, applyPriority: Int?, author: PromotionAuthor?, buyRules: [String: ItemCriteria], code: String?, currency: String?, dateMeta: PromotionDateMeta?, discountRules: [DiscountRule], displayMeta: DisplayMeta1, mode: String, ownership: Ownership1, postOrderAction: PromotionAction?, promotionType: String, promoGroup: String, restrictions: Restrictions1?, stackable: Bool?, visiblility: Visibility?, customJson: [String: Any]?, schedule: PromotionSchedule?) {
            
            self.customJson = customJson
            
            self.promoGroup = promoGroup
            
            self.discountRules = discountRules
            
            self.applicationId = applicationId
            
            self.visiblility = visiblility
            
            self.applyPriority = applyPriority
            
            self.mode = mode
            
            self.schedule = schedule
            
            self.restrictions = restrictions
            
            self.applyAllDiscount = applyAllDiscount
            
            self.buyRules = buyRules
            
            self.currency = currency
            
            self.displayMeta = displayMeta
            
            self.applyExclusive = applyExclusive
            
            self.stackable = stackable
            
            self.dateMeta = dateMeta
            
            self.author = author
            
            self.postOrderAction = postOrderAction
            
            self.promotionType = promotionType
            
            self.code = code
            
            self.ownership = ownership
            
        }

        public func duplicate() -> PromotionAdd {
            let dict = self.dictionary!
            let copy = PromotionAdd(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                promoGroup = try container.decode(String.self, forKey: .promoGroup)
                
            
            
            
                discountRules = try container.decode([DiscountRule].self, forKey: .discountRules)
                
            
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                do {
                    visiblility = try container.decode(Visibility.self, forKey: .visiblility)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applyPriority = try container.decode(Int.self, forKey: .applyPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                mode = try container.decode(String.self, forKey: .mode)
                
            
            
            
                do {
                    schedule = try container.decode(PromotionSchedule.self, forKey: .schedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    restrictions = try container.decode(Restrictions1.self, forKey: .restrictions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applyAllDiscount = try container.decode(Bool.self, forKey: .applyAllDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                buyRules = try container.decode([String: ItemCriteria].self, forKey: .buyRules)
                
            
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                displayMeta = try container.decode(DisplayMeta1.self, forKey: .displayMeta)
                
            
            
            
                do {
                    applyExclusive = try container.decode(String.self, forKey: .applyExclusive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stackable = try container.decode(Bool.self, forKey: .stackable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dateMeta = try container.decode(PromotionDateMeta.self, forKey: .dateMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    author = try container.decode(PromotionAuthor.self, forKey: .author)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    postOrderAction = try container.decode(PromotionAction.self, forKey: .postOrderAction)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                promotionType = try container.decode(String.self, forKey: .promotionType)
                
            
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                ownership = try container.decode(Ownership1.self, forKey: .ownership)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)
            
            
            
            
            try? container.encodeIfPresent(discountRules, forKey: .discountRules)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(visiblility, forKey: .visiblility)
            
            
            
            
            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
            
            
            try? container.encodeIfPresent(restrictions, forKey: .restrictions)
            
            
            
            
            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)
            
            
            
            
            try? container.encodeIfPresent(buyRules, forKey: .buyRules)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)
            
            
            
            
            try? container.encode(applyExclusive, forKey: .applyExclusive)
            
            
            
            
            try? container.encodeIfPresent(stackable, forKey: .stackable)
            
            
            
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            
            
            
            try? container.encodeIfPresent(author, forKey: .author)
            
            
            
            
            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)
            
            
            
            
            try? container.encodeIfPresent(promotionType, forKey: .promotionType)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(ownership, forKey: .ownership)
            
            
        }
        
    }
    
    /*
        Model: PromotionUpdate
        Used By: Cart
    */

    class PromotionUpdate: Codable {
        
        
        public var customJson: [String: Any]?
        
        public var promoGroup: String
        
        public var discountRules: [DiscountRule]
        
        public var applicationId: String
        
        public var visiblility: Visibility?
        
        public var applyPriority: Int?
        
        public var mode: String
        
        public var schedule: PromotionSchedule?
        
        public var restrictions: Restrictions1?
        
        public var applyAllDiscount: Bool?
        
        public var buyRules: [String: ItemCriteria]
        
        public var currency: String?
        
        public var displayMeta: DisplayMeta1
        
        public var applyExclusive: String?
        
        public var stackable: Bool?
        
        public var dateMeta: PromotionDateMeta?
        
        public var author: PromotionAuthor?
        
        public var postOrderAction: PromotionAction?
        
        public var promotionType: String
        
        public var code: String?
        
        public var ownership: Ownership1
        

        public enum CodingKeys: String, CodingKey {
            
            case customJson = "_custom_json"
            
            case promoGroup = "promo_group"
            
            case discountRules = "discount_rules"
            
            case applicationId = "application_id"
            
            case visiblility = "visiblility"
            
            case applyPriority = "apply_priority"
            
            case mode = "mode"
            
            case schedule = "_schedule"
            
            case restrictions = "restrictions"
            
            case applyAllDiscount = "apply_all_discount"
            
            case buyRules = "buy_rules"
            
            case currency = "currency"
            
            case displayMeta = "display_meta"
            
            case applyExclusive = "apply_exclusive"
            
            case stackable = "stackable"
            
            case dateMeta = "date_meta"
            
            case author = "author"
            
            case postOrderAction = "post_order_action"
            
            case promotionType = "promotion_type"
            
            case code = "code"
            
            case ownership = "ownership"
            
        }

        public init(applicationId: String, applyAllDiscount: Bool?, applyExclusive: String?, applyPriority: Int?, author: PromotionAuthor?, buyRules: [String: ItemCriteria], code: String?, currency: String?, dateMeta: PromotionDateMeta?, discountRules: [DiscountRule], displayMeta: DisplayMeta1, mode: String, ownership: Ownership1, postOrderAction: PromotionAction?, promotionType: String, promoGroup: String, restrictions: Restrictions1?, stackable: Bool?, visiblility: Visibility?, customJson: [String: Any]?, schedule: PromotionSchedule?) {
            
            self.customJson = customJson
            
            self.promoGroup = promoGroup
            
            self.discountRules = discountRules
            
            self.applicationId = applicationId
            
            self.visiblility = visiblility
            
            self.applyPriority = applyPriority
            
            self.mode = mode
            
            self.schedule = schedule
            
            self.restrictions = restrictions
            
            self.applyAllDiscount = applyAllDiscount
            
            self.buyRules = buyRules
            
            self.currency = currency
            
            self.displayMeta = displayMeta
            
            self.applyExclusive = applyExclusive
            
            self.stackable = stackable
            
            self.dateMeta = dateMeta
            
            self.author = author
            
            self.postOrderAction = postOrderAction
            
            self.promotionType = promotionType
            
            self.code = code
            
            self.ownership = ownership
            
        }

        public func duplicate() -> PromotionUpdate {
            let dict = self.dictionary!
            let copy = PromotionUpdate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                promoGroup = try container.decode(String.self, forKey: .promoGroup)
                
            
            
            
                discountRules = try container.decode([DiscountRule].self, forKey: .discountRules)
                
            
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                do {
                    visiblility = try container.decode(Visibility.self, forKey: .visiblility)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applyPriority = try container.decode(Int.self, forKey: .applyPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                mode = try container.decode(String.self, forKey: .mode)
                
            
            
            
                do {
                    schedule = try container.decode(PromotionSchedule.self, forKey: .schedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    restrictions = try container.decode(Restrictions1.self, forKey: .restrictions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applyAllDiscount = try container.decode(Bool.self, forKey: .applyAllDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                buyRules = try container.decode([String: ItemCriteria].self, forKey: .buyRules)
                
            
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                displayMeta = try container.decode(DisplayMeta1.self, forKey: .displayMeta)
                
            
            
            
                do {
                    applyExclusive = try container.decode(String.self, forKey: .applyExclusive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stackable = try container.decode(Bool.self, forKey: .stackable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dateMeta = try container.decode(PromotionDateMeta.self, forKey: .dateMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    author = try container.decode(PromotionAuthor.self, forKey: .author)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    postOrderAction = try container.decode(PromotionAction.self, forKey: .postOrderAction)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                promotionType = try container.decode(String.self, forKey: .promotionType)
                
            
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                ownership = try container.decode(Ownership1.self, forKey: .ownership)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)
            
            
            
            
            try? container.encodeIfPresent(discountRules, forKey: .discountRules)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(visiblility, forKey: .visiblility)
            
            
            
            
            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
            
            
            try? container.encodeIfPresent(restrictions, forKey: .restrictions)
            
            
            
            
            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)
            
            
            
            
            try? container.encodeIfPresent(buyRules, forKey: .buyRules)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)
            
            
            
            
            try? container.encode(applyExclusive, forKey: .applyExclusive)
            
            
            
            
            try? container.encodeIfPresent(stackable, forKey: .stackable)
            
            
            
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            
            
            
            try? container.encodeIfPresent(author, forKey: .author)
            
            
            
            
            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)
            
            
            
            
            try? container.encodeIfPresent(promotionType, forKey: .promotionType)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(ownership, forKey: .ownership)
            
            
        }
        
    }
    
    /*
        Model: PromotionPartialUpdate
        Used By: Cart
    */

    class PromotionPartialUpdate: Codable {
        
        
        public var schedule: PromotionSchedule?
        
        public var archive: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case schedule = "schedule"
            
            case archive = "archive"
            
        }

        public init(archive: Bool?, schedule: PromotionSchedule?) {
            
            self.schedule = schedule
            
            self.archive = archive
            
        }

        public func duplicate() -> PromotionPartialUpdate {
            let dict = self.dictionary!
            let copy = PromotionPartialUpdate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    schedule = try container.decode(PromotionSchedule.self, forKey: .schedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    archive = try container.decode(Bool.self, forKey: .archive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
            
            
            try? container.encodeIfPresent(archive, forKey: .archive)
            
            
        }
        
    }
    
    /*
        Model: CartItem
        Used By: Cart
    */

    class CartItem: Codable {
        
        
        public var size: String
        
        public var quantity: Int?
        
        public var productId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case size = "size"
            
            case quantity = "quantity"
            
            case productId = "product_id"
            
        }

        public init(productId: String, quantity: Int?, size: String) {
            
            self.size = size
            
            self.quantity = quantity
            
            self.productId = productId
            
        }

        public func duplicate() -> CartItem {
            let dict = self.dictionary!
            let copy = CartItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                productId = try container.decode(String.self, forKey: .productId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(productId, forKey: .productId)
            
            
        }
        
    }
    
    /*
        Model: OpenapiCartDetailsRequest
        Used By: Cart
    */

    class OpenapiCartDetailsRequest: Codable {
        
        
        public var cartItems: CartItem?
        

        public enum CodingKeys: String, CodingKey {
            
            case cartItems = "cart_items"
            
        }

        public init(cartItems: CartItem?) {
            
            self.cartItems = cartItems
            
        }

        public func duplicate() -> OpenapiCartDetailsRequest {
            let dict = self.dictionary!
            let copy = OpenapiCartDetailsRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cartItems = try container.decode(CartItem.self, forKey: .cartItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cartItems, forKey: .cartItems)
            
            
        }
        
    }
    
    /*
        Model: ProductAvailability
        Used By: Cart
    */

    class ProductAvailability: Codable {
        
        
        public var sizes: [String]?
        
        public var otherStoreQuantity: Int?
        
        public var deliverable: Bool?
        
        public var outOfStock: Bool?
        
        public var isValid: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case sizes = "sizes"
            
            case otherStoreQuantity = "other_store_quantity"
            
            case deliverable = "deliverable"
            
            case outOfStock = "out_of_stock"
            
            case isValid = "is_valid"
            
        }

        public init(deliverable: Bool?, isValid: Bool?, otherStoreQuantity: Int?, outOfStock: Bool?, sizes: [String]?) {
            
            self.sizes = sizes
            
            self.otherStoreQuantity = otherStoreQuantity
            
            self.deliverable = deliverable
            
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
                    otherStoreQuantity = try container.decode(Int.self, forKey: .otherStoreQuantity)
                
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
            
            
            
            
            try? container.encodeIfPresent(otherStoreQuantity, forKey: .otherStoreQuantity)
            
            
            
            
            try? container.encodeIfPresent(deliverable, forKey: .deliverable)
            
            
            
            
            try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)
            
            
            
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            
        }
        
    }
    
    /*
        Model: AppliedPromotion
        Used By: Cart
    */

    class AppliedPromotion: Codable {
        
        
        public var promoId: String?
        
        public var articleQuantity: Int?
        
        public var promotionType: String?
        
        public var mrpPromotion: Bool?
        
        public var amount: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case promoId = "promo_id"
            
            case articleQuantity = "article_quantity"
            
            case promotionType = "promotion_type"
            
            case mrpPromotion = "mrp_promotion"
            
            case amount = "amount"
            
        }

        public init(amount: Double?, articleQuantity: Int?, mrpPromotion: Bool?, promotionType: String?, promoId: String?) {
            
            self.promoId = promoId
            
            self.articleQuantity = articleQuantity
            
            self.promotionType = promotionType
            
            self.mrpPromotion = mrpPromotion
            
            self.amount = amount
            
        }

        public func duplicate() -> AppliedPromotion {
            let dict = self.dictionary!
            let copy = AppliedPromotion(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    promoId = try container.decode(String.self, forKey: .promoId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    articleQuantity = try container.decode(Int.self, forKey: .articleQuantity)
                
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
                    mrpPromotion = try container.decode(Bool.self, forKey: .mrpPromotion)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(promoId, forKey: .promoId)
            
            
            
            
            try? container.encodeIfPresent(articleQuantity, forKey: .articleQuantity)
            
            
            
            
            try? container.encodeIfPresent(promotionType, forKey: .promotionType)
            
            
            
            
            try? container.encodeIfPresent(mrpPromotion, forKey: .mrpPromotion)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
        }
        
    }
    
    /*
        Model: BaseInfo
        Used By: Cart
    */

    class BaseInfo: Codable {
        
        
        public var uid: Int?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case name = "name"
            
        }

        public init(name: String?, uid: Int?) {
            
            self.uid = uid
            
            self.name = name
            
        }

        public func duplicate() -> BaseInfo {
            let dict = self.dictionary!
            let copy = BaseInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
    
    /*
        Model: ProductImage
        Used By: Cart
    */

    class ProductImage: Codable {
        
        
        public var aspectRatio: String?
        
        public var secureUrl: String?
        
        public var url: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case aspectRatio = "aspect_ratio"
            
            case secureUrl = "secure_url"
            
            case url = "url"
            
        }

        public init(aspectRatio: String?, secureUrl: String?, url: String?) {
            
            self.aspectRatio = aspectRatio
            
            self.secureUrl = secureUrl
            
            self.url = url
            
        }

        public func duplicate() -> ProductImage {
            let dict = self.dictionary!
            let copy = ProductImage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    aspectRatio = try container.decode(String.self, forKey: .aspectRatio)
                
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
                    url = try container.decode(String.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
            
            
            
            
            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
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
        
        
        public var query: ActionQuery?
        
        public var type: String?
        
        public var url: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case query = "query"
            
            case type = "type"
            
            case url = "url"
            
        }

        public init(query: ActionQuery?, type: String?, url: String?) {
            
            self.query = query
            
            self.type = type
            
            self.url = url
            
        }

        public func duplicate() -> ProductAction {
            let dict = self.dictionary!
            let copy = ProductAction(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                
            
            
                do {
                    url = try container.decode(String.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
        }
        
    }
    
    /*
        Model: CategoryInfo
        Used By: Cart
    */

    class CategoryInfo: Codable {
        
        
        public var uid: Int?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case name = "name"
            
        }

        public init(name: String?, uid: Int?) {
            
            self.uid = uid
            
            self.name = name
            
        }

        public func duplicate() -> CategoryInfo {
            let dict = self.dictionary!
            let copy = CategoryInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
    
    /*
        Model: CartProduct
        Used By: Cart
    */

    class CartProduct: Codable {
        
        
        public var brand: BaseInfo?
        
        public var uid: Int?
        
        public var type: String?
        
        public var images: [ProductImage]?
        
        public var action: ProductAction?
        
        public var categories: [CategoryInfo]?
        
        public var slug: String?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case brand = "brand"
            
            case uid = "uid"
            
            case type = "type"
            
            case images = "images"
            
            case action = "action"
            
            case categories = "categories"
            
            case slug = "slug"
            
            case name = "name"
            
        }

        public init(action: ProductAction?, brand: BaseInfo?, categories: [CategoryInfo]?, images: [ProductImage]?, name: String?, slug: String?, type: String?, uid: Int?) {
            
            self.brand = brand
            
            self.uid = uid
            
            self.type = type
            
            self.images = images
            
            self.action = action
            
            self.categories = categories
            
            self.slug = slug
            
            self.name = name
            
        }

        public func duplicate() -> CartProduct {
            let dict = self.dictionary!
            let copy = CartProduct(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    brand = try container.decode(BaseInfo.self, forKey: .brand)
                
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
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
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
                    action = try container.decode(ProductAction.self, forKey: .action)
                
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
                    slug = try container.decode(String.self, forKey: .slug)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(images, forKey: .images)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(categories, forKey: .categories)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
    
    /*
        Model: ProductPrice
        Used By: Cart
    */

    class ProductPrice: Codable {
        
        
        public var currencySymbol: String?
        
        public var marked: Double?
        
        public var currencyCode: String?
        
        public var selling: Double?
        
        public var addOn: Double?
        
        public var effective: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case currencySymbol = "currency_symbol"
            
            case marked = "marked"
            
            case currencyCode = "currency_code"
            
            case selling = "selling"
            
            case addOn = "add_on"
            
            case effective = "effective"
            
        }

        public init(addOn: Double?, currencyCode: String?, currencySymbol: String?, effective: Double?, marked: Double?, selling: Double?) {
            
            self.currencySymbol = currencySymbol
            
            self.marked = marked
            
            self.currencyCode = currencyCode
            
            self.selling = selling
            
            self.addOn = addOn
            
            self.effective = effective
            
        }

        public func duplicate() -> ProductPrice {
            let dict = self.dictionary!
            let copy = ProductPrice(dictionary: dict)!
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
                    marked = try container.decode(Double.self, forKey: .marked)
                
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
                    selling = try container.decode(Double.self, forKey: .selling)
                
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
                    effective = try container.decode(Double.self, forKey: .effective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            
            
            
            try? container.encodeIfPresent(marked, forKey: .marked)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(selling, forKey: .selling)
            
            
            
            
            try? container.encodeIfPresent(addOn, forKey: .addOn)
            
            
            
            
            try? container.encodeIfPresent(effective, forKey: .effective)
            
            
        }
        
    }
    
    /*
        Model: ProductPriceInfo
        Used By: Cart
    */

    class ProductPriceInfo: Codable {
        
        
        public var converted: ProductPrice?
        
        public var base: ProductPrice?
        

        public enum CodingKeys: String, CodingKey {
            
            case converted = "converted"
            
            case base = "base"
            
        }

        public init(base: ProductPrice?, converted: ProductPrice?) {
            
            self.converted = converted
            
            self.base = base
            
        }

        public func duplicate() -> ProductPriceInfo {
            let dict = self.dictionary!
            let copy = ProductPriceInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    converted = try container.decode(ProductPrice.self, forKey: .converted)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    base = try container.decode(ProductPrice.self, forKey: .base)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(converted, forKey: .converted)
            
            
            
            
            try? container.encodeIfPresent(base, forKey: .base)
            
            
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
        Model: BasePrice
        Used By: Cart
    */

    class BasePrice: Codable {
        
        
        public var currencyCode: String?
        
        public var currencySymbol: String?
        
        public var marked: Double?
        
        public var effective: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case currencyCode = "currency_code"
            
            case currencySymbol = "currency_symbol"
            
            case marked = "marked"
            
            case effective = "effective"
            
        }

        public init(currencyCode: String?, currencySymbol: String?, effective: Double?, marked: Double?) {
            
            self.currencyCode = currencyCode
            
            self.currencySymbol = currencySymbol
            
            self.marked = marked
            
            self.effective = effective
            
        }

        public func duplicate() -> BasePrice {
            let dict = self.dictionary!
            let copy = BasePrice(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                    marked = try container.decode(Double.self, forKey: .marked)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            
            
            
            try? container.encodeIfPresent(marked, forKey: .marked)
            
            
            
            
            try? container.encodeIfPresent(effective, forKey: .effective)
            
            
        }
        
    }
    
    /*
        Model: ArticlePriceInfo
        Used By: Cart
    */

    class ArticlePriceInfo: Codable {
        
        
        public var converted: BasePrice?
        
        public var base: BasePrice?
        

        public enum CodingKeys: String, CodingKey {
            
            case converted = "converted"
            
            case base = "base"
            
        }

        public init(base: BasePrice?, converted: BasePrice?) {
            
            self.converted = converted
            
            self.base = base
            
        }

        public func duplicate() -> ArticlePriceInfo {
            let dict = self.dictionary!
            let copy = ArticlePriceInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    converted = try container.decode(BasePrice.self, forKey: .converted)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    base = try container.decode(BasePrice.self, forKey: .base)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(converted, forKey: .converted)
            
            
            
            
            try? container.encodeIfPresent(base, forKey: .base)
            
            
        }
        
    }
    
    /*
        Model: ProductArticle
        Used By: Cart
    */

    class ProductArticle: Codable {
        
        
        public var store: BaseInfo?
        
        public var parentItemSize: String?
        
        public var uid: String?
        
        public var type: String?
        
        public var price: ArticlePriceInfo?
        
        public var extraMeta: [String: Any]?
        
        public var parentItemId: String?
        
        public var quantity: Int?
        
        public var productGroupTags: [String]?
        
        public var seller: BaseInfo?
        
        public var size: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case store = "store"
            
            case parentItemSize = "parent_item_size"
            
            case uid = "uid"
            
            case type = "type"
            
            case price = "price"
            
            case extraMeta = "extra_meta"
            
            case parentItemId = "parent_item_id"
            
            case quantity = "quantity"
            
            case productGroupTags = "product_group_tags"
            
            case seller = "seller"
            
            case size = "size"
            
        }

        public init(extraMeta: [String: Any]?, parentItemId: String?, parentItemSize: String?, price: ArticlePriceInfo?, productGroupTags: [String]?, quantity: Int?, seller: BaseInfo?, size: String?, store: BaseInfo?, type: String?, uid: String?) {
            
            self.store = store
            
            self.parentItemSize = parentItemSize
            
            self.uid = uid
            
            self.type = type
            
            self.price = price
            
            self.extraMeta = extraMeta
            
            self.parentItemId = parentItemId
            
            self.quantity = quantity
            
            self.productGroupTags = productGroupTags
            
            self.seller = seller
            
            self.size = size
            
        }

        public func duplicate() -> ProductArticle {
            let dict = self.dictionary!
            let copy = ProductArticle(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    store = try container.decode(BaseInfo.self, forKey: .store)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentItemSize = try container.decode(String.self, forKey: .parentItemSize)
                
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
                    type = try container.decode(String.self, forKey: .type)
                
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
                    extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)
                
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
                
            
            
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
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
                    seller = try container.decode(BaseInfo.self, forKey: .seller)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
            
            
            try? container.encodeIfPresent(parentItemSize, forKey: .parentItemSize)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
            
            
            
            
            try? container.encodeIfPresent(parentItemId, forKey: .parentItemId)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(productGroupTags, forKey: .productGroupTags)
            
            
            
            
            try? container.encodeIfPresent(seller, forKey: .seller)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
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
        Model: CartProductInfo
        Used By: Cart
    */

    class CartProductInfo: Codable {
        
        
        public var key: String?
        
        public var couponMessage: String?
        
        public var availability: ProductAvailability?
        
        public var promotionApplied: [AppliedPromotion]?
        
        public var bulkOffer: [String: Any]?
        
        public var product: CartProduct?
        
        public var price: ProductPriceInfo?
        
        public var discount: String?
        
        public var quantity: Int?
        
        public var pricePerUnit: ProductPriceInfo?
        
        public var isSet: Bool?
        
        public var identifiers: CartProductIdentifer
        
        public var article: ProductArticle?
        
        public var message: String?
        
        public var promoMeta: PromoMeta?
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case couponMessage = "coupon_message"
            
            case availability = "availability"
            
            case promotionApplied = "promotion_applied"
            
            case bulkOffer = "bulk_offer"
            
            case product = "product"
            
            case price = "price"
            
            case discount = "discount"
            
            case quantity = "quantity"
            
            case pricePerUnit = "price_per_unit"
            
            case isSet = "is_set"
            
            case identifiers = "identifiers"
            
            case article = "article"
            
            case message = "message"
            
            case promoMeta = "promo_meta"
            
        }

        public init(article: ProductArticle?, availability: ProductAvailability?, bulkOffer: [String: Any]?, couponMessage: String?, discount: String?, identifiers: CartProductIdentifer, isSet: Bool?, key: String?, message: String?, price: ProductPriceInfo?, pricePerUnit: ProductPriceInfo?, product: CartProduct?, promotionApplied: [AppliedPromotion]?, promoMeta: PromoMeta?, quantity: Int?) {
            
            self.key = key
            
            self.couponMessage = couponMessage
            
            self.availability = availability
            
            self.promotionApplied = promotionApplied
            
            self.bulkOffer = bulkOffer
            
            self.product = product
            
            self.price = price
            
            self.discount = discount
            
            self.quantity = quantity
            
            self.pricePerUnit = pricePerUnit
            
            self.isSet = isSet
            
            self.identifiers = identifiers
            
            self.article = article
            
            self.message = message
            
            self.promoMeta = promoMeta
            
        }

        public func duplicate() -> CartProductInfo {
            let dict = self.dictionary!
            let copy = CartProductInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    couponMessage = try container.decode(String.self, forKey: .couponMessage)
                
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
                    promotionApplied = try container.decode([AppliedPromotion].self, forKey: .promotionApplied)
                
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
                    product = try container.decode(CartProduct.self, forKey: .product)
                
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
                    discount = try container.decode(String.self, forKey: .discount)
                
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
                    pricePerUnit = try container.decode(ProductPriceInfo.self, forKey: .pricePerUnit)
                
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
                
            
            
                identifiers = try container.decode(CartProductIdentifer.self, forKey: .identifiers)
                
            
            
            
                do {
                    article = try container.decode(ProductArticle.self, forKey: .article)
                
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
                    promoMeta = try container.decode(PromoMeta.self, forKey: .promoMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(couponMessage, forKey: .couponMessage)
            
            
            
            
            try? container.encodeIfPresent(availability, forKey: .availability)
            
            
            
            
            try? container.encodeIfPresent(promotionApplied, forKey: .promotionApplied)
            
            
            
            
            try? container.encodeIfPresent(bulkOffer, forKey: .bulkOffer)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(pricePerUnit, forKey: .pricePerUnit)
            
            
            
            
            try? container.encodeIfPresent(isSet, forKey: .isSet)
            
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(article, forKey: .article)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)
            
            
        }
        
    }
    
    /*
        Model: DisplayBreakup
        Used By: Cart
    */

    class DisplayBreakup: Codable {
        
        
        public var key: String?
        
        public var currencySymbol: String?
        
        public var currencyCode: String?
        
        public var value: Double?
        
        public var display: String?
        
        public var message: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case currencySymbol = "currency_symbol"
            
            case currencyCode = "currency_code"
            
            case value = "value"
            
            case display = "display"
            
            case message = "message"
            
        }

        public init(currencyCode: String?, currencySymbol: String?, display: String?, key: String?, message: [String]?, value: Double?) {
            
            self.key = key
            
            self.currencySymbol = currencySymbol
            
            self.currencyCode = currencyCode
            
            self.value = value
            
            self.display = display
            
            self.message = message
            
        }

        public func duplicate() -> DisplayBreakup {
            let dict = self.dictionary!
            let copy = DisplayBreakup(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    key = try container.decode(String.self, forKey: .key)
                
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
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
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
                    display = try container.decode(String.self, forKey: .display)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
    
    /*
        Model: CouponBreakup
        Used By: Cart
    */

    class CouponBreakup: Codable {
        
        
        public var minimumCartValue: Double?
        
        public var description: String?
        
        public var maxDiscountValue: Double?
        
        public var couponType: String?
        
        public var uid: String?
        
        public var couponValue: Double?
        
        public var type: String?
        
        public var title: String?
        
        public var value: Double?
        
        public var subTitle: String?
        
        public var code: String?
        
        public var message: String?
        
        public var isApplied: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case minimumCartValue = "minimum_cart_value"
            
            case description = "description"
            
            case maxDiscountValue = "max_discount_value"
            
            case couponType = "coupon_type"
            
            case uid = "uid"
            
            case couponValue = "coupon_value"
            
            case type = "type"
            
            case title = "title"
            
            case value = "value"
            
            case subTitle = "sub_title"
            
            case code = "code"
            
            case message = "message"
            
            case isApplied = "is_applied"
            
        }

        public init(code: String?, couponType: String?, couponValue: Double?, description: String?, isApplied: Bool?, maxDiscountValue: Double?, message: String?, minimumCartValue: Double?, subTitle: String?, title: String?, type: String?, uid: String?, value: Double?) {
            
            self.minimumCartValue = minimumCartValue
            
            self.description = description
            
            self.maxDiscountValue = maxDiscountValue
            
            self.couponType = couponType
            
            self.uid = uid
            
            self.couponValue = couponValue
            
            self.type = type
            
            self.title = title
            
            self.value = value
            
            self.subTitle = subTitle
            
            self.code = code
            
            self.message = message
            
            self.isApplied = isApplied
            
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
                    description = try container.decode(String.self, forKey: .description)
                
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
                    uid = try container.decode(String.self, forKey: .uid)
                
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
                    type = try container.decode(String.self, forKey: .type)
                
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
                    value = try container.decode(Double.self, forKey: .value)
                
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
                    code = try container.decode(String.self, forKey: .code)
                
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
                    isApplied = try container.decode(Bool.self, forKey: .isApplied)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(minimumCartValue, forKey: .minimumCartValue)
            
            
            
            
            try? container.encode(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(maxDiscountValue, forKey: .maxDiscountValue)
            
            
            
            
            try? container.encode(couponType, forKey: .couponType)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(couponValue, forKey: .couponValue)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encode(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encode(subTitle, forKey: .subTitle)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(isApplied, forKey: .isApplied)
            
            
        }
        
    }
    
    /*
        Model: RawBreakup
        Used By: Cart
    */

    class RawBreakup: Codable {
        
        
        public var gstCharges: Double?
        
        public var convenienceFee: Double?
        
        public var coupon: Double?
        
        public var fyndCash: Double?
        
        public var total: Double?
        
        public var mrpTotal: Double?
        
        public var deliveryCharge: Double?
        
        public var subtotal: Double?
        
        public var youSaved: Double?
        
        public var discount: Double?
        
        public var vog: Double?
        
        public var codCharge: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case gstCharges = "gst_charges"
            
            case convenienceFee = "convenience_fee"
            
            case coupon = "coupon"
            
            case fyndCash = "fynd_cash"
            
            case total = "total"
            
            case mrpTotal = "mrp_total"
            
            case deliveryCharge = "delivery_charge"
            
            case subtotal = "subtotal"
            
            case youSaved = "you_saved"
            
            case discount = "discount"
            
            case vog = "vog"
            
            case codCharge = "cod_charge"
            
        }

        public init(codCharge: Double?, convenienceFee: Double?, coupon: Double?, deliveryCharge: Double?, discount: Double?, fyndCash: Double?, gstCharges: Double?, mrpTotal: Double?, subtotal: Double?, total: Double?, vog: Double?, youSaved: Double?) {
            
            self.gstCharges = gstCharges
            
            self.convenienceFee = convenienceFee
            
            self.coupon = coupon
            
            self.fyndCash = fyndCash
            
            self.total = total
            
            self.mrpTotal = mrpTotal
            
            self.deliveryCharge = deliveryCharge
            
            self.subtotal = subtotal
            
            self.youSaved = youSaved
            
            self.discount = discount
            
            self.vog = vog
            
            self.codCharge = codCharge
            
        }

        public func duplicate() -> RawBreakup {
            let dict = self.dictionary!
            let copy = RawBreakup(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    gstCharges = try container.decode(Double.self, forKey: .gstCharges)
                
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
                    coupon = try container.decode(Double.self, forKey: .coupon)
                
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
                    deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
                
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
                
            
            
                do {
                    youSaved = try container.decode(Double.self, forKey: .youSaved)
                
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
                    vog = try container.decode(Double.self, forKey: .vog)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(gstCharges, forKey: .gstCharges)
            
            
            
            
            try? container.encodeIfPresent(convenienceFee, forKey: .convenienceFee)
            
            
            
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            
            
            
            try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(mrpTotal, forKey: .mrpTotal)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
            
            
            
            
            try? container.encodeIfPresent(subtotal, forKey: .subtotal)
            
            
            
            
            try? container.encodeIfPresent(youSaved, forKey: .youSaved)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(vog, forKey: .vog)
            
            
            
            
            try? container.encodeIfPresent(codCharge, forKey: .codCharge)
            
            
        }
        
    }
    
    /*
        Model: LoyaltyPoints
        Used By: Cart
    */

    class LoyaltyPoints: Codable {
        
        
        public var total: Double?
        
        public var description: String?
        
        public var isApplied: Bool?
        
        public var applicable: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case total = "total"
            
            case description = "description"
            
            case isApplied = "is_applied"
            
            case applicable = "applicable"
            
        }

        public init(applicable: Double?, description: String?, isApplied: Bool?, total: Double?) {
            
            self.total = total
            
            self.description = description
            
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
                    total = try container.decode(Double.self, forKey: .total)
                
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
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(isApplied, forKey: .isApplied)
            
            
            
            
            try? container.encodeIfPresent(applicable, forKey: .applicable)
            
            
        }
        
    }
    
    /*
        Model: CartBreakup
        Used By: Cart
    */

    class CartBreakup: Codable {
        
        
        public var display: [DisplayBreakup]?
        
        public var coupon: CouponBreakup?
        
        public var raw: RawBreakup?
        
        public var loyaltyPoints: LoyaltyPoints?
        

        public enum CodingKeys: String, CodingKey {
            
            case display = "display"
            
            case coupon = "coupon"
            
            case raw = "raw"
            
            case loyaltyPoints = "loyalty_points"
            
        }

        public init(coupon: CouponBreakup?, display: [DisplayBreakup]?, loyaltyPoints: LoyaltyPoints?, raw: RawBreakup?) {
            
            self.display = display
            
            self.coupon = coupon
            
            self.raw = raw
            
            self.loyaltyPoints = loyaltyPoints
            
        }

        public func duplicate() -> CartBreakup {
            let dict = self.dictionary!
            let copy = CartBreakup(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    display = try container.decode([DisplayBreakup].self, forKey: .display)
                
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
                    raw = try container.decode(RawBreakup.self, forKey: .raw)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    loyaltyPoints = try container.decode(LoyaltyPoints.self, forKey: .loyaltyPoints)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            
            
            
            try? container.encodeIfPresent(raw, forKey: .raw)
            
            
            
            
            try? container.encodeIfPresent(loyaltyPoints, forKey: .loyaltyPoints)
            
            
        }
        
    }
    
    /*
        Model: OpenapiCartDetailsResponse
        Used By: Cart
    */

    class OpenapiCartDetailsResponse: Codable {
        
        
        public var items: [CartProductInfo]?
        
        public var message: String?
        
        public var breakupValues: CartBreakup?
        
        public var isValid: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case message = "message"
            
            case breakupValues = "breakup_values"
            
            case isValid = "is_valid"
            
        }

        public init(breakupValues: CartBreakup?, isValid: Bool?, items: [CartProductInfo]?, message: String?) {
            
            self.items = items
            
            self.message = message
            
            self.breakupValues = breakupValues
            
            self.isValid = isValid
            
        }

        public func duplicate() -> OpenapiCartDetailsResponse {
            let dict = self.dictionary!
            let copy = OpenapiCartDetailsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    items = try container.decode([CartProductInfo].self, forKey: .items)
                
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
                    breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)
                
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
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            
            
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            
        }
        
    }
    
    /*
        Model: OpenApiErrorResponse
        Used By: Cart
    */

    class OpenApiErrorResponse: Codable {
        
        
        public var success: Bool?
        
        public var errors: [String: Any]?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case errors = "errors"
            
            case message = "message"
            
        }

        public init(errors: [String: Any]?, message: String?, success: Bool?) {
            
            self.success = success
            
            self.errors = errors
            
            self.message = message
            
        }

        public func duplicate() -> OpenApiErrorResponse {
            let dict = self.dictionary!
            let copy = OpenApiErrorResponse(dictionary: dict)!
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
                    errors = try container.decode([String: Any].self, forKey: .errors)
                
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
            
            
            
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
    
    /*
        Model: ShippingAddress
        Used By: Cart
    */

    class ShippingAddress: Codable {
        
        
        public var areaCodeSlug: String?
        
        public var email: String?
        
        public var meta: [String: Any]?
        
        public var city: String?
        
        public var country: String?
        
        public var addressType: String?
        
        public var phone: Int?
        
        public var countryCode: String?
        
        public var address: String?
        
        public var state: String?
        
        public var pincode: Int?
        
        public var name: String?
        
        public var area: String?
        
        public var landmark: String?
        
        public var areaCode: String
        

        public enum CodingKeys: String, CodingKey {
            
            case areaCodeSlug = "area_code_slug"
            
            case email = "email"
            
            case meta = "meta"
            
            case city = "city"
            
            case country = "country"
            
            case addressType = "address_type"
            
            case phone = "phone"
            
            case countryCode = "country_code"
            
            case address = "address"
            
            case state = "state"
            
            case pincode = "pincode"
            
            case name = "name"
            
            case area = "area"
            
            case landmark = "landmark"
            
            case areaCode = "area_code"
            
        }

        public init(address: String?, addressType: String?, area: String?, areaCode: String, areaCodeSlug: String?, city: String?, country: String?, countryCode: String?, email: String?, landmark: String?, meta: [String: Any]?, name: String?, phone: Int?, pincode: Int?, state: String?) {
            
            self.areaCodeSlug = areaCodeSlug
            
            self.email = email
            
            self.meta = meta
            
            self.city = city
            
            self.country = country
            
            self.addressType = addressType
            
            self.phone = phone
            
            self.countryCode = countryCode
            
            self.address = address
            
            self.state = state
            
            self.pincode = pincode
            
            self.name = name
            
            self.area = area
            
            self.landmark = landmark
            
            self.areaCode = areaCode
            
        }

        public func duplicate() -> ShippingAddress {
            let dict = self.dictionary!
            let copy = ShippingAddress(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    areaCodeSlug = try container.decode(String.self, forKey: .areaCodeSlug)
                
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
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
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
                    country = try container.decode(String.self, forKey: .country)
                
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
                
            
            
                do {
                    phone = try container.decode(Int.self, forKey: .phone)
                
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
                    address = try container.decode(String.self, forKey: .address)
                
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
                    pincode = try container.decode(Int.self, forKey: .pincode)
                
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
                    area = try container.decode(String.self, forKey: .area)
                
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
                
            
            
                areaCode = try container.decode(String.self, forKey: .areaCode)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encode(city, forKey: .city)
            
            
            
            
            try? container.encode(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encode(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(area, forKey: .area)
            
            
            
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            
            
            
            try? container.encodeIfPresent(areaCode, forKey: .areaCode)
            
            
        }
        
    }
    
    /*
        Model: OpenApiCartServiceabilityRequest
        Used By: Cart
    */

    class OpenApiCartServiceabilityRequest: Codable {
        
        
        public var cartItems: CartItem?
        
        public var shippingAddress: ShippingAddress
        

        public enum CodingKeys: String, CodingKey {
            
            case cartItems = "cart_items"
            
            case shippingAddress = "shipping_address"
            
        }

        public init(cartItems: CartItem?, shippingAddress: ShippingAddress) {
            
            self.cartItems = cartItems
            
            self.shippingAddress = shippingAddress
            
        }

        public func duplicate() -> OpenApiCartServiceabilityRequest {
            let dict = self.dictionary!
            let copy = OpenApiCartServiceabilityRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cartItems = try container.decode(CartItem.self, forKey: .cartItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                shippingAddress = try container.decode(ShippingAddress.self, forKey: .shippingAddress)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cartItems, forKey: .cartItems)
            
            
            
            
            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)
            
            
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
        Model: OpenApiCartServiceabilityResponse
        Used By: Cart
    */

    class OpenApiCartServiceabilityResponse: Codable {
        
        
        public var deliveryPromise: ShipmentPromise?
        
        public var items: [CartProductInfo]?
        
        public var breakupValues: CartBreakup?
        
        public var message: String?
        
        public var isValid: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case deliveryPromise = "delivery_promise"
            
            case items = "items"
            
            case breakupValues = "breakup_values"
            
            case message = "message"
            
            case isValid = "is_valid"
            
        }

        public init(breakupValues: CartBreakup?, deliveryPromise: ShipmentPromise?, isValid: Bool?, items: [CartProductInfo]?, message: String?) {
            
            self.deliveryPromise = deliveryPromise
            
            self.items = items
            
            self.breakupValues = breakupValues
            
            self.message = message
            
            self.isValid = isValid
            
        }

        public func duplicate() -> OpenApiCartServiceabilityResponse {
            let dict = self.dictionary!
            let copy = OpenApiCartServiceabilityResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
                
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
                    breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)
                
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
                    isValid = try container.decode(Bool.self, forKey: .isValid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            
        }
        
    }
    
    /*
        Model: OpenApiFiles
        Used By: Cart
    */

    class OpenApiFiles: Codable {
        
        
        public var key: String
        
        public var values: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case values = "values"
            
        }

        public init(key: String, values: [String]) {
            
            self.key = key
            
            self.values = values
            
        }

        public func duplicate() -> OpenApiFiles {
            let dict = self.dictionary!
            let copy = OpenApiFiles(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                key = try container.decode(String.self, forKey: .key)
                
            
            
            
                values = try container.decode([String].self, forKey: .values)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            
        }
        
    }
    
    /*
        Model: CartItemMeta
        Used By: Cart
    */

    class CartItemMeta: Codable {
        
        
        public var primaryItem: Bool?
        
        public var groupId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case primaryItem = "primary_item"
            
            case groupId = "group_id"
            
        }

        public init(groupId: String?, primaryItem: Bool?) {
            
            self.primaryItem = primaryItem
            
            self.groupId = groupId
            
        }

        public func duplicate() -> CartItemMeta {
            let dict = self.dictionary!
            let copy = CartItemMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    primaryItem = try container.decode(Bool.self, forKey: .primaryItem)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    groupId = try container.decode(String.self, forKey: .groupId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(primaryItem, forKey: .primaryItem)
            
            
            
            
            try? container.encodeIfPresent(groupId, forKey: .groupId)
            
            
        }
        
    }
    
    /*
        Model: MultiTenderPaymentMeta
        Used By: Cart
    */

    class MultiTenderPaymentMeta: Codable {
        
        
        public var paymentGateway: String?
        
        public var paymentId: String?
        
        public var orderId: String?
        
        public var extraMeta: [String: Any]?
        
        public var currentStatus: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentGateway = "payment_gateway"
            
            case paymentId = "payment_id"
            
            case orderId = "order_id"
            
            case extraMeta = "extra_meta"
            
            case currentStatus = "current_status"
            
        }

        public init(currentStatus: String?, extraMeta: [String: Any]?, orderId: String?, paymentGateway: String?, paymentId: String?) {
            
            self.paymentGateway = paymentGateway
            
            self.paymentId = paymentId
            
            self.orderId = orderId
            
            self.extraMeta = extraMeta
            
            self.currentStatus = currentStatus
            
        }

        public func duplicate() -> MultiTenderPaymentMeta {
            let dict = self.dictionary!
            let copy = MultiTenderPaymentMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    paymentGateway = try container.decode(String.self, forKey: .paymentGateway)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentId = try container.decode(String.self, forKey: .paymentId)
                
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
                    extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currentStatus = try container.decode(String.self, forKey: .currentStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(paymentGateway, forKey: .paymentGateway)
            
            
            
            
            try? container.encode(paymentId, forKey: .paymentId)
            
            
            
            
            try? container.encode(orderId, forKey: .orderId)
            
            
            
            
            try? container.encode(extraMeta, forKey: .extraMeta)
            
            
            
            
            try? container.encode(currentStatus, forKey: .currentStatus)
            
            
        }
        
    }
    
    /*
        Model: MultiTenderPaymentMethod
        Used By: Cart
    */

    class MultiTenderPaymentMethod: Codable {
        
        
        public var meta: MultiTenderPaymentMeta?
        
        public var name: String?
        
        public var amount: Double
        
        public var mode: String
        

        public enum CodingKeys: String, CodingKey {
            
            case meta = "meta"
            
            case name = "name"
            
            case amount = "amount"
            
            case mode = "mode"
            
        }

        public init(amount: Double, meta: MultiTenderPaymentMeta?, mode: String, name: String?) {
            
            self.meta = meta
            
            self.name = name
            
            self.amount = amount
            
            self.mode = mode
            
        }

        public func duplicate() -> MultiTenderPaymentMethod {
            let dict = self.dictionary!
            let copy = MultiTenderPaymentMethod(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    meta = try container.decode(MultiTenderPaymentMeta.self, forKey: .meta)
                
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
                
            
            
                amount = try container.decode(Double.self, forKey: .amount)
                
            
            
            
                mode = try container.decode(String.self, forKey: .mode)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
        }
        
    }
    
    /*
        Model: OpenApiOrderItem
        Used By: Cart
    */

    class OpenApiOrderItem: Codable {
        
        
        public var loyaltyDiscount: Double?
        
        public var priceMarked: Double
        
        public var priceEffective: Double
        
        public var files: [OpenApiFiles]?
        
        public var meta: CartItemMeta?
        
        public var codCharges: Double
        
        public var cashbackApplied: Double
        
        public var productId: Int
        
        public var amountPaid: Double
        
        public var couponEffectiveDiscount: Double
        
        public var employeeDiscount: Double?
        
        public var extraMeta: [String: Any]?
        
        public var quantity: Int?
        
        public var paymentMethods: [MultiTenderPaymentMethod]
        
        public var discount: Double
        
        public var deliveryCharges: Double
        
        public var size: String
        

        public enum CodingKeys: String, CodingKey {
            
            case loyaltyDiscount = "loyalty_discount"
            
            case priceMarked = "price_marked"
            
            case priceEffective = "price_effective"
            
            case files = "files"
            
            case meta = "meta"
            
            case codCharges = "cod_charges"
            
            case cashbackApplied = "cashback_applied"
            
            case productId = "product_id"
            
            case amountPaid = "amount_paid"
            
            case couponEffectiveDiscount = "coupon_effective_discount"
            
            case employeeDiscount = "employee_discount"
            
            case extraMeta = "extra_meta"
            
            case quantity = "quantity"
            
            case paymentMethods = "payment_methods"
            
            case discount = "discount"
            
            case deliveryCharges = "delivery_charges"
            
            case size = "size"
            
        }

        public init(amountPaid: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, deliveryCharges: Double, discount: Double, employeeDiscount: Double?, extraMeta: [String: Any]?, files: [OpenApiFiles]?, loyaltyDiscount: Double?, meta: CartItemMeta?, paymentMethods: [MultiTenderPaymentMethod], priceEffective: Double, priceMarked: Double, productId: Int, quantity: Int?, size: String) {
            
            self.loyaltyDiscount = loyaltyDiscount
            
            self.priceMarked = priceMarked
            
            self.priceEffective = priceEffective
            
            self.files = files
            
            self.meta = meta
            
            self.codCharges = codCharges
            
            self.cashbackApplied = cashbackApplied
            
            self.productId = productId
            
            self.amountPaid = amountPaid
            
            self.couponEffectiveDiscount = couponEffectiveDiscount
            
            self.employeeDiscount = employeeDiscount
            
            self.extraMeta = extraMeta
            
            self.quantity = quantity
            
            self.paymentMethods = paymentMethods
            
            self.discount = discount
            
            self.deliveryCharges = deliveryCharges
            
            self.size = size
            
        }

        public func duplicate() -> OpenApiOrderItem {
            let dict = self.dictionary!
            let copy = OpenApiOrderItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                priceMarked = try container.decode(Double.self, forKey: .priceMarked)
                
            
            
            
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)
                
            
            
            
                do {
                    files = try container.decode([OpenApiFiles].self, forKey: .files)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode(CartItemMeta.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                codCharges = try container.decode(Double.self, forKey: .codCharges)
                
            
            
            
                cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)
                
            
            
            
                productId = try container.decode(Int.self, forKey: .productId)
                
            
            
            
                amountPaid = try container.decode(Double.self, forKey: .amountPaid)
                
            
            
            
                couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)
                
            
            
            
                do {
                    employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)
                
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
                
            
            
                paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)
                
            
            
            
                discount = try container.decode(Double.self, forKey: .discount)
                
            
            
            
                deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)
                
            
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(files, forKey: .files)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
            
            
            
            
            try? container.encodeIfPresent(productId, forKey: .productId)
            
            
            
            
            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
            
            
            
            
            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)
            
            
            
            
            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)
            
            
            
            
            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
        }
        
    }
    
    /*
        Model: OpenApiPlatformCheckoutReq
        Used By: Cart
    */

    class OpenApiPlatformCheckoutReq: Codable {
        
        
        public var loyaltyDiscount: Double?
        
        public var codCharges: Double
        
        public var orderId: String?
        
        public var paymentMode: String?
        
        public var affiliateOrderId: String?
        
        public var deliveryCharges: Double
        
        public var shippingAddress: ShippingAddress?
        
        public var couponCode: String
        
        public var billingAddress: ShippingAddress
        
        public var coupon: String?
        
        public var files: [OpenApiFiles]?
        
        public var currencyCode: String?
        
        public var couponValue: Double
        
        public var cartItems: [OpenApiOrderItem]
        
        public var cashbackApplied: Double
        
        public var employeeDiscount: [String: Any]?
        
        public var cartValue: Double
        
        public var paymentMethods: [MultiTenderPaymentMethod]
        

        public enum CodingKeys: String, CodingKey {
            
            case loyaltyDiscount = "loyalty_discount"
            
            case codCharges = "cod_charges"
            
            case orderId = "order_id"
            
            case paymentMode = "payment_mode"
            
            case affiliateOrderId = "affiliate_order_id"
            
            case deliveryCharges = "delivery_charges"
            
            case shippingAddress = "shipping_address"
            
            case couponCode = "coupon_code"
            
            case billingAddress = "billing_address"
            
            case coupon = "coupon"
            
            case files = "files"
            
            case currencyCode = "currency_code"
            
            case couponValue = "coupon_value"
            
            case cartItems = "cart_items"
            
            case cashbackApplied = "cashback_applied"
            
            case employeeDiscount = "employee_discount"
            
            case cartValue = "cart_value"
            
            case paymentMethods = "payment_methods"
            
        }

        public init(affiliateOrderId: String?, billingAddress: ShippingAddress, cartItems: [OpenApiOrderItem], cartValue: Double, cashbackApplied: Double, codCharges: Double, coupon: String?, couponCode: String, couponValue: Double, currencyCode: String?, deliveryCharges: Double, employeeDiscount: [String: Any]?, files: [OpenApiFiles]?, loyaltyDiscount: Double?, orderId: String?, paymentMethods: [MultiTenderPaymentMethod], paymentMode: String?, shippingAddress: ShippingAddress?) {
            
            self.loyaltyDiscount = loyaltyDiscount
            
            self.codCharges = codCharges
            
            self.orderId = orderId
            
            self.paymentMode = paymentMode
            
            self.affiliateOrderId = affiliateOrderId
            
            self.deliveryCharges = deliveryCharges
            
            self.shippingAddress = shippingAddress
            
            self.couponCode = couponCode
            
            self.billingAddress = billingAddress
            
            self.coupon = coupon
            
            self.files = files
            
            self.currencyCode = currencyCode
            
            self.couponValue = couponValue
            
            self.cartItems = cartItems
            
            self.cashbackApplied = cashbackApplied
            
            self.employeeDiscount = employeeDiscount
            
            self.cartValue = cartValue
            
            self.paymentMethods = paymentMethods
            
        }

        public func duplicate() -> OpenApiPlatformCheckoutReq {
            let dict = self.dictionary!
            let copy = OpenApiPlatformCheckoutReq(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                codCharges = try container.decode(Double.self, forKey: .codCharges)
                
            
            
            
                do {
                    orderId = try container.decode(String.self, forKey: .orderId)
                
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
                    affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)
                
            
            
            
                do {
                    shippingAddress = try container.decode(ShippingAddress.self, forKey: .shippingAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                couponCode = try container.decode(String.self, forKey: .couponCode)
                
            
            
            
                billingAddress = try container.decode(ShippingAddress.self, forKey: .billingAddress)
                
            
            
            
                do {
                    coupon = try container.decode(String.self, forKey: .coupon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    files = try container.decode([OpenApiFiles].self, forKey: .files)
                
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
                
            
            
                couponValue = try container.decode(Double.self, forKey: .couponValue)
                
            
            
            
                cartItems = try container.decode([OpenApiOrderItem].self, forKey: .cartItems)
                
            
            
            
                cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)
                
            
            
            
                do {
                    employeeDiscount = try container.decode([String: Any].self, forKey: .employeeDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                cartValue = try container.decode(Double.self, forKey: .cartValue)
                
            
            
            
                paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)
            
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
            
            
            
            
            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)
            
            
            
            
            try? container.encodeIfPresent(couponCode, forKey: .couponCode)
            
            
            
            
            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
            
            
            
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            
            
            
            try? container.encodeIfPresent(files, forKey: .files)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(couponValue, forKey: .couponValue)
            
            
            
            
            try? container.encodeIfPresent(cartItems, forKey: .cartItems)
            
            
            
            
            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
            
            
            
            
            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)
            
            
            
            
            try? container.encodeIfPresent(cartValue, forKey: .cartValue)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
        }
        
    }
    
    /*
        Model: OpenApiCheckoutResponse
        Used By: Cart
    */

    class OpenApiCheckoutResponse: Codable {
        
        
        public var success: Bool?
        
        public var orderRefId: String?
        
        public var message: String?
        
        public var orderId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case orderRefId = "order_ref_id"
            
            case message = "message"
            
            case orderId = "order_id"
            
        }

        public init(message: String?, orderId: String, orderRefId: String?, success: Bool?) {
            
            self.success = success
            
            self.orderRefId = orderRefId
            
            self.message = message
            
            self.orderId = orderId
            
        }

        public func duplicate() -> OpenApiCheckoutResponse {
            let dict = self.dictionary!
            let copy = OpenApiCheckoutResponse(dictionary: dict)!
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
                    orderRefId = try container.decode(String.self, forKey: .orderRefId)
                
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
                
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(orderRefId, forKey: .orderRefId)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
        }
        
    }
    
}
