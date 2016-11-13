mongoose = require('mongoose')

name = 'Project'
schema = new mongoose.Schema(
  name: String
)

module.exports = mongoose.model(name, schema)
