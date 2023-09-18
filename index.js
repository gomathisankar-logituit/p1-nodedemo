var express = require('express')
var app = express()

const responseData = {
    message:"Success",
  sampleData:{
      name: "Test the service",
      category:"Sample",
      status: "Active"
  },
  endingMessage:"Sample code for testing"
}

app.set('port', (process.env.PORT || 5000))

app.get('/', function(request, response) {
  response.send(JSON.stringify(responseData))
})

app.listen(app.get('port'), function() {
  console.log("Node app is running at localhost:" + app.get('port'))
})