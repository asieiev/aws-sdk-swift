// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.


extension ECR {

    ///  Returns metadata about the images in a repository, including image size, image tags, and creation date.  Beginning with Docker version 1.9, the Docker client compresses image layers before pushing them to a V2 Docker registry. The output of the docker images command shows the uncompressed image size, so it may return a larger image size than the image sizes returned by DescribeImages. 
    public func describeImagesPaginator(_ input: DescribeImagesRequest) -> Future<[ImageDetail]> {
        return client.paginate(input: input, command: describeImages, resultKey: "imageDetails", tokenKey: "nextToken")
    }
    
    ///  Describes image repositories in a registry.
    public func describeRepositoriesPaginator(_ input: DescribeRepositoriesRequest) -> Future<[Repository]> {
        return client.paginate(input: input, command: describeRepositories, resultKey: "repositories", tokenKey: "nextToken")
    }
    
    ///  Retrieves the results of the specified lifecycle policy preview request.
    public func getLifecyclePolicyPreviewPaginator(_ input: GetLifecyclePolicyPreviewRequest) -> Future<[LifecyclePolicyPreviewResult]> {
        return client.paginate(input: input, command: getLifecyclePolicyPreview, resultKey: "previewResults", tokenKey: "nextToken")
    }
    
    ///  Lists all the image IDs for a given repository. You can filter images based on whether or not they are tagged by setting the tagStatus parameter to TAGGED or UNTAGGED. For example, you can filter your results to return only UNTAGGED images and then pipe that result to a BatchDeleteImage operation to delete them. Or, you can filter your results to return only TAGGED images to list all of the tags in your repository.
    public func listImagesPaginator(_ input: ListImagesRequest) -> Future<[ImageIdentifier]> {
        return client.paginate(input: input, command: listImages, resultKey: "imageIds", tokenKey: "nextToken")
    }
    
}

extension ECR.DescribeImagesRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            filter: original.filter, 
            imageIds: original.imageIds, 
            maxResults: original.maxResults, 
            nextToken: token, 
            registryId: original.registryId, 
            repositoryName: original.repositoryName
        )
    }
}

extension ECR.DescribeRepositoriesRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            registryId: original.registryId, 
            repositoryNames: original.repositoryNames
        )
    }
}

extension ECR.GetLifecyclePolicyPreviewRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            filter: original.filter, 
            imageIds: original.imageIds, 
            maxResults: original.maxResults, 
            nextToken: token, 
            registryId: original.registryId, 
            repositoryName: original.repositoryName
        )
    }
}

extension ECR.ListImagesRequest: AWSPaginateable {
    public init(_ original: Self, token: String) {
        self.init(
            filter: original.filter, 
            maxResults: original.maxResults, 
            nextToken: token, 
            registryId: original.registryId, 
            repositoryName: original.repositoryName
        )
    }
}


