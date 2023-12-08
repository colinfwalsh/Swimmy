import Foundation

public struct GetPrivateMessagesRequest: APIRequest {
	public typealias Response = PrivateMessagesResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/private_message/list"

	public let unreadOnly: Bool?
	public let page: /* integer */ number?
	public let limit: /* integer */ number?
	public let creatorId: PersonId?

	public init(
		unreadOnly: Bool? = nil,
		page: /* integer */ number? = nil,
		limit: /* integer */ number? = nil,
		creatorId: PersonId? = nil
	) {
		self.unreadOnly = unreadOnly
		self.page = page
		self.limit = limit
		self.creatorId = creatorId
	}
}

public struct PrivateMessagesResponse: APIResponse {
	public let privateMessages: [PrivateMessageView]

	public init(
		privateMessages: [PrivateMessageView]
	) {
		self.privateMessages = privateMessages
	}
}
