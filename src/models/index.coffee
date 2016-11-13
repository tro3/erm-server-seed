fs = require('fs')
path = require('path')
express = require('express')
module.exports = router = express.Router()


for item in fs.readdirSync(__dirname)
  console.log item
  
router.use(require('./projects').router)
router.use(require('./users').router)
