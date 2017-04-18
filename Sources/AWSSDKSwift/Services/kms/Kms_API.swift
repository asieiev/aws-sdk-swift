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
AWS Key Management Service AWS Key Management Service (AWS KMS) is an encryption and key management web service. This guide describes the AWS KMS operations that you can call programmatically. For general information about AWS KMS, see the AWS Key Management Service Developer Guide.  AWS provides SDKs that consist of libraries and sample code for various programming languages and platforms (Java, Ruby, .Net, iOS, Android, etc.). The SDKs provide a convenient way to create programmatic access to AWS KMS and other AWS services. For example, the SDKs take care of tasks such as signing requests (see below), managing errors, and retrying requests automatically. For more information about the AWS SDKs, including how to download and install them, see Tools for Amazon Web Services.  We recommend that you use the AWS SDKs to make programmatic API calls to AWS KMS. Clients must support TLS (Transport Layer Security) 1.0. We recommend TLS 1.2. Clients must also support cipher suites with Perfect Forward Secrecy (PFS) such as Ephemeral Diffie-Hellman (DHE) or Elliptic Curve Ephemeral Diffie-Hellman (ECDHE). Most modern systems such as Java 7 and later support these modes.  Signing Requests  Requests must be signed by using an access key ID and a secret access key. We strongly recommend that you do not use your AWS account (root) access key ID and secret key for everyday work with AWS KMS. Instead, use the access key ID and secret access key for an IAM user, or you can use the AWS Security Token Service to generate temporary security credentials that you can use to sign requests. All AWS KMS operations require Signature Version 4.  Logging API Requests  AWS KMS supports AWS CloudTrail, a service that logs AWS API calls and related events for your AWS account and delivers them to an Amazon S3 bucket that you specify. By using the information collected by CloudTrail, you can determine what requests were made to AWS KMS, who made the request, when it was made, and so on. To learn more about CloudTrail, including how to turn it on and find your log files, see the AWS CloudTrail User Guide.  Additional Resources  For more information about credentials and request signing, see the following:    AWS Security Credentials - This topic provides general information about the types of credentials used for accessing AWS.    Temporary Security Credentials - This section of the IAM User Guide describes how to create and use temporary security credentials.    Signature Version 4 Signing Process - This set of topics walks you through the process of signing a request using an access key ID and a secret access key.    Commonly Used APIs  Of the APIs discussed in this guide, the following will prove the most useful for most applications. You will likely perform actions other than these, such as creating keys and assigning policies, by using the console.    Encrypt     Decrypt     GenerateDataKey     GenerateDataKeyWithoutPlaintext   
*/
public struct Kms {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: Core.Region? = nil, endpoint: String? = nil, middlewares: [AWSRequestMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "TrentService",
            service: "kms",
            serviceProtocol: .json,
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [KmsError.self]
        )
    }

    ///  Creates a customer master key (CMK). You can use a CMK to encrypt small amounts of data (4 KiB or less) directly, but CMKs are more commonly used to encrypt data encryption keys (DEKs), which are used to encrypt raw data. For more information about DEKs and the difference between CMKs and DEKs, see the following:   The GenerateDataKey operation    AWS Key Management Service Concepts in the AWS Key Management Service Developer Guide   
    public func createKey(_ input: CreateKeyRequest) throws -> CreateKeyResponse {
        return try client.send(operation: "CreateKey", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retires a grant. To clean up, you can retire a grant when you're done using it. You should revoke a grant when you intend to actively deny operations that depend on it. The following are permitted to call this API:   The AWS account (root user) under which the grant was created   The RetiringPrincipal, if present in the grant   The GranteePrincipal, if RetireGrant is an operation specified in the grant   You must identify the grant to retire by its grant token or by a combination of the grant ID and the Amazon Resource Name (ARN) of the customer master key (CMK). A grant token is a unique variable-length base64-encoded string. A grant ID is a 64 character unique identifier of a grant. The CreateGrant operation returns both.
    public func retireGrant(_ input: RetireGrantRequest) throws {
        _ = try client.send(operation: "RetireGrant", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of all tags for the specified customer master key (CMK).
    public func listResourceTags(_ input: ListResourceTagsRequest) throws -> ListResourceTagsResponse {
        return try client.send(operation: "ListResourceTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a data encryption key that you can use in your application to encrypt data locally. You must specify the customer master key (CMK) under which to generate the data key. You must also specify the length of the data key using either the KeySpec or NumberOfBytes field. You must specify one field or the other, but not both. For common key lengths (128-bit and 256-bit symmetric keys), we recommend that you use KeySpec. This operation returns a plaintext copy of the data key in the Plaintext field of the response, and an encrypted copy of the data key in the CiphertextBlob field. The data key is encrypted under the CMK specified in the KeyId field of the request. We recommend that you use the following pattern to encrypt data locally in your application:   Use this operation (GenerateDataKey) to retrieve a data encryption key.   Use the plaintext data encryption key (returned in the Plaintext field of the response) to encrypt data locally, then erase the plaintext data key from memory.   Store the encrypted data key (returned in the CiphertextBlob field of the response) alongside the locally encrypted data.   To decrypt data locally:   Use the Decrypt operation to decrypt the encrypted data key into a plaintext copy of the data key.   Use the plaintext data key to decrypt data locally, then erase the plaintext data key from memory.   To return only an encrypted copy of the data key, use GenerateDataKeyWithoutPlaintext. To return an arbitrary unpredictable byte string, use GenerateRandom. If you use the optional EncryptionContext field, you must store at least enough information to be able to reconstruct the full encryption context when you later send the ciphertext to the Decrypt operation. It is a good practice to choose an encryption context that you can reconstruct on the fly to better secure the ciphertext. For more information, see Encryption Context in the AWS Key Management Service Developer Guide.
    public func generateDataKey(_ input: GenerateDataKeyRequest) throws -> GenerateDataKeyResponse {
        return try client.send(operation: "GenerateDataKey", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the customer master keys.
    public func listKeys(_ input: ListKeysRequest) throws -> ListKeysResponse {
        return try client.send(operation: "ListKeys", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sets the state of a customer master key (CMK) to disabled, thereby preventing its use for cryptographic operations. For more information about how key state affects the use of a CMK, see How Key State Affects the Use of a Customer Master Key in the AWS Key Management Service Developer Guide.
    public func disableKey(_ input: DisableKeyRequest) throws {
        _ = try client.send(operation: "DisableKey", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds a grant to a key to specify who can use the key and under what conditions. Grants are alternate permission mechanisms to key policies. For more information about grants, see Grants in the AWS Key Management Service Developer Guide.
    public func createGrant(_ input: CreateGrantRequest) throws -> CreateGrantResponse {
        return try client.send(operation: "CreateGrant", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified alias. To map an alias to a different key, call UpdateAlias.
    public func deleteAlias(_ input: DeleteAliasRequest) throws {
        _ = try client.send(operation: "DeleteAlias", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provides detailed information about the specified customer master key.
    public func describeKey(_ input: DescribeKeyRequest) throws -> DescribeKeyResponse {
        return try client.send(operation: "DescribeKey", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the items you need in order to import key material into AWS KMS from your existing key management infrastructure. For more information about importing key material into AWS KMS, see Importing Key Material in the AWS Key Management Service Developer Guide. You must specify the key ID of the customer master key (CMK) into which you will import key material. This CMK's Origin must be EXTERNAL. You must also specify the wrapping algorithm and type of wrapping key (public key) that you will use to encrypt the key material. This operation returns a public key and an import token. Use the public key to encrypt the key material. Store the import token to send with a subsequent ImportKeyMaterial request. The public key and import token from the same response must be used together. These items are valid for 24 hours, after which they cannot be used for a subsequent ImportKeyMaterial request. To retrieve new ones, send another GetParametersForImport request.
    public func getParametersForImport(_ input: GetParametersForImportRequest) throws -> GetParametersForImportResponse {
        return try client.send(operation: "GetParametersForImport", path: "/", httpMethod: "POST", input: input)
    }

    ///  Decrypts ciphertext. Ciphertext is plaintext that has been previously encrypted by using any of the following functions:    GenerateDataKey     GenerateDataKeyWithoutPlaintext     Encrypt    Note that if a caller has been granted access permissions to all keys (through, for example, IAM user policies that grant Decrypt permission on all resources), then ciphertext encrypted by using keys in other accounts where the key grants access to the caller can be decrypted. To remedy this, we recommend that you do not grant Decrypt access in an IAM user policy. Instead grant Decrypt access only in key policies. If you must grant Decrypt access in an IAM user policy, you should scope the resource to specific keys or to specific trusted accounts.
    public func decrypt(_ input: DecryptRequest) throws -> DecryptResponse {
        return try client.send(operation: "Decrypt", path: "/", httpMethod: "POST", input: input)
    }

    ///  Marks a key as enabled, thereby permitting its use.
    public func enableKey(_ input: EnableKeyRequest) throws {
        _ = try client.send(operation: "EnableKey", path: "/", httpMethod: "POST", input: input)
    }

    ///  Enables rotation of the specified customer master key.
    public func enableKeyRotation(_ input: EnableKeyRotationRequest) throws {
        _ = try client.send(operation: "EnableKeyRotation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes key material that you previously imported and makes the specified customer master key (CMK) unusable. For more information about importing key material into AWS KMS, see Importing Key Material in the AWS Key Management Service Developer Guide. When the specified CMK is in the PendingDeletion state, this operation does not change the CMK's state. Otherwise, it changes the CMK's state to PendingImport. After you delete key material, you can use ImportKeyMaterial to reimport the same key material into the CMK.
    public func deleteImportedKeyMaterial(_ input: DeleteImportedKeyMaterialRequest) throws {
        _ = try client.send(operation: "DeleteImportedKeyMaterial", path: "/", httpMethod: "POST", input: input)
    }

    ///  Revokes a grant. You can revoke a grant to actively deny operations that depend on it.
    public func revokeGrant(_ input: RevokeGrantRequest) throws {
        _ = try client.send(operation: "RevokeGrant", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the description of a customer master key (CMK).
    public func updateKeyDescription(_ input: UpdateKeyDescriptionRequest) throws {
        _ = try client.send(operation: "UpdateKeyDescription", path: "/", httpMethod: "POST", input: input)
    }

    ///  Schedules the deletion of a customer master key (CMK). You may provide a waiting period, specified in days, before deletion occurs. If you do not provide a waiting period, the default period of 30 days is used. When this operation is successful, the state of the CMK changes to PendingDeletion. Before the waiting period ends, you can use CancelKeyDeletion to cancel the deletion of the CMK. After the waiting period ends, AWS KMS deletes the CMK and all AWS KMS data associated with it, including all aliases that refer to it.  Deleting a CMK is a destructive and potentially dangerous operation. When a CMK is deleted, all data that was encrypted under the CMK is rendered unrecoverable. To restrict the use of a CMK without deleting it, use DisableKey.  For more information about scheduling a CMK for deletion, see Deleting Customer Master Keys in the AWS Key Management Service Developer Guide.
    public func scheduleKeyDeletion(_ input: ScheduleKeyDeletionRequest) throws -> ScheduleKeyDeletionResponse {
        return try client.send(operation: "ScheduleKeyDeletion", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disables rotation of the specified key.
    public func disableKeyRotation(_ input: DisableKeyRotationRequest) throws {
        _ = try client.send(operation: "DisableKeyRotation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Attaches a key policy to the specified customer master key (CMK). For more information about key policies, see Key Policies in the AWS Key Management Service Developer Guide.
    public func putKeyPolicy(_ input: PutKeyPolicyRequest) throws {
        _ = try client.send(operation: "PutKeyPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a display name for a customer master key. An alias can be used to identify a key and should be unique. The console enforces a one-to-one mapping between the alias and a key. An alias name can contain only alphanumeric characters, forward slashes (/), underscores (_), and dashes (-). An alias must start with the word "alias" followed by a forward slash (alias/). An alias that begins with "aws" after the forward slash (alias/aws...) is reserved by Amazon Web Services (AWS). The alias and the key it is mapped to must be in the same AWS account and the same region. To map an alias to a different key, call UpdateAlias.
    public func createAlias(_ input: CreateAliasRequest) throws {
        _ = try client.send(operation: "CreateAlias", path: "/", httpMethod: "POST", input: input)
    }

    ///  Imports key material into an AWS KMS customer master key (CMK) from your existing key management infrastructure. For more information about importing key material into AWS KMS, see Importing Key Material in the AWS Key Management Service Developer Guide. You must specify the key ID of the CMK to import the key material into. This CMK's Origin must be EXTERNAL. You must also send an import token and the encrypted key material. Send the import token that you received in the same GetParametersForImport response that contained the public key that you used to encrypt the key material. You must also specify whether the key material expires and if so, when. When the key material expires, AWS KMS deletes the key material and the CMK becomes unusable. To use the CMK again, you can reimport the same key material. If you set an expiration date, you can change it only by reimporting the same key material and specifying a new expiration date. When this operation is successful, the specified CMK's key state changes to Enabled, and you can use the CMK. After you successfully import key material into a CMK, you can reimport the same key material into that CMK, but you cannot import different key material.
    public func importKeyMaterial(_ input: ImportKeyMaterialRequest) throws -> ImportKeyMaterialResponse {
        return try client.send(operation: "ImportKeyMaterial", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all of the key aliases in the account.
    public func listAliases(_ input: ListAliasesRequest) throws -> ListAliasesResponse {
        return try client.send(operation: "ListAliases", path: "/", httpMethod: "POST", input: input)
    }

    ///  Generates an unpredictable byte string.
    public func generateRandom(_ input: GenerateRandomRequest) throws -> GenerateRandomResponse {
        return try client.send(operation: "GenerateRandom", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of all grants for which the grant's RetiringPrincipal matches the one specified. A typical use is to list all grants that you are able to retire. To retire a grant, use RetireGrant.
    public func listRetirableGrants(_ input: ListRetirableGrantsRequest) throws -> ListGrantsResponse {
        return try client.send(operation: "ListRetirableGrants", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a policy attached to the specified key.
    public func getKeyPolicy(_ input: GetKeyPolicyRequest) throws -> GetKeyPolicyResponse {
        return try client.send(operation: "GetKeyPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes the specified tag or tags from the specified customer master key (CMK).  To remove a tag, you specify the tag key for each tag to remove. You do not specify the tag value. To overwrite the tag value for an existing tag, use TagResource.
    public func untagResource(_ input: UntagResourceRequest) throws {
        _ = try client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Encrypts plaintext into ciphertext by using a customer master key. The Encrypt function has two primary use cases:   You can encrypt up to 4 KB of arbitrary data such as an RSA key, a database password, or other sensitive customer information.   If you are moving encrypted data from one region to another, you can use this API to encrypt in the new region the plaintext data key that was used to encrypt the data in the original region. This provides you with an encrypted copy of the data key that can be decrypted in the new region and used there to decrypt the encrypted data.   Unless you are moving encrypted data from one region to another, you don't use this function to encrypt a generated data key within a region. You retrieve data keys already encrypted by calling the GenerateDataKey or GenerateDataKeyWithoutPlaintext function. Data keys don't need to be encrypted again by calling Encrypt. If you want to encrypt data locally in your application, you can use the GenerateDataKey function to return a plaintext data encryption key and a copy of the key encrypted under the customer master key (CMK) of your choosing.
    public func encrypt(_ input: EncryptRequest) throws -> EncryptResponse {
        return try client.send(operation: "Encrypt", path: "/", httpMethod: "POST", input: input)
    }

    ///  List the grants for a specified key.
    public func listGrants(_ input: ListGrantsRequest) throws -> ListGrantsResponse {
        return try client.send(operation: "ListGrants", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates an alias to map it to a different key. An alias is not a property of a key. Therefore, an alias can be mapped to and unmapped from an existing key without changing the properties of the key. An alias name can contain only alphanumeric characters, forward slashes (/), underscores (_), and dashes (-). An alias must start with the word "alias" followed by a forward slash (alias/). An alias that begins with "aws" after the forward slash (alias/aws...) is reserved by Amazon Web Services (AWS). The alias and the key it is mapped to must be in the same AWS account and the same region.
    public func updateAlias(_ input: UpdateAliasRequest) throws {
        _ = try client.send(operation: "UpdateAlias", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds or overwrites one or more tags for the specified customer master key (CMK).  Each tag consists of a tag key and a tag value. Tag keys and tag values are both required, but tag values can be empty (null) strings. You cannot use the same tag key more than once per CMK. For example, consider a CMK with one tag whose tag key is Purpose and tag value is Test. If you send a TagResource request for this CMK with a tag key of Purpose and a tag value of Prod, it does not create a second tag. Instead, the original tag is overwritten with the new tag value.
    public func tagResource(_ input: TagResourceRequest) throws {
        _ = try client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list of policies attached to a key.
    public func listKeyPolicies(_ input: ListKeyPoliciesRequest) throws -> ListKeyPoliciesResponse {
        return try client.send(operation: "ListKeyPolicies", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a data encryption key encrypted under a customer master key (CMK). This operation is identical to GenerateDataKey but returns only the encrypted copy of the data key. This operation is useful in a system that has multiple components with different degrees of trust. For example, consider a system that stores encrypted data in containers. Each container stores the encrypted data and an encrypted copy of the data key. One component of the system, called the control plane, creates new containers. When it creates a new container, it uses this operation (GenerateDataKeyWithoutPlaintext) to get an encrypted data key and then stores it in the container. Later, a different component of the system, called the data plane, puts encrypted data into the containers. To do this, it passes the encrypted data key to the Decrypt operation, then uses the returned plaintext data key to encrypt data, and finally stores the encrypted data in the container. In this system, the control plane never sees the plaintext data key.
    public func generateDataKeyWithoutPlaintext(_ input: GenerateDataKeyWithoutPlaintextRequest) throws -> GenerateDataKeyWithoutPlaintextResponse {
        return try client.send(operation: "GenerateDataKeyWithoutPlaintext", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a Boolean value that indicates whether key rotation is enabled for the specified key.
    public func getKeyRotationStatus(_ input: GetKeyRotationStatusRequest) throws -> GetKeyRotationStatusResponse {
        return try client.send(operation: "GetKeyRotationStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Cancels the deletion of a customer master key (CMK). When this operation is successful, the CMK is set to the Disabled state. To enable a CMK, use EnableKey. For more information about scheduling and canceling deletion of a CMK, see Deleting Customer Master Keys in the AWS Key Management Service Developer Guide.
    public func cancelKeyDeletion(_ input: CancelKeyDeletionRequest) throws -> CancelKeyDeletionResponse {
        return try client.send(operation: "CancelKeyDeletion", path: "/", httpMethod: "POST", input: input)
    }

    ///  Encrypts data on the server side with a new customer master key (CMK) without exposing the plaintext of the data on the client side. The data is first decrypted and then reencrypted. You can also use this operation to change the encryption context of a ciphertext. Unlike other operations, ReEncrypt is authorized twice, once as ReEncryptFrom on the source CMK and once as ReEncryptTo on the destination CMK. We recommend that you include the "kms:ReEncrypt*" permission in your key policies to permit reencryption from or to the CMK. This permission is automatically included in the key policy when you create a CMK through the console, but you must include it manually when you create a CMK programmatically or when you set a key policy with the PutKeyPolicy operation.
    public func reEncrypt(_ input: ReEncryptRequest) throws -> ReEncryptResponse {
        return try client.send(operation: "ReEncrypt", path: "/", httpMethod: "POST", input: input)
    }


}