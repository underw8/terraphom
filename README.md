# terraphom

It's terraform but `phòm`

Idk why but here is the repo just for . . . fun?!

### Why?

- Older `terraform` version doesn't have native `darwin-arm64` binary supported, this is where grpc problems take shape.
- Using `terraform` on macOS and Linux pipelines creating unmatched hash string due to a known bug but never be fixed - https://github.com/hashicorp/terraform-provider-archive/issues/34

### How does this resolve the above?

- Using Amd64 Linux docker container, the hashing function should behave the same both local and on pipelines also, it just like working on their "natural habitat".

### Usage?

Use alias or function, it's your choice, remember to replace the image name:

```
alias terraphom='docker run --platform=linux/amd64 --rm -it --name terraform -e AWS_PROFILE=$AWS_PROFILE -v $HOME/.aws:/root/.aws -v $(pwd):/root/workspace -w /root/workspace underw8/terraform:0.13.7'
```
