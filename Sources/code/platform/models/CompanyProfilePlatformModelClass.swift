import Foundation


import Foundation
public extension PlatformClient {
    
    /*
        Model: Website
        Used By: CompanyProfile
    */

    class Website: Codable {
        
        
        public var url: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
        }

        public init(url: String?) {
            
            self.url = url
            
        }

        public func duplicate() -> Website {
            let dict = self.dictionary!
            let copy = Website(dictionary: dict)!
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
        }
        
    }
    
    /*
        Model: BusinessDetails
        Used By: CompanyProfile
    */

    class BusinessDetails: Codable {
        
        
        public var website: Website?
        

        public enum CodingKeys: String, CodingKey {
            
            case website = "website"
            
        }

        public init(website: Website?) {
            
            self.website = website
            
        }

        public func duplicate() -> BusinessDetails {
            let dict = self.dictionary!
            let copy = BusinessDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    website = try container.decode(Website.self, forKey: .website)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(website, forKey: .website)
            
            
        }
        
    }
    
    /*
        Model: ContactDetails
        Used By: CompanyProfile
    */

    class ContactDetails: Codable {
        
        
        public var emails: [String]?
        
        public var phone: [SellerPhoneNumber]?
        

        public enum CodingKeys: String, CodingKey {
            
            case emails = "emails"
            
            case phone = "phone"
            
        }

        public init(emails: [String]?, phone: [SellerPhoneNumber]?) {
            
            self.emails = emails
            
            self.phone = phone
            
        }

        public func duplicate() -> ContactDetails {
            let dict = self.dictionary!
            let copy = ContactDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    emails = try container.decode([String].self, forKey: .emails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    phone = try container.decode([SellerPhoneNumber].self, forKey: .phone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(emails, forKey: .emails)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
        }
        
    }
    
    /*
        Model: BusinessCountryInfo
        Used By: CompanyProfile
    */

    class BusinessCountryInfo: Codable {
        
        
        public var countryCode: String?
        
        public var country: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case countryCode = "country_code"
            
            case country = "country"
            
        }

        public init(country: String?, countryCode: String?) {
            
            self.countryCode = countryCode
            
            self.country = country
            
        }

        public func duplicate() -> BusinessCountryInfo {
            let dict = self.dictionary!
            let copy = BusinessCountryInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
        }
        
    }
    
    /*
        Model: GetCompanyProfileSerializerResponse
        Used By: CompanyProfile
    */

    class GetCompanyProfileSerializerResponse: Codable {
        
        
        public var businessDetails: BusinessDetails?
        
        public var warnings: [String: Any]?
        
        public var createdBy: UserSerializer?
        
        public var name: String?
        
        public var modifiedBy: UserSerializer?
        
        public var businessInfo: String?
        
        public var modifiedOn: String?
        
        public var uid: Int
        
        public var businessType: String
        
        public var stage: String?
        
        public var mode: String?
        
        public var notificationEmails: [String]?
        
        public var contactDetails: ContactDetails?
        
        public var businessCountryInfo: BusinessCountryInfo?
        
        public var documents: [Document]?
        
        public var franchiseEnabled: Bool?
        
        public var companyType: String
        
        public var verifiedOn: String?
        
        public var createdOn: String?
        
        public var addresses: [GetAddressSerializer]?
        
        public var verifiedBy: UserSerializer?
        

        public enum CodingKeys: String, CodingKey {
            
            case businessDetails = "business_details"
            
            case warnings = "warnings"
            
            case createdBy = "created_by"
            
            case name = "name"
            
            case modifiedBy = "modified_by"
            
            case businessInfo = "business_info"
            
            case modifiedOn = "modified_on"
            
            case uid = "uid"
            
            case businessType = "business_type"
            
            case stage = "stage"
            
            case mode = "mode"
            
            case notificationEmails = "notification_emails"
            
            case contactDetails = "contact_details"
            
            case businessCountryInfo = "business_country_info"
            
            case documents = "documents"
            
            case franchiseEnabled = "franchise_enabled"
            
            case companyType = "company_type"
            
            case verifiedOn = "verified_on"
            
            case createdOn = "created_on"
            
            case addresses = "addresses"
            
            case verifiedBy = "verified_by"
            
        }

        public init(addresses: [GetAddressSerializer]?, businessCountryInfo: BusinessCountryInfo?, businessDetails: BusinessDetails?, businessInfo: String?, businessType: String, companyType: String, contactDetails: ContactDetails?, createdBy: UserSerializer?, createdOn: String?, documents: [Document]?, franchiseEnabled: Bool?, mode: String?, modifiedBy: UserSerializer?, modifiedOn: String?, name: String?, notificationEmails: [String]?, stage: String?, uid: Int, verifiedBy: UserSerializer?, verifiedOn: String?, warnings: [String: Any]?) {
            
            self.businessDetails = businessDetails
            
            self.warnings = warnings
            
            self.createdBy = createdBy
            
            self.name = name
            
            self.modifiedBy = modifiedBy
            
            self.businessInfo = businessInfo
            
            self.modifiedOn = modifiedOn
            
            self.uid = uid
            
            self.businessType = businessType
            
            self.stage = stage
            
            self.mode = mode
            
            self.notificationEmails = notificationEmails
            
            self.contactDetails = contactDetails
            
            self.businessCountryInfo = businessCountryInfo
            
            self.documents = documents
            
            self.franchiseEnabled = franchiseEnabled
            
            self.companyType = companyType
            
            self.verifiedOn = verifiedOn
            
            self.createdOn = createdOn
            
            self.addresses = addresses
            
            self.verifiedBy = verifiedBy
            
        }

        public func duplicate() -> GetCompanyProfileSerializerResponse {
            let dict = self.dictionary!
            let copy = GetCompanyProfileSerializerResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    businessDetails = try container.decode(BusinessDetails.self, forKey: .businessDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    warnings = try container.decode([String: Any].self, forKey: .warnings)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)
                
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
                    modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    businessInfo = try container.decode(String.self, forKey: .businessInfo)
                
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
                
            
            
                uid = try container.decode(Int.self, forKey: .uid)
                
            
            
            
                businessType = try container.decode(String.self, forKey: .businessType)
                
            
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mode = try container.decode(String.self, forKey: .mode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    notificationEmails = try container.decode([String].self, forKey: .notificationEmails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    contactDetails = try container.decode(ContactDetails.self, forKey: .contactDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    businessCountryInfo = try container.decode(BusinessCountryInfo.self, forKey: .businessCountryInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    documents = try container.decode([Document].self, forKey: .documents)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    franchiseEnabled = try container.decode(Bool.self, forKey: .franchiseEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                companyType = try container.decode(String.self, forKey: .companyType)
                
            
            
            
                do {
                    verifiedOn = try container.decode(String.self, forKey: .verifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addresses = try container.decode([GetAddressSerializer].self, forKey: .addresses)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    verifiedBy = try container.decode(UserSerializer.self, forKey: .verifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(businessDetails, forKey: .businessDetails)
            
            
            
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(businessType, forKey: .businessType)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            
            
            
            try? container.encodeIfPresent(contactDetails, forKey: .contactDetails)
            
            
            
            
            try? container.encodeIfPresent(businessCountryInfo, forKey: .businessCountryInfo)
            
            
            
            
            try? container.encodeIfPresent(documents, forKey: .documents)
            
            
            
            
            try? container.encodeIfPresent(franchiseEnabled, forKey: .franchiseEnabled)
            
            
            
            
            try? container.encodeIfPresent(companyType, forKey: .companyType)
            
            
            
            
            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(addresses, forKey: .addresses)
            
            
            
            
            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)
            
            
        }
        
    }
    
    /*
        Model: CreateUpdateAddressSerializer
        Used By: CompanyProfile
    */

    class CreateUpdateAddressSerializer: Codable {
        
        
        public var latitude: Double
        
        public var longitude: Double
        
        public var address1: String
        
        public var address2: String?
        
        public var landmark: String?
        
        public var city: String
        
        public var countryCode: String?
        
        public var pincode: Int
        
        public var country: String
        
        public var addressType: String
        
        public var state: String
        

        public enum CodingKeys: String, CodingKey {
            
            case latitude = "latitude"
            
            case longitude = "longitude"
            
            case address1 = "address1"
            
            case address2 = "address2"
            
            case landmark = "landmark"
            
            case city = "city"
            
            case countryCode = "country_code"
            
            case pincode = "pincode"
            
            case country = "country"
            
            case addressType = "address_type"
            
            case state = "state"
            
        }

        public init(address1: String, address2: String?, addressType: String, city: String, country: String, countryCode: String?, landmark: String?, latitude: Double, longitude: Double, pincode: Int, state: String) {
            
            self.latitude = latitude
            
            self.longitude = longitude
            
            self.address1 = address1
            
            self.address2 = address2
            
            self.landmark = landmark
            
            self.city = city
            
            self.countryCode = countryCode
            
            self.pincode = pincode
            
            self.country = country
            
            self.addressType = addressType
            
            self.state = state
            
        }

        public func duplicate() -> CreateUpdateAddressSerializer {
            let dict = self.dictionary!
            let copy = CreateUpdateAddressSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                latitude = try container.decode(Double.self, forKey: .latitude)
                
            
            
            
                longitude = try container.decode(Double.self, forKey: .longitude)
                
            
            
            
                address1 = try container.decode(String.self, forKey: .address1)
                
            
            
            
                do {
                    address2 = try container.decode(String.self, forKey: .address2)
                
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
                
            
            
                city = try container.decode(String.self, forKey: .city)
                
            
            
            
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                pincode = try container.decode(Int.self, forKey: .pincode)
                
            
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                addressType = try container.decode(String.self, forKey: .addressType)
                
            
            
            
                state = try container.decode(String.self, forKey: .state)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
            
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            
            
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
        }
        
    }
    
    /*
        Model: UpdateCompany
        Used By: CompanyProfile
    */

    class UpdateCompany: Codable {
        
        
        public var documents: [Document]?
        
        public var businessInfo: String?
        
        public var rejectReason: String?
        
        public var franchiseEnabled: Bool?
        
        public var businessDetails: BusinessDetails?
        
        public var customJson: [String: Any]?
        
        public var companyType: String?
        
        public var warnings: [String: Any]?
        
        public var notificationEmails: [String]?
        
        public var addresses: [CreateUpdateAddressSerializer]?
        
        public var businessType: String?
        
        public var name: String?
        
        public var contactDetails: ContactDetails?
        

        public enum CodingKeys: String, CodingKey {
            
            case documents = "documents"
            
            case businessInfo = "business_info"
            
            case rejectReason = "reject_reason"
            
            case franchiseEnabled = "franchise_enabled"
            
            case businessDetails = "business_details"
            
            case customJson = "_custom_json"
            
            case companyType = "company_type"
            
            case warnings = "warnings"
            
            case notificationEmails = "notification_emails"
            
            case addresses = "addresses"
            
            case businessType = "business_type"
            
            case name = "name"
            
            case contactDetails = "contact_details"
            
        }

        public init(addresses: [CreateUpdateAddressSerializer]?, businessDetails: BusinessDetails?, businessInfo: String?, businessType: String?, companyType: String?, contactDetails: ContactDetails?, documents: [Document]?, franchiseEnabled: Bool?, name: String?, notificationEmails: [String]?, rejectReason: String?, warnings: [String: Any]?, customJson: [String: Any]?) {
            
            self.documents = documents
            
            self.businessInfo = businessInfo
            
            self.rejectReason = rejectReason
            
            self.franchiseEnabled = franchiseEnabled
            
            self.businessDetails = businessDetails
            
            self.customJson = customJson
            
            self.companyType = companyType
            
            self.warnings = warnings
            
            self.notificationEmails = notificationEmails
            
            self.addresses = addresses
            
            self.businessType = businessType
            
            self.name = name
            
            self.contactDetails = contactDetails
            
        }

        public func duplicate() -> UpdateCompany {
            let dict = self.dictionary!
            let copy = UpdateCompany(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    documents = try container.decode([Document].self, forKey: .documents)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    businessInfo = try container.decode(String.self, forKey: .businessInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rejectReason = try container.decode(String.self, forKey: .rejectReason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    franchiseEnabled = try container.decode(Bool.self, forKey: .franchiseEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    businessDetails = try container.decode(BusinessDetails.self, forKey: .businessDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyType = try container.decode(String.self, forKey: .companyType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    warnings = try container.decode([String: Any].self, forKey: .warnings)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    notificationEmails = try container.decode([String].self, forKey: .notificationEmails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addresses = try container.decode([CreateUpdateAddressSerializer].self, forKey: .addresses)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    businessType = try container.decode(String.self, forKey: .businessType)
                
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
                    contactDetails = try container.decode(ContactDetails.self, forKey: .contactDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(documents, forKey: .documents)
            
            
            
            
            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)
            
            
            
            
            try? container.encodeIfPresent(rejectReason, forKey: .rejectReason)
            
            
            
            
            try? container.encodeIfPresent(franchiseEnabled, forKey: .franchiseEnabled)
            
            
            
            
            try? container.encodeIfPresent(businessDetails, forKey: .businessDetails)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(companyType, forKey: .companyType)
            
            
            
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
            
            
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            
            
            
            try? container.encodeIfPresent(addresses, forKey: .addresses)
            
            
            
            
            try? container.encodeIfPresent(businessType, forKey: .businessType)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(contactDetails, forKey: .contactDetails)
            
            
        }
        
    }
    
    /*
        Model: DocumentsObj
        Used By: CompanyProfile
    */

    class DocumentsObj: Codable {
        
        
        public var pending: Int?
        
        public var verified: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case pending = "pending"
            
            case verified = "verified"
            
        }

        public init(pending: Int?, verified: Int?) {
            
            self.pending = pending
            
            self.verified = verified
            
        }

        public func duplicate() -> DocumentsObj {
            let dict = self.dictionary!
            let copy = DocumentsObj(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pending = try container.decode(Int.self, forKey: .pending)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    verified = try container.decode(Int.self, forKey: .verified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pending, forKey: .pending)
            
            
            
            
            try? container.encodeIfPresent(verified, forKey: .verified)
            
            
        }
        
    }
    
    /*
        Model: MetricsSerializer
        Used By: CompanyProfile
    */

    class MetricsSerializer: Codable {
        
        
        public var brand: DocumentsObj?
        
        public var storeDocuments: DocumentsObj?
        
        public var store: DocumentsObj?
        
        public var product: DocumentsObj?
        
        public var uid: Int?
        
        public var stage: String?
        
        public var companyDocuments: DocumentsObj?
        

        public enum CodingKeys: String, CodingKey {
            
            case brand = "brand"
            
            case storeDocuments = "store_documents"
            
            case store = "store"
            
            case product = "product"
            
            case uid = "uid"
            
            case stage = "stage"
            
            case companyDocuments = "company_documents"
            
        }

        public init(brand: DocumentsObj?, companyDocuments: DocumentsObj?, product: DocumentsObj?, stage: String?, store: DocumentsObj?, storeDocuments: DocumentsObj?, uid: Int?) {
            
            self.brand = brand
            
            self.storeDocuments = storeDocuments
            
            self.store = store
            
            self.product = product
            
            self.uid = uid
            
            self.stage = stage
            
            self.companyDocuments = companyDocuments
            
        }

        public func duplicate() -> MetricsSerializer {
            let dict = self.dictionary!
            let copy = MetricsSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    brand = try container.decode(DocumentsObj.self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeDocuments = try container.decode(DocumentsObj.self, forKey: .storeDocuments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    store = try container.decode(DocumentsObj.self, forKey: .store)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    product = try container.decode(DocumentsObj.self, forKey: .product)
                
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
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyDocuments = try container.decode(DocumentsObj.self, forKey: .companyDocuments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(storeDocuments, forKey: .storeDocuments)
            
            
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(companyDocuments, forKey: .companyDocuments)
            
            
        }
        
    }
    
    /*
        Model: BrandBannerSerializer
        Used By: CompanyProfile
    */

    class BrandBannerSerializer: Codable {
        
        
        public var landscape: String?
        
        public var portrait: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case landscape = "landscape"
            
            case portrait = "portrait"
            
        }

        public init(landscape: String?, portrait: String?) {
            
            self.landscape = landscape
            
            self.portrait = portrait
            
        }

        public func duplicate() -> BrandBannerSerializer {
            let dict = self.dictionary!
            let copy = BrandBannerSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    landscape = try container.decode(String.self, forKey: .landscape)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    portrait = try container.decode(String.self, forKey: .portrait)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(landscape, forKey: .landscape)
            
            
            
            
            try? container.encodeIfPresent(portrait, forKey: .portrait)
            
            
        }
        
    }
    
    /*
        Model: GetBrandResponseSerializer
        Used By: CompanyProfile
    */

    class GetBrandResponseSerializer: Codable {
        
        
        public var logo: String?
        
        public var description: String?
        
        public var warnings: [String: Any]?
        
        public var createdBy: UserSerializer1?
        
        public var name: String
        
        public var modifiedBy: UserSerializer1?
        
        public var rejectReason: String?
        
        public var modifiedOn: String?
        
        public var uid: Int?
        
        public var synonyms: [String]?
        
        public var stage: String?
        
        public var mode: String?
        
        public var localeLanguage: [String: Any]?
        
        public var slugKey: String?
        
        public var banner: BrandBannerSerializer?
        
        public var verifiedOn: String?
        
        public var createdOn: String?
        
        public var verifiedBy: UserSerializer1?
        
        public var customJson: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case logo = "logo"
            
            case description = "description"
            
            case warnings = "warnings"
            
            case createdBy = "created_by"
            
            case name = "name"
            
            case modifiedBy = "modified_by"
            
            case rejectReason = "reject_reason"
            
            case modifiedOn = "modified_on"
            
            case uid = "uid"
            
            case synonyms = "synonyms"
            
            case stage = "stage"
            
            case mode = "mode"
            
            case localeLanguage = "_locale_language"
            
            case slugKey = "slug_key"
            
            case banner = "banner"
            
            case verifiedOn = "verified_on"
            
            case createdOn = "created_on"
            
            case verifiedBy = "verified_by"
            
            case customJson = "_custom_json"
            
        }

        public init(banner: BrandBannerSerializer?, createdBy: UserSerializer1?, createdOn: String?, description: String?, logo: String?, mode: String?, modifiedBy: UserSerializer1?, modifiedOn: String?, name: String, rejectReason: String?, slugKey: String?, stage: String?, synonyms: [String]?, uid: Int?, verifiedBy: UserSerializer1?, verifiedOn: String?, warnings: [String: Any]?, customJson: [String: Any]?, localeLanguage: [String: Any]?) {
            
            self.logo = logo
            
            self.description = description
            
            self.warnings = warnings
            
            self.createdBy = createdBy
            
            self.name = name
            
            self.modifiedBy = modifiedBy
            
            self.rejectReason = rejectReason
            
            self.modifiedOn = modifiedOn
            
            self.uid = uid
            
            self.synonyms = synonyms
            
            self.stage = stage
            
            self.mode = mode
            
            self.localeLanguage = localeLanguage
            
            self.slugKey = slugKey
            
            self.banner = banner
            
            self.verifiedOn = verifiedOn
            
            self.createdOn = createdOn
            
            self.verifiedBy = verifiedBy
            
            self.customJson = customJson
            
        }

        public func duplicate() -> GetBrandResponseSerializer {
            let dict = self.dictionary!
            let copy = GetBrandResponseSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
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
                    warnings = try container.decode([String: Any].self, forKey: .warnings)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(UserSerializer1.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    modifiedBy = try container.decode(UserSerializer1.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rejectReason = try container.decode(String.self, forKey: .rejectReason)
                
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
                
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    synonyms = try container.decode([String].self, forKey: .synonyms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mode = try container.decode(String.self, forKey: .mode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    localeLanguage = try container.decode([String: Any].self, forKey: .localeLanguage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    slugKey = try container.decode(String.self, forKey: .slugKey)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    banner = try container.decode(BrandBannerSerializer.self, forKey: .banner)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    verifiedOn = try container.decode(String.self, forKey: .verifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    verifiedBy = try container.decode(UserSerializer1.self, forKey: .verifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(rejectReason, forKey: .rejectReason)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(synonyms, forKey: .synonyms)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)
            
            
            
            
            try? container.encodeIfPresent(slugKey, forKey: .slugKey)
            
            
            
            
            try? container.encodeIfPresent(banner, forKey: .banner)
            
            
            
            
            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
        }
        
    }
    
    /*
        Model: CreateUpdateBrandRequestSerializer
        Used By: CompanyProfile
    */

    class CreateUpdateBrandRequestSerializer: Codable {
        
        
        public var logo: String
        
        public var companyId: Int?
        
        public var description: String?
        
        public var banner: BrandBannerSerializer?
        
        public var uid: Int?
        
        public var synonyms: [String]?
        
        public var brandTier: String?
        
        public var name: String
        
        public var customJson: [String: Any]?
        
        public var localeLanguage: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case logo = "logo"
            
            case companyId = "company_id"
            
            case description = "description"
            
            case banner = "banner"
            
            case uid = "uid"
            
            case synonyms = "synonyms"
            
            case brandTier = "brand_tier"
            
            case name = "name"
            
            case customJson = "_custom_json"
            
            case localeLanguage = "_locale_language"
            
        }

        public init(banner: BrandBannerSerializer?, brandTier: String?, companyId: Int?, description: String?, logo: String, name: String, synonyms: [String]?, uid: Int?, customJson: [String: Any]?, localeLanguage: [String: Any]?) {
            
            self.logo = logo
            
            self.companyId = companyId
            
            self.description = description
            
            self.banner = banner
            
            self.uid = uid
            
            self.synonyms = synonyms
            
            self.brandTier = brandTier
            
            self.name = name
            
            self.customJson = customJson
            
            self.localeLanguage = localeLanguage
            
        }

        public func duplicate() -> CreateUpdateBrandRequestSerializer {
            let dict = self.dictionary!
            let copy = CreateUpdateBrandRequestSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                logo = try container.decode(String.self, forKey: .logo)
                
            
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
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
                    banner = try container.decode(BrandBannerSerializer.self, forKey: .banner)
                
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
                    synonyms = try container.decode([String].self, forKey: .synonyms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandTier = try container.decode(String.self, forKey: .brandTier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    localeLanguage = try container.decode([String: Any].self, forKey: .localeLanguage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(banner, forKey: .banner)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(synonyms, forKey: .synonyms)
            
            
            
            
            try? container.encodeIfPresent(brandTier, forKey: .brandTier)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)
            
            
        }
        
    }
    
    /*
        Model: CompanyBrandPostRequestSerializer
        Used By: CompanyProfile
    */

    class CompanyBrandPostRequestSerializer: Codable {
        
        
        public var brands: [Int]
        
        public var uid: Int?
        
        public var company: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case brands = "brands"
            
            case uid = "uid"
            
            case company = "company"
            
        }

        public init(brands: [Int], company: Int, uid: Int?) {
            
            self.brands = brands
            
            self.uid = uid
            
            self.company = company
            
        }

        public func duplicate() -> CompanyBrandPostRequestSerializer {
            let dict = self.dictionary!
            let copy = CompanyBrandPostRequestSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                brands = try container.decode([Int].self, forKey: .brands)
                
            
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                company = try container.decode(Int.self, forKey: .company)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(brands, forKey: .brands)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
        }
        
    }
    
    /*
        Model: CompanyBrandSerializer
        Used By: CompanyProfile
    */

    class CompanyBrandSerializer: Codable {
        
        
        public var rejectReason: String?
        
        public var brand: GetBrandResponseSerializer?
        
        public var company: GetCompanySerializer?
        
        public var warnings: [String: Any]?
        
        public var verifiedOn: String?
        
        public var modifiedOn: String?
        
        public var createdOn: String?
        
        public var uid: Int?
        
        public var createdBy: UserSerializer1?
        
        public var stage: String?
        
        public var verifiedBy: UserSerializer1?
        
        public var modifiedBy: UserSerializer1?
        

        public enum CodingKeys: String, CodingKey {
            
            case rejectReason = "reject_reason"
            
            case brand = "brand"
            
            case company = "company"
            
            case warnings = "warnings"
            
            case verifiedOn = "verified_on"
            
            case modifiedOn = "modified_on"
            
            case createdOn = "created_on"
            
            case uid = "uid"
            
            case createdBy = "created_by"
            
            case stage = "stage"
            
            case verifiedBy = "verified_by"
            
            case modifiedBy = "modified_by"
            
        }

        public init(brand: GetBrandResponseSerializer?, company: GetCompanySerializer?, createdBy: UserSerializer1?, createdOn: String?, modifiedBy: UserSerializer1?, modifiedOn: String?, rejectReason: String?, stage: String?, uid: Int?, verifiedBy: UserSerializer1?, verifiedOn: String?, warnings: [String: Any]?) {
            
            self.rejectReason = rejectReason
            
            self.brand = brand
            
            self.company = company
            
            self.warnings = warnings
            
            self.verifiedOn = verifiedOn
            
            self.modifiedOn = modifiedOn
            
            self.createdOn = createdOn
            
            self.uid = uid
            
            self.createdBy = createdBy
            
            self.stage = stage
            
            self.verifiedBy = verifiedBy
            
            self.modifiedBy = modifiedBy
            
        }

        public func duplicate() -> CompanyBrandSerializer {
            let dict = self.dictionary!
            let copy = CompanyBrandSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    rejectReason = try container.decode(String.self, forKey: .rejectReason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brand = try container.decode(GetBrandResponseSerializer.self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    company = try container.decode(GetCompanySerializer.self, forKey: .company)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    warnings = try container.decode([String: Any].self, forKey: .warnings)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    verifiedOn = try container.decode(String.self, forKey: .verifiedOn)
                
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
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
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
                    createdBy = try container.decode(UserSerializer1.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    verifiedBy = try container.decode(UserSerializer1.self, forKey: .verifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(UserSerializer1.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(rejectReason, forKey: .rejectReason)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
            
            
            
            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
        }
        
    }
    
    /*
        Model: CompanyBrandListSerializer
        Used By: CompanyProfile
    */

    class CompanyBrandListSerializer: Codable {
        
        
        public var page: Page?
        
        public var items: [CompanyBrandSerializer]?
        

        public enum CodingKeys: String, CodingKey {
            
            case page = "page"
            
            case items = "items"
            
        }

        public init(items: [CompanyBrandSerializer]?, page: Page?) {
            
            self.page = page
            
            self.items = items
            
        }

        public func duplicate() -> CompanyBrandListSerializer {
            let dict = self.dictionary!
            let copy = CompanyBrandListSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([CompanyBrandSerializer].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
    
    /*
        Model: GetAddressSerializer1
        Used By: CompanyProfile
    */

    class GetAddressSerializer1: Codable {
        
        
        public var latitude: Double?
        
        public var longitude: Double?
        
        public var address2: String?
        
        public var address1: String?
        
        public var landmark: String?
        
        public var city: String?
        
        public var countryCode: String?
        
        public var pincode: Int?
        
        public var country: String?
        
        public var addressType: String?
        
        public var state: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case latitude = "latitude"
            
            case longitude = "longitude"
            
            case address2 = "address2"
            
            case address1 = "address1"
            
            case landmark = "landmark"
            
            case city = "city"
            
            case countryCode = "country_code"
            
            case pincode = "pincode"
            
            case country = "country"
            
            case addressType = "address_type"
            
            case state = "state"
            
        }

        public init(address1: String?, address2: String?, addressType: String?, city: String?, country: String?, countryCode: String?, landmark: String?, latitude: Double?, longitude: Double?, pincode: Int?, state: String?) {
            
            self.latitude = latitude
            
            self.longitude = longitude
            
            self.address2 = address2
            
            self.address1 = address1
            
            self.landmark = landmark
            
            self.city = city
            
            self.countryCode = countryCode
            
            self.pincode = pincode
            
            self.country = country
            
            self.addressType = addressType
            
            self.state = state
            
        }

        public func duplicate() -> GetAddressSerializer1 {
            let dict = self.dictionary!
            let copy = GetAddressSerializer1(dictionary: dict)!
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
                
            
            
                do {
                    address2 = try container.decode(String.self, forKey: .address2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address1 = try container.decode(String.self, forKey: .address1)
                
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
                    city = try container.decode(String.self, forKey: .city)
                
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
                    pincode = try container.decode(Int.self, forKey: .pincode)
                
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
                    state = try container.decode(String.self, forKey: .state)
                
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
            
            
            
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
        }
        
    }
    
    /*
        Model: LocationSerializer
        Used By: CompanyProfile
    */

    class LocationSerializer: Codable {
        
        
        public var productReturnConfig: ProductReturnConfigSerializer?
        
        public var documents: [Document]?
        
        public var contactNumbers: [SellerPhoneNumber]?
        
        public var gstCredentials: InvoiceDetailsSerializer?
        
        public var timing: [LocationDayWiseSerializer]?
        
        public var displayName: String
        
        public var company: Int
        
        public var storeType: String?
        
        public var customJson: [String: Any]?
        
        public var warnings: [String: Any]?
        
        public var manager: LocationManagerSerializer?
        
        public var uid: Int?
        
        public var notificationEmails: [String]?
        
        public var stage: String?
        
        public var name: String
        
        public var code: String
        
        public var address: GetAddressSerializer1
        

        public enum CodingKeys: String, CodingKey {
            
            case productReturnConfig = "product_return_config"
            
            case documents = "documents"
            
            case contactNumbers = "contact_numbers"
            
            case gstCredentials = "gst_credentials"
            
            case timing = "timing"
            
            case displayName = "display_name"
            
            case company = "company"
            
            case storeType = "store_type"
            
            case customJson = "_custom_json"
            
            case warnings = "warnings"
            
            case manager = "manager"
            
            case uid = "uid"
            
            case notificationEmails = "notification_emails"
            
            case stage = "stage"
            
            case name = "name"
            
            case code = "code"
            
            case address = "address"
            
        }

        public init(address: GetAddressSerializer1, code: String, company: Int, contactNumbers: [SellerPhoneNumber]?, displayName: String, documents: [Document]?, gstCredentials: InvoiceDetailsSerializer?, manager: LocationManagerSerializer?, name: String, notificationEmails: [String]?, productReturnConfig: ProductReturnConfigSerializer?, stage: String?, storeType: String?, timing: [LocationDayWiseSerializer]?, uid: Int?, warnings: [String: Any]?, customJson: [String: Any]?) {
            
            self.productReturnConfig = productReturnConfig
            
            self.documents = documents
            
            self.contactNumbers = contactNumbers
            
            self.gstCredentials = gstCredentials
            
            self.timing = timing
            
            self.displayName = displayName
            
            self.company = company
            
            self.storeType = storeType
            
            self.customJson = customJson
            
            self.warnings = warnings
            
            self.manager = manager
            
            self.uid = uid
            
            self.notificationEmails = notificationEmails
            
            self.stage = stage
            
            self.name = name
            
            self.code = code
            
            self.address = address
            
        }

        public func duplicate() -> LocationSerializer {
            let dict = self.dictionary!
            let copy = LocationSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    productReturnConfig = try container.decode(ProductReturnConfigSerializer.self, forKey: .productReturnConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    documents = try container.decode([Document].self, forKey: .documents)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    contactNumbers = try container.decode([SellerPhoneNumber].self, forKey: .contactNumbers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstCredentials = try container.decode(InvoiceDetailsSerializer.self, forKey: .gstCredentials)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    timing = try container.decode([LocationDayWiseSerializer].self, forKey: .timing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                company = try container.decode(Int.self, forKey: .company)
                
            
            
            
                do {
                    storeType = try container.decode(String.self, forKey: .storeType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    warnings = try container.decode([String: Any].self, forKey: .warnings)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    manager = try container.decode(LocationManagerSerializer.self, forKey: .manager)
                
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
                    notificationEmails = try container.decode([String].self, forKey: .notificationEmails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
            
                address = try container.decode(GetAddressSerializer1.self, forKey: .address)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)
            
            
            
            
            try? container.encodeIfPresent(documents, forKey: .documents)
            
            
            
            
            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)
            
            
            
            
            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)
            
            
            
            
            try? container.encodeIfPresent(timing, forKey: .timing)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(storeType, forKey: .storeType)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
            
            
            
            try? container.encodeIfPresent(manager, forKey: .manager)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
        }
        
    }
    
    /*
        Model: BulkLocationSerializer
        Used By: CompanyProfile
    */

    class BulkLocationSerializer: Codable {
        
        
        public var data: [LocationSerializer]?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
        }

        public init(data: [LocationSerializer]?) {
            
            self.data = data
            
        }

        public func duplicate() -> BulkLocationSerializer {
            let dict = self.dictionary!
            let copy = BulkLocationSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode([LocationSerializer].self, forKey: .data)
                
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
    
}
