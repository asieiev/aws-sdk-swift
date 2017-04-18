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

extension CognitoSync {

    public struct ListDatasetsResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// A pagination token for obtaining the next page of results.
        public var nextToken: String? = nil
        /// A set of datasets.
        public var datasets: [Dataset]? = nil
        /// Number of datasets returned.
        public var count: Int32? = nil

        public init() {}

        public init(nextToken: String? = nil, datasets: [Dataset]? = nil, count: Int32? = nil) {
            self.nextToken = nextToken
            self.datasets = datasets
            self.count = count
        }

    }

    public struct DescribeDatasetRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var pathParams: [String: String] {
            return ["IdentityPoolId": "IdentityPoolId", "DatasetName": "DatasetName", "IdentityId": "IdentityId"]
        }
        /// A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
        public var identityPoolId: String = ""
        /// A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).
        public var datasetName: String = ""
        /// A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
        public var identityId: String = ""

        public init() {}

        public init(identityPoolId: String, datasetName: String, identityId: String) {
            self.identityPoolId = identityPoolId
            self.datasetName = datasetName
            self.identityId = identityId
        }

    }

    public struct ListIdentityPoolUsageRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var queryParams: [String: String] {
            return ["nextToken": "NextToken", "maxResults": "MaxResults"]
        }
        /// A pagination token for obtaining the next page of results.
        public var nextToken: String? = nil
        /// The maximum number of results to be returned.
        public var maxResults: Int32? = nil

        public init() {}

        public init(nextToken: String? = nil, maxResults: Int32? = nil) {
            self.nextToken = nextToken
            self.maxResults = maxResults
        }

    }

    public struct UpdateRecordsResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// A list of records that have been updated.
        public var records: [Record]? = nil

        public init() {}

        public init(records: [Record]? = nil) {
            self.records = records
        }

    }

    public struct BulkPublishRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var pathParams: [String: String] {
            return ["IdentityPoolId": "IdentityPoolId"]
        }
        /// A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
        public var identityPoolId: String = ""

        public init() {}

        public init(identityPoolId: String) {
            self.identityPoolId = identityPoolId
        }

    }

    public struct GetBulkPublishDetailsResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The date/time at which the last bulk publish was initiated.
        public var bulkPublishStartTime: Date? = nil
        /// If BulkPublishStatus is SUCCEEDED, the time the last bulk publish operation completed.
        public var bulkPublishCompleteTime: Date? = nil
        /// Status of the last bulk publish operation, valid values are: NOT_STARTED - No bulk publish has been requested for this identity pool IN_PROGRESS - Data is being published to the configured stream SUCCEEDED - All data for the identity pool has been published to the configured stream FAILED - Some portion of the data has failed to publish, check FailureMessage for the cause.
        public var bulkPublishStatus: String? = nil
        /// A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
        public var identityPoolId: String? = nil
        /// If BulkPublishStatus is FAILED this field will contain the error message that caused the bulk publish to fail.
        public var failureMessage: String? = nil

        public init() {}

        public init(bulkPublishStartTime: Date? = nil, bulkPublishCompleteTime: Date? = nil, bulkPublishStatus: String? = nil, identityPoolId: String? = nil, failureMessage: String? = nil) {
            self.bulkPublishStartTime = bulkPublishStartTime
            self.bulkPublishCompleteTime = bulkPublishCompleteTime
            self.bulkPublishStatus = bulkPublishStatus
            self.identityPoolId = identityPoolId
            self.failureMessage = failureMessage
        }

    }

    public struct GetBulkPublishDetailsRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var pathParams: [String: String] {
            return ["IdentityPoolId": "IdentityPoolId"]
        }
        /// A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
        public var identityPoolId: String = ""

        public init() {}

        public init(identityPoolId: String) {
            self.identityPoolId = identityPoolId
        }

    }

    public struct RegisterDeviceResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The unique ID generated for this device by Cognito.
        public var deviceId: String? = nil

        public init() {}

        public init(deviceId: String? = nil) {
            self.deviceId = deviceId
        }

    }

    public struct ListDatasetsRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var queryParams: [String: String] {
            return ["nextToken": "NextToken", "maxResults": "MaxResults"]
        }
        public var pathParams: [String: String] {
            return ["IdentityPoolId": "IdentityPoolId", "IdentityId": "IdentityId"]
        }
        /// A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
        public var identityId: String = ""
        /// A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
        public var identityPoolId: String = ""
        /// A pagination token for obtaining the next page of results.
        public var nextToken: String? = nil
        /// The maximum number of results to be returned.
        public var maxResults: Int32? = nil

        public init() {}

        public init(identityId: String, identityPoolId: String, nextToken: String? = nil, maxResults: Int32? = nil) {
            self.identityId = identityId
            self.identityPoolId = identityPoolId
            self.nextToken = nextToken
            self.maxResults = maxResults
        }

    }

    public struct GetIdentityPoolConfigurationRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var pathParams: [String: String] {
            return ["IdentityPoolId": "IdentityPoolId"]
        }
        /// A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. This is the ID of the pool for which to return a configuration.
        public var identityPoolId: String = ""

        public init() {}

        public init(identityPoolId: String) {
            self.identityPoolId = identityPoolId
        }

    }

    public struct GetCognitoEventsRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var pathParams: [String: String] {
            return ["IdentityPoolId": "IdentityPoolId"]
        }
        /// The Cognito Identity Pool ID for the request
        public var identityPoolId: String = ""

        public init() {}

        public init(identityPoolId: String) {
            self.identityPoolId = identityPoolId
        }

    }

    public struct SubscribeToDatasetResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil

        public init() {}

    }

    public struct GetCognitoEventsResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The Cognito Events returned from the GetCognitoEvents request
        public var events: [String: String]? = nil

        public init() {}

        public init(events: [String: String]? = nil) {
            self.events = events
        }

    }

    public struct RegisterDeviceRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var pathParams: [String: String] {
            return ["IdentityPoolId": "IdentityPoolId", "IdentityId": "IdentityId"]
        }
        /// The SNS platform type (e.g. GCM, SDM, APNS, APNS_SANDBOX).
        public var platform: String = ""
        /// The push token.
        public var token: String = ""
        /// A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. Here, the ID of the pool that the identity belongs to.
        public var identityPoolId: String = ""
        /// The unique ID for this identity.
        public var identityId: String = ""

        public init() {}

        public init(platform: String, token: String, identityPoolId: String, identityId: String) {
            self.platform = platform
            self.token = token
            self.identityPoolId = identityPoolId
            self.identityId = identityId
        }

    }

    public struct SetIdentityPoolConfigurationRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var pathParams: [String: String] {
            return ["IdentityPoolId": "IdentityPoolId"]
        }
        /// A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. This is the ID of the pool to modify.
        public var identityPoolId: String = ""
        /// Options to apply to this identity pool for push synchronization.
        public var pushSync: PushSync? = nil
        /// Options to apply to this identity pool for Amazon Cognito streams.
        public var cognitoStreams: CognitoStreams? = nil

        public init() {}

        public init(identityPoolId: String, pushSync: PushSync? = nil, cognitoStreams: CognitoStreams? = nil) {
            self.identityPoolId = identityPoolId
            self.pushSync = pushSync
            self.cognitoStreams = cognitoStreams
        }

    }

    public struct CognitoStreams: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The ARN of the role Amazon Cognito can assume in order to publish to the stream. This role must grant access to Amazon Cognito (cognito-sync) to invoke PutRecord on your Cognito stream.
        public var roleArn: String? = nil
        /// Status of the Cognito streams. Valid values are: ENABLED - Streaming of updates to identity pool is enabled. DISABLED - Streaming of updates to identity pool is disabled. Bulk publish will also fail if StreamingStatus is DISABLED.
        public var streamingStatus: String? = nil
        /// The name of the Cognito stream to receive updates. This stream must be in the developers account and in the same region as the identity pool.
        public var streamName: String? = nil

        public init() {}

        public init(roleArn: String? = nil, streamingStatus: String? = nil, streamName: String? = nil) {
            self.roleArn = roleArn
            self.streamingStatus = streamingStatus
            self.streamName = streamName
        }

    }

    public struct ListRecordsRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var queryParams: [String: String] {
            return ["syncSessionToken": "SyncSessionToken", "lastSyncCount": "LastSyncCount", "nextToken": "NextToken", "maxResults": "MaxResults"]
        }
        public var pathParams: [String: String] {
            return ["IdentityPoolId": "IdentityPoolId", "DatasetName": "DatasetName", "IdentityId": "IdentityId"]
        }
        /// A token containing a session ID, identity ID, and expiration.
        public var syncSessionToken: String? = nil
        /// A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).
        public var datasetName: String = ""
        /// The last server sync count for this record.
        public var lastSyncCount: Int64? = nil
        /// A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
        public var identityId: String = ""
        /// A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
        public var identityPoolId: String = ""
        /// A pagination token for obtaining the next page of results.
        public var nextToken: String? = nil
        /// The maximum number of results to be returned.
        public var maxResults: Int32? = nil

        public init() {}

        public init(syncSessionToken: String? = nil, datasetName: String, lastSyncCount: Int64? = nil, identityId: String, identityPoolId: String, nextToken: String? = nil, maxResults: Int32? = nil) {
            self.syncSessionToken = syncSessionToken
            self.datasetName = datasetName
            self.lastSyncCount = lastSyncCount
            self.identityId = identityId
            self.identityPoolId = identityPoolId
            self.nextToken = nextToken
            self.maxResults = maxResults
        }

    }

    public struct DescribeDatasetResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// Meta data for a collection of data for an identity. An identity can have multiple datasets. A dataset can be general or associated with a particular entity in an application (like a saved game). Datasets are automatically created if they don't exist. Data is synced by dataset, and a dataset can hold up to 1MB of key-value pairs.
        public var dataset: Dataset? = nil

        public init() {}

        public init(dataset: Dataset? = nil) {
            self.dataset = dataset
        }

    }

    public struct UnsubscribeFromDatasetRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var pathParams: [String: String] {
            return ["DeviceId": "DeviceId", "IdentityId": "IdentityId", "IdentityPoolId": "IdentityPoolId", "DatasetName": "DatasetName"]
        }
        /// The unique ID generated for this device by Cognito.
        public var deviceId: String = ""
        /// Unique ID for this identity.
        public var identityId: String = ""
        /// A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. The ID of the pool to which this identity belongs.
        public var identityPoolId: String = ""
        /// The name of the dataset from which to unsubcribe.
        public var datasetName: String = ""

        public init() {}

        public init(deviceId: String, identityId: String, identityPoolId: String, datasetName: String) {
            self.deviceId = deviceId
            self.identityId = identityId
            self.identityPoolId = identityPoolId
            self.datasetName = datasetName
        }

    }

    public struct PushSync: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// A role configured to allow Cognito to call SNS on behalf of the developer.
        public var roleArn: String? = nil
        /// List of SNS platform application ARNs that could be used by clients.
        public var applicationArns: [String]? = nil

        public init() {}

        public init(roleArn: String? = nil, applicationArns: [String]? = nil) {
            self.roleArn = roleArn
            self.applicationArns = applicationArns
        }

    }

    public struct Record: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The date on which the record was last modified.
        public var lastModifiedDate: Date? = nil
        /// The last modified date of the client device.
        public var deviceLastModifiedDate: Date? = nil
        /// The key for the record.
        public var key: String? = nil
        /// The server sync count for this record.
        public var syncCount: Int64? = nil
        /// The value for the record.
        public var value: String? = nil
        /// The user/device that made the last change to this record.
        public var lastModifiedBy: String? = nil

        public init() {}

        public init(lastModifiedDate: Date? = nil, deviceLastModifiedDate: Date? = nil, key: String? = nil, syncCount: Int64? = nil, value: String? = nil, lastModifiedBy: String? = nil) {
            self.lastModifiedDate = lastModifiedDate
            self.deviceLastModifiedDate = deviceLastModifiedDate
            self.key = key
            self.syncCount = syncCount
            self.value = value
            self.lastModifiedBy = lastModifiedBy
        }

    }

    public struct IdentityUsage: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// Number of datasets for the identity.
        public var datasetCount: Int32? = nil
        /// Date on which the identity was last modified.
        public var lastModifiedDate: Date? = nil
        /// A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
        public var identityId: String? = nil
        /// A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
        public var identityPoolId: String? = nil
        /// Total data storage for this identity.
        public var dataStorage: Int64? = nil

        public init() {}

        public init(datasetCount: Int32? = nil, lastModifiedDate: Date? = nil, identityId: String? = nil, identityPoolId: String? = nil, dataStorage: Int64? = nil) {
            self.datasetCount = datasetCount
            self.lastModifiedDate = lastModifiedDate
            self.identityId = identityId
            self.identityPoolId = identityPoolId
            self.dataStorage = dataStorage
        }

    }

    public struct DescribeIdentityPoolUsageRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var pathParams: [String: String] {
            return ["IdentityPoolId": "IdentityPoolId"]
        }
        /// A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
        public var identityPoolId: String = ""

        public init() {}

        public init(identityPoolId: String) {
            self.identityPoolId = identityPoolId
        }

    }

    public struct Dataset: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// Number of records in this dataset.
        public var numRecords: Int64? = nil
        /// A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).
        public var datasetName: String? = nil
        /// Date when the dataset was last modified.
        public var lastModifiedDate: Date? = nil
        /// Date on which the dataset was created.
        public var creationDate: Date? = nil
        /// A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
        public var identityId: String? = nil
        /// Total size in bytes of the records in this dataset.
        public var dataStorage: Int64? = nil
        /// The device that made the last change to this dataset.
        public var lastModifiedBy: String? = nil

        public init() {}

        public init(numRecords: Int64? = nil, datasetName: String? = nil, lastModifiedDate: Date? = nil, creationDate: Date? = nil, identityId: String? = nil, dataStorage: Int64? = nil, lastModifiedBy: String? = nil) {
            self.numRecords = numRecords
            self.datasetName = datasetName
            self.lastModifiedDate = lastModifiedDate
            self.creationDate = creationDate
            self.identityId = identityId
            self.dataStorage = dataStorage
            self.lastModifiedBy = lastModifiedBy
        }

    }

    public struct SetIdentityPoolConfigurationResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito.
        public var identityPoolId: String? = nil
        /// Options to apply to this identity pool for push synchronization.
        public var pushSync: PushSync? = nil
        /// Options to apply to this identity pool for Amazon Cognito streams.
        public var cognitoStreams: CognitoStreams? = nil

        public init() {}

        public init(identityPoolId: String? = nil, pushSync: PushSync? = nil, cognitoStreams: CognitoStreams? = nil) {
            self.identityPoolId = identityPoolId
            self.pushSync = pushSync
            self.cognitoStreams = cognitoStreams
        }

    }

    public struct DescribeIdentityUsageResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// Usage information for the identity.
        public var identityUsage: IdentityUsage? = nil

        public init() {}

        public init(identityUsage: IdentityUsage? = nil) {
            self.identityUsage = identityUsage
        }

    }

    public struct GetIdentityPoolConfigurationResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito.
        public var identityPoolId: String? = nil
        /// Options to apply to this identity pool for push synchronization.
        public var pushSync: PushSync? = nil
        /// Options to apply to this identity pool for Amazon Cognito streams.
        public var cognitoStreams: CognitoStreams? = nil

        public init() {}

        public init(identityPoolId: String? = nil, pushSync: PushSync? = nil, cognitoStreams: CognitoStreams? = nil) {
            self.identityPoolId = identityPoolId
            self.pushSync = pushSync
            self.cognitoStreams = cognitoStreams
        }

    }

    public struct ListIdentityPoolUsageResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The maximum number of results to be returned.
        public var maxResults: Int32? = nil
        /// A pagination token for obtaining the next page of results.
        public var nextToken: String? = nil
        /// Usage information for the identity pools.
        public var identityPoolUsages: [IdentityPoolUsage]? = nil
        /// Total number of identities for the identity pool.
        public var count: Int32? = nil

        public init() {}

        public init(maxResults: Int32? = nil, nextToken: String? = nil, identityPoolUsages: [IdentityPoolUsage]? = nil, count: Int32? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.identityPoolUsages = identityPoolUsages
            self.count = count
        }

    }

    public struct UpdateRecordsRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var headerParams: [String: String] {
            return ["x-amz-Client-Context": "ClientContext"]
        }
        public var pathParams: [String: String] {
            return ["IdentityPoolId": "IdentityPoolId", "DatasetName": "DatasetName", "IdentityId": "IdentityId"]
        }
        /// The unique ID generated for this device by Cognito.
        public var deviceId: String? = nil
        /// The SyncSessionToken returned by a previous call to ListRecords for this dataset and identity.
        public var syncSessionToken: String = ""
        /// A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).
        public var datasetName: String = ""
        /// A list of patch operations.
        public var recordPatches: [RecordPatch]? = nil
        /// Intended to supply a device ID that will populate the lastModifiedBy field referenced in other methods. The ClientContext field is not yet implemented.
        public var clientContext: String? = nil
        /// A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
        public var identityId: String = ""
        /// A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
        public var identityPoolId: String = ""

        public init() {}

        public init(deviceId: String? = nil, syncSessionToken: String, datasetName: String, recordPatches: [RecordPatch]? = nil, clientContext: String? = nil, identityId: String, identityPoolId: String) {
            self.deviceId = deviceId
            self.syncSessionToken = syncSessionToken
            self.datasetName = datasetName
            self.recordPatches = recordPatches
            self.clientContext = clientContext
            self.identityId = identityId
            self.identityPoolId = identityPoolId
        }

    }

    public struct SubscribeToDatasetRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var pathParams: [String: String] {
            return ["DeviceId": "DeviceId", "IdentityId": "IdentityId", "IdentityPoolId": "IdentityPoolId", "DatasetName": "DatasetName"]
        }
        /// The unique ID generated for this device by Cognito.
        public var deviceId: String = ""
        /// Unique ID for this identity.
        public var identityId: String = ""
        /// A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. The ID of the pool to which the identity belongs.
        public var identityPoolId: String = ""
        /// The name of the dataset to subcribe to.
        public var datasetName: String = ""

        public init() {}

        public init(deviceId: String, identityId: String, identityPoolId: String, datasetName: String) {
            self.deviceId = deviceId
            self.identityId = identityId
            self.identityPoolId = identityPoolId
            self.datasetName = datasetName
        }

    }

    public struct IdentityPoolUsage: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// Number of sync sessions for the identity pool.
        public var syncSessionsCount: Int64? = nil
        /// Date on which the identity pool was last modified.
        public var lastModifiedDate: Date? = nil
        /// A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
        public var identityPoolId: String? = nil
        /// Data storage information for the identity pool.
        public var dataStorage: Int64? = nil

        public init() {}

        public init(syncSessionsCount: Int64? = nil, lastModifiedDate: Date? = nil, identityPoolId: String? = nil, dataStorage: Int64? = nil) {
            self.syncSessionsCount = syncSessionsCount
            self.lastModifiedDate = lastModifiedDate
            self.identityPoolId = identityPoolId
            self.dataStorage = dataStorage
        }

    }

    public struct DescribeIdentityPoolUsageResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// Information about the usage of the identity pool.
        public var identityPoolUsage: IdentityPoolUsage? = nil

        public init() {}

        public init(identityPoolUsage: IdentityPoolUsage? = nil) {
            self.identityPoolUsage = identityPoolUsage
        }

    }

    public struct ListRecordsResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// A list of all records.
        public var records: [Record]? = nil
        /// Names of merged datasets.
        public var mergedDatasetNames: [String]? = nil
        /// A token containing a session ID, identity ID, and expiration.
        public var syncSessionToken: String? = nil
        /// Server sync count for this dataset.
        public var datasetSyncCount: Int64? = nil
        /// Total number of records.
        public var count: Int32? = nil
        /// Indicates whether the dataset exists.
        public var datasetExists: Bool? = nil
        /// A boolean value specifying whether to delete the dataset locally.
        public var datasetDeletedAfterRequestedSyncCount: Bool? = nil
        /// A pagination token for obtaining the next page of results.
        public var nextToken: String? = nil
        /// The user/device that made the last change to this record.
        public var lastModifiedBy: String? = nil

        public init() {}

        public init(records: [Record]? = nil, mergedDatasetNames: [String]? = nil, syncSessionToken: String? = nil, datasetSyncCount: Int64? = nil, count: Int32? = nil, datasetExists: Bool? = nil, datasetDeletedAfterRequestedSyncCount: Bool? = nil, nextToken: String? = nil, lastModifiedBy: String? = nil) {
            self.records = records
            self.mergedDatasetNames = mergedDatasetNames
            self.syncSessionToken = syncSessionToken
            self.datasetSyncCount = datasetSyncCount
            self.count = count
            self.datasetExists = datasetExists
            self.datasetDeletedAfterRequestedSyncCount = datasetDeletedAfterRequestedSyncCount
            self.nextToken = nextToken
            self.lastModifiedBy = lastModifiedBy
        }

    }

    public struct DeleteDatasetRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var pathParams: [String: String] {
            return ["IdentityPoolId": "IdentityPoolId", "DatasetName": "DatasetName", "IdentityId": "IdentityId"]
        }
        /// A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
        public var identityPoolId: String = ""
        /// A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).
        public var datasetName: String = ""
        /// A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
        public var identityId: String = ""

        public init() {}

        public init(identityPoolId: String, datasetName: String, identityId: String) {
            self.identityPoolId = identityPoolId
            self.datasetName = datasetName
            self.identityId = identityId
        }

    }

    public struct DeleteDatasetResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// A collection of data for an identity pool. An identity pool can have multiple datasets. A dataset is per identity and can be general or associated with a particular entity in an application (like a saved game). Datasets are automatically created if they don't exist. Data is synced by dataset, and a dataset can hold up to 1MB of key-value pairs.
        public var dataset: Dataset? = nil

        public init() {}

        public init(dataset: Dataset? = nil) {
            self.dataset = dataset
        }

    }

    public struct RecordPatch: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// An operation, either replace or remove.
        public var op: String = ""
        /// The last modified date of the client device.
        public var deviceLastModifiedDate: Date? = nil
        /// The key associated with the record patch.
        public var key: String = ""
        /// Last known server sync count for this record. Set to 0 if unknown.
        public var syncCount: Int64 = 0
        /// The value associated with the record patch.
        public var value: String? = nil

        public init() {}

        public init(op: String, deviceLastModifiedDate: Date? = nil, key: String, syncCount: Int64, value: String? = nil) {
            self.op = op
            self.deviceLastModifiedDate = deviceLastModifiedDate
            self.key = key
            self.syncCount = syncCount
            self.value = value
        }

    }

    public struct SetCognitoEventsRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var pathParams: [String: String] {
            return ["IdentityPoolId": "IdentityPoolId"]
        }
        /// The Cognito Identity Pool to use when configuring Cognito Events
        public var identityPoolId: String = ""
        /// The events to configure
        public var events: [String: String] = [:]

        public init() {}

        public init(identityPoolId: String, events: [String: String]) {
            self.identityPoolId = identityPoolId
            self.events = events
        }

    }

    public struct DescribeIdentityUsageRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var pathParams: [String: String] {
            return ["IdentityPoolId": "IdentityPoolId", "IdentityId": "IdentityId"]
        }
        /// A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
        public var identityPoolId: String = ""
        /// A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
        public var identityId: String = ""

        public init() {}

        public init(identityPoolId: String, identityId: String) {
            self.identityPoolId = identityPoolId
            self.identityId = identityId
        }

    }

    public struct UnsubscribeFromDatasetResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil

        public init() {}

    }

    public struct BulkPublishResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
        public var identityPoolId: String? = nil

        public init() {}

        public init(identityPoolId: String? = nil) {
            self.identityPoolId = identityPoolId
        }

    }

}