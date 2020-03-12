# netwroking tools

```
# build
docker build . -t openjny/networking

# run
docker run --rm -it -p 8888:8888 openjny/networking
docker run --rm -it -p 8888:8888 -v ${pwd}:/workspace openjny/networking
```