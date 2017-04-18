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

/// Error enum for Support
public enum SupportError: AWSErrorType {
    case internalServerError(message: String?)
    case caseIdNotFound(message: String?)
    case attachmentSetIdNotFound(message: String?)
    case attachmentSetExpired(message: String?)
    case attachmentSetSizeLimitExceeded(message: String?)
    case attachmentLimitExceeded(message: String?)
    case describeAttachmentLimitExceeded(message: String?)
    case attachmentIdNotFound(message: String?)
    case caseCreationLimitExceeded(message: String?)
}

extension SupportError {
    public init?(errorCode: String, message: String?){
        switch errorCode {
        case "InternalServerError":
            self = .internalServerError(message: message)
        case "CaseIdNotFound":
            self = .caseIdNotFound(message: message)
        case "AttachmentSetIdNotFound":
            self = .attachmentSetIdNotFound(message: message)
        case "AttachmentSetExpired":
            self = .attachmentSetExpired(message: message)
        case "AttachmentSetSizeLimitExceeded":
            self = .attachmentSetSizeLimitExceeded(message: message)
        case "AttachmentLimitExceeded":
            self = .attachmentLimitExceeded(message: message)
        case "DescribeAttachmentLimitExceeded":
            self = .describeAttachmentLimitExceeded(message: message)
        case "AttachmentIdNotFound":
            self = .attachmentIdNotFound(message: message)
        case "CaseCreationLimitExceeded":
            self = .caseCreationLimitExceeded(message: message)
        default:
            return nil
        }
    }
}