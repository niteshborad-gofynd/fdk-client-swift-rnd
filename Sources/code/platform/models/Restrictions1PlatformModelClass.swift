import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: Restrictions1
         Used By: Cart
     */

    class Restrictions1: Codable {
        public var payments: [PromotionPaymentModes]?

        public var userRegistered: UserRegistered?

        public var postOrder: PostOrder1?

        public var userGroups: [Int]?

        public var platforms: [String]?

        public var uses: UsesRestriction1

        public var anonymousUsers: Bool?

        public var orderQuantity: Int?

        public var userId: [String]?

        public enum CodingKeys: String, CodingKey {
            case payments

            case userRegistered = "user_registered"

            case postOrder = "post_order"

            case userGroups = "user_groups"

            case platforms

            case uses

            case anonymousUsers = "anonymous_users"

            case orderQuantity = "order_quantity"

            case userId = "user_id"
        }

        public init(anonymousUsers: Bool?, orderQuantity: Int?, payments: [PromotionPaymentModes]?, platforms: [String]?, postOrder: PostOrder1?, userGroups: [Int]?, userId: [String]?, userRegistered: UserRegistered?, uses: UsesRestriction1) {
            self.payments = payments

            self.userRegistered = userRegistered

            self.postOrder = postOrder

            self.userGroups = userGroups

            self.platforms = platforms

            self.uses = uses

            self.anonymousUsers = anonymousUsers

            self.orderQuantity = orderQuantity

            self.userId = userId
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
            } catch {}

            do {
                userRegistered = try container.decode(UserRegistered.self, forKey: .userRegistered)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                postOrder = try container.decode(PostOrder1.self, forKey: .postOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userGroups = try container.decode([Int].self, forKey: .userGroups)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platforms = try container.decode([String].self, forKey: .platforms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uses = try container.decode(UsesRestriction1.self, forKey: .uses)

            do {
                anonymousUsers = try container.decode(Bool.self, forKey: .anonymousUsers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderQuantity = try container.decode(Int.self, forKey: .orderQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode([String].self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encode(userRegistered, forKey: .userRegistered)

            try? container.encodeIfPresent(postOrder, forKey: .postOrder)

            try? container.encodeIfPresent(userGroups, forKey: .userGroups)

            try? container.encodeIfPresent(platforms, forKey: .platforms)

            try? container.encodeIfPresent(uses, forKey: .uses)

            try? container.encodeIfPresent(anonymousUsers, forKey: .anonymousUsers)

            try? container.encodeIfPresent(orderQuantity, forKey: .orderQuantity)

            try? container.encodeIfPresent(userId, forKey: .userId)
        }
    }
}