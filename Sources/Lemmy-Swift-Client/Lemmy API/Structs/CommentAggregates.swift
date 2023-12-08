import Foundation

public struct CommentAggregates: Codable, Hashable {
	public let commentId: CommentId
	public let score: /* integer */ number
	public let upvotes: /* integer */ number
	public let downvotes: /* integer */ number
	public let published: String
	public let childCount: Int

	public init(
		commentId: CommentId,
		score: /* integer */ number,
		upvotes: /* integer */ number,
		downvotes: /* integer */ number,
		published: String,
		childCount: Int
	) {
		self.commentId = commentId
		self.score = score
		self.upvotes = upvotes
		self.downvotes = downvotes
		self.published = published
		self.childCount = childCount
	}
}
