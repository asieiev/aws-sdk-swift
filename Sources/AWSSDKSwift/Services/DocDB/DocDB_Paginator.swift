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

extension DocDB {

    ///  Returns information about provisioned Amazon DocumentDB clusters. This API operation supports pagination. For certain management features such as cluster and instance lifecycle management, Amazon DocumentDB leverages operational technology that is shared with Amazon RDS and Amazon Neptune. Use the filterName=engine,Values=docdb filter parameter to return only Amazon DocumentDB clusters.
    public func describeDBClustersPaginator(
        _ input: DescribeDBClustersMessage,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DBClusterMessage,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeDBClusters, tokenKey: \DBClusterMessage.marker, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of the available engines.
    public func describeDBEngineVersionsPaginator(
        _ input: DescribeDBEngineVersionsMessage,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DBEngineVersionMessage,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeDBEngineVersions, tokenKey: \DBEngineVersionMessage.marker, on: eventLoop, onPage: onPage)
    }

    ///  Returns information about provisioned Amazon DocumentDB instances. This API supports pagination.
    public func describeDBInstancesPaginator(
        _ input: DescribeDBInstancesMessage,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DBInstanceMessage,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeDBInstances, tokenKey: \DBInstanceMessage.marker, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of DBSubnetGroup descriptions. If a DBSubnetGroupName is specified, the list will contain only the descriptions of the specified DBSubnetGroup.
    public func describeDBSubnetGroupsPaginator(
        _ input: DescribeDBSubnetGroupsMessage,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DBSubnetGroupMessage,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeDBSubnetGroups, tokenKey: \DBSubnetGroupMessage.marker, on: eventLoop, onPage: onPage)
    }

    ///  Returns events related to instances, security groups, snapshots, and DB parameter groups for the past 14 days. You can obtain events specific to a particular DB instance, security group, snapshot, or parameter group by providing the name as a parameter. By default, the events of the past hour are returned.
    public func describeEventsPaginator(
        _ input: DescribeEventsMessage,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (EventsMessage,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeEvents, tokenKey: \EventsMessage.marker, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of orderable instance options for the specified engine.
    public func describeOrderableDBInstanceOptionsPaginator(
        _ input: DescribeOrderableDBInstanceOptionsMessage,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (OrderableDBInstanceOptionsMessage,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeOrderableDBInstanceOptions, tokenKey: \OrderableDBInstanceOptionsMessage.marker, on: eventLoop, onPage: onPage)
    }

}

extension DocDB.DescribeDBClustersMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DocDB.DescribeDBClustersMessage {
        return .init(
            dBClusterIdentifier: self.dBClusterIdentifier,
            filters: self.filters,
            marker: token,
            maxRecords: self.maxRecords
        )

    }
}

extension DocDB.DescribeDBEngineVersionsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DocDB.DescribeDBEngineVersionsMessage {
        return .init(
            dBParameterGroupFamily: self.dBParameterGroupFamily,
            defaultOnly: self.defaultOnly,
            engine: self.engine,
            engineVersion: self.engineVersion,
            filters: self.filters,
            listSupportedCharacterSets: self.listSupportedCharacterSets,
            listSupportedTimezones: self.listSupportedTimezones,
            marker: token,
            maxRecords: self.maxRecords
        )

    }
}

extension DocDB.DescribeDBInstancesMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DocDB.DescribeDBInstancesMessage {
        return .init(
            dBInstanceIdentifier: self.dBInstanceIdentifier,
            filters: self.filters,
            marker: token,
            maxRecords: self.maxRecords
        )

    }
}

extension DocDB.DescribeDBSubnetGroupsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DocDB.DescribeDBSubnetGroupsMessage {
        return .init(
            dBSubnetGroupName: self.dBSubnetGroupName,
            filters: self.filters,
            marker: token,
            maxRecords: self.maxRecords
        )

    }
}

extension DocDB.DescribeEventsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DocDB.DescribeEventsMessage {
        return .init(
            duration: self.duration,
            endTime: self.endTime,
            eventCategories: self.eventCategories,
            filters: self.filters,
            marker: token,
            maxRecords: self.maxRecords,
            sourceIdentifier: self.sourceIdentifier,
            sourceType: self.sourceType,
            startTime: self.startTime
        )

    }
}

extension DocDB.DescribeOrderableDBInstanceOptionsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DocDB.DescribeOrderableDBInstanceOptionsMessage {
        return .init(
            dBInstanceClass: self.dBInstanceClass,
            engine: self.engine,
            engineVersion: self.engineVersion,
            filters: self.filters,
            licenseModel: self.licenseModel,
            marker: token,
            maxRecords: self.maxRecords,
            vpc: self.vpc
        )

    }
}


