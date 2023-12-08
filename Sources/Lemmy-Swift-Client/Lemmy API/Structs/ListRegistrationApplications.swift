import Foundation

public struct ListRegistrationApplications: Codable, Hashable {
	public let unread_only: Bool?
	public let page: /* integer */ number?
	public let limit: /* integer */ number?

	public init(
		unread_only: Bool? = nil,
		page: /* integer */ number? = nil,
		limit: /* integer */ number? = nil
	) {
		self.unread_only = unread_only
		self.page = page
		self.limit = limit
	}
}
