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

/// Error enum for Iam
public enum IamError: AWSErrorType {
    case noSuchEntityException(message: String?)
    case invalidInputException(message: String?)
    case serviceFailureException(message: String?)
    case limitExceededException(message: String?)
    case entityAlreadyExistsException(message: String?)
    case passwordPolicyViolationException(message: String?)
    case malformedPolicyDocumentException(message: String?)
    case invalidUserTypeException(message: String?)
    case entityTemporarilyUnmodifiableException(message: String?)
    case malformedCertificateException(message: String?)
    case keyPairMismatchException(message: String?)
    case invalidAuthenticationCodeException(message: String?)
    case invalidPublicKeyException(message: String?)
    case duplicateSSHPublicKeyException(message: String?)
    case unrecognizedPublicKeyEncodingException(message: String?)
    case policyEvaluationException(message: String?)
    case invalidCertificateException(message: String?)
    case duplicateCertificateException(message: String?)
    case deleteConflictException(message: String?)
    case serviceNotSupportedException(message: String?)
    case credentialReportNotPresentException(message: String?)
    case credentialReportExpiredException(message: String?)
    case credentialReportNotReadyException(message: String?)
}

extension IamError {
    public init?(errorCode: String, message: String?){
        switch errorCode {
        case "NoSuchEntityException":
            self = .noSuchEntityException(message: message)
        case "InvalidInputException":
            self = .invalidInputException(message: message)
        case "ServiceFailureException":
            self = .serviceFailureException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "EntityAlreadyExistsException":
            self = .entityAlreadyExistsException(message: message)
        case "PasswordPolicyViolationException":
            self = .passwordPolicyViolationException(message: message)
        case "MalformedPolicyDocumentException":
            self = .malformedPolicyDocumentException(message: message)
        case "InvalidUserTypeException":
            self = .invalidUserTypeException(message: message)
        case "EntityTemporarilyUnmodifiableException":
            self = .entityTemporarilyUnmodifiableException(message: message)
        case "MalformedCertificateException":
            self = .malformedCertificateException(message: message)
        case "KeyPairMismatchException":
            self = .keyPairMismatchException(message: message)
        case "InvalidAuthenticationCodeException":
            self = .invalidAuthenticationCodeException(message: message)
        case "InvalidPublicKeyException":
            self = .invalidPublicKeyException(message: message)
        case "DuplicateSSHPublicKeyException":
            self = .duplicateSSHPublicKeyException(message: message)
        case "UnrecognizedPublicKeyEncodingException":
            self = .unrecognizedPublicKeyEncodingException(message: message)
        case "PolicyEvaluationException":
            self = .policyEvaluationException(message: message)
        case "InvalidCertificateException":
            self = .invalidCertificateException(message: message)
        case "DuplicateCertificateException":
            self = .duplicateCertificateException(message: message)
        case "DeleteConflictException":
            self = .deleteConflictException(message: message)
        case "ServiceNotSupportedException":
            self = .serviceNotSupportedException(message: message)
        case "CredentialReportNotPresentException":
            self = .credentialReportNotPresentException(message: message)
        case "CredentialReportExpiredException":
            self = .credentialReportExpiredException(message: message)
        case "CredentialReportNotReadyException":
            self = .credentialReportNotReadyException(message: message)
        default:
            return nil
        }
    }
}