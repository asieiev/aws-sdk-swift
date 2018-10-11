// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension TranscribeService {

    public struct DeleteVocabularyRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "VocabularyName", required: true, type: .string)
        ]
        /// The name of the vocabulary to delete. 
        public let vocabularyName: String

        public init(vocabularyName: String) {
            self.vocabularyName = vocabularyName
        }

        private enum CodingKeys: String, CodingKey {
            case vocabularyName = "VocabularyName"
        }
    }

    public struct ListVocabulariesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "StateEquals", required: false, type: .enum), 
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "NameContains", required: false, type: .string)
        ]
        /// If the result of the previous request to ListVocabularies was truncated, include the NextToken to fetch the next set of jobs.
        public let nextToken: String?
        /// When specified, only returns vocabularies with the VocabularyState field equal to the specified state.
        public let stateEquals: VocabularyState?
        /// The maximum number of vocabularies to return in the response. If there are fewer results in the list, this response contains only the actual results.
        public let maxResults: Int32?
        /// When specified, the vocabularies returned in the list are limited to vocabularies whose name contains the specified string. The search is case-insensitive, ListVocabularies will return both "vocabularyname" and "VocabularyName" in the response list.
        public let nameContains: String?

        public init(nextToken: String? = nil, stateEquals: VocabularyState? = nil, maxResults: Int32? = nil, nameContains: String? = nil) {
            self.nextToken = nextToken
            self.stateEquals = stateEquals
            self.maxResults = maxResults
            self.nameContains = nameContains
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case stateEquals = "StateEquals"
            case maxResults = "MaxResults"
            case nameContains = "NameContains"
        }
    }

    public struct GetVocabularyRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "VocabularyName", required: true, type: .string)
        ]
        /// The name of the vocabulary to return information about. The name is case-sensitive.
        public let vocabularyName: String

        public init(vocabularyName: String) {
            self.vocabularyName = vocabularyName
        }

        private enum CodingKeys: String, CodingKey {
            case vocabularyName = "VocabularyName"
        }
    }

    public struct TranscriptionJob: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Transcript", required: false, type: .structure), 
            AWSShapeMember(label: "Media", required: false, type: .structure), 
            AWSShapeMember(label: "FailureReason", required: false, type: .string), 
            AWSShapeMember(label: "Settings", required: false, type: .structure), 
            AWSShapeMember(label: "TranscriptionJobStatus", required: false, type: .enum), 
            AWSShapeMember(label: "TranscriptionJobName", required: false, type: .string), 
            AWSShapeMember(label: "LanguageCode", required: false, type: .enum), 
            AWSShapeMember(label: "MediaSampleRateHertz", required: false, type: .integer), 
            AWSShapeMember(label: "CompletionTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "CreationTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "MediaFormat", required: false, type: .enum)
        ]
        /// An object that describes the output of the transcription job.
        public let transcript: Transcript?
        /// An object that describes the input media for the transcription job.
        public let media: Media?
        /// If the TranscriptionJobStatus field is FAILED, this field contains information about why the job failed.
        public let failureReason: String?
        /// Optional settings for the transcription job. Use these settings to turn on speaker recognition, to set the maximum number of speakers that should be identified and to specify a custom vocabulary to use when processing the transcription job.
        public let settings: Settings?
        /// The status of the transcription job.
        public let transcriptionJobStatus: TranscriptionJobStatus?
        /// The name of the transcription job.
        public let transcriptionJobName: String?
        /// The language code for the input speech.
        public let languageCode: LanguageCode?
        /// The sample rate, in Hertz, of the audio track in the input media file. 
        public let mediaSampleRateHertz: Int32?
        /// A timestamp that shows when the job was completed.
        public let completionTime: TimeStamp?
        /// A timestamp that shows when the job was created.
        public let creationTime: TimeStamp?
        /// The format of the input media file.
        public let mediaFormat: MediaFormat?

        public init(transcript: Transcript? = nil, media: Media? = nil, failureReason: String? = nil, settings: Settings? = nil, transcriptionJobStatus: TranscriptionJobStatus? = nil, transcriptionJobName: String? = nil, languageCode: LanguageCode? = nil, mediaSampleRateHertz: Int32? = nil, completionTime: TimeStamp? = nil, creationTime: TimeStamp? = nil, mediaFormat: MediaFormat? = nil) {
            self.transcript = transcript
            self.media = media
            self.failureReason = failureReason
            self.settings = settings
            self.transcriptionJobStatus = transcriptionJobStatus
            self.transcriptionJobName = transcriptionJobName
            self.languageCode = languageCode
            self.mediaSampleRateHertz = mediaSampleRateHertz
            self.completionTime = completionTime
            self.creationTime = creationTime
            self.mediaFormat = mediaFormat
        }

        private enum CodingKeys: String, CodingKey {
            case transcript = "Transcript"
            case media = "Media"
            case failureReason = "FailureReason"
            case settings = "Settings"
            case transcriptionJobStatus = "TranscriptionJobStatus"
            case transcriptionJobName = "TranscriptionJobName"
            case languageCode = "LanguageCode"
            case mediaSampleRateHertz = "MediaSampleRateHertz"
            case completionTime = "CompletionTime"
            case creationTime = "CreationTime"
            case mediaFormat = "MediaFormat"
        }
    }

    public struct ListTranscriptionJobsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "TranscriptionJobSummaries", required: false, type: .list), 
            AWSShapeMember(label: "Status", required: false, type: .enum), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// A list of objects containing summary information for a transcription job.
        public let transcriptionJobSummaries: [TranscriptionJobSummary]?
        /// The requested status of the jobs returned.
        public let status: TranscriptionJobStatus?
        /// The ListTranscriptionJobs operation returns a page of jobs at a time. The maximum size of the page is set by the MaxResults parameter. If there are more jobs in the list than the page size, Amazon Transcribe returns the NextPage token. Include the token in the next request to the ListTranscriptionJobs operation to return in the next page of jobs.
        public let nextToken: String?

        public init(transcriptionJobSummaries: [TranscriptionJobSummary]? = nil, status: TranscriptionJobStatus? = nil, nextToken: String? = nil) {
            self.transcriptionJobSummaries = transcriptionJobSummaries
            self.status = status
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case transcriptionJobSummaries = "TranscriptionJobSummaries"
            case status = "Status"
            case nextToken = "NextToken"
        }
    }

    public struct CreateVocabularyRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "VocabularyName", required: true, type: .string), 
            AWSShapeMember(label: "LanguageCode", required: true, type: .enum), 
            AWSShapeMember(label: "Phrases", required: true, type: .list)
        ]
        /// The name of the vocabulary. The name must be unique within an AWS account. The name is case-sensitive.
        public let vocabularyName: String
        /// The language code of the vocabulary entries.
        public let languageCode: LanguageCode
        /// An array of strings that contains the vocabulary entries. 
        public let phrases: [String]

        public init(vocabularyName: String, languageCode: LanguageCode, phrases: [String]) {
            self.vocabularyName = vocabularyName
            self.languageCode = languageCode
            self.phrases = phrases
        }

        private enum CodingKeys: String, CodingKey {
            case vocabularyName = "VocabularyName"
            case languageCode = "LanguageCode"
            case phrases = "Phrases"
        }
    }

    public struct VocabularyInfo: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "VocabularyName", required: false, type: .string), 
            AWSShapeMember(label: "VocabularyState", required: false, type: .enum), 
            AWSShapeMember(label: "LanguageCode", required: false, type: .enum), 
            AWSShapeMember(label: "LastModifiedTime", required: false, type: .timestamp)
        ]
        /// The name of the vocabulary.
        public let vocabularyName: String?
        /// The processing state of the vocabulary. If the state is READY you can use the vocabulary in a StartTranscriptionJob request.
        public let vocabularyState: VocabularyState?
        /// The language code of the vocabulary entries.
        public let languageCode: LanguageCode?
        /// The date and time that the vocabulary was last modified.
        public let lastModifiedTime: TimeStamp?

        public init(vocabularyName: String? = nil, vocabularyState: VocabularyState? = nil, languageCode: LanguageCode? = nil, lastModifiedTime: TimeStamp? = nil) {
            self.vocabularyName = vocabularyName
            self.vocabularyState = vocabularyState
            self.languageCode = languageCode
            self.lastModifiedTime = lastModifiedTime
        }

        private enum CodingKeys: String, CodingKey {
            case vocabularyName = "VocabularyName"
            case vocabularyState = "VocabularyState"
            case languageCode = "LanguageCode"
            case lastModifiedTime = "LastModifiedTime"
        }
    }

    public struct UpdateVocabularyRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "VocabularyName", required: true, type: .string), 
            AWSShapeMember(label: "LanguageCode", required: true, type: .enum), 
            AWSShapeMember(label: "Phrases", required: true, type: .list)
        ]
        /// The name of the vocabulary to update. The name is case-sensitive.
        public let vocabularyName: String
        /// The language code of the vocabulary entries.
        public let languageCode: LanguageCode
        /// An array of strings containing the vocabulary entries.
        public let phrases: [String]

        public init(vocabularyName: String, languageCode: LanguageCode, phrases: [String]) {
            self.vocabularyName = vocabularyName
            self.languageCode = languageCode
            self.phrases = phrases
        }

        private enum CodingKeys: String, CodingKey {
            case vocabularyName = "VocabularyName"
            case languageCode = "LanguageCode"
            case phrases = "Phrases"
        }
    }

    public struct GetTranscriptionJobResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "TranscriptionJob", required: false, type: .structure)
        ]
        /// An object that contains the results of the transcription job.
        public let transcriptionJob: TranscriptionJob?

        public init(transcriptionJob: TranscriptionJob? = nil) {
            self.transcriptionJob = transcriptionJob
        }

        private enum CodingKeys: String, CodingKey {
            case transcriptionJob = "TranscriptionJob"
        }
    }

    public enum VocabularyState: String, CustomStringConvertible, Codable {
        case pending = "PENDING"
        case ready = "READY"
        case failed = "FAILED"
        public var description: String { return self.rawValue }
    }

    public struct Transcript: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "TranscriptFileUri", required: false, type: .string)
        ]
        /// The location where the transcription is stored. Use this URI to access the transcription. If you specified an S3 bucket in the OutputBucketName field when you created the job, this is the URI of that bucket. If you chose to store the transcription in Amazon Transcribe, this is a shareable URL that provides secure access to that location.
        public let transcriptFileUri: String?

        public init(transcriptFileUri: String? = nil) {
            self.transcriptFileUri = transcriptFileUri
        }

        private enum CodingKeys: String, CodingKey {
            case transcriptFileUri = "TranscriptFileUri"
        }
    }

    public struct GetTranscriptionJobRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "TranscriptionJobName", required: true, type: .string)
        ]
        /// The name of the job.
        public let transcriptionJobName: String

        public init(transcriptionJobName: String) {
            self.transcriptionJobName = transcriptionJobName
        }

        private enum CodingKeys: String, CodingKey {
            case transcriptionJobName = "TranscriptionJobName"
        }
    }

    public struct Settings: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MaxSpeakerLabels", required: false, type: .integer), 
            AWSShapeMember(label: "VocabularyName", required: false, type: .string), 
            AWSShapeMember(label: "ChannelIdentification", required: false, type: .boolean), 
            AWSShapeMember(label: "ShowSpeakerLabels", required: false, type: .boolean)
        ]
        /// The maximum number of speakers to identify in the input audio. If there are more speakers in the audio than this number, multiple speakers will be identified as a single speaker. If you specify the MaxSpeakerLabels field, you must set the ShowSpeakerLabels field to true.
        public let maxSpeakerLabels: Int32?
        /// The name of a vocabulary to use when processing the transcription job.
        public let vocabularyName: String?
        /// Instructs Amazon Transcribe to process each audio channel separately and then merge the transcription output of each channel into a single transcription.  Amazon Transcribe also produces a transcription of each item detected on an audio channel, including the start time and end time of the item and alternative transcriptions of the item including the confidence that Amazon Transcribe has in the transcription. You can't set both ShowSpeakerLabels and ChannelIdentification in the same request. If you set both, your request returns a BadRequestException.
        public let channelIdentification: Bool?
        /// Determines whether the transcription job uses speaker recognition to identify different speakers in the input audio. Speaker recognition labels individual speakers in the audio file. If you set the ShowSpeakerLabels field to true, you must also set the maximum number of speaker labels MaxSpeakerLabels field. You can't set both ShowSpeakerLabels and ChannelIdentification in the same request. If you set both, your request returns a BadRequestException.
        public let showSpeakerLabels: Bool?

        public init(maxSpeakerLabels: Int32? = nil, vocabularyName: String? = nil, channelIdentification: Bool? = nil, showSpeakerLabels: Bool? = nil) {
            self.maxSpeakerLabels = maxSpeakerLabels
            self.vocabularyName = vocabularyName
            self.channelIdentification = channelIdentification
            self.showSpeakerLabels = showSpeakerLabels
        }

        private enum CodingKeys: String, CodingKey {
            case maxSpeakerLabels = "MaxSpeakerLabels"
            case vocabularyName = "VocabularyName"
            case channelIdentification = "ChannelIdentification"
            case showSpeakerLabels = "ShowSpeakerLabels"
        }
    }

    public struct ListVocabulariesResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "Status", required: false, type: .enum), 
            AWSShapeMember(label: "Vocabularies", required: false, type: .list)
        ]
        /// The ListVocabularies operation returns a page of vocabularies at a time. The maximum size of the page is set by the MaxResults parameter. If there are more jobs in the list than the page size, Amazon Transcribe returns the NextPage token. Include the token in the next request to the ListVocabularies operation to return in the next page of jobs.
        public let nextToken: String?
        /// The requested vocabulary state.
        public let status: TranscriptionJobStatus?
        /// A list of objects that describe the vocabularies that match the search criteria in the request.
        public let vocabularies: [VocabularyInfo]?

        public init(nextToken: String? = nil, status: TranscriptionJobStatus? = nil, vocabularies: [VocabularyInfo]? = nil) {
            self.nextToken = nextToken
            self.status = status
            self.vocabularies = vocabularies
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case status = "Status"
            case vocabularies = "Vocabularies"
        }
    }

    public struct Media: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MediaFileUri", required: false, type: .string)
        ]
        /// The S3 location of the input media file. The URI must be in the same region as the API endpoint that you are calling. The general form is:   https://&lt;aws-region&gt;.amazonaws.com/&lt;bucket-name&gt;/&lt;keyprefix&gt;/&lt;objectkey&gt;   For example:  https://s3-us-east-1.amazonaws.com/examplebucket/example.mp4   https://s3-us-east-1.amazonaws.com/examplebucket/mediadocs/example.mp4  For more information about S3 object names, see Object Keys in the Amazon S3 Developer Guide.
        public let mediaFileUri: String?

        public init(mediaFileUri: String? = nil) {
            self.mediaFileUri = mediaFileUri
        }

        private enum CodingKeys: String, CodingKey {
            case mediaFileUri = "MediaFileUri"
        }
    }

    public struct GetVocabularyResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "VocabularyName", required: false, type: .string), 
            AWSShapeMember(label: "VocabularyState", required: false, type: .enum), 
            AWSShapeMember(label: "LanguageCode", required: false, type: .enum), 
            AWSShapeMember(label: "DownloadUri", required: false, type: .string), 
            AWSShapeMember(label: "LastModifiedTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "FailureReason", required: false, type: .string)
        ]
        /// The name of the vocabulary to return.
        public let vocabularyName: String?
        /// The processing state of the vocabulary.
        public let vocabularyState: VocabularyState?
        /// The language code of the vocabulary entries.
        public let languageCode: LanguageCode?
        /// The S3 location where the vocabulary is stored. Use this URI to get the contents of the vocabulary. The URI is available for a limited time.
        public let downloadUri: String?
        /// The date and time that the vocabulary was last modified.
        public let lastModifiedTime: TimeStamp?
        /// If the VocabularyState field is FAILED, this field contains information about why the job failed.
        public let failureReason: String?

        public init(vocabularyName: String? = nil, vocabularyState: VocabularyState? = nil, languageCode: LanguageCode? = nil, downloadUri: String? = nil, lastModifiedTime: TimeStamp? = nil, failureReason: String? = nil) {
            self.vocabularyName = vocabularyName
            self.vocabularyState = vocabularyState
            self.languageCode = languageCode
            self.downloadUri = downloadUri
            self.lastModifiedTime = lastModifiedTime
            self.failureReason = failureReason
        }

        private enum CodingKeys: String, CodingKey {
            case vocabularyName = "VocabularyName"
            case vocabularyState = "VocabularyState"
            case languageCode = "LanguageCode"
            case downloadUri = "DownloadUri"
            case lastModifiedTime = "LastModifiedTime"
            case failureReason = "FailureReason"
        }
    }

    public enum OutputLocationType: String, CustomStringConvertible, Codable {
        case customerBucket = "CUSTOMER_BUCKET"
        case serviceBucket = "SERVICE_BUCKET"
        public var description: String { return self.rawValue }
    }

    public struct TranscriptionJobSummary: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "FailureReason", required: false, type: .string), 
            AWSShapeMember(label: "TranscriptionJobStatus", required: false, type: .enum), 
            AWSShapeMember(label: "TranscriptionJobName", required: false, type: .string), 
            AWSShapeMember(label: "LanguageCode", required: false, type: .enum), 
            AWSShapeMember(label: "OutputLocationType", required: false, type: .enum), 
            AWSShapeMember(label: "CreationTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "CompletionTime", required: false, type: .timestamp)
        ]
        /// If the TranscriptionJobStatus field is FAILED, a description of the error.
        public let failureReason: String?
        /// The status of the transcription job. When the status is COMPLETED, use the GetTranscriptionJob operation to get the results of the transcription.
        public let transcriptionJobStatus: TranscriptionJobStatus?
        /// The name of the transcription job.
        public let transcriptionJobName: String?
        /// The language code for the input speech.
        public let languageCode: LanguageCode?
        /// Indicates the location of the output of the transcription job. If the value is CUSTOMER_BUCKET then the location is the S3 bucket specified in the outputBucketName field when the transcription job was started with the StartTranscriptionJob operation. If the value is SERVICE_BUCKET then the output is stored by Amazon Transcribe and can be retrieved using the URI in the GetTranscriptionJob response's TranscriptFileUri field.
        public let outputLocationType: OutputLocationType?
        /// A timestamp that shows when the job was created.
        public let creationTime: TimeStamp?
        /// A timestamp that shows when the job was completed.
        public let completionTime: TimeStamp?

        public init(failureReason: String? = nil, transcriptionJobStatus: TranscriptionJobStatus? = nil, transcriptionJobName: String? = nil, languageCode: LanguageCode? = nil, outputLocationType: OutputLocationType? = nil, creationTime: TimeStamp? = nil, completionTime: TimeStamp? = nil) {
            self.failureReason = failureReason
            self.transcriptionJobStatus = transcriptionJobStatus
            self.transcriptionJobName = transcriptionJobName
            self.languageCode = languageCode
            self.outputLocationType = outputLocationType
            self.creationTime = creationTime
            self.completionTime = completionTime
        }

        private enum CodingKeys: String, CodingKey {
            case failureReason = "FailureReason"
            case transcriptionJobStatus = "TranscriptionJobStatus"
            case transcriptionJobName = "TranscriptionJobName"
            case languageCode = "LanguageCode"
            case outputLocationType = "OutputLocationType"
            case creationTime = "CreationTime"
            case completionTime = "CompletionTime"
        }
    }

    public struct CreateVocabularyResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "VocabularyName", required: false, type: .string), 
            AWSShapeMember(label: "VocabularyState", required: false, type: .enum), 
            AWSShapeMember(label: "LanguageCode", required: false, type: .enum), 
            AWSShapeMember(label: "LastModifiedTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "FailureReason", required: false, type: .string)
        ]
        /// The name of the vocabulary.
        public let vocabularyName: String?
        /// The processing state of the vocabulary. When the VocabularyState field contains READY the vocabulary is ready to be used in a StartTranscriptionJob request.
        public let vocabularyState: VocabularyState?
        /// The language code of the vocabulary entries.
        public let languageCode: LanguageCode?
        /// The date and time that the vocabulary was created.
        public let lastModifiedTime: TimeStamp?
        /// If the VocabularyState field is FAILED, this field contains information about why the job failed.
        public let failureReason: String?

        public init(vocabularyName: String? = nil, vocabularyState: VocabularyState? = nil, languageCode: LanguageCode? = nil, lastModifiedTime: TimeStamp? = nil, failureReason: String? = nil) {
            self.vocabularyName = vocabularyName
            self.vocabularyState = vocabularyState
            self.languageCode = languageCode
            self.lastModifiedTime = lastModifiedTime
            self.failureReason = failureReason
        }

        private enum CodingKeys: String, CodingKey {
            case vocabularyName = "VocabularyName"
            case vocabularyState = "VocabularyState"
            case languageCode = "LanguageCode"
            case lastModifiedTime = "LastModifiedTime"
            case failureReason = "FailureReason"
        }
    }

    public struct StartTranscriptionJobRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Settings", required: false, type: .structure), 
            AWSShapeMember(label: "OutputBucketName", required: false, type: .string), 
            AWSShapeMember(label: "TranscriptionJobName", required: true, type: .string), 
            AWSShapeMember(label: "LanguageCode", required: true, type: .enum), 
            AWSShapeMember(label: "MediaSampleRateHertz", required: false, type: .integer), 
            AWSShapeMember(label: "Media", required: true, type: .structure), 
            AWSShapeMember(label: "MediaFormat", required: true, type: .enum)
        ]
        /// A Settings object that provides optional settings for a transcription job.
        public let settings: Settings?
        /// The location where the transcription is stored. If you set the OutputBucketName, Amazon Transcribe puts the transcription in the specified S3 bucket. When you call the GetTranscriptionJob operation, the operation returns this location in the TranscriptFileUri field. The S3 bucket must have permissions that allow Amazon Transcribe to put files in the bucket. For more information, see Permissions Required for IAM User Roles. If you don't set the OutputBucketName, Amazon Transcribe generates a pre-signed URL, a shareable URL that provides secure access to your transcription, and returns it in the TranscriptFileUri field. Use this URL to download the transcription.
        public let outputBucketName: String?
        /// The name of the job. You can't use the strings "." or ".." in the job name. The name must be unique within an AWS account.
        public let transcriptionJobName: String
        /// The language code for the language used in the input media file.
        public let languageCode: LanguageCode
        /// The sample rate, in Hertz, of the audio track in the input media file. 
        public let mediaSampleRateHertz: Int32?
        /// An object that describes the input media for a transcription job.
        public let media: Media
        /// The format of the input media file.
        public let mediaFormat: MediaFormat

        public init(settings: Settings? = nil, outputBucketName: String? = nil, transcriptionJobName: String, languageCode: LanguageCode, mediaSampleRateHertz: Int32? = nil, media: Media, mediaFormat: MediaFormat) {
            self.settings = settings
            self.outputBucketName = outputBucketName
            self.transcriptionJobName = transcriptionJobName
            self.languageCode = languageCode
            self.mediaSampleRateHertz = mediaSampleRateHertz
            self.media = media
            self.mediaFormat = mediaFormat
        }

        private enum CodingKeys: String, CodingKey {
            case settings = "Settings"
            case outputBucketName = "OutputBucketName"
            case transcriptionJobName = "TranscriptionJobName"
            case languageCode = "LanguageCode"
            case mediaSampleRateHertz = "MediaSampleRateHertz"
            case media = "Media"
            case mediaFormat = "MediaFormat"
        }
    }

    public enum MediaFormat: String, CustomStringConvertible, Codable {
        case mp3 = "mp3"
        case mp4 = "mp4"
        case wav = "wav"
        case flac = "flac"
        public var description: String { return self.rawValue }
    }

    public enum LanguageCode: String, CustomStringConvertible, Codable {
        case enUs = "en-US"
        case esUs = "es-US"
        public var description: String { return self.rawValue }
    }

    public struct ListTranscriptionJobsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "JobNameContains", required: false, type: .string), 
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "Status", required: false, type: .enum)
        ]
        /// If the result of the previous request to ListTranscriptionJobs was truncated, include the NextToken to fetch the next set of jobs.
        public let nextToken: String?
        /// When specified, the jobs returned in the list are limited to jobs whose name contains the specified string.
        public let jobNameContains: String?
        /// The maximum number of jobs to return in the response. If there are fewer results in the list, this response contains only the actual results.
        public let maxResults: Int32?
        /// When specified, returns only transcription jobs with the specified status.
        public let status: TranscriptionJobStatus?

        public init(nextToken: String? = nil, jobNameContains: String? = nil, maxResults: Int32? = nil, status: TranscriptionJobStatus? = nil) {
            self.nextToken = nextToken
            self.jobNameContains = jobNameContains
            self.maxResults = maxResults
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case jobNameContains = "JobNameContains"
            case maxResults = "MaxResults"
            case status = "Status"
        }
    }

    public struct UpdateVocabularyResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "VocabularyName", required: false, type: .string), 
            AWSShapeMember(label: "VocabularyState", required: false, type: .enum), 
            AWSShapeMember(label: "LanguageCode", required: false, type: .enum), 
            AWSShapeMember(label: "LastModifiedTime", required: false, type: .timestamp)
        ]
        /// The name of the vocabulary that was updated.
        public let vocabularyName: String?
        /// The processing state of the vocabulary. When the VocabularyState field contains READY the vocabulary is ready to be used in a StartTranscriptionJob request.
        public let vocabularyState: VocabularyState?
        /// The language code of the vocabulary entries.
        public let languageCode: LanguageCode?
        /// The date and time that the vocabulary was updated.
        public let lastModifiedTime: TimeStamp?

        public init(vocabularyName: String? = nil, vocabularyState: VocabularyState? = nil, languageCode: LanguageCode? = nil, lastModifiedTime: TimeStamp? = nil) {
            self.vocabularyName = vocabularyName
            self.vocabularyState = vocabularyState
            self.languageCode = languageCode
            self.lastModifiedTime = lastModifiedTime
        }

        private enum CodingKeys: String, CodingKey {
            case vocabularyName = "VocabularyName"
            case vocabularyState = "VocabularyState"
            case languageCode = "LanguageCode"
            case lastModifiedTime = "LastModifiedTime"
        }
    }

    public struct StartTranscriptionJobResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "TranscriptionJob", required: false, type: .structure)
        ]
        /// An object containing details of the asynchronous transcription job.
        public let transcriptionJob: TranscriptionJob?

        public init(transcriptionJob: TranscriptionJob? = nil) {
            self.transcriptionJob = transcriptionJob
        }

        private enum CodingKeys: String, CodingKey {
            case transcriptionJob = "TranscriptionJob"
        }
    }

    public enum TranscriptionJobStatus: String, CustomStringConvertible, Codable {
        case inProgress = "IN_PROGRESS"
        case failed = "FAILED"
        case completed = "COMPLETED"
        public var description: String { return self.rawValue }
    }

}