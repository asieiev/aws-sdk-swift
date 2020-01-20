// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.


extension DocDB {

    ///  Returns information about provisioned Amazon DocumentDB DB clusters. This API operation supports pagination.
    public func describeDBClustersPaginator(_ input: DescribeDBClustersMessage) -> Future<[DBCluster]> {
        return client.paginate(input: input, command: describeDBClusters, resultKey: "dBClusters", tokenKey: "marker")
    }
    
    ///  Returns a list of the available DB engines.
    public func describeDBEngineVersionsPaginator(_ input: DescribeDBEngineVersionsMessage) -> Future<[DBEngineVersion]> {
        return client.paginate(input: input, command: describeDBEngineVersions, resultKey: "dBEngineVersions", tokenKey: "marker")
    }
    
    ///  Returns information about provisioned Amazon DocumentDB instances. This API supports pagination.
    public func describeDBInstancesPaginator(_ input: DescribeDBInstancesMessage) -> Future<[DBInstance]> {
        return client.paginate(input: input, command: describeDBInstances, resultKey: "dBInstances", tokenKey: "marker")
    }
    
    ///  Returns a list of DBSubnetGroup descriptions. If a DBSubnetGroupName is specified, the list will contain only the descriptions of the specified DBSubnetGroup.
    public func describeDBSubnetGroupsPaginator(_ input: DescribeDBSubnetGroupsMessage) -> Future<[DBSubnetGroup]> {
        return client.paginate(input: input, command: describeDBSubnetGroups, resultKey: "dBSubnetGroups", tokenKey: "marker")
    }
    
    ///  Returns events related to DB instances, DB security groups, DB snapshots, and DB parameter groups for the past 14 days. You can obtain events specific to a particular DB instance, DB security group, DB snapshot, or DB parameter group by providing the name as a parameter. By default, the events of the past hour are returned.
    public func describeEventsPaginator(_ input: DescribeEventsMessage) -> Future<[Event]> {
        return client.paginate(input: input, command: describeEvents, resultKey: "events", tokenKey: "marker")
    }
    
    ///  Returns a list of orderable DB instance options for the specified engine.
    public func describeOrderableDBInstanceOptionsPaginator(_ input: DescribeOrderableDBInstanceOptionsMessage) -> Future<[OrderableDBInstanceOption]> {
        return client.paginate(input: input, command: describeOrderableDBInstanceOptions, resultKey: "orderableDBInstanceOptions", tokenKey: "marker")
    }
    
}

extension DocDB.DescribeDBClustersMessage: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            dBClusterIdentifier: original.dBClusterIdentifier, 
            filters: original.filters, 
            marker: token, 
            maxRecords: original.maxRecords
        )
    }
}

extension DocDB.DescribeDBEngineVersionsMessage: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            dBParameterGroupFamily: original.dBParameterGroupFamily, 
            defaultOnly: original.defaultOnly, 
            engine: original.engine, 
            engineVersion: original.engineVersion, 
            filters: original.filters, 
            listSupportedCharacterSets: original.listSupportedCharacterSets, 
            listSupportedTimezones: original.listSupportedTimezones, 
            marker: token, 
            maxRecords: original.maxRecords
        )
    }
}

extension DocDB.DescribeDBInstancesMessage: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            dBInstanceIdentifier: original.dBInstanceIdentifier, 
            filters: original.filters, 
            marker: token, 
            maxRecords: original.maxRecords
        )
    }
}

extension DocDB.DescribeDBSubnetGroupsMessage: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            dBSubnetGroupName: original.dBSubnetGroupName, 
            filters: original.filters, 
            marker: token, 
            maxRecords: original.maxRecords
        )
    }
}

extension DocDB.DescribeEventsMessage: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            duration: original.duration, 
            endTime: original.endTime, 
            eventCategories: original.eventCategories, 
            filters: original.filters, 
            marker: token, 
            maxRecords: original.maxRecords, 
            sourceIdentifier: original.sourceIdentifier, 
            sourceType: original.sourceType, 
            startTime: original.startTime
        )
    }
}

extension DocDB.DescribeOrderableDBInstanceOptionsMessage: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            dBInstanceClass: original.dBInstanceClass, 
            engine: original.engine, 
            engineVersion: original.engineVersion, 
            filters: original.filters, 
            licenseModel: original.licenseModel, 
            marker: token, 
            maxRecords: original.maxRecords, 
            vpc: original.vpc
        )
    }
}


