import Foundation

public struct CommunityAggregates: Codable, Hashable {
	public let community_id: CommunityId
	public let subscribers: /* integer */ number
	public let posts: /* integer */ number
	public let comments: /* integer */ number
	public let published: String
	public let users_active_day: /* integer */ number
	public let users_active_week: /* integer */ number
	public let users_active_month: /* integer */ number
	public let users_active_half_year: /* integer */ number

	public init(
		community_id: CommunityId,
		subscribers: /* integer */ number,
		posts: /* integer */ number,
		comments: /* integer */ number,
		published: String,
		users_active_day: /* integer */ number,
		users_active_week: /* integer */ number,
		users_active_month: /* integer */ number,
		users_active_half_year: /* integer */ number
	) {
		self.community_id = community_id
		self.subscribers = subscribers
		self.posts = posts
		self.comments = comments
		self.published = published
		self.users_active_day = users_active_day
		self.users_active_week = users_active_week
		self.users_active_month = users_active_month
		self.users_active_half_year = users_active_half_year
	}
}
