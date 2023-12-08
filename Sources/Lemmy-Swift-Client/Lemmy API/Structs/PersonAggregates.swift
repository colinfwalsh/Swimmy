import Foundation

public struct PersonAggregates: Codable, Hashable {
	public let person_id: PersonId
	public let post_count: /* integer */ number
	public let comment_count: /* integer */ number

	public init(
		person_id: PersonId,
		post_count: /* integer */ number,
		comment_count: /* integer */ number
	) {
		self.person_id = person_id
		self.post_count = post_count
		self.comment_count = comment_count
	}
}
