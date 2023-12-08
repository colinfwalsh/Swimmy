import Foundation

public struct ListPrivateMessageReports: Codable, Hashable {
	public let page: /* integer */ number?
	public let limit: /* integer */ number?
	public let unresolved_only: Bool?

	public init(
		page: /* integer */ number? = nil,
		limit: /* integer */ number? = nil,
		unresolved_only: Bool? = nil
	) {
		self.page = page
		self.limit = limit
		self.unresolved_only = unresolved_only
	}
}
