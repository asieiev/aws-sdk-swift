// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.


extension SSM {

    ///  Describes details about the activation, such as the date and time the activation was created, its expiration date, the IAM role assigned to the instances in the activation, and the number of instances registered by using this activation.
    public func describeActivationsPaginator(_ input: DescribeActivationsRequest) -> Future<[Activation]> {
        return client.paginate(input: input, command: describeActivations, resultKey: "activationList", tokenKey: "nextToken")
    }
    
    ///  Describes one or more of your instances. You can use this to get information about instances like the operating system platform, the SSM Agent version (Linux), status etc. If you specify one or more instance IDs, it returns information for those instances. If you do not specify instance IDs, it returns information for all your instances. If you specify an instance ID that is not valid or an instance that you do not own, you receive an error.   The IamRole field for this API action is the Amazon Identity and Access Management (IAM) role assigned to on-premises instances. This call does not return the IAM role for Amazon EC2 instances. 
    public func describeInstanceInformationPaginator(_ input: DescribeInstanceInformationRequest) -> Future<[InstanceInformation]> {
        return client.paginate(input: input, command: describeInstanceInformation, resultKey: "instanceInformationList", tokenKey: "nextToken")
    }
    
    ///  Returns all State Manager associations in the current AWS account and Region. You can limit the results to a specific State Manager association document or instance by specifying a filter.
    public func listAssociationsPaginator(_ input: ListAssociationsRequest) -> Future<[Association]> {
        return client.paginate(input: input, command: listAssociations, resultKey: "associations", tokenKey: "nextToken")
    }
    
    ///  An invocation is copy of a command sent to a specific instance. A command can apply to one or more instances. A command invocation applies to one instance. For example, if a user runs SendCommand against three instances, then a command invocation is created for each requested instance ID. ListCommandInvocations provide status about command execution.
    public func listCommandInvocationsPaginator(_ input: ListCommandInvocationsRequest) -> Future<[CommandInvocation]> {
        return client.paginate(input: input, command: listCommandInvocations, resultKey: "commandInvocations", tokenKey: "nextToken")
    }
    
    ///  Lists the commands requested by users of the AWS account.
    public func listCommandsPaginator(_ input: ListCommandsRequest) -> Future<[Command]> {
        return client.paginate(input: input, command: listCommands, resultKey: "commands", tokenKey: "nextToken")
    }
    
    ///  Returns all Systems Manager (SSM) documents in the current AWS account and Region. You can limit the results of this request by using a filter.
    public func listDocumentsPaginator(_ input: ListDocumentsRequest) -> Future<[DocumentIdentifier]> {
        return client.paginate(input: input, command: listDocuments, resultKey: "documentIdentifiers", tokenKey: "nextToken")
    }
    
}

extension SSM.DescribeActivationsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension SSM.DescribeInstanceInformationRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            filters: original.filters, 
            instanceInformationFilterList: original.instanceInformationFilterList, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension SSM.ListAssociationsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            associationFilterList: original.associationFilterList, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension SSM.ListCommandInvocationsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            commandId: original.commandId, 
            details: original.details, 
            filters: original.filters, 
            instanceId: original.instanceId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension SSM.ListCommandsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            commandId: original.commandId, 
            filters: original.filters, 
            instanceId: original.instanceId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension SSM.ListDocumentsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            documentFilterList: original.documentFilterList, 
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}


