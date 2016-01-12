# go-vim Docker image
This Docker image adds [Go](https://golang.org/) tools and the following vim plugins to the [official Go image](https://registry.hub.docker.com/_/golang/):

* [vim-go](https://github.com/fatih/vim-go)
* [ctrlp](https://github.com/kien/ctrlp.vim)
* [minibufexpl](https://github.com/fholgado/minibufexpl.vim)
* [fugitive.vim](https://github.com/tpope/vim-fugitive)

## Usage

Run this image from within your go workspace. You can than edit your project using `vim`, and usual go commands: `go build`, `go run`, etc. 

```
cd your/go/workspace
docker run --rm -tiv `pwd`:/go browny/go-docker-dev
```

## Others 
Some utility tools are also installed:

* [gcloud sdk](https://cloud.google.com/sdk/) is also installed

## Limitations

This image lacks [gdb](https://golang.org/doc/gdb) support. If anyone has managed to get it working on this image, please let me know (breakpoints are not working for me).
