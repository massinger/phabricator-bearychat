FROM mkenney/npm
RUN mkdir -p /apps/
WORKDIR /apps
RUN git clone https://github.com/massinger/phabricator-bearychat.git ./ && mv /apps/config/production.json.example /apps/config/production.json
RUN npm install
VOLUME /apps/config
EXPOSE 8083
CMD NODE_ENV=production node server.js. && tail -f /dev/null
