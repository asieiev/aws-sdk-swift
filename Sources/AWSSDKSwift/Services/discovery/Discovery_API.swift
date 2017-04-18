// THIS FILE IS AUTOMATICALLY GENERATED. DO NOT EDIT.
/**
The MIT License (MIT)

Copyright (c) 2017 Yuki Takei(noppoMan)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

*/

import Foundation
import Core

/**
AWS Application Discovery Service AWS Application Discovery Service helps you plan application migration projects by automatically identifying servers, virtual machines (VMs), software, and software dependencies running in your on-premises data centers. Application Discovery Service also collects application performance data, which can help you assess the outcome of your migration. The data collected by Application Discovery Service is securely retained in an Amazon-hosted and managed database in the cloud. You can export the data as a CSV or XML file into your preferred visualization tool or cloud-migration solution to plan your migration. For more information, see the Application Discovery Service FAQ. Application Discovery Service offers two modes of operation.    Agentless discovery mode is recommended for environments that use VMware vCenter Server. This mode doesn't require you to install an agent on each host. Agentless discovery gathers server information regardless of the operating systems, which minimizes the time required for initial on-premises infrastructure assessment. Agentless discovery doesn't collect information about software and software dependencies. It also doesn't work in non-VMware environments. We recommend that you use agent-based discovery for non-VMware environments and if you want to collect information about software and software dependencies. You can also run agent-based and agentless discovery simultaneously. Use agentless discovery to quickly complete the initial infrastructure assessment and then install agents on select hosts to gather information about software and software dependencies.    Agent-based discovery mode collects a richer set of data than agentless discovery by using Amazon software, the AWS Application Discovery Agent, which you install on one or more hosts in your data center. The agent captures infrastructure and application information, including an inventory of installed software applications, system and process performance, resource utilization, and network dependencies between workloads. The information collected by agents is secured at rest and in transit to the Application Discovery Service database in the cloud.    Application Discovery Service integrates with application discovery solutions from AWS Partner Network (APN) partners. Third-party application discovery tools can query the Application Discovery Service and write to the Application Discovery Service database using a public API. You can then import the data into either a visualization tool or cloud-migration solution.  Application Discovery Service doesn't gather sensitive information. All data is handled according to the AWS Privacy Policy. You can operate Application Discovery Service using offline mode to inspect collected data before it is shared with the service.  Your AWS account must be granted access to Application Discovery Service, a process called whitelisting. This is true for AWS partners and customers alike. To request access, sign up for the AWS Application Discovery Service here. We will send you information about how to get started. This API reference provides descriptions, syntax, and usage examples for each of the actions and data types for the Application Discovery Service. The topic for each action shows the API request parameters and the response. Alternatively, you can use one of the AWS SDKs to access an API that is tailored to the programming language or platform that you're using. For more information, see AWS SDKs. This guide is intended for use with the  AWS Application Discovery Service User Guide .
*/
public struct Discovery {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: Core.Region? = nil, endpoint: String? = nil, middlewares: [AWSRequestMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "AWSPoseidonService_V2015_11_01",
            service: "discovery",
            serviceProtocol: .json,
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [DiscoveryError.self]
        )
    }

    ///  Instructs the specified agents or Connectors to start collecting data.
    public func startDataCollectionByAgentIds(_ input: StartDataCollectionByAgentIdsRequest) throws -> StartDataCollectionByAgentIdsResponse {
        return try client.send(operation: "StartDataCollectionByAgentIds", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a short summary of discovered assets.
    public func getDiscoverySummary(_ input: GetDiscoverySummaryRequest) throws -> GetDiscoverySummaryResponse {
        return try client.send(operation: "GetDiscoverySummary", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates one or more tags for configuration items. Tags are metadata that help you categorize IT assets. This API accepts a list of multiple configuration items.
    public func createTags(_ input: CreateTagsRequest) throws -> CreateTagsResponse {
        return try client.send(operation: "CreateTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a list of applications and their associations with configuration items.
    public func deleteApplications(_ input: DeleteApplicationsRequest) throws -> DeleteApplicationsResponse {
        return try client.send(operation: "DeleteApplications", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves attributes for a list of configuration item IDs. All of the supplied IDs must be for the same asset type (server, application, process, or connection). Output fields are specific to the asset type selected. For example, the output for a server configuration item includes a list of attributes about the server, such as host name, operating system, and number of network cards. For a complete list of outputs for each asset type, see Querying Discovered Configuration Items.
    public func describeConfigurations(_ input: DescribeConfigurationsRequest) throws -> DescribeConfigurationsResponse {
        return try client.send(operation: "DescribeConfigurations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Exports all discovered configuration data to an Amazon S3 bucket or an application that enables you to view and evaluate the data. Data includes tags and tag associations, processes, connections, servers, and system performance. This API returns an export ID which you can query using the DescribeExportConfigurations API. The system imposes a limit of two configuration exports in six hours.
    public func exportConfigurations() throws -> ExportConfigurationsResponse {
        return try client.send(operation: "ExportConfigurations", path: "/", httpMethod: "POST")
    }

    ///  Retrieves the status of a given export process. You can retrieve status from a maximum of 100 processes.
    public func describeExportConfigurations(_ input: DescribeExportConfigurationsRequest) throws -> DescribeExportConfigurationsResponse {
        return try client.send(operation: "DescribeExportConfigurations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociates one or more configuration items from an application.
    public func disassociateConfigurationItemsFromApplication(_ input: DisassociateConfigurationItemsFromApplicationRequest) throws -> DisassociateConfigurationItemsFromApplicationResponse {
        return try client.send(operation: "DisassociateConfigurationItemsFromApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Instructs the specified agents or Connectors to stop collecting data.
    public func stopDataCollectionByAgentIds(_ input: StopDataCollectionByAgentIdsRequest) throws -> StopDataCollectionByAgentIdsResponse {
        return try client.send(operation: "StopDataCollectionByAgentIds", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list of configuration items that are tagged with a specific tag. Or retrieves a list of all tags assigned to a specific configuration item.
    public func describeTags(_ input: DescribeTagsRequest) throws -> DescribeTagsResponse {
        return try client.send(operation: "DescribeTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list of configuration items according to criteria you specify in a filter. The filter criteria identify relationship requirements.
    public func listConfigurations(_ input: ListConfigurationsRequest) throws -> ListConfigurationsResponse {
        return try client.send(operation: "ListConfigurations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists agents or the Connector by ID or lists all agents/Connectors associated with your user account if you did not specify an ID.
    public func describeAgents(_ input: DescribeAgentsRequest) throws -> DescribeAgentsResponse {
        return try client.send(operation: "DescribeAgents", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list of servers which are one network hop away from a specified server.
    public func listServerNeighbors(_ input: ListServerNeighborsRequest) throws -> ListServerNeighborsResponse {
        return try client.send(operation: "ListServerNeighbors", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates one or more configuration items with an application.
    public func associateConfigurationItemsToApplication(_ input: AssociateConfigurationItemsToApplicationRequest) throws -> AssociateConfigurationItemsToApplicationResponse {
        return try client.send(operation: "AssociateConfigurationItemsToApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the association between configuration items and one or more tags. This API accepts a list of multiple configuration items.
    public func deleteTags(_ input: DeleteTagsRequest) throws -> DeleteTagsResponse {
        return try client.send(operation: "DeleteTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates metadata about an application.
    public func updateApplication(_ input: UpdateApplicationRequest) throws -> UpdateApplicationResponse {
        return try client.send(operation: "UpdateApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an application with the given name and description.
    public func createApplication(_ input: CreateApplicationRequest) throws -> CreateApplicationResponse {
        return try client.send(operation: "CreateApplication", path: "/", httpMethod: "POST", input: input)
    }


}