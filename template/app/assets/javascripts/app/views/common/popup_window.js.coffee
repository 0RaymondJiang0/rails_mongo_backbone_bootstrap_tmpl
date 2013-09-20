App.Views.Common ||={}

class App.Views.Common.PopupWindow extends App.Views.Base
  initialize: (options)=>
    @content_view=options.view
    @width=options.width

    if typeof options.title isnt 'undefined'
      @title=options.title
    else
      @title=options.view.title

    if typeof options.showFooter isnt 'undefined'
      @showFooter=options.showFooter
    else
      @showFooter=false

    @template=JST['app/views/common/popup_window_template']
  render: =>
    $(@el).html @template()
    if @title
      @$('#myModalLabel').html(@title)
    if typeof @showFooter != 'undefined' and @showFooter is false
      @$('.modal-footer').remove()
    if typeof @width isnt 'undefined'
      @$('.modal').css('width',@width)
    else
      @$('.modal').css('width','580')

    @$('.modal-body').append @content_view.render().el

    @$('.cancel').on 'click', =>
      @$('#popmodal').modal('hide')

    $('body').append @.el

    @$('#popmodal').modal()

    @$('#popmodal').on 'hidden',=>
      @$('#popmodal').remove()

    @$('#popmodal').on 'shown',=>
      @content_view.afterRender()
    @
  afterRender: =>
