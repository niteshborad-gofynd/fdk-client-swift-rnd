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
        Model: CreateUpdateAddressSerializer
        Used By: CompanyProfile
    */

    class CreateUpdateAddressSerializer: Codable {
        
        
        public var address2: String?
        
        public var addressType: String
        
        public var city: String
        
        public var longitude: Double
        
        public var pincode: Int
        
        public var country: String
        
        public var latitude: Double
        
        public var landmark: String?
        
        public var address1: String
        
        public var countryCode: String?
        
        public var state: String
        

        public enum CodingKeys: String, CodingKey {
            
            case address2 = "address2"
            
            case addressType = "address_type"
            
            case city = "city"
            
            case longitude = "longitude"
            
            case pincode = "pincode"
            
            case country = "country"
            
            case latitude = "latitude"
            
            case landmark = "landmark"
            
            case address1 = "address1"
            
            case countryCode = "country_code"
            
            case state = "state"
            
        }

        public init(address1: String, address2: String?, addressType: String, city: String, country: String, countryCode: String?, landmark: String?, latitude: Double, longitude: Double, pincode: Int, state: String) {
            
            self.address2 = address2
            
            self.addressType = addressType
            
            self.city = city
            
            self.longitude = longitude
            
            self.pincode = pincode
            
            self.country = country
            
            self.latitude = latitude
            
            self.landmark = landmark
            
            self.address1 = address1
            
            self.countryCode = countryCode
            
            self.state = state
            
        }

        public func duplicate() -> CreateUpdateAddressSerializer {
            let dict = self.dictionary!
            let copy = CreateUpdateAddressSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    address2 = try container.decode(String.self, forKey: .address2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                addressType = try container.decode(String.self, forKey: .addressType)
                
            
            
            
                city = try container.decode(String.self, forKey: .city)
                
            
            
            
                longitude = try container.decode(Double.self, forKey: .longitude)
                
            
            
            
                pincode = try container.decode(Int.self, forKey: .pincode)
                
            
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                latitude = try container.decode(Double.self, forKey: .latitude)
                
            
            
            
                do {
                    landmark = try container.decode(String.self, forKey: .landmark)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                address1 = try container.decode(String.self, forKey: .address1)
                
            
            
            
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                state = try container.decode(String.self, forKey: .state)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            
            
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
            
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
        }
        
    }
    
    /*
        Model: ContactDetails
        Used By: CompanyProfile
    */

    class ContactDetails: Codable {
        
        
        public var phone: [SellerPhoneNumber]?
        
        public var emails: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case phone = "phone"
            
            case emails = "emails"
            
        }

        public init(emails: [String]?, phone: [SellerPhoneNumber]?) {
            
            self.phone = phone
            
            self.emails = emails
            
        }

        public func duplicate() -> ContactDetails {
            let dict = self.dictionary!
            let copy = ContactDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    phone = try container.decode([SellerPhoneNumber].self, forKey: .phone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    emails = try container.decode([String].self, forKey: .emails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(emails, forKey: .emails)
            
            
        }
        
    }
    
    /*
        Model: UpdateCompany
        Used By: CompanyProfile
    */

    class UpdateCompany: Codable {
        
        
        public var businessDetails: BusinessDetails?
        
        public var notificationEmails: [String]?
        
        public var addresses: [CreateUpdateAddressSerializer]?
        
        public var franchiseEnabled: Bool?
        
        public var customJson: [String: Any]?
        
        public var warnings: [String: Any]?
        
        public var companyType: String?
        
        public var documents: [Document]?
        
        public var name: String?
        
        public var businessInfo: String?
        
        public var contactDetails: ContactDetails?
        
        public var businessType: String?
        
        public var rejectReason: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case businessDetails = "business_details"
            
            case notificationEmails = "notification_emails"
            
            case addresses = "addresses"
            
            case franchiseEnabled = "franchise_enabled"
            
            case customJson = "_custom_json"
            
            case warnings = "warnings"
            
            case companyType = "company_type"
            
            case documents = "documents"
            
            case name = "name"
            
            case businessInfo = "business_info"
            
            case contactDetails = "contact_details"
            
            case businessType = "business_type"
            
            case rejectReason = "reject_reason"
            
        }

        public init(addresses: [CreateUpdateAddressSerializer]?, businessDetails: BusinessDetails?, businessInfo: String?, businessType: String?, companyType: String?, contactDetails: ContactDetails?, documents: [Document]?, franchiseEnabled: Bool?, name: String?, notificationEmails: [String]?, rejectReason: String?, warnings: [String: Any]?, customJson: [String: Any]?) {
            
            self.businessDetails = businessDetails
            
            self.notificationEmails = notificationEmails
            
            self.addresses = addresses
            
            self.franchiseEnabled = franchiseEnabled
            
            self.customJson = customJson
            
            self.warnings = warnings
            
            self.companyType = companyType
            
            self.documents = documents
            
            self.name = name
            
            self.businessInfo = businessInfo
            
            self.contactDetails = contactDetails
            
            self.businessType = businessType
            
            self.rejectReason = rejectReason
            
        }

        public func duplicate() -> UpdateCompany {
            let dict = self.dictionary!
            let copy = UpdateCompany(dictionary: dict)!
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
                    franchiseEnabled = try container.decode(Bool.self, forKey: .franchiseEnabled)
                
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
                    companyType = try container.decode(String.self, forKey: .companyType)
                
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
                    name = try container.decode(String.self, forKey: .name)
                
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
                    contactDetails = try container.decode(ContactDetails.self, forKey: .contactDetails)
                
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
                    rejectReason = try container.decode(String.self, forKey: .rejectReason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(businessDetails, forKey: .businessDetails)
            
            
            
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            
            
            
            try? container.encodeIfPresent(addresses, forKey: .addresses)
            
            
            
            
            try? container.encodeIfPresent(franchiseEnabled, forKey: .franchiseEnabled)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
            
            
            
            try? container.encodeIfPresent(companyType, forKey: .companyType)
            
            
            
            
            try? container.encodeIfPresent(documents, forKey: .documents)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)
            
            
            
            
            try? container.encodeIfPresent(contactDetails, forKey: .contactDetails)
            
            
            
            
            try? container.encodeIfPresent(businessType, forKey: .businessType)
            
            
            
            
            try? container.encodeIfPresent(rejectReason, forKey: .rejectReason)
            
            
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
        
        
        public var addresses: [GetAddressSerializer]?
        
        public var warnings: [String: Any]?
        
        public var verifiedBy: UserSerializer?
        
        public var verifiedOn: String?
        
        public var franchiseEnabled: Bool?
        
        public var mode: String?
        
        public var stage: String?
        
        public var createdOn: String?
        
        public var uid: Int
        
        public var createdBy: UserSerializer?
        
        public var documents: [Document]?
        
        public var businessInfo: String?
        
        public var businessDetails: BusinessDetails?
        
        public var modifiedOn: String?
        
        public var notificationEmails: [String]?
        
        public var businessCountryInfo: BusinessCountryInfo?
        
        public var companyType: String
        
        public var name: String?
        
        public var contactDetails: ContactDetails?
        
        public var modifiedBy: UserSerializer?
        
        public var businessType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case addresses = "addresses"
            
            case warnings = "warnings"
            
            case verifiedBy = "verified_by"
            
            case verifiedOn = "verified_on"
            
            case franchiseEnabled = "franchise_enabled"
            
            case mode = "mode"
            
            case stage = "stage"
            
            case createdOn = "created_on"
            
            case uid = "uid"
            
            case createdBy = "created_by"
            
            case documents = "documents"
            
            case businessInfo = "business_info"
            
            case businessDetails = "business_details"
            
            case modifiedOn = "modified_on"
            
            case notificationEmails = "notification_emails"
            
            case businessCountryInfo = "business_country_info"
            
            case companyType = "company_type"
            
            case name = "name"
            
            case contactDetails = "contact_details"
            
            case modifiedBy = "modified_by"
            
            case businessType = "business_type"
            
        }

        public init(addresses: [GetAddressSerializer]?, businessCountryInfo: BusinessCountryInfo?, businessDetails: BusinessDetails?, businessInfo: String?, businessType: String, companyType: String, contactDetails: ContactDetails?, createdBy: UserSerializer?, createdOn: String?, documents: [Document]?, franchiseEnabled: Bool?, mode: String?, modifiedBy: UserSerializer?, modifiedOn: String?, name: String?, notificationEmails: [String]?, stage: String?, uid: Int, verifiedBy: UserSerializer?, verifiedOn: String?, warnings: [String: Any]?) {
            
            self.addresses = addresses
            
            self.warnings = warnings
            
            self.verifiedBy = verifiedBy
            
            self.verifiedOn = verifiedOn
            
            self.franchiseEnabled = franchiseEnabled
            
            self.mode = mode
            
            self.stage = stage
            
            self.createdOn = createdOn
            
            self.uid = uid
            
            self.createdBy = createdBy
            
            self.documents = documents
            
            self.businessInfo = businessInfo
            
            self.businessDetails = businessDetails
            
            self.modifiedOn = modifiedOn
            
            self.notificationEmails = notificationEmails
            
            self.businessCountryInfo = businessCountryInfo
            
            self.companyType = companyType
            
            self.name = name
            
            self.contactDetails = contactDetails
            
            self.modifiedBy = modifiedBy
            
            self.businessType = businessType
            
        }

        public func duplicate() -> GetCompanyProfileSerializerResponse {
            let dict = self.dictionary!
            let copy = GetCompanyProfileSerializerResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    addresses = try container.decode([GetAddressSerializer].self, forKey: .addresses)
                
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
                    verifiedBy = try container.decode(UserSerializer.self, forKey: .verifiedBy)
                
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
                    franchiseEnabled = try container.decode(Bool.self, forKey: .franchiseEnabled)
                
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
                    stage = try container.decode(String.self, forKey: .stage)
                
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
                
            
            
                uid = try container.decode(Int.self, forKey: .uid)
                
            
            
            
                do {
                    createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)
                
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
                    businessInfo = try container.decode(String.self, forKey: .businessInfo)
                
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
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
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
                    businessCountryInfo = try container.decode(BusinessCountryInfo.self, forKey: .businessCountryInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                companyType = try container.decode(String.self, forKey: .companyType)
                
            
            
            
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
                
            
            
                do {
                    modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                businessType = try container.decode(String.self, forKey: .businessType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(addresses, forKey: .addresses)
            
            
            
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
            
            
            
            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)
            
            
            
            
            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
            
            
            
            
            try? container.encodeIfPresent(franchiseEnabled, forKey: .franchiseEnabled)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(documents, forKey: .documents)
            
            
            
            
            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)
            
            
            
            
            try? container.encodeIfPresent(businessDetails, forKey: .businessDetails)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            
            
            
            try? container.encodeIfPresent(businessCountryInfo, forKey: .businessCountryInfo)
            
            
            
            
            try? container.encodeIfPresent(companyType, forKey: .companyType)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(contactDetails, forKey: .contactDetails)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(businessType, forKey: .businessType)
            
            
        }
        
    }
    
    /*
        Model: DocumentsObj
        Used By: CompanyProfile
    */

    class DocumentsObj: Codable {
        
        
        public var verified: Int?
        
        public var pending: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case verified = "verified"
            
            case pending = "pending"
            
        }

        public init(pending: Int?, verified: Int?) {
            
            self.verified = verified
            
            self.pending = pending
            
        }

        public func duplicate() -> DocumentsObj {
            let dict = self.dictionary!
            let copy = DocumentsObj(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    verified = try container.decode(Int.self, forKey: .verified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pending = try container.decode(Int.self, forKey: .pending)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(verified, forKey: .verified)
            
            
            
            
            try? container.encodeIfPresent(pending, forKey: .pending)
            
            
        }
        
    }
    
    /*
        Model: MetricsSerializer
        Used By: CompanyProfile
    */

    class MetricsSerializer: Codable {
        
        
        public var stage: String?
        
        public var product: DocumentsObj?
        
        public var brand: DocumentsObj?
        
        public var companyDocuments: DocumentsObj?
        
        public var storeDocuments: DocumentsObj?
        
        public var uid: Int?
        
        public var store: DocumentsObj?
        

        public enum CodingKeys: String, CodingKey {
            
            case stage = "stage"
            
            case product = "product"
            
            case brand = "brand"
            
            case companyDocuments = "company_documents"
            
            case storeDocuments = "store_documents"
            
            case uid = "uid"
            
            case store = "store"
            
        }

        public init(brand: DocumentsObj?, companyDocuments: DocumentsObj?, product: DocumentsObj?, stage: String?, store: DocumentsObj?, storeDocuments: DocumentsObj?, uid: Int?) {
            
            self.stage = stage
            
            self.product = product
            
            self.brand = brand
            
            self.companyDocuments = companyDocuments
            
            self.storeDocuments = storeDocuments
            
            self.uid = uid
            
            self.store = store
            
        }

        public func duplicate() -> MetricsSerializer {
            let dict = self.dictionary!
            let copy = MetricsSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                
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
                    brand = try container.decode(DocumentsObj.self, forKey: .brand)
                
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
                
            
            
                do {
                    storeDocuments = try container.decode(DocumentsObj.self, forKey: .storeDocuments)
                
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
                    store = try container.decode(DocumentsObj.self, forKey: .store)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(companyDocuments, forKey: .companyDocuments)
            
            
            
            
            try? container.encodeIfPresent(storeDocuments, forKey: .storeDocuments)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
        }
        
    }
    
    /*
        Model: BrandBannerSerializer
        Used By: CompanyProfile
    */

    class BrandBannerSerializer: Codable {
        
        
        public var portrait: String?
        
        public var landscape: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case portrait = "portrait"
            
            case landscape = "landscape"
            
        }

        public init(landscape: String?, portrait: String?) {
            
            self.portrait = portrait
            
            self.landscape = landscape
            
        }

        public func duplicate() -> BrandBannerSerializer {
            let dict = self.dictionary!
            let copy = BrandBannerSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    portrait = try container.decode(String.self, forKey: .portrait)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    landscape = try container.decode(String.self, forKey: .landscape)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(portrait, forKey: .portrait)
            
            
            
            
            try? container.encodeIfPresent(landscape, forKey: .landscape)
            
            
        }
        
    }
    
    /*
        Model: CreateUpdateBrandRequestSerializer
        Used By: CompanyProfile
    */

    class CreateUpdateBrandRequestSerializer: Codable {
        
        
        public var logo: String
        
        public var customJson: [String: Any]?
        
        public var synonyms: [String]?
        
        public var localeLanguage: [String: Any]?
        
        public var description: String?
        
        public var companyId: Int?
        
        public var brandTier: String?
        
        public var name: String
        
        public var uid: Int?
        
        public var banner: BrandBannerSerializer?
        

        public enum CodingKeys: String, CodingKey {
            
            case logo = "logo"
            
            case customJson = "_custom_json"
            
            case synonyms = "synonyms"
            
            case localeLanguage = "_locale_language"
            
            case description = "description"
            
            case companyId = "company_id"
            
            case brandTier = "brand_tier"
            
            case name = "name"
            
            case uid = "uid"
            
            case banner = "banner"
            
        }

        public init(banner: BrandBannerSerializer?, brandTier: String?, companyId: Int?, description: String?, logo: String, name: String, synonyms: [String]?, uid: Int?, customJson: [String: Any]?, localeLanguage: [String: Any]?) {
            
            self.logo = logo
            
            self.customJson = customJson
            
            self.synonyms = synonyms
            
            self.localeLanguage = localeLanguage
            
            self.description = description
            
            self.companyId = companyId
            
            self.brandTier = brandTier
            
            self.name = name
            
            self.uid = uid
            
            self.banner = banner
            
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
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
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
                    localeLanguage = try container.decode([String: Any].self, forKey: .localeLanguage)
                
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
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
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
                    uid = try container.decode(Int.self, forKey: .uid)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(synonyms, forKey: .synonyms)
            
            
            
            
            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(brandTier, forKey: .brandTier)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(banner, forKey: .banner)
            
            
        }
        
    }
    
    /*
        Model: GetBrandResponseSerializer
        Used By: CompanyProfile
    */

    class GetBrandResponseSerializer: Codable {
        
        
        public var synonyms: [String]?
        
        public var description: String?
        
        public var warnings: [String: Any]?
        
        public var verifiedBy: UserSerializer1?
        
        public var verifiedOn: String?
        
        public var mode: String?
        
        public var banner: BrandBannerSerializer?
        
        public var stage: String?
        
        public var createdOn: String?
        
        public var localeLanguage: [String: Any]?
        
        public var customJson: [String: Any]?
        
        public var uid: Int?
        
        public var slugKey: String?
        
        public var createdBy: UserSerializer1?
        
        public var rejectReason: String?
        
        public var logo: String?
        
        public var modifiedOn: String?
        
        public var name: String
        
        public var modifiedBy: UserSerializer1?
        

        public enum CodingKeys: String, CodingKey {
            
            case synonyms = "synonyms"
            
            case description = "description"
            
            case warnings = "warnings"
            
            case verifiedBy = "verified_by"
            
            case verifiedOn = "verified_on"
            
            case mode = "mode"
            
            case banner = "banner"
            
            case stage = "stage"
            
            case createdOn = "created_on"
            
            case localeLanguage = "_locale_language"
            
            case customJson = "_custom_json"
            
            case uid = "uid"
            
            case slugKey = "slug_key"
            
            case createdBy = "created_by"
            
            case rejectReason = "reject_reason"
            
            case logo = "logo"
            
            case modifiedOn = "modified_on"
            
            case name = "name"
            
            case modifiedBy = "modified_by"
            
        }

        public init(banner: BrandBannerSerializer?, createdBy: UserSerializer1?, createdOn: String?, description: String?, logo: String?, mode: String?, modifiedBy: UserSerializer1?, modifiedOn: String?, name: String, rejectReason: String?, slugKey: String?, stage: String?, synonyms: [String]?, uid: Int?, verifiedBy: UserSerializer1?, verifiedOn: String?, warnings: [String: Any]?, customJson: [String: Any]?, localeLanguage: [String: Any]?) {
            
            self.synonyms = synonyms
            
            self.description = description
            
            self.warnings = warnings
            
            self.verifiedBy = verifiedBy
            
            self.verifiedOn = verifiedOn
            
            self.mode = mode
            
            self.banner = banner
            
            self.stage = stage
            
            self.createdOn = createdOn
            
            self.localeLanguage = localeLanguage
            
            self.customJson = customJson
            
            self.uid = uid
            
            self.slugKey = slugKey
            
            self.createdBy = createdBy
            
            self.rejectReason = rejectReason
            
            self.logo = logo
            
            self.modifiedOn = modifiedOn
            
            self.name = name
            
            self.modifiedBy = modifiedBy
            
        }

        public func duplicate() -> GetBrandResponseSerializer {
            let dict = self.dictionary!
            let copy = GetBrandResponseSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    synonyms = try container.decode([String].self, forKey: .synonyms)
                
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
                    verifiedBy = try container.decode(UserSerializer1.self, forKey: .verifiedBy)
                
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
                    mode = try container.decode(String.self, forKey: .mode)
                
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
                    stage = try container.decode(String.self, forKey: .stage)
                
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
                    localeLanguage = try container.decode([String: Any].self, forKey: .localeLanguage)
                
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
                    uid = try container.decode(Int.self, forKey: .uid)
                
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
                    createdBy = try container.decode(UserSerializer1.self, forKey: .createdBy)
                
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
                    logo = try container.decode(String.self, forKey: .logo)
                
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
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
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
            
            
            
            try? container.encodeIfPresent(synonyms, forKey: .synonyms)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
            
            
            
            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)
            
            
            
            
            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(banner, forKey: .banner)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(slugKey, forKey: .slugKey)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(rejectReason, forKey: .rejectReason)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
        }
        
    }
    
    /*
        Model: CompanyBrandPostRequestSerializer
        Used By: CompanyProfile
    */

    class CompanyBrandPostRequestSerializer: Codable {
        
        
        public var uid: Int?
        
        public var company: Int
        
        public var brands: [Int]
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case company = "company"
            
            case brands = "brands"
            
        }

        public init(brands: [Int], company: Int, uid: Int?) {
            
            self.uid = uid
            
            self.company = company
            
            self.brands = brands
            
        }

        public func duplicate() -> CompanyBrandPostRequestSerializer {
            let dict = self.dictionary!
            let copy = CompanyBrandPostRequestSerializer(dictionary: dict)!
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
                
            
            
                company = try container.decode(Int.self, forKey: .company)
                
            
            
            
                brands = try container.decode([Int].self, forKey: .brands)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(brands, forKey: .brands)
            
            
        }
        
    }
    
    /*
        Model: CompanyBrandSerializer
        Used By: CompanyProfile
    */

    class CompanyBrandSerializer: Codable {
        
        
        public var createdBy: UserSerializer1?
        
        public var stage: String?
        
        public var modifiedOn: String?
        
        public var brand: GetBrandResponseSerializer?
        
        public var modifiedBy: UserSerializer1?
        
        public var createdOn: String?
        
        public var warnings: [String: Any]?
        
        public var verifiedBy: UserSerializer1?
        
        public var company: GetCompanySerializer?
        
        public var verifiedOn: String?
        
        public var uid: Int?
        
        public var rejectReason: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdBy = "created_by"
            
            case stage = "stage"
            
            case modifiedOn = "modified_on"
            
            case brand = "brand"
            
            case modifiedBy = "modified_by"
            
            case createdOn = "created_on"
            
            case warnings = "warnings"
            
            case verifiedBy = "verified_by"
            
            case company = "company"
            
            case verifiedOn = "verified_on"
            
            case uid = "uid"
            
            case rejectReason = "reject_reason"
            
        }

        public init(brand: GetBrandResponseSerializer?, company: GetCompanySerializer?, createdBy: UserSerializer1?, createdOn: String?, modifiedBy: UserSerializer1?, modifiedOn: String?, rejectReason: String?, stage: String?, uid: Int?, verifiedBy: UserSerializer1?, verifiedOn: String?, warnings: [String: Any]?) {
            
            self.createdBy = createdBy
            
            self.stage = stage
            
            self.modifiedOn = modifiedOn
            
            self.brand = brand
            
            self.modifiedBy = modifiedBy
            
            self.createdOn = createdOn
            
            self.warnings = warnings
            
            self.verifiedBy = verifiedBy
            
            self.company = company
            
            self.verifiedOn = verifiedOn
            
            self.uid = uid
            
            self.rejectReason = rejectReason
            
        }

        public func duplicate() -> CompanyBrandSerializer {
            let dict = self.dictionary!
            let copy = CompanyBrandSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
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
                    modifiedBy = try container.decode(UserSerializer1.self, forKey: .modifiedBy)
                
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
                    warnings = try container.decode([String: Any].self, forKey: .warnings)
                
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
                    company = try container.decode(GetCompanySerializer.self, forKey: .company)
                
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
                    uid = try container.decode(Int.self, forKey: .uid)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
            
            
            
            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(rejectReason, forKey: .rejectReason)
            
            
        }
        
    }
    
    /*
        Model: CompanyBrandListSerializer
        Used By: CompanyProfile
    */

    class CompanyBrandListSerializer: Codable {
        
        
        public var items: [CompanyBrandSerializer]?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(items: [CompanyBrandSerializer]?, page: Page?) {
            
            self.items = items
            
            self.page = page
            
        }

        public func duplicate() -> CompanyBrandListSerializer {
            let dict = self.dictionary!
            let copy = CompanyBrandListSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    items = try container.decode([CompanyBrandSerializer].self, forKey: .items)
                
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
        Model: GetAddressSerializer1
        Used By: CompanyProfile
    */

    class GetAddressSerializer1: Codable {
        
        
        public var addressType: String?
        
        public var address2: String?
        
        public var city: String?
        
        public var longitude: Double?
        
        public var pincode: Int?
        
        public var country: String?
        
        public var latitude: Double?
        
        public var countryCode: String?
        
        public var address1: String?
        
        public var landmark: String?
        
        public var state: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case addressType = "address_type"
            
            case address2 = "address2"
            
            case city = "city"
            
            case longitude = "longitude"
            
            case pincode = "pincode"
            
            case country = "country"
            
            case latitude = "latitude"
            
            case countryCode = "country_code"
            
            case address1 = "address1"
            
            case landmark = "landmark"
            
            case state = "state"
            
        }

        public init(address1: String?, address2: String?, addressType: String?, city: String?, country: String?, countryCode: String?, landmark: String?, latitude: Double?, longitude: Double?, pincode: Int?, state: String?) {
            
            self.addressType = addressType
            
            self.address2 = address2
            
            self.city = city
            
            self.longitude = longitude
            
            self.pincode = pincode
            
            self.country = country
            
            self.latitude = latitude
            
            self.countryCode = countryCode
            
            self.address1 = address1
            
            self.landmark = landmark
            
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
                    addressType = try container.decode(String.self, forKey: .addressType)
                
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
                    city = try container.decode(String.self, forKey: .city)
                
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
                    latitude = try container.decode(Double.self, forKey: .latitude)
                
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
                    state = try container.decode(String.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            
            
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
        }
        
    }
    
    /*
        Model: LocationSerializer
        Used By: CompanyProfile
    */

    class LocationSerializer: Codable {
        
        
        public var address: GetAddressSerializer1
        
        public var timing: [LocationDayWiseSerializer]?
        
        public var stage: String?
        
        public var notificationEmails: [String]?
        
        public var productReturnConfig: ProductReturnConfigSerializer?
        
        public var customJson: [String: Any]?
        
        public var gstCredentials: InvoiceDetailsSerializer?
        
        public var warnings: [String: Any]?
        
        public var documents: [Document]?
        
        public var company: Int
        
        public var code: String
        
        public var storeType: String?
        
        public var name: String
        
        public var contactNumbers: [SellerPhoneNumber]?
        
        public var manager: LocationManagerSerializer?
        
        public var uid: Int?
        
        public var displayName: String
        

        public enum CodingKeys: String, CodingKey {
            
            case address = "address"
            
            case timing = "timing"
            
            case stage = "stage"
            
            case notificationEmails = "notification_emails"
            
            case productReturnConfig = "product_return_config"
            
            case customJson = "_custom_json"
            
            case gstCredentials = "gst_credentials"
            
            case warnings = "warnings"
            
            case documents = "documents"
            
            case company = "company"
            
            case code = "code"
            
            case storeType = "store_type"
            
            case name = "name"
            
            case contactNumbers = "contact_numbers"
            
            case manager = "manager"
            
            case uid = "uid"
            
            case displayName = "display_name"
            
        }

        public init(address: GetAddressSerializer1, code: String, company: Int, contactNumbers: [SellerPhoneNumber]?, displayName: String, documents: [Document]?, gstCredentials: InvoiceDetailsSerializer?, manager: LocationManagerSerializer?, name: String, notificationEmails: [String]?, productReturnConfig: ProductReturnConfigSerializer?, stage: String?, storeType: String?, timing: [LocationDayWiseSerializer]?, uid: Int?, warnings: [String: Any]?, customJson: [String: Any]?) {
            
            self.address = address
            
            self.timing = timing
            
            self.stage = stage
            
            self.notificationEmails = notificationEmails
            
            self.productReturnConfig = productReturnConfig
            
            self.customJson = customJson
            
            self.gstCredentials = gstCredentials
            
            self.warnings = warnings
            
            self.documents = documents
            
            self.company = company
            
            self.code = code
            
            self.storeType = storeType
            
            self.name = name
            
            self.contactNumbers = contactNumbers
            
            self.manager = manager
            
            self.uid = uid
            
            self.displayName = displayName
            
        }

        public func duplicate() -> LocationSerializer {
            let dict = self.dictionary!
            let copy = LocationSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                address = try container.decode(GetAddressSerializer1.self, forKey: .address)
                
            
            
            
                do {
                    timing = try container.decode([LocationDayWiseSerializer].self, forKey: .timing)
                
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
                    notificationEmails = try container.decode([String].self, forKey: .notificationEmails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productReturnConfig = try container.decode(ProductReturnConfigSerializer.self, forKey: .productReturnConfig)
                
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
                    gstCredentials = try container.decode(InvoiceDetailsSerializer.self, forKey: .gstCredentials)
                
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
                    documents = try container.decode([Document].self, forKey: .documents)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                company = try container.decode(Int.self, forKey: .company)
                
            
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
            
                do {
                    storeType = try container.decode(String.self, forKey: .storeType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    contactNumbers = try container.decode([SellerPhoneNumber].self, forKey: .contactNumbers)
                
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
                
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(timing, forKey: .timing)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            
            
            
            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)
            
            
            
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
            
            
            
            try? container.encodeIfPresent(documents, forKey: .documents)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(storeType, forKey: .storeType)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)
            
            
            
            
            try? container.encodeIfPresent(manager, forKey: .manager)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
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
