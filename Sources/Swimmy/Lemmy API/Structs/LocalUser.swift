import Foundation

public struct LocalUser: Codable, Identifiable, Hashable {
	public let id: LocalUserId
	public let personId: PersonId
	public let email: String?
	public let showNsfw: Bool
	public let theme: String
	public let defaultSortType: SortType
	public let defaultListingType: ListingType
	public let interfaceLanguage: String
	public let showAvatars: Bool
	public let sendNotificationsToEmail: Bool
	public let showScores: Bool
	public let showBotAccounts: Bool
	public let showReadPosts: Bool
	public let emailVerified: Bool
	public let acceptedApplication: Bool
	public let openLinksInNewTab: Bool
	public let blurNsfw: Bool
	public let autoExpand: Bool
	public let infiniteScrollEnabled: Bool
	public let admin: Bool
	public let postListingMode: PostListingMode
	public let totp_2faEnabled: Bool
	public let enableKeyboardNavigation: Bool
	public let enableAnimatedImages: Bool
	public let collapseBotComments: Bool

	/// Custom CodingKeys needed because `totp_2faEnabled` has an embedded underscore
	/// that breaks `.convertFromSnakeCase` — it converts `totp_2fa_enabled` to
	/// `totp2FaEnabled` which doesn't match the synthesized key `totp_2faEnabled`.
	/// The raw value must match what `.convertFromSnakeCase` produces.
	private enum CodingKeys: String, CodingKey {
		case id, personId, email, showNsfw, theme, defaultSortType, defaultListingType
		case interfaceLanguage, showAvatars, sendNotificationsToEmail, showScores
		case showBotAccounts, showReadPosts, emailVerified, acceptedApplication
		case openLinksInNewTab, blurNsfw, autoExpand, infiniteScrollEnabled, admin
		case postListingMode, enableKeyboardNavigation, enableAnimatedImages
		case collapseBotComments
		case totp_2faEnabled = "totp2FaEnabled"
	}

	public init(
		id: LocalUserId,
		personId: PersonId,
		email: String? = nil,
		showNsfw: Bool,
		theme: String,
		defaultSortType: SortType,
		defaultListingType: ListingType,
		interfaceLanguage: String,
		showAvatars: Bool,
		sendNotificationsToEmail: Bool,
		showScores: Bool,
		showBotAccounts: Bool,
		showReadPosts: Bool,
		emailVerified: Bool,
		acceptedApplication: Bool,
		openLinksInNewTab: Bool,
		blurNsfw: Bool,
		autoExpand: Bool,
		infiniteScrollEnabled: Bool,
		admin: Bool,
		postListingMode: PostListingMode,
		totp_2faEnabled: Bool,
		enableKeyboardNavigation: Bool,
		enableAnimatedImages: Bool,
		collapseBotComments: Bool
	) {
		self.id = id
		self.personId = personId
		self.email = email
		self.showNsfw = showNsfw
		self.theme = theme
		self.defaultSortType = defaultSortType
		self.defaultListingType = defaultListingType
		self.interfaceLanguage = interfaceLanguage
		self.showAvatars = showAvatars
		self.sendNotificationsToEmail = sendNotificationsToEmail
		self.showScores = showScores
		self.showBotAccounts = showBotAccounts
		self.showReadPosts = showReadPosts
		self.emailVerified = emailVerified
		self.acceptedApplication = acceptedApplication
		self.openLinksInNewTab = openLinksInNewTab
		self.blurNsfw = blurNsfw
		self.autoExpand = autoExpand
		self.infiniteScrollEnabled = infiniteScrollEnabled
		self.admin = admin
		self.postListingMode = postListingMode
		self.totp_2faEnabled = totp_2faEnabled
		self.enableKeyboardNavigation = enableKeyboardNavigation
		self.enableAnimatedImages = enableAnimatedImages
		self.collapseBotComments = collapseBotComments
	}
}
