import Foundation

public struct GetUnreadRegistrationApplicationCountResponse: Codable, Hashable {
	public let registration_applications: /* integer */ number

	public init(
		registration_applications: /* integer */ number
	) {
		self.registration_applications = registration_applications
	}
}
