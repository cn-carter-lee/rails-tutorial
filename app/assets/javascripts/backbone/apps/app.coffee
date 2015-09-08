@SPA = do (Backbone, Marionette) ->
  App = new Marionette.Application

  App.data = {}

  App.init = ()->
    App.addRegions
      mainRegion: App.Regions.MainRegion

  App.rootRoute = ""

  App.on "start", ->
    App.init()
    Backbone.history.start() if  Backbone.history

  App


@SPA.module "Regions", (Regions, App, Backbone, Marionette, $, _) ->
  class Regions.MainRegion extends Marionette.Region
    el: "#container"

$(->
  SPA.start()
)