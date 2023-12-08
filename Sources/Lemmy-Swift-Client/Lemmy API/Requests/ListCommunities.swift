import Foundation

public struct ListCommunitiesRequest: APIRequest {
	public typealias Response = ListCommunitiesResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/community/list"

	public let type: ListingType?
	public let sort: SortType?
	public let showNsfw: Bool?
	public let page: /* integer */ number?
	public let limit: /* integer */ number?

	public init(
		type: ListingType? = nil,
		sort: SortType? = nil,
		showNsfw: Bool? = nil,
		page: /* integer */ number? = nil,
		limit: /* integer */ number? = nil
	) {
		self.type = type
		self.sort = sort
		self.showNsfw = showNsfw
		self.page = page
		self.limit = limit
	}
}

public struct ListCommunitiesResponse: APIResponse {
	public let communities: [CommunityView]

	public init(
		communities: [CommunityView]
	) {
		self.communities = communities
	}
}
