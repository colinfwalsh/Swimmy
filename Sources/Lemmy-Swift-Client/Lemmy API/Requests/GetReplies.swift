import Foundation

public struct GetRepliesRequest: APIRequest {
	public typealias Response = GetRepliesResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/user/replies"

	public let sort: CommentSortType?
	public let page: /* integer */ number?
	public let limit: /* integer */ number?
	public let unreadOnly: Bool?

	public init(
		sort: CommentSortType? = nil,
		page: /* integer */ number? = nil,
		limit: /* integer */ number? = nil,
		unreadOnly: Bool? = nil
	) {
		self.sort = sort
		self.page = page
		self.limit = limit
		self.unreadOnly = unreadOnly
	}
}

public struct GetRepliesResponse: APIResponse {
	public let replies: [CommentReplyView]

	public init(
		replies: [CommentReplyView]
	) {
		self.replies = replies
	}
}
