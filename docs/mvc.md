# The Model View Controller (MVC) Pattern

GET /about HTTP/1.1
Host: 127.0.0.1


## Routes
Matchers for the URL that is requested 

GET for "/home"

I see you requested "/home", we'll give that to the HomeController to handle
## Models
Database wrapper 

User
* query for records
* wrap individual records

## Views
Your response body content
* HTML
* CSV
* PDF
* XML

This is what get sent back to the browser and displayed

## Controllers
Decide how to process a request and define a response