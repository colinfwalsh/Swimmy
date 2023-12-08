import Foundation

public struct ListPrivateMessageReports: Codable, Hashable {
	public let page: /* integer */ number?
	public let limit: /* integer */ number?
	public let unresolvedOnly: Bool?

	public init(
		page: /* integer */ number? = nil,
		limit: /* integer */ number? = nil,
		unresolvedOnly: Bool? = nil
	) {
		self.page = page
		self.limit = limit
		self.unresolvedOnly = unresolvedOnly
	}
}
