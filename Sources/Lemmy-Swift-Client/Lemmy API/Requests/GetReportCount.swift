import Foundation

public struct GetReportCountRequest: APIRequest {
	public typealias Response = GetReportCountResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/user/report_count"

	public let communityId: CommunityId?

	public init(
		communityId: CommunityId? = nil
	) {
		self.communityId = communityId
	}
}

public struct GetReportCountResponse: APIResponse {
	public let communityId: CommunityId?
	public let commentReports: /* integer */ number
	public let postReports: /* integer */ number
	public let privateMessageReports: /* integer */ number?

	public init(
		communityId: CommunityId? = nil,
		commentReports: /* integer */ number,
		postReports: /* integer */ number,
		privateMessageReports: /* integer */ number? = nil
	) {
		self.communityId = communityId
		self.commentReports = commentReports
		self.postReports = postReports
		self.privateMessageReports = privateMessageReports
	}
}
