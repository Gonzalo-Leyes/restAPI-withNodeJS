const Sequelize = require('sequelize');

const database ="restodelilah";
const user = "root";
const host = "localhost";
const password = "";
const port = "";

const sequelize = new Sequelize (`mysql://${user}:${password}@${host}:${port}/${database}`)

module.exports = sequelize