// const express = require('express');
// const { engine } = require('express-handlebars');
// const app = express();
import express from 'express';
import { engine } from 'express-handlebars';
import sqlite3 from 'sqlite3';
import open from 'open';

const app = express();
const port = 3000;

app.use(express.static('public'));
app.engine('handlebars', engine());
app.set('view engine', 'handlebars');
app.set('views', './views');

// serve page request
app.get('/', (req, res) => {
    // res.render('bar-chart');
    res.render("illuminati");
});

var db = new sqlite3.Database('../database_files/illuminati.db');

app.get('/illuminati/person-first-name', (req, res) => {
    db.serialize(function () {
        db.all("SELECT first_name FROM person", (err, rows) => res.json(rows))
    })
});

app.get('/illuminati/person', (req, res) => {
    db.serialize(function () {
        db.all("SELECT * FROM person", (err, rows) => res.json(rows))
    })
});

// serve sample data
app.get('/api/data', (req, res) => {
    const data = [100, 50, 300, 40, 350, 250]; // assuming this is coming from the database
    res.json(data);
});

// start app
app.listen(port, () => {
    console.log(`App listening to port ${port}`)
    open("http://localhost:3000")
});