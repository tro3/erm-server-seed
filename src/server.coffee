express = require('express')
bodyParser = require('body-parser')
methodOverride = require('method-override')
mongoose = require('mongoose')
Promise = require('bluebird')

api = require('./models')
auth = require('./auth')

mongoose.Promise = Promise
mongoose.connect('mongodb://localhost:27017/app')


app = express()

app.use(bodyParser.json())
app.use(methodOverride())
app.use(auth)

app.use (req, res, next) ->
  console.log req.user
  next()

app.use(api)

app.listen 3000, () ->
  console.log('Express server listening on port 3000')
