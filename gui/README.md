# README

## Usage

To serve this (web) application, run the following shell commands inside
`illuminati/gui`:

```sh
# install all dependencies
npm install
# server web application
npm run serve
```

## Organization

**Database**. The sqlite database is located in `illuminati/database_files`, where
- `illuminati.db` is the database
- `illuminati.db.sql` generates the database

**Web Application**. The web application is organized in `illuminati/gui`.
It is organized into the _server_, _views_ and _assets_, where
- the _server_ is a script that defines how the server processes requests and
  how to start the server. It's located at `illuminati/gui/server.js`.
- the _views_ are the (handlebars-specified) html-templates for pages of the web
  application. These are organize in `illuminati/gui/views`
    - `illuminati/gui/views/*.handlebars` are the pages of the web-application
    - `illuminati/gui/views/layouts/*.handlebars` are the tempate layouts that
      can be used by the pages of the web-application
- the _assets_ are scripts, styles, images, etc. that are served with the web
  application to the client.

## Dependencies

This application uses:
- [d3](https://d3js.org) for data visualization
- [express](https://www.npmjs.com/package/express) and
  [handlebars](https://www.npmjs.com/package/handlebars) as web application
  framework
- [sqlite](https://www.sqlite.org/index.html) for database management
- [axios](https://www.npmjs.com/package/axios) for http request processing