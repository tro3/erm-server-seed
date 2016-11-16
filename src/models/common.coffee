

module.exports = {

  apiName: (model) -> "#{model.modelName.toLowerCase()}s"

  outputFn: (req, res) ->
    resp = {_status: 'OK'}
    if req.erm.result instanceof Array
      resp._items = req.erm.result
    else
      resp._item = req.erm.result
    res
      .set('Cache-Control', 'no-cache')
      .set('Content-Type', 'application/json')
      .send(resp)
}
