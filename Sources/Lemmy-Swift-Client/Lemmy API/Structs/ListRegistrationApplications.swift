import Foundation

public struct ListRegistrationApplications: Codable, Hashable {
	public let unreadOnly: Bool?
	public let page: /* integer */ number?
	public let limit: /* integer */ number?

	public init(
		unreadOnly: Bool? = nil,
		page: /* integer */ number? = nil,
		limit: /* integer */ number? = nil
	) {
		self.unreadOnly = unreadOnly
		self.page = page
		self.limit = limit
	}
}
