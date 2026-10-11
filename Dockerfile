FROM node

ENV MONGO_DB_USERNAME=taslim \
    MONGO_DB_PWD=password

RUN mkdir -p delta/nodeapp

COPY . /delta/nodeapp

CMD ["node", "/delta/nodeapp/server.js"]