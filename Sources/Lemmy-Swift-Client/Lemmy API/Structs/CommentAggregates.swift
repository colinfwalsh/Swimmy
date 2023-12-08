import Foundation

public struct CommentAggregates: Codable, Hashable {
	public let comment_id: CommentId
	public let score: /* integer */ number
	public let upvotes: /* integer */ number
	public let downvotes: /* integer */ number
	public let published: String
	public let child_count: Int

	public init(
		comment_id: CommentId,
		score: /* integer */ number,
		upvotes: /* integer */ number,
		downvotes: /* integer */ number,
		published: String,
		child_count: Int
	) {
		self.comment_id = comment_id
		self.score = score
		self.upvotes = upvotes
		self.downvotes = downvotes
		self.published = published
		self.child_count = child_count
	}
}
