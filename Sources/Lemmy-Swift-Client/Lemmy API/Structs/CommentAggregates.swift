import Foundation

public struct CommentAggregates: Codable, Identifiable, Hashable {
    public var id: Int {
        return self.comment_id
    }
    
	public let comment_id: CommentId
	public let score: Int
	public let upvotes: Int
	public let downvotes: Int
	public let published: String
	public let child_count: Int
	public let hot_rank: Int?
    
	public init(
		comment_id: CommentId,
		score: Int,
		upvotes: Int,
		downvotes: Int,
		published: String,
		child_count: Int,
		hot_rank: Int?
	) {
		self.comment_id = comment_id
		self.score = score
		self.upvotes = upvotes
		self.downvotes = downvotes
		self.published = published
		self.child_count = child_count
		self.hot_rank = hot_rank
	}
}
