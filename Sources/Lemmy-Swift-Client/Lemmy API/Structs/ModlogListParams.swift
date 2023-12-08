import Foundation

public struct ModlogListParams: Codable, Hashable {
	public let communityId: CommunityId?
	public let modPersonId: PersonId?
	public let otherPersonId: PersonId?
	public let page: /* integer */ number?
	public let limit: /* integer */ number?
	public let hideModlogNames: Bool

	public init(
		communityId: CommunityId? = nil,
		modPersonId: PersonId? = nil,
		otherPersonId: PersonId? = nil,
		page: /* integer */ number? = nil,
		limit: /* integer */ number? = nil,
		hideModlogNames: Bool
	) {
		self.communityId = communityId
		self.modPersonId = modPersonId
		self.otherPersonId = otherPersonId
		self.page = page
		self.limit = limit
		self.hideModlogNames = hideModlogNames
	}
}
