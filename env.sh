# /bin/sh
find . -type f -print0 | xargs -0 sed -i -e "s~BASE_URL_VALUE~${BASE_URL}~"
find . -type f -print0 | xargs -0 sed -i -e "s~TEST_ENV_VALUE~${TEST_ENV}~"

yarn start