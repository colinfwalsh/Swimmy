import Foundation

public struct GetUnreadCountResponse: Codable, Hashable {
	public let replies: /* integer */ number
	public let mentions: /* integer */ number
	public let private_messages: /* integer */ number

	public init(
		replies: /* integer */ number,
		mentions: /* integer */ number,
		private_messages: /* integer */ number
	) {
		self.replies = replies
		self.mentions = mentions
		self.private_messages = private_messages
	}
}
