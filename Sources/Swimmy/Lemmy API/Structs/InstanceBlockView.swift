import Foundation

public struct InstanceBlockView: Codable, Hashable {
	public let person: Person
	public let instance: Instance
	public let site: Site?

	public init(
		person: Person,
		instance: Instance,
		site: Site? = nil
	) {
		self.person = person
		self.instance = instance
		self.site = site
	}
}
