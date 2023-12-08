import Foundation

public struct GetUnreadRegistrationApplicationCountResponse: Codable, Hashable {
	public let registrationApplications: /* integer */ number

	public init(
		registrationApplications: /* integer */ number
	) {
		self.registrationApplications = registrationApplications
	}
}
