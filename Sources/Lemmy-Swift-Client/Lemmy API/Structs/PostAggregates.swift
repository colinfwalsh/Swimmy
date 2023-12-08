import Foundation

public struct PostAggregates: Codable, Hashable {
	public let postId: PostId
	public let comments: /* integer */ number
	public let score: /* integer */ number
	public let upvotes: /* integer */ number
	public let downvotes: /* integer */ number
	public let published: String

	public init(
		postId: PostId,
		comments: /* integer */ number,
		score: /* integer */ number,
		upvotes: /* integer */ number,
		downvotes: /* integer */ number,
		published: String
	) {
		self.postId = postId
		self.comments = comments
		self.score = score
		self.upvotes = upvotes
		self.downvotes = downvotes
		self.published = published
	}
}
