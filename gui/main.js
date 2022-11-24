var sqlite3 = require('sqlite3');
 
 var db = database_files/illuminati.db;
 
 db.serialize(function() {
  
  // Query data from the table
  db.each("SELECT person_id FROM person", function(err, row) {
    console.log(row.id + ": " + row.name);
  });
 });
 
 db.close();