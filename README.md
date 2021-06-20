## Test Dockerfile

```sh
docker build -t pluto . -f Dockerfile
docker run -it pluto
```

## Dev Pluto

```sh
$ julia
julia> ]
(@v.1.6) pkg> activate .
(pluto-deploy) pkg> <-
julia> import Pluto
julia> Pluto.run()
```