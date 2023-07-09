import Foundation

public struct GetFederatedInstancesRequest: APIRequest {
	public typealias Response = GetFederatedInstancesResponse

	public static let httpMethod: HTTPMethod = .get
	public static let path: String = "/federated_instances"

	public let auth: String?

	public init(
		auth: String? = nil
	) {
		self.auth = auth
	}
}

public struct GetFederatedInstancesResponse: APIResponse {
	public let federated_instances: FederatedInstances?

	public init(
		federated_instances: FederatedInstances? = nil
	) {
		self.federated_instances = federated_instances
	}
}
