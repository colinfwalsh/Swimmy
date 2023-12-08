import Foundation

public struct ListCommentReportsRequest: APIRequest {
	public typealias Response = ListCommentReportsResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/comment/report/list"

	public let page: /* integer */ number?
	public let limit: /* integer */ number?
	public let unresolvedOnly: Bool?
	public let communityId: CommunityId?

	public init(
		page: /* integer */ number? = nil,
		limit: /* integer */ number? = nil,
		unresolvedOnly: Bool? = nil,
		communityId: CommunityId? = nil
	) {
		self.page = page
		self.limit = limit
		self.unresolvedOnly = unresolvedOnly
		self.communityId = communityId
	}
}

public struct ListCommentReportsResponse: APIResponse {
	public let commentReports: [CommentReportView]

	public init(
		commentReports: [CommentReportView]
	) {
		self.commentReports = commentReports
	}
}
