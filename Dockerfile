FROM mkenney/npm
RUN mkdir -p /apps/
WORKDIR /apps
RUN git clone https://github.com/massinger/phabricator-bearychat.git ./
RUN npm install
VOLUME /apps/config
RUN mv ./config/production.json.example ./config/production.json
EXPOSE 8083
CMD NODE_ENV=production node server.js.