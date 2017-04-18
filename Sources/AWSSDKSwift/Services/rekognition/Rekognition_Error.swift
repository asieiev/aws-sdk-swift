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

/// Error enum for Rekognition
public enum RekognitionError: AWSErrorType {
    case invalidS3ObjectException(message: String?)
    case invalidParameterException(message: String?)
    case imageTooLargeException(message: String?)
    case accessDeniedException(message: String?)
    case internalServerError(message: String?)
    case throttlingException(message: String?)
    case provisionedThroughputExceededException(message: String?)
    case resourceNotFoundException(message: String?)
    case invalidImageFormatException(message: String?)
    case invalidPaginationTokenException(message: String?)
    case resourceAlreadyExistsException(message: String?)
}

extension RekognitionError {
    public init?(errorCode: String, message: String?){
        switch errorCode {
        case "InvalidS3ObjectException":
            self = .invalidS3ObjectException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "ImageTooLargeException":
            self = .imageTooLargeException(message: message)
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "InternalServerError":
            self = .internalServerError(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        case "ProvisionedThroughputExceededException":
            self = .provisionedThroughputExceededException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "InvalidImageFormatException":
            self = .invalidImageFormatException(message: message)
        case "InvalidPaginationTokenException":
            self = .invalidPaginationTokenException(message: message)
        case "ResourceAlreadyExistsException":
            self = .resourceAlreadyExistsException(message: message)
        default:
            return nil
        }
    }
}