express = require('express')
mongoose = require('mongoose')
User = mongoose.model('User')

module.exports = router = express.Router()

router.use (req, res, next) ->
  User.findOne({}).then (doc) ->
    req.user = doc
    next()
