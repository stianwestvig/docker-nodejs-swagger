FROM node:7.4-alpine
RUN mkdir -p /usr
WORKDIR /usr
COPY ./package.json /usr
RUN npm install --silent
COPY . /usr
RUN npm run lint
EXPOSE 3000
ENTRYPOINT ["npm", "run"]
CMD ["start"]
