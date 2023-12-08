import Foundation

public struct SiteAggregates: Codable, Hashable {
	public let site_id: SiteId
	public let users: /* integer */ number
	public let posts: /* integer */ number
	public let comments: /* integer */ number
	public let communities: /* integer */ number
	public let users_active_day: /* integer */ number
	public let users_active_week: /* integer */ number
	public let users_active_month: /* integer */ number
	public let users_active_half_year: /* integer */ number

	public init(
		site_id: SiteId,
		users: /* integer */ number,
		posts: /* integer */ number,
		comments: /* integer */ number,
		communities: /* integer */ number,
		users_active_day: /* integer */ number,
		users_active_week: /* integer */ number,
		users_active_month: /* integer */ number,
		users_active_half_year: /* integer */ number
	) {
		self.site_id = site_id
		self.users = users
		self.posts = posts
		self.comments = comments
		self.communities = communities
		self.users_active_day = users_active_day
		self.users_active_week = users_active_week
		self.users_active_month = users_active_month
		self.users_active_half_year = users_active_half_year
	}
}
