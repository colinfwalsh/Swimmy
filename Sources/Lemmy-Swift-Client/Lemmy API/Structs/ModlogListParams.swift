import Foundation

public struct ModlogListParams: Codable, Hashable {
	public let community_id: CommunityId?
	public let mod_person_id: PersonId?
	public let other_person_id: PersonId?
	public let page: /* integer */ number?
	public let limit: /* integer */ number?
	public let hide_modlog_names: Bool

	public init(
		community_id: CommunityId? = nil,
		mod_person_id: PersonId? = nil,
		other_person_id: PersonId? = nil,
		page: /* integer */ number? = nil,
		limit: /* integer */ number? = nil,
		hide_modlog_names: Bool
	) {
		self.community_id = community_id
		self.mod_person_id = mod_person_id
		self.other_person_id = other_person_id
		self.page = page
		self.limit = limit
		self.hide_modlog_names = hide_modlog_names
	}
}
