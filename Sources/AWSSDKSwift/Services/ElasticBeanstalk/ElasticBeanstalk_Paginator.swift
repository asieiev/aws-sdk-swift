// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.


extension ElasticBeanstalk {

    ///  Returns list of event descriptions matching criteria up to the last 6 weeks.  This action returns the most recent 1,000 events from the specified NextToken. 
    public func describeEventsPaginator(_ input: DescribeEventsMessage) -> Future<[EventDescription]> {
        return client.paginate(input: input, command: describeEvents, resultKey: "events", tokenKey: "nextToken")
    }
    
}

extension ElasticBeanstalk.DescribeEventsMessage: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            applicationName: original.applicationName, 
            endTime: original.endTime, 
            environmentId: original.environmentId, 
            environmentName: original.environmentName, 
            maxRecords: original.maxRecords, 
            nextToken: token, 
            platformArn: original.platformArn, 
            requestId: original.requestId, 
            severity: original.severity, 
            startTime: original.startTime, 
            templateName: original.templateName, 
            versionLabel: original.versionLabel
        )
    }
}


