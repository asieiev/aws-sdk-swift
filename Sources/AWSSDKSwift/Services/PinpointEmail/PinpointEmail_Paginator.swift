//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension PinpointEmail {

    ///  List the dedicated IP addresses that are associated with your Amazon Pinpoint account.
    public func getDedicatedIpsPaginator(
        _ input: GetDedicatedIpsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetDedicatedIpsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getDedicatedIps, tokenKey: \GetDedicatedIpsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  List all of the configuration sets associated with your Amazon Pinpoint account in the current region. In Amazon Pinpoint, configuration sets are groups of rules that you can apply to the emails you send. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email.
    public func listConfigurationSetsPaginator(
        _ input: ListConfigurationSetsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListConfigurationSetsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listConfigurationSets, tokenKey: \ListConfigurationSetsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  List all of the dedicated IP pools that exist in your Amazon Pinpoint account in the current AWS Region.
    public func listDedicatedIpPoolsPaginator(
        _ input: ListDedicatedIpPoolsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListDedicatedIpPoolsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDedicatedIpPools, tokenKey: \ListDedicatedIpPoolsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Show a list of the predictive inbox placement tests that you've performed, regardless of their statuses. For predictive inbox placement tests that are complete, you can use the GetDeliverabilityTestReport operation to view the results.
    public func listDeliverabilityTestReportsPaginator(
        _ input: ListDeliverabilityTestReportsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListDeliverabilityTestReportsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDeliverabilityTestReports, tokenKey: \ListDeliverabilityTestReportsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Retrieve deliverability data for all the campaigns that used a specific domain to send email during a specified time range. This data is available for a domain only if you enabled the Deliverability dashboard (PutDeliverabilityDashboardOption operation) for the domain.
    public func listDomainDeliverabilityCampaignsPaginator(
        _ input: ListDomainDeliverabilityCampaignsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListDomainDeliverabilityCampaignsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDomainDeliverabilityCampaigns, tokenKey: \ListDomainDeliverabilityCampaignsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of all of the email identities that are associated with your Amazon Pinpoint account. An identity can be either an email address or a domain. This operation returns identities that are verified as well as those that aren't.
    public func listEmailIdentitiesPaginator(
        _ input: ListEmailIdentitiesRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListEmailIdentitiesResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listEmailIdentities, tokenKey: \ListEmailIdentitiesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension PinpointEmail.GetDedicatedIpsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> PinpointEmail.GetDedicatedIpsRequest {
        return .init(
            nextToken: token,
            pageSize: self.pageSize,
            poolName: self.poolName
        )

    }
}

extension PinpointEmail.ListConfigurationSetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> PinpointEmail.ListConfigurationSetsRequest {
        return .init(
            nextToken: token,
            pageSize: self.pageSize
        )

    }
}

extension PinpointEmail.ListDedicatedIpPoolsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> PinpointEmail.ListDedicatedIpPoolsRequest {
        return .init(
            nextToken: token,
            pageSize: self.pageSize
        )

    }
}

extension PinpointEmail.ListDeliverabilityTestReportsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> PinpointEmail.ListDeliverabilityTestReportsRequest {
        return .init(
            nextToken: token,
            pageSize: self.pageSize
        )

    }
}

extension PinpointEmail.ListDomainDeliverabilityCampaignsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> PinpointEmail.ListDomainDeliverabilityCampaignsRequest {
        return .init(
            endDate: self.endDate,
            nextToken: token,
            pageSize: self.pageSize,
            startDate: self.startDate,
            subscribedDomain: self.subscribedDomain
        )

    }
}

extension PinpointEmail.ListEmailIdentitiesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> PinpointEmail.ListEmailIdentitiesRequest {
        return .init(
            nextToken: token,
            pageSize: self.pageSize
        )

    }
}


