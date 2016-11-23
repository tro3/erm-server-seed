fs = require('fs')
path = require('path')
express = require('express')
module.exports = router = express.Router()


for item in fs.readdirSync(__dirname)
  if fs.lstatSync("#{__dirname}/#{item}").isDirectory()
    router.use(require("./#{item}").router)
