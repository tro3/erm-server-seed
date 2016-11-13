express = require('express')
restify = require('express-restify-mongoose')
model = require('./model')
common = require('../common')

router = express.Router()
restify.serve(router, model, {
  name: common.apiName(model)
  version: ''
  outputFn: common.outputFn
})

module.exports = {
  router: router
  model: model
}
