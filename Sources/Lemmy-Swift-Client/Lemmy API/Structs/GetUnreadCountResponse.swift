import Foundation

public struct GetUnreadCountResponse: Codable, Hashable {
	public let replies: /* integer */ number
	public let mentions: /* integer */ number
	public let privateMessages: /* integer */ number

	public init(
		replies: /* integer */ number,
		mentions: /* integer */ number,
		privateMessages: /* integer */ number
	) {
		self.replies = replies
		self.mentions = mentions
		self.privateMessages = privateMessages
	}
}
