# docker-alpine-gcc

```sh
$ docker pull ghcr.io/cdecl/alpine-gcc:latest
```

- build 
```
# only static, ABI compatibility 
$ docker run --rm -v $(pwd):/app ghcr.io/cdecl/alpine-gcc sh -c  'cd /app && g++ -o main -no-pie -static main.cpp '
```

- build (w/ cmake)
```
# only static, ABI Crash
$ docker run --rm -v $(pwd):/app ghcr.io/cdecl/alpine-gcc sh -c  'mkdir -p /app/build && cd /app/build && cmake .. && make'
```
