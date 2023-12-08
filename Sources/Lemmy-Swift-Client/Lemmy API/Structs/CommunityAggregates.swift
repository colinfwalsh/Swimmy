import Foundation

public struct CommunityAggregates: Codable, Hashable {
	public let communityId: CommunityId
	public let subscribers: /* integer */ number
	public let posts: /* integer */ number
	public let comments: /* integer */ number
	public let published: String
	public let usersActiveDay: /* integer */ number
	public let usersActiveWeek: /* integer */ number
	public let usersActiveMonth: /* integer */ number
	public let usersActiveHalfYear: /* integer */ number

	public init(
		communityId: CommunityId,
		subscribers: /* integer */ number,
		posts: /* integer */ number,
		comments: /* integer */ number,
		published: String,
		usersActiveDay: /* integer */ number,
		usersActiveWeek: /* integer */ number,
		usersActiveMonth: /* integer */ number,
		usersActiveHalfYear: /* integer */ number
	) {
		self.communityId = communityId
		self.subscribers = subscribers
		self.posts = posts
		self.comments = comments
		self.published = published
		self.usersActiveDay = usersActiveDay
		self.usersActiveWeek = usersActiveWeek
		self.usersActiveMonth = usersActiveMonth
		self.usersActiveHalfYear = usersActiveHalfYear
	}
}
