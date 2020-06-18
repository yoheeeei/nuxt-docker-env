# app

> My mind-blowing Nuxt.js project

## Build Setup

```bash
# install dependencies
$ yarn install

# serve with hot reload at localhost:3000
$ yarn dev

# build for production and launch server
$ yarn build
$ yarn start

# generate static project
$ yarn generate
```

For detailed explanation on how things work, check out [Nuxt.js docs](https://nuxtjs.org).

## Docker run

```sh
docker build -t imagename .
docker run --rm -it -p 3000:3000 -e BASE_URL=http://localhost:8080 -e TEST_ENV=test imagename
```
