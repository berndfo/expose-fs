# expose-fs as a container

Expose a file system over http

## Build
docker build . -t brainlounge/exposefs

## Usage

docker run -v /<localpath>:/mnt -p 8080:8441 brainlounge/exposefs

Then do

```
curl localhost:8080 # returns a directory listing in JSON format
curl localhost:8080/some-file.txt # returns the file content
curl -X PUT --data 'hello world' localhost:8080/some-file.txt # writes a file
curl -X POST localhost/some-dir # creates a new directory
```

## License

MIT
