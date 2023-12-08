import Foundation

public struct GetRepliesRequest: APIRequest {
	public typealias Response = GetRepliesResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/user/replies"

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

public struct GetRepliesResponse: APIResponse {
	public let replies: [CommentReplyView]

	public init(
		replies: [CommentReplyView]
	) {
		self.replies = replies
	}
}
