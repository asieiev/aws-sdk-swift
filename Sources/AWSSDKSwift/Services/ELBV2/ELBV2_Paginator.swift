// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.


extension ELBV2 {

    ///  Describes the specified listeners or the listeners for the specified Application Load Balancer or Network Load Balancer. You must specify either a load balancer or one or more listeners. For an HTTPS or TLS listener, the output includes the default certificate for the listener. To describe the certificate list for the listener, use DescribeListenerCertificates.
    public func describeListenersPaginator(_ input: DescribeListenersInput) -> Future<[Listener]> {
        return client.paginate(input: input, command: describeListeners, resultKey: "listeners", tokenKey: "nextMarker")
    }
    
    ///  Describes the specified load balancers or all of your load balancers. To describe the listeners for a load balancer, use DescribeListeners. To describe the attributes for a load balancer, use DescribeLoadBalancerAttributes.
    public func describeLoadBalancersPaginator(_ input: DescribeLoadBalancersInput) -> Future<[LoadBalancer]> {
        return client.paginate(input: input, command: describeLoadBalancers, resultKey: "loadBalancers", tokenKey: "nextMarker")
    }
    
    ///  Describes the specified target groups or all of your target groups. By default, all target groups are described. Alternatively, you can specify one of the following to filter the results: the ARN of the load balancer, the names of one or more target groups, or the ARNs of one or more target groups. To describe the targets for a target group, use DescribeTargetHealth. To describe the attributes of a target group, use DescribeTargetGroupAttributes.
    public func describeTargetGroupsPaginator(_ input: DescribeTargetGroupsInput) -> Future<[TargetGroup]> {
        return client.paginate(input: input, command: describeTargetGroups, resultKey: "targetGroups", tokenKey: "nextMarker")
    }
    
}

extension ELBV2.DescribeListenersInput: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            listenerArns: original.listenerArns, 
            loadBalancerArn: original.loadBalancerArn, 
            marker: token, 
            pageSize: original.pageSize
        )
    }
}

extension ELBV2.DescribeLoadBalancersInput: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            loadBalancerArns: original.loadBalancerArns, 
            marker: token, 
            names: original.names, 
            pageSize: original.pageSize
        )
    }
}

extension ELBV2.DescribeTargetGroupsInput: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            loadBalancerArn: original.loadBalancerArn, 
            marker: token, 
            names: original.names, 
            pageSize: original.pageSize, 
            targetGroupArns: original.targetGroupArns
        )
    }
}


