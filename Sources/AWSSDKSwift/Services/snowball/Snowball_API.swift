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
AWS Snowball is a petabyte-scale data transport solution that uses secure appliances to transfer large amounts of data between your on-premises data centers and Amazon Simple Storage Service (Amazon S3). The Snowball commands described here provide access to the same functionality that is available in the AWS Snowball Management Console, which enables you to create and manage jobs for Snowball. To transfer data locally with a Snowball appliance, you'll need to use the Snowball client or the Amazon S3 API adapter for Snowball. For more information, see the User Guide.
*/
public struct Snowball {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: Core.Region? = nil, endpoint: String? = nil, middlewares: [AWSRequestMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "AWSIESnowballJobManagementService",
            service: "snowball",
            serviceProtocol: .json,
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [SnowballError.self]
        )
    }

    ///  Returns an array of ClusterListEntry objects of the specified length. Each ClusterListEntry object contains a cluster's state, a cluster's ID, and other important status information.
    public func listClusters(_ input: ListClustersRequest) throws -> ListClustersResult {
        return try client.send(operation: "ListClusters", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns an array of JobListEntry objects of the specified length. Each JobListEntry object is for a job in the specified cluster and contains a job's state, a job's ID, and other information.
    public func listClusterJobs(_ input: ListClusterJobsRequest) throws -> ListClusterJobsResult {
        return try client.send(operation: "ListClusterJobs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Takes an AddressId and returns specific details about that address in the form of an Address object.
    public func describeAddress(_ input: DescribeAddressRequest) throws -> DescribeAddressResult {
        return try client.send(operation: "DescribeAddress", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a job to import or export data between Amazon S3 and your on-premises data center. Your AWS account must have the right trust policies and permissions in place to create a job for Snowball. If you're creating a job for a node in a cluster, you only need to provide the clusterId value; the other job attributes are inherited from the cluster. .
    public func createJob(_ input: CreateJobRequest) throws -> CreateJobResult {
        return try client.send(operation: "CreateJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a specific cluster including shipping information, cluster status, and other important metadata.
    public func describeCluster(_ input: DescribeClusterRequest) throws -> DescribeClusterResult {
        return try client.send(operation: "DescribeCluster", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about the Snowball service limit for your account, and also the number of Snowballs your account has in use. The default service limit for the number of Snowballs that you can have at one time is 1. If you want to increase your service limit, contact AWS Support.
    public func getSnowballUsage(_ input: GetSnowballUsageRequest) throws -> GetSnowballUsageResult {
        return try client.send(operation: "GetSnowballUsage", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a specified number of ADDRESS objects. Calling this API in one of the US regions will return addresses from the list of all addresses associated with this account in all US regions.
    public func describeAddresses(_ input: DescribeAddressesRequest) throws -> DescribeAddressesResult {
        return try client.send(operation: "DescribeAddresses", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an empty cluster. Each cluster supports five nodes. You use the CreateJob action separately to create the jobs for each of these nodes. The cluster does not ship until these five node jobs have been created.
    public func createCluster(_ input: CreateClusterRequest) throws -> CreateClusterResult {
        return try client.send(operation: "CreateCluster", path: "/", httpMethod: "POST", input: input)
    }

    ///  While a cluster's ClusterState value is in the AwaitingQuorum state, you can update some of the information associated with a cluster. Once the cluster changes to a different job state, usually 60 minutes after the cluster being created, this action is no longer available.
    public func updateCluster(_ input: UpdateClusterRequest) throws -> UpdateClusterResult {
        return try client.send(operation: "UpdateCluster", path: "/", httpMethod: "POST", input: input)
    }

    ///  While a job's JobState value is New, you can update some of the information associated with a job. Once the job changes to a different job state, usually within 60 minutes of the job being created, this action is no longer available.
    public func updateJob(_ input: UpdateJobRequest) throws -> UpdateJobResult {
        return try client.send(operation: "UpdateJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the UnlockCode code value for the specified job. A particular UnlockCode value can be accessed for up to 90 days after the associated job has been created. The UnlockCode value is a 29-character code with 25 alphanumeric characters and 4 hyphens. This code is used to decrypt the manifest file when it is passed along with the manifest to the Snowball through the Snowball client when the client is started for the first time. As a best practice, we recommend that you don't save a copy of the UnlockCode in the same location as the manifest file for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snowball associated with that job.
    public func getJobUnlockCode(_ input: GetJobUnlockCodeRequest) throws -> GetJobUnlockCodeResult {
        return try client.send(operation: "GetJobUnlockCode", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a link to an Amazon S3 presigned URL for the manifest file associated with the specified JobId value. You can access the manifest file for up to 60 minutes after this request has been made. To access the manifest file after 60 minutes have passed, you'll have to make another call to the GetJobManifest action. The manifest is an encrypted file that you can download after your job enters the WithCustomer status. The manifest is decrypted by using the UnlockCode code value, when you pass both values to the Snowball through the Snowball client when the client is started for the first time. As a best practice, we recommend that you don't save a copy of an UnlockCode value in the same location as the manifest file for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snowball associated with that job. The credentials of a given job, including its manifest file and unlock code, expire 90 days after the job is created.
    public func getJobManifest(_ input: GetJobManifestRequest) throws -> GetJobManifestResult {
        return try client.send(operation: "GetJobManifest", path: "/", httpMethod: "POST", input: input)
    }

    ///  Cancels a cluster job. You can only cancel a cluster job while it's in the AwaitingQuorum status. You'll have at least an hour after creating a cluster job to cancel it.
    public func cancelCluster(_ input: CancelClusterRequest) throws -> CancelClusterResult {
        return try client.send(operation: "CancelCluster", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an address for a Snowball to be shipped to.  Addresses are validated at the time of creation. The address you provide must be located within the serviceable area of your region. If the address is invalid or unsupported, then an exception is thrown.
    public func createAddress(_ input: CreateAddressRequest) throws -> CreateAddressResult {
        return try client.send(operation: "CreateAddress", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns an array of JobListEntry objects of the specified length. Each JobListEntry object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of export jobs. Calling this API action in one of the US regions will return jobs from the list of all jobs associated with this account in all US regions.
    public func listJobs(_ input: ListJobsRequest) throws -> ListJobsResult {
        return try client.send(operation: "ListJobs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a specific job including shipping information, job status, and other important metadata. .
    public func describeJob(_ input: DescribeJobRequest) throws -> DescribeJobResult {
        return try client.send(operation: "DescribeJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Cancels the specified job. You can only cancel a job before its JobState value changes to PreparingAppliance. Requesting the ListJobs or DescribeJob action will return a job's JobState as part of the response element data returned.
    public func cancelJob(_ input: CancelJobRequest) throws -> CancelJobResult {
        return try client.send(operation: "CancelJob", path: "/", httpMethod: "POST", input: input)
    }


}