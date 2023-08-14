PHP 8.2 project template for local development and production build
===================================================================

Project home page: [Nginx-PHP 8.2](https://github.com/kubanka-peter/nginx-php8.2)

This project template is a skeleton for a typical PHP 8.2 application. 
You can use it to quickly bootstrap your PHP 8.2 webapp projects and dev environment.

It's uses traefik as a reverse proxy, you can access your app at `https://project.docker.localhost`
You can install a self-signed certificate for this domain by running `docker/create-self-signed-certs`, this command
is requiring mkcert to be installed on your system (see: [mkcert](https://github.com/FiloSottile/mkcert)).

### Installation

Follow this steps: [Creating a repository from a template](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template)

OR

```
git clone git@github.com:kubanka-peter/nginx-php8.2.git project
rm -rf project/.git 
```

### Configuration

- after you got the source files, copy `docker/.env.dist` to `docker/.env` and adjust the values to your needs.
- execute `docker/create-self-signed-certs` to create a self-signed certificate for the domain you specified in `docker/.env`
- execute `./run` to start the containers, now you can access your app at `https://project.docker.localhost` by default
