import Foundation

public struct PersonAggregates: Codable, Hashable {
	public let personId: PersonId
	public let postCount: /* integer */ number
	public let commentCount: /* integer */ number

	public init(
		personId: PersonId,
		postCount: /* integer */ number,
		commentCount: /* integer */ number
	) {
		self.personId = personId
		self.postCount = postCount
		self.commentCount = commentCount
	}
}
