express = require('express')
bodyParser = require('body-parser')
methodOverride = require('method-override')
mongoose = require('mongoose')
Promise = require('bluebird')

api = require('./models')
auth = require('./auth')

mongoose.Promise = Promise
mongoose.connect('mongodb://localhost:27017/app')

staticDir = '/Users/Trey Roessig/Documents/GitHub/ng2-seed-cli/dist'


app = express()

app.use(bodyParser.json())
app.use(methodOverride())
app.use(auth)
app.use(api)
app.use(express.static(staticDir))
app.use((req, res) -> res.sendFile("index.html", {root:staticDir}))

app.listen 3000, () ->
  console.log('Express server listening on port 3000')
