# Node image
FROM node:10

# set working directory
RUN mkdir /usr/src/app
WORKDIR /usr/src/app

# copy source code
COPY . /usr/src/app/

# install and cache app dependencies
RUN npm install

# expose port
EXPOSE 8000


# env
ENV host="0.0.0.0"
ENV DEBUG="*"

CMD ["node", "server.js" ]
