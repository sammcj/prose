FROM node:0.10-onbuild

COPY . /app

WORKDIR /app

RUN npm install && rm -rf ~/.npm && npm cache clear
RUN mkdir -p dist && gulp
RUN npm install serve -g && rm -rf ~/.npm && npm cache clear

EXPOSE 3000

CMD serve
