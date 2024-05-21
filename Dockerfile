FROM node:20-alpine3.18 as base

WORKDIR /usr/src/app

COPY package*.json ./

FROM base as dev

RUN --mount=type=cache,target=/usr/src/app/.npm \
  npm set cache /usr/src/app/.npm && \
  npm install 
COPY . .
CMD ["npm", "run", "dev"]

FROM base as production
ENV NODE_ENV production

# Install only production dependencies
# Use cache mount to speed up install of existing dependencies
RUN --mount=type=cache,target=/usr/src/app/.npm \
  npm set cache /usr/src/app/.npm && \
  npm ci --only=production

COPY ./src .

# Indicate expected port
EXPOSE 3000

CMD [ "node", "index.js" ]