// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.


extension DataExchange {

    ///  This operation lists a data set's revisions sorted by CreatedAt in descending order.
    public func listDataSetRevisionsPaginator(_ input: ListDataSetRevisionsRequest) -> Future<[RevisionEntry]> {
        return client.paginate(input: input, command: listDataSetRevisions, resultKey: "revisions", tokenKey: "nextToken")
    }
    
    ///  This operation lists your data sets. When listing by origin OWNED, results are sorted by CreatedAt in descending order. When listing by origin ENTITLED, there is no order and the maxResults parameter is ignored.
    public func listDataSetsPaginator(_ input: ListDataSetsRequest) -> Future<[DataSetEntry]> {
        return client.paginate(input: input, command: listDataSets, resultKey: "dataSets", tokenKey: "nextToken")
    }
    
    ///  This operation lists your jobs sorted by CreatedAt in descending order.
    public func listJobsPaginator(_ input: ListJobsRequest) -> Future<[JobEntry]> {
        return client.paginate(input: input, command: listJobs, resultKey: "jobs", tokenKey: "nextToken")
    }
    
    ///  This operation lists a revision's assets sorted alphabetically in descending order.
    public func listRevisionAssetsPaginator(_ input: ListRevisionAssetsRequest) -> Future<[AssetEntry]> {
        return client.paginate(input: input, command: listRevisionAssets, resultKey: "assets", tokenKey: "nextToken")
    }
    
}

extension DataExchange.ListDataSetRevisionsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            dataSetId: original.dataSetId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension DataExchange.ListDataSetsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            origin: original.origin
        )
    }
}

extension DataExchange.ListJobsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            dataSetId: original.dataSetId, 
            maxResults: original.maxResults, 
            nextToken: token, 
            revisionId: original.revisionId
        )
    }
}

extension DataExchange.ListRevisionAssetsRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            dataSetId: original.dataSetId, 
            maxResults: original.maxResults, 
            nextToken: token, 
            revisionId: original.revisionId
        )
    }
}


