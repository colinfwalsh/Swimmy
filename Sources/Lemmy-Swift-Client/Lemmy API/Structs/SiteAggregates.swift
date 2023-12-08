import Foundation

public struct SiteAggregates: Codable, Hashable {
	public let siteId: SiteId
	public let users: /* integer */ number
	public let posts: /* integer */ number
	public let comments: /* integer */ number
	public let communities: /* integer */ number
	public let usersActiveDay: /* integer */ number
	public let usersActiveWeek: /* integer */ number
	public let usersActiveMonth: /* integer */ number
	public let usersActiveHalfYear: /* integer */ number

	public init(
		siteId: SiteId,
		users: /* integer */ number,
		posts: /* integer */ number,
		comments: /* integer */ number,
		communities: /* integer */ number,
		usersActiveDay: /* integer */ number,
		usersActiveWeek: /* integer */ number,
		usersActiveMonth: /* integer */ number,
		usersActiveHalfYear: /* integer */ number
	) {
		self.siteId = siteId
		self.users = users
		self.posts = posts
		self.comments = comments
		self.communities = communities
		self.usersActiveDay = usersActiveDay
		self.usersActiveWeek = usersActiveWeek
		self.usersActiveMonth = usersActiveMonth
		self.usersActiveHalfYear = usersActiveHalfYear
	}
}
