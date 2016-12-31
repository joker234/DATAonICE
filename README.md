# DATAonICE

Das ist ein schnell und dreckig dahingeschriebenes Spaßprojekt das auf der Rückfahrt vom 33c3 entstanden ist.

Das Grundlegende Setup ist:

* man starte mit einem `time.json` Dokument mit folgendem Inhalt:

    [
    ]

* alle $zeiteinheit führt man `ruby get.rb` aus. Dieses Script konkateniert auf hässlichste Art und Weise alle bisherigen Daten aus der JSON-Api der Bahn in ein Array in die Datei `time.json`.
* nachdem das Script feddich ist, lädt man das `time.json` auf einen Server nach Wahl, auf dem die `index.html` liegt, sowie ein jQuery und `highstock.js` von [highcharts](http://www.highcharts.com/) (letztere bitte selbst besorgen, oder durch CDN-Links in der Index ersetzen)
* Die Map benutzt OpenLayers, was in form von `ol.css` und `ol.js` auch selbst beschafft werden darf.

* Benutzte API: https://www.ombord.info/api/jsonp/position/
* Auch interessant: https://www.ombord.info/api/jsonp/users/