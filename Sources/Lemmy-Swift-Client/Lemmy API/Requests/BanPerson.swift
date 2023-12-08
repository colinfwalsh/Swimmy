import Foundation

public struct BanPersonRequest: APIRequest {
	public typealias Response = BanPersonResponse

	public static let httpMethod: HTTPMethod = .post
	public static let path: String = "/user/ban"

	public let personId: PersonId
	public let ban: Bool
	public let removeData: Bool?
	public let reason: String?
	public let expires: /* integer */ number?

	public init(
		personId: PersonId,
		ban: Bool,
		removeData: Bool? = nil,
		reason: String? = nil,
		expires: /* integer */ number? = nil
	) {
		self.personId = personId
		self.ban = ban
		self.removeData = removeData
		self.reason = reason
		self.expires = expires
	}
}

public struct BanPersonResponse: APIResponse {
	public let personView: PersonView
	public let banned: Bool

	public init(
		personView: PersonView,
		banned: Bool
	) {
		self.personView = personView
		self.banned = banned
	}
}
