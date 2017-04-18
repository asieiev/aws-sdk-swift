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

import Core

/// Error enum for Elasticbeanstalk
public enum ElasticbeanstalkError: AWSErrorType {
    case tooManyEnvironmentsException(message: String?)
    case insufficientPrivilegesException(message: String?)
    case tooManyBucketsException(message: String?)
    case s3SubscriptionRequiredException(message: String?)
    case elasticBeanstalkServiceException(message: String?)
    case tooManyApplicationsException(message: String?)
    case tooManyApplicationVersionsException(message: String?)
    case s3LocationNotInServiceRegionException(message: String?)
    case codeBuildNotInServiceRegionException(message: String?)
    case invalidRequestException(message: String?)
    case operationInProgressException(message: String?)
    case managedActionInvalidStateException(message: String?)
    case tooManyConfigurationTemplatesException(message: String?)
    case tooManyPlatformsException(message: String?)
    case platformVersionStillReferencedException(message: String?)
    case sourceBundleDeletionException(message: String?)
}

extension ElasticbeanstalkError {
    public init?(errorCode: String, message: String?){
        switch errorCode {
        case "TooManyEnvironmentsException":
            self = .tooManyEnvironmentsException(message: message)
        case "InsufficientPrivilegesException":
            self = .insufficientPrivilegesException(message: message)
        case "TooManyBucketsException":
            self = .tooManyBucketsException(message: message)
        case "S3SubscriptionRequiredException":
            self = .s3SubscriptionRequiredException(message: message)
        case "ElasticBeanstalkServiceException":
            self = .elasticBeanstalkServiceException(message: message)
        case "TooManyApplicationsException":
            self = .tooManyApplicationsException(message: message)
        case "TooManyApplicationVersionsException":
            self = .tooManyApplicationVersionsException(message: message)
        case "S3LocationNotInServiceRegionException":
            self = .s3LocationNotInServiceRegionException(message: message)
        case "CodeBuildNotInServiceRegionException":
            self = .codeBuildNotInServiceRegionException(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "OperationInProgressException":
            self = .operationInProgressException(message: message)
        case "ManagedActionInvalidStateException":
            self = .managedActionInvalidStateException(message: message)
        case "TooManyConfigurationTemplatesException":
            self = .tooManyConfigurationTemplatesException(message: message)
        case "TooManyPlatformsException":
            self = .tooManyPlatformsException(message: message)
        case "PlatformVersionStillReferencedException":
            self = .platformVersionStillReferencedException(message: message)
        case "SourceBundleDeletionException":
            self = .sourceBundleDeletionException(message: message)
        default:
            return nil
        }
    }
}