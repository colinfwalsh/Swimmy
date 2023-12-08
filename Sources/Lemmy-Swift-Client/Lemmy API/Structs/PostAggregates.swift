import Foundation

public struct PostAggregates: Codable, Hashable {
	public let post_id: PostId
	public let comments: /* integer */ number
	public let score: /* integer */ number
	public let upvotes: /* integer */ number
	public let downvotes: /* integer */ number
	public let published: String

	public init(
		post_id: PostId,
		comments: /* integer */ number,
		score: /* integer */ number,
		upvotes: /* integer */ number,
		downvotes: /* integer */ number,
		published: String
	) {
		self.post_id = post_id
		self.comments = comments
		self.score = score
		self.upvotes = upvotes
		self.downvotes = downvotes
		self.published = published
	}
}
