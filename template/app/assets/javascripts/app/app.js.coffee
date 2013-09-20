window.App =
  Models: {}
  Controllers: {}
  Views: {}


class App.Models.Base extends Backbone.Model
  constructor: ->
    super
  initialize: ->
    this.bind 'invalid',(model,error)->
      #console.log error
      if $('.alert-error').length>0
        $('.alert-error').html error
        $('.alert-error').show('slow')
      else
        alert(error)
    super

class App.Views.Base extends Backbone.View
  constructor: (options = {}) ->
    super
    @render = _.wrap @render, (render) =>
      @beforeRender()
      render()
      @afterRender()
      @
  initialize: ->
    @csrf_token = $('meta[name=csrf-token]').attr('content')
    @csrf_param = $('meta[name=csrf-param]').attr('content')
    if typeof @csrf_param isnt 'undefined' and typeof @csrf_token isnt 'undefined'
      @csrf_web_params=@csrf_param + "=" + encodeURIComponent(@csrf_token)
    super
  beforeRender: () =>
    #console.log 'beforeRender'
  render: () =>
    @
  afterRender: () =>
    #console.log 'afterRender'
    #
  
