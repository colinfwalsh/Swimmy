import Foundation

public struct ListCommunitiesRequest: APIRequest {
	public typealias Response = ListCommunitiesResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/community/list"

	public let type_: ListingType?
	public let sort: SortType?
	public let show_nsfw: Bool?
	public let page: Int?
	public let limit: Int?
	public let auth: String?

	public init(
		type_: ListingType? = nil,
		sort: SortType? = nil,
		show_nsfw: Bool? = nil,
		page: Int? = nil,
		limit: Int? = nil,
		auth: String? = nil
	) {
		self.type_ = type_
		self.sort = sort
		self.show_nsfw = show_nsfw
		self.page = page
		self.limit = limit
		self.auth = auth
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
