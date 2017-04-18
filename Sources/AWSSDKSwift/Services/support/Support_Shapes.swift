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

extension Support {

    public struct DescribeCommunicationsResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// A resumption point for pagination.
        public var nextToken: String? = nil
        /// The communications for the case.
        public var communications: [Communication]? = nil

        public init() {}

        public init(nextToken: String? = nil, communications: [Communication]? = nil) {
            self.nextToken = nextToken
            self.communications = communications
        }

    }

    public struct TrustedAdvisorCostOptimizingSummary: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The estimated monthly savings that might be realized if the recommended actions are taken.
        public var estimatedMonthlySavings: Double = 0
        /// The estimated percentage of savings that might be realized if the recommended actions are taken.
        public var estimatedPercentMonthlySavings: Double = 0

        public init() {}

        public init(estimatedMonthlySavings: Double, estimatedPercentMonthlySavings: Double) {
            self.estimatedMonthlySavings = estimatedMonthlySavings
            self.estimatedPercentMonthlySavings = estimatedPercentMonthlySavings
        }

    }

    public struct DescribeTrustedAdvisorCheckSummariesResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The summary information for the requested Trusted Advisor checks.
        public var summaries: [TrustedAdvisorCheckSummary] = []

        public init() {}

        public init(summaries: [TrustedAdvisorCheckSummary]) {
            self.summaries = summaries
        }

    }

    public struct ResolveCaseResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The status of the case when the ResolveCase request was sent.
        public var initialCaseStatus: String? = nil
        /// The status of the case after the ResolveCase request was processed.
        public var finalCaseStatus: String? = nil

        public init() {}

        public init(initialCaseStatus: String? = nil, finalCaseStatus: String? = nil) {
            self.initialCaseStatus = initialCaseStatus
            self.finalCaseStatus = finalCaseStatus
        }

    }

    public struct DescribeCasesResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The details for the cases that match the request.
        public var cases: [CaseDetails]? = nil
        /// A resumption point for pagination.
        public var nextToken: String? = nil

        public init() {}

        public init(cases: [CaseDetails]? = nil, nextToken: String? = nil) {
            self.cases = cases
            self.nextToken = nextToken
        }

    }

    public struct CreateCaseResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-12345678910-2013-c4c1d2bf33c5cf47 
        public var caseId: String? = nil

        public init() {}

        public init(caseId: String? = nil) {
            self.caseId = caseId
        }

    }

    public struct DescribeCasesRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The start date for a filtered date search on support case communications. Case communications are available for 12 months after creation.
        public var afterTime: String? = nil
        /// A resumption point for pagination.
        public var nextToken: String? = nil
        /// Specifies whether communications should be included in the DescribeCases results. The default is true.
        public var includeCommunications: Bool? = nil
        /// The ID displayed for a case in the AWS Support Center user interface.
        public var displayId: String? = nil
        /// Specifies whether resolved support cases should be included in the DescribeCases results. The default is false.
        public var includeResolvedCases: Bool? = nil
        /// The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.
        public var language: String? = nil
        /// A list of ID numbers of the support cases you want returned. The maximum number of cases is 100.
        public var caseIdList: [String]? = nil
        /// The end date for a filtered date search on support case communications. Case communications are available for 12 months after creation.
        public var beforeTime: String? = nil
        /// The maximum number of results to return before paginating.
        public var maxResults: Int32? = nil

        public init() {}

        public init(afterTime: String? = nil, nextToken: String? = nil, includeCommunications: Bool? = nil, displayId: String? = nil, includeResolvedCases: Bool? = nil, language: String? = nil, caseIdList: [String]? = nil, beforeTime: String? = nil, maxResults: Int32? = nil) {
            self.afterTime = afterTime
            self.nextToken = nextToken
            self.includeCommunications = includeCommunications
            self.displayId = displayId
            self.includeResolvedCases = includeResolvedCases
            self.language = language
            self.caseIdList = caseIdList
            self.beforeTime = beforeTime
            self.maxResults = maxResults
        }

    }

    public struct DescribeCommunicationsRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-12345678910-2013-c4c1d2bf33c5cf47 
        public var caseId: String = ""
        /// The start date for a filtered date search on support case communications. Case communications are available for 12 months after creation.
        public var afterTime: String? = nil
        /// A resumption point for pagination.
        public var nextToken: String? = nil
        /// The maximum number of results to return before paginating.
        public var maxResults: Int32? = nil
        /// The end date for a filtered date search on support case communications. Case communications are available for 12 months after creation.
        public var beforeTime: String? = nil

        public init() {}

        public init(caseId: String, afterTime: String? = nil, nextToken: String? = nil, maxResults: Int32? = nil, beforeTime: String? = nil) {
            self.caseId = caseId
            self.afterTime = afterTime
            self.nextToken = nextToken
            self.maxResults = maxResults
            self.beforeTime = beforeTime
        }

    }

    public struct AddCommunicationToCaseRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-12345678910-2013-c4c1d2bf33c5cf47 
        public var caseId: String? = nil
        /// The email addresses in the CC line of an email to be added to the support case.
        public var ccEmailAddresses: [String]? = nil
        /// The body of an email communication to add to the support case.
        public var communicationBody: String = ""
        /// The ID of a set of one or more attachments for the communication to add to the case. Create the set by calling AddAttachmentsToSet 
        public var attachmentSetId: String? = nil

        public init() {}

        public init(caseId: String? = nil, ccEmailAddresses: [String]? = nil, communicationBody: String, attachmentSetId: String? = nil) {
            self.caseId = caseId
            self.ccEmailAddresses = ccEmailAddresses
            self.communicationBody = communicationBody
            self.attachmentSetId = attachmentSetId
        }

    }

    public struct DescribeTrustedAdvisorCheckRefreshStatusesResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The refresh status of the specified Trusted Advisor checks.
        public var statuses: [TrustedAdvisorCheckRefreshStatus] = []

        public init() {}

        public init(statuses: [TrustedAdvisorCheckRefreshStatus]) {
            self.statuses = statuses
        }

    }

    public struct TrustedAdvisorCheckSummary: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The alert status of the check: "ok" (green), "warning" (yellow), "error" (red), or "not_available".
        public var status: String = ""
        /// The unique identifier for the Trusted Advisor check.
        public var checkId: String = ""
        /// Summary information that relates to the category of the check. Cost Optimizing is the only category that is currently supported.
        public var categorySpecificSummary: TrustedAdvisorCategorySpecificSummary = TrustedAdvisorCategorySpecificSummary()
        /// The time of the last refresh of the check.
        public var timestamp: String = ""
        /// Specifies whether the Trusted Advisor check has flagged resources.
        public var hasFlaggedResources: Bool? = nil
        public var resourcesSummary: TrustedAdvisorResourcesSummary = TrustedAdvisorResourcesSummary()

        public init() {}

        public init(status: String, checkId: String, categorySpecificSummary: TrustedAdvisorCategorySpecificSummary, timestamp: String, hasFlaggedResources: Bool? = nil, resourcesSummary: TrustedAdvisorResourcesSummary) {
            self.status = status
            self.checkId = checkId
            self.categorySpecificSummary = categorySpecificSummary
            self.timestamp = timestamp
            self.hasFlaggedResources = hasFlaggedResources
            self.resourcesSummary = resourcesSummary
        }

    }

    public struct DescribeTrustedAdvisorCheckResultRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.
        public var language: String? = nil
        /// The unique identifier for the Trusted Advisor check.
        public var checkId: String = ""

        public init() {}

        public init(language: String? = nil, checkId: String) {
            self.language = language
            self.checkId = checkId
        }

    }

    public struct DescribeAttachmentRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The ID of the attachment to return. Attachment IDs are returned by the DescribeCommunications operation.
        public var attachmentId: String = ""

        public init() {}

        public init(attachmentId: String) {
            self.attachmentId = attachmentId
        }

    }

    public struct DescribeTrustedAdvisorCheckSummariesRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The IDs of the Trusted Advisor checks.
        public var checkIds: [String] = []

        public init() {}

        public init(checkIds: [String]) {
            self.checkIds = checkIds
        }

    }

    public struct TrustedAdvisorCheckResult: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The alert status of the check: "ok" (green), "warning" (yellow), "error" (red), or "not_available".
        public var status: String = ""
        /// The unique identifier for the Trusted Advisor check.
        public var checkId: String = ""
        /// The details about each resource listed in the check result.
        public var flaggedResources: [TrustedAdvisorResourceDetail] = []
        /// The time of the last refresh of the check.
        public var timestamp: String = ""
        public var resourcesSummary: TrustedAdvisorResourcesSummary = TrustedAdvisorResourcesSummary()
        /// Summary information that relates to the category of the check. Cost Optimizing is the only category that is currently supported.
        public var categorySpecificSummary: TrustedAdvisorCategorySpecificSummary = TrustedAdvisorCategorySpecificSummary()

        public init() {}

        public init(status: String, checkId: String, flaggedResources: [TrustedAdvisorResourceDetail], timestamp: String, resourcesSummary: TrustedAdvisorResourcesSummary, categorySpecificSummary: TrustedAdvisorCategorySpecificSummary) {
            self.status = status
            self.checkId = checkId
            self.flaggedResources = flaggedResources
            self.timestamp = timestamp
            self.resourcesSummary = resourcesSummary
            self.categorySpecificSummary = categorySpecificSummary
        }

    }

    public struct DescribeTrustedAdvisorChecksResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// Information about all available Trusted Advisor checks.
        public var checks: [TrustedAdvisorCheckDescription] = []

        public init() {}

        public init(checks: [TrustedAdvisorCheckDescription]) {
            self.checks = checks
        }

    }

    public struct DescribeAttachmentResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The attachment content and file name.
        public var attachment: Attachment? = nil

        public init() {}

        public init(attachment: Attachment? = nil) {
            self.attachment = attachment
        }

    }

    public struct Service: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// A list of categories that describe the type of support issue a case describes. Categories consist of a category name and a category code. Category names and codes are passed to AWS Support when you call CreateCase.
        public var categories: [Category]? = nil
        /// The friendly name for an AWS service. The code element contains the corresponding code.
        public var name: String? = nil
        /// The code for an AWS service returned by the DescribeServices response. The name element contains the corresponding friendly name.
        public var code: String? = nil

        public init() {}

        public init(categories: [Category]? = nil, name: String? = nil, code: String? = nil) {
            self.categories = categories
            self.name = name
            self.code = code
        }

    }

    public struct TrustedAdvisorResourcesSummary: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The number of AWS resources that were flagged (listed) by the Trusted Advisor check.
        public var resourcesFlagged: Int64 = 0
        /// The number of AWS resources ignored by Trusted Advisor because information was unavailable.
        public var resourcesIgnored: Int64 = 0
        /// The number of AWS resources ignored by Trusted Advisor because they were marked as suppressed by the user.
        public var resourcesSuppressed: Int64 = 0
        /// The number of AWS resources that were analyzed by the Trusted Advisor check.
        public var resourcesProcessed: Int64 = 0

        public init() {}

        public init(resourcesFlagged: Int64, resourcesIgnored: Int64, resourcesSuppressed: Int64, resourcesProcessed: Int64) {
            self.resourcesFlagged = resourcesFlagged
            self.resourcesIgnored = resourcesIgnored
            self.resourcesSuppressed = resourcesSuppressed
            self.resourcesProcessed = resourcesProcessed
        }

    }

    public struct CaseDetails: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The email address of the account that submitted the case.
        public var submittedBy: String? = nil
        /// The status of the case.
        public var status: String? = nil
        /// The code for the AWS service returned by the call to DescribeServices.
        public var serviceCode: String? = nil
        /// The code for the severity level returned by the call to DescribeSeverityLevels.
        public var severityCode: String? = nil
        /// The email addresses that receive copies of communication about the case.
        public var ccEmailAddresses: [String]? = nil
        /// The ID displayed for the case in the AWS Support Center. This is a numeric string.
        public var displayId: String? = nil
        /// The time that the case was case created in the AWS Support Center.
        public var timeCreated: String? = nil
        /// The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.
        public var language: String? = nil
        /// The category of problem for the AWS Support case.
        public var categoryCode: String? = nil
        /// The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-12345678910-2013-c4c1d2bf33c5cf47 
        public var caseId: String? = nil
        /// The five most recent communications between you and AWS Support Center, including the IDs of any attachments to the communications. Also includes a nextToken that you can use to retrieve earlier communications.
        public var recentCommunications: RecentCaseCommunications? = nil
        /// The subject line for the case in the AWS Support Center.
        public var subject: String? = nil

        public init() {}

        public init(submittedBy: String? = nil, status: String? = nil, serviceCode: String? = nil, severityCode: String? = nil, ccEmailAddresses: [String]? = nil, displayId: String? = nil, timeCreated: String? = nil, language: String? = nil, categoryCode: String? = nil, caseId: String? = nil, recentCommunications: RecentCaseCommunications? = nil, subject: String? = nil) {
            self.submittedBy = submittedBy
            self.status = status
            self.serviceCode = serviceCode
            self.severityCode = severityCode
            self.ccEmailAddresses = ccEmailAddresses
            self.displayId = displayId
            self.timeCreated = timeCreated
            self.language = language
            self.categoryCode = categoryCode
            self.caseId = caseId
            self.recentCommunications = recentCommunications
            self.subject = subject
        }

    }

    public struct DescribeServicesResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// A JSON-formatted list of AWS services.
        public var services: [Service]? = nil

        public init() {}

        public init(services: [Service]? = nil) {
            self.services = services
        }

    }

    public struct AddAttachmentsToSetRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// One or more attachments to add to the set. The limit is 3 attachments per set, and the size limit is 5 MB per attachment.
        public var attachments: [Attachment] = []
        /// The ID of the attachment set. If an attachmentSetId is not specified, a new attachment set is created, and the ID of the set is returned in the response. If an attachmentSetId is specified, the attachments are added to the specified set, if it exists.
        public var attachmentSetId: String? = nil

        public init() {}

        public init(attachments: [Attachment], attachmentSetId: String? = nil) {
            self.attachments = attachments
            self.attachmentSetId = attachmentSetId
        }

    }

    public struct ResolveCaseRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-12345678910-2013-c4c1d2bf33c5cf47 
        public var caseId: String? = nil

        public init() {}

        public init(caseId: String? = nil) {
            self.caseId = caseId
        }

    }

    public struct AddAttachmentsToSetResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The ID of the attachment set. If an attachmentSetId was not specified, a new attachment set is created, and the ID of the set is returned in the response. If an attachmentSetId was specified, the attachments are added to the specified set, if it exists.
        public var attachmentSetId: String? = nil
        /// The time and date when the attachment set expires.
        public var expiryTime: String? = nil

        public init() {}

        public init(attachmentSetId: String? = nil, expiryTime: String? = nil) {
            self.attachmentSetId = attachmentSetId
            self.expiryTime = expiryTime
        }

    }

    public struct Category: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The category name for the support case.
        public var name: String? = nil
        /// The category code for the support case.
        public var code: String? = nil

        public init() {}

        public init(name: String? = nil, code: String? = nil) {
            self.name = name
            self.code = code
        }

    }

    public struct DescribeTrustedAdvisorCheckRefreshStatusesRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The IDs of the Trusted Advisor checks to get the status of. Note: Specifying the check ID of a check that is automatically refreshed causes an InvalidParameterValue error.
        public var checkIds: [String] = []

        public init() {}

        public init(checkIds: [String]) {
            self.checkIds = checkIds
        }

    }

    public struct DescribeSeverityLevelsRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.
        public var language: String? = nil

        public init() {}

        public init(language: String? = nil) {
            self.language = language
        }

    }

    public struct RefreshTrustedAdvisorCheckRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The unique identifier for the Trusted Advisor check to refresh. Note: Specifying the check ID of a check that is automatically refreshed causes an InvalidParameterValue error.
        public var checkId: String = ""

        public init() {}

        public init(checkId: String) {
            self.checkId = checkId
        }

    }

    public struct TrustedAdvisorCategorySpecificSummary: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The summary information about cost savings for a Trusted Advisor check that is in the Cost Optimizing category.
        public var costOptimizing: TrustedAdvisorCostOptimizingSummary? = nil

        public init() {}

        public init(costOptimizing: TrustedAdvisorCostOptimizingSummary? = nil) {
            self.costOptimizing = costOptimizing
        }

    }

    public struct DescribeTrustedAdvisorCheckResultResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The detailed results of the Trusted Advisor check.
        public var result: TrustedAdvisorCheckResult? = nil

        public init() {}

        public init(result: TrustedAdvisorCheckResult? = nil) {
            self.result = result
        }

    }

    public struct DescribeSeverityLevelsResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The available severity levels for the support case. Available severity levels are defined by your service level agreement with AWS.
        public var severityLevels: [SeverityLevel]? = nil

        public init() {}

        public init(severityLevels: [SeverityLevel]? = nil) {
            self.severityLevels = severityLevels
        }

    }

    public struct DescribeServicesRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.
        public var language: String? = nil
        /// A JSON-formatted list of service codes available for AWS services.
        public var serviceCodeList: [String]? = nil

        public init() {}

        public init(language: String? = nil, serviceCodeList: [String]? = nil) {
            self.language = language
            self.serviceCodeList = serviceCodeList
        }

    }

    public struct AddCommunicationToCaseResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// True if AddCommunicationToCase succeeds. Otherwise, returns an error.
        public var result: Bool? = nil

        public init() {}

        public init(result: Bool? = nil) {
            self.result = result
        }

    }

    public struct TrustedAdvisorCheckDescription: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The column headings for the data returned by the Trusted Advisor check. The order of the headings corresponds to the order of the data in the Metadata element of the TrustedAdvisorResourceDetail for the check. Metadata contains all the data that is shown in the Excel download, even in those cases where the UI shows just summary data. 
        public var metadata: [String] = []
        /// The display name for the Trusted Advisor check.
        public var name: String = ""
        /// The description of the Trusted Advisor check, which includes the alert criteria and recommended actions (contains HTML markup).
        public var description: String = ""
        /// The unique identifier for the Trusted Advisor check.
        public var id: String = ""
        /// The category of the Trusted Advisor check.
        public var category: String = ""

        public init() {}

        public init(metadata: [String], name: String, description: String, id: String, category: String) {
            self.metadata = metadata
            self.name = name
            self.description = description
            self.id = id
            self.category = category
        }

    }

    public struct Attachment: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The name of the attachment file.
        public var fileName: String? = nil
        /// The content of the attachment file.
        public var data: Data? = nil

        public init() {}

        public init(fileName: String? = nil, data: Data? = nil) {
            self.fileName = fileName
            self.data = data
        }

    }

    public struct RefreshTrustedAdvisorCheckResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The current refresh status for a check, including the amount of time until the check is eligible for refresh.
        public var status: TrustedAdvisorCheckRefreshStatus = TrustedAdvisorCheckRefreshStatus()

        public init() {}

        public init(status: TrustedAdvisorCheckRefreshStatus) {
            self.status = status
        }

    }

    public struct TrustedAdvisorResourceDetail: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// Additional information about the identified resource. The exact metadata and its order can be obtained by inspecting the TrustedAdvisorCheckDescription object returned by the call to DescribeTrustedAdvisorChecks. Metadata contains all the data that is shown in the Excel download, even in those cases where the UI shows just summary data. 
        public var metadata: [String] = []
        /// The status code for the resource identified in the Trusted Advisor check.
        public var status: String = ""
        /// Specifies whether the AWS resource was ignored by Trusted Advisor because it was marked as suppressed by the user.
        public var isSuppressed: Bool? = nil
        /// The unique identifier for the identified resource.
        public var resourceId: String = ""
        /// The AWS region in which the identified resource is located.
        public var region: String? = nil

        public init() {}

        public init(metadata: [String], status: String, isSuppressed: Bool? = nil, resourceId: String, region: String? = nil) {
            self.metadata = metadata
            self.status = status
            self.isSuppressed = isSuppressed
            self.resourceId = resourceId
            self.region = region
        }

    }

    public struct DescribeTrustedAdvisorChecksRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.
        public var language: String = ""

        public init() {}

        public init(language: String) {
            self.language = language
        }

    }

    public struct TrustedAdvisorCheckRefreshStatus: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The status of the Trusted Advisor check for which a refresh has been requested: "none", "enqueued", "processing", "success", or "abandoned".
        public var status: String = ""
        /// The unique identifier for the Trusted Advisor check.
        public var checkId: String = ""
        /// The amount of time, in milliseconds, until the Trusted Advisor check is eligible for refresh.
        public var millisUntilNextRefreshable: Int64 = 0

        public init() {}

        public init(status: String, checkId: String, millisUntilNextRefreshable: Int64) {
            self.status = status
            self.checkId = checkId
            self.millisUntilNextRefreshable = millisUntilNextRefreshable
        }

    }

    public struct Communication: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The AWS Support case ID requested or returned in the call. The case ID is an alphanumeric string formatted as shown in this example: case-12345678910-2013-c4c1d2bf33c5cf47 
        public var caseId: String? = nil
        /// The email address of the account that submitted the AWS Support case.
        public var submittedBy: String? = nil
        /// The text of the communication between the customer and AWS Support.
        public var body: String? = nil
        /// Information about the attachments to the case communication.
        public var attachmentSet: [AttachmentDetails]? = nil
        /// The time the communication was created.
        public var timeCreated: String? = nil

        public init() {}

        public init(caseId: String? = nil, submittedBy: String? = nil, body: String? = nil, attachmentSet: [AttachmentDetails]? = nil, timeCreated: String? = nil) {
            self.caseId = caseId
            self.submittedBy = submittedBy
            self.body = body
            self.attachmentSet = attachmentSet
            self.timeCreated = timeCreated
        }

    }

    public struct SeverityLevel: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The name of the severity level that corresponds to the severity level code.
        public var name: String? = nil
        /// One of four values: "low," "medium," "high," and "urgent". These values correspond to response times returned to the caller in severityLevel.name. 
        public var code: String? = nil

        public init() {}

        public init(name: String? = nil, code: String? = nil) {
            self.name = name
            self.code = code
        }

    }

    public struct AttachmentDetails: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The file name of the attachment.
        public var fileName: String? = nil
        /// The ID of the attachment.
        public var attachmentId: String? = nil

        public init() {}

        public init(fileName: String? = nil, attachmentId: String? = nil) {
            self.fileName = fileName
            self.attachmentId = attachmentId
        }

    }

    public struct RecentCaseCommunications: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// A resumption point for pagination.
        public var nextToken: String? = nil
        /// The five most recent communications associated with the case.
        public var communications: [Communication]? = nil

        public init() {}

        public init(nextToken: String? = nil, communications: [Communication]? = nil) {
            self.nextToken = nextToken
            self.communications = communications
        }

    }

    public struct CreateCaseRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The type of issue for the case. You can specify either "customer-service" or "technical." If you do not indicate a value, the default is "technical."
        public var issueType: String? = nil
        /// The code for the AWS service returned by the call to DescribeServices.
        public var serviceCode: String? = nil
        /// The ID of a set of one or more attachments for the case. Create the set by using AddAttachmentsToSet.
        public var attachmentSetId: String? = nil
        /// The code for the severity level returned by the call to DescribeSeverityLevels.  The availability of severity levels depends on each customer's support subscription. In other words, your subscription may not necessarily require the urgent level of response time. 
        public var severityCode: String? = nil
        /// A list of email addresses that AWS Support copies on case correspondence.
        public var ccEmailAddresses: [String]? = nil
        /// The category of problem for the AWS Support case.
        public var categoryCode: String? = nil
        /// The ISO 639-1 code for the language in which AWS provides support. AWS Support currently supports English ("en") and Japanese ("ja"). Language parameters must be passed explicitly for operations that take them.
        public var language: String? = nil
        /// The communication body text when you create an AWS Support case by calling CreateCase.
        public var communicationBody: String = ""
        /// The title of the AWS Support case.
        public var subject: String = ""

        public init() {}

        public init(issueType: String? = nil, serviceCode: String? = nil, attachmentSetId: String? = nil, severityCode: String? = nil, ccEmailAddresses: [String]? = nil, categoryCode: String? = nil, language: String? = nil, communicationBody: String, subject: String) {
            self.issueType = issueType
            self.serviceCode = serviceCode
            self.attachmentSetId = attachmentSetId
            self.severityCode = severityCode
            self.ccEmailAddresses = ccEmailAddresses
            self.categoryCode = categoryCode
            self.language = language
            self.communicationBody = communicationBody
            self.subject = subject
        }

    }

}