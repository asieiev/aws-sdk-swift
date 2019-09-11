// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for DAX
public enum DAXErrorType: AWSErrorType {
    case clusterAlreadyExistsFault(message: String?)
    case clusterNotFoundFault(message: String?)
    case clusterQuotaForCustomerExceededFault(message: String?)
    case insufficientClusterCapacityFault(message: String?)
    case invalidARNFault(message: String?)
    case invalidClusterStateFault(message: String?)
    case invalidParameterCombinationException(message: String?)
    case invalidParameterGroupStateFault(message: String?)
    case invalidParameterValueException(message: String?)
    case invalidSubnet(message: String?)
    case invalidVPCNetworkStateFault(message: String?)
    case nodeNotFoundFault(message: String?)
    case nodeQuotaForClusterExceededFault(message: String?)
    case nodeQuotaForCustomerExceededFault(message: String?)
    case parameterGroupAlreadyExistsFault(message: String?)
    case parameterGroupNotFoundFault(message: String?)
    case parameterGroupQuotaExceededFault(message: String?)
    case serviceLinkedRoleNotFoundFault(message: String?)
    case subnetGroupAlreadyExistsFault(message: String?)
    case subnetGroupInUseFault(message: String?)
    case subnetGroupNotFoundFault(message: String?)
    case subnetGroupQuotaExceededFault(message: String?)
    case subnetInUse(message: String?)
    case subnetQuotaExceededFault(message: String?)
    case tagNotFoundFault(message: String?)
    case tagQuotaPerResourceExceeded(message: String?)
}

extension DAXErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ClusterAlreadyExistsFault":
            self = .clusterAlreadyExistsFault(message: message)
        case "ClusterNotFoundFault":
            self = .clusterNotFoundFault(message: message)
        case "ClusterQuotaForCustomerExceededFault":
            self = .clusterQuotaForCustomerExceededFault(message: message)
        case "InsufficientClusterCapacityFault":
            self = .insufficientClusterCapacityFault(message: message)
        case "InvalidARNFault":
            self = .invalidARNFault(message: message)
        case "InvalidClusterStateFault":
            self = .invalidClusterStateFault(message: message)
        case "InvalidParameterCombinationException":
            self = .invalidParameterCombinationException(message: message)
        case "InvalidParameterGroupStateFault":
            self = .invalidParameterGroupStateFault(message: message)
        case "InvalidParameterValueException":
            self = .invalidParameterValueException(message: message)
        case "InvalidSubnet":
            self = .invalidSubnet(message: message)
        case "InvalidVPCNetworkStateFault":
            self = .invalidVPCNetworkStateFault(message: message)
        case "NodeNotFoundFault":
            self = .nodeNotFoundFault(message: message)
        case "NodeQuotaForClusterExceededFault":
            self = .nodeQuotaForClusterExceededFault(message: message)
        case "NodeQuotaForCustomerExceededFault":
            self = .nodeQuotaForCustomerExceededFault(message: message)
        case "ParameterGroupAlreadyExistsFault":
            self = .parameterGroupAlreadyExistsFault(message: message)
        case "ParameterGroupNotFoundFault":
            self = .parameterGroupNotFoundFault(message: message)
        case "ParameterGroupQuotaExceededFault":
            self = .parameterGroupQuotaExceededFault(message: message)
        case "ServiceLinkedRoleNotFoundFault":
            self = .serviceLinkedRoleNotFoundFault(message: message)
        case "SubnetGroupAlreadyExistsFault":
            self = .subnetGroupAlreadyExistsFault(message: message)
        case "SubnetGroupInUseFault":
            self = .subnetGroupInUseFault(message: message)
        case "SubnetGroupNotFoundFault":
            self = .subnetGroupNotFoundFault(message: message)
        case "SubnetGroupQuotaExceededFault":
            self = .subnetGroupQuotaExceededFault(message: message)
        case "SubnetInUse":
            self = .subnetInUse(message: message)
        case "SubnetQuotaExceededFault":
            self = .subnetQuotaExceededFault(message: message)
        case "TagNotFoundFault":
            self = .tagNotFoundFault(message: message)
        case "TagQuotaPerResourceExceeded":
            self = .tagQuotaPerResourceExceeded(message: message)
        default:
            return nil
        }
    }
}

extension DAXErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .clusterAlreadyExistsFault(let message):
            return "ClusterAlreadyExistsFault: \(message ?? "")"
        case .clusterNotFoundFault(let message):
            return "ClusterNotFoundFault: \(message ?? "")"
        case .clusterQuotaForCustomerExceededFault(let message):
            return "ClusterQuotaForCustomerExceededFault: \(message ?? "")"
        case .insufficientClusterCapacityFault(let message):
            return "InsufficientClusterCapacityFault: \(message ?? "")"
        case .invalidARNFault(let message):
            return "InvalidARNFault: \(message ?? "")"
        case .invalidClusterStateFault(let message):
            return "InvalidClusterStateFault: \(message ?? "")"
        case .invalidParameterCombinationException(let message):
            return "InvalidParameterCombinationException: \(message ?? "")"
        case .invalidParameterGroupStateFault(let message):
            return "InvalidParameterGroupStateFault: \(message ?? "")"
        case .invalidParameterValueException(let message):
            return "InvalidParameterValueException: \(message ?? "")"
        case .invalidSubnet(let message):
            return "InvalidSubnet: \(message ?? "")"
        case .invalidVPCNetworkStateFault(let message):
            return "InvalidVPCNetworkStateFault: \(message ?? "")"
        case .nodeNotFoundFault(let message):
            return "NodeNotFoundFault: \(message ?? "")"
        case .nodeQuotaForClusterExceededFault(let message):
            return "NodeQuotaForClusterExceededFault: \(message ?? "")"
        case .nodeQuotaForCustomerExceededFault(let message):
            return "NodeQuotaForCustomerExceededFault: \(message ?? "")"
        case .parameterGroupAlreadyExistsFault(let message):
            return "ParameterGroupAlreadyExistsFault: \(message ?? "")"
        case .parameterGroupNotFoundFault(let message):
            return "ParameterGroupNotFoundFault: \(message ?? "")"
        case .parameterGroupQuotaExceededFault(let message):
            return "ParameterGroupQuotaExceededFault: \(message ?? "")"
        case .serviceLinkedRoleNotFoundFault(let message):
            return "ServiceLinkedRoleNotFoundFault: \(message ?? "")"
        case .subnetGroupAlreadyExistsFault(let message):
            return "SubnetGroupAlreadyExistsFault: \(message ?? "")"
        case .subnetGroupInUseFault(let message):
            return "SubnetGroupInUseFault: \(message ?? "")"
        case .subnetGroupNotFoundFault(let message):
            return "SubnetGroupNotFoundFault: \(message ?? "")"
        case .subnetGroupQuotaExceededFault(let message):
            return "SubnetGroupQuotaExceededFault: \(message ?? "")"
        case .subnetInUse(let message):
            return "SubnetInUse: \(message ?? "")"
        case .subnetQuotaExceededFault(let message):
            return "SubnetQuotaExceededFault: \(message ?? "")"
        case .tagNotFoundFault(let message):
            return "TagNotFoundFault: \(message ?? "")"
        case .tagQuotaPerResourceExceeded(let message):
            return "TagQuotaPerResourceExceeded: \(message ?? "")"
        }
    }
}
