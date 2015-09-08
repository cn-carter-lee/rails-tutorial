@SPA.module "Home.Show", (Show, App, Backbone, Marionette, $, _) ->
  class Show.Controller extends Marionette.Controller
    initialize: ->
      view = new Show.Layout
      App.mainRegion.show view