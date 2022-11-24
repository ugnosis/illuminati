var sqlite3 = require('sqlite3');
 
var db = new sqlite3.Database('database_files/illuminati.db');
 
 db.serialize(function() {
  
  // Query data from the table
  db.each("SELECT first_name FROM person", function(err, row) {
    console.log(row.first_name);
  });
 });
 
 db.close();