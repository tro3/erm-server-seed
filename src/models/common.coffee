

module.exports = {

  apiName: (model) -> "#{model.modelName.toLowerCase()}s"

  outputFn: (req, res) ->
    resp = {_status: 'OK'}
    if req.erm.result instanceof Array
      resp._items = req.erm.result
    else
      resp._item = req.erm.result
    res.json(resp)
}
