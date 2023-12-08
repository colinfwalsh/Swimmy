import Foundation

public struct GetPersonMentionsRequest: APIRequest {
	public typealias Response = GetPersonMentionsResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/user/mention"

	public let sort: CommentSortType?
	public let page: /* integer */ number?
	public let limit: /* integer */ number?
	public let unread_only: Bool?

	public init(
		sort: CommentSortType? = nil,
		page: /* integer */ number? = nil,
		limit: /* integer */ number? = nil,
		unread_only: Bool? = nil
	) {
		self.sort = sort
		self.page = page
		self.limit = limit
		self.unread_only = unread_only
	}
}

public struct GetPersonMentionsResponse: APIResponse {
	public let mentions: [PersonMentionView]

	public init(
		mentions: [PersonMentionView]
	) {
		self.mentions = mentions
	}
}
