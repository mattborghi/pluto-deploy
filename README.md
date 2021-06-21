## Test Dockerfile

```sh
docker build -t pluto . -f Dockerfile
docker run -it pluto
```

## Dev Pluto

```sh
cd pluto-deployment-environment
$ julia
julia> ]
(@v.1.6) pkg> activate .
(pluto-deploy) pkg> <-
julia> import Pluto
julia> Pluto.run()
```

## Heroku deployment

Now you can sign into Container Registry.

```sh
$ heroku container:login
```

Push your Docker-based app

Build the Dockerfile in the current directory and push the Docker image.

```sh
$ heroku container:push web -a pluto-deploy
```

Deploy the changes

Release the newly pushed images to deploy your app.

```sh
$ heroku container:release web -a pluto-deploy
```

Check the logs

```sh
$ heroku logs --tail -a pluto-deploy
```