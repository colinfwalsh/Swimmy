import Foundation

public struct ListPostReportsRequest: APIRequest {
	public typealias Response = ListPostReportsResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/post/report/list"

	public let page: /* integer */ number?
	public let limit: /* integer */ number?
	public let unresolved_only: Bool?
	public let community_id: CommunityId?

	public init(
		page: /* integer */ number? = nil,
		limit: /* integer */ number? = nil,
		unresolved_only: Bool? = nil,
		community_id: CommunityId? = nil
	) {
		self.page = page
		self.limit = limit
		self.unresolved_only = unresolved_only
		self.community_id = community_id
	}
}

public struct ListPostReportsResponse: APIResponse {
	public let post_reports: [PostReportView]

	public init(
		post_reports: [PostReportView]
	) {
		self.post_reports = post_reports
	}
}
