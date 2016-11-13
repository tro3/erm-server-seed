mongoose = require('mongoose')

name = 'User'
schema = new mongoose.Schema(
  username: String
)

module.exports = mongoose.model(name, schema)
