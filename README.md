# Prisma bug #9503

prisma/prisma#9503

1. Clone repo
2. (optional) Run `yarn` to create a local cache - this will make Docker builds marginally faster, especially if the layer cache gets busted
3. Run `docker buildx build --platform linux/amd64 .`
   This script should succeed
4. Run `docker buildx build --platform linux/arm/v7 .`
   This script is failing