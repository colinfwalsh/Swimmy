import Foundation

public struct GetPostsRequest: APIRequest {
	public typealias Response = GetPostsResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/post/list"

	public let type_: ListingType?
	public let sort: SortType?
	public let page: /* integer */ number?
	public let limit: /* integer */ number?
	public let community_id: CommunityId?
	public let community_name: String?
	public let saved_only: Bool?
	public let liked_only: Bool?
	public let disliked_only: Bool?
	public let page_cursor: PaginationCursor?

	public init(
		type_: ListingType? = nil,
		sort: SortType? = nil,
		page: /* integer */ number? = nil,
		limit: /* integer */ number? = nil,
		community_id: CommunityId? = nil,
		community_name: String? = nil,
		saved_only: Bool? = nil,
		liked_only: Bool? = nil,
		disliked_only: Bool? = nil,
		page_cursor: PaginationCursor? = nil
	) {
		self.type_ = type_
		self.sort = sort
		self.page = page
		self.limit = limit
		self.community_id = community_id
		self.community_name = community_name
		self.saved_only = saved_only
		self.liked_only = liked_only
		self.disliked_only = disliked_only
		self.page_cursor = page_cursor
	}
}

public struct GetPostsResponse: APIResponse {
	public let posts: [PostView]
	public let next_page: PaginationCursor?

	public init(
		posts: [PostView],
		next_page: PaginationCursor? = nil
	) {
		self.posts = posts
		self.next_page = next_page
	}
}
