FROM node:20.17.0

WORKDIR /cloud

COPY package.json yarn.lock ./

RUN npm install -g --force yarn 

RUN yarn

COPY . .

# COPY .env.example .env

CMD [ "yarn", "dev", "--", "--host" ]