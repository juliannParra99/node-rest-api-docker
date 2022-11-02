const express =require('express');
const morgan = require('morgan')
const app = express();
const indexRoutes = require('./routes/index.js')

app.use(morgan('dev'));
app.use(indexRoutes); 

module.exports = app;

