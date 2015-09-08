@SPA.module "Home", (Home, App, Backbone, Marionette, $, _) ->
  class Home.Router extends Marionette.AppRouter
    appRoutes:
      ""  : "show"

  API =
    show: ->
      new Home.Show.Controller

  Home.on "start", ->
    new Home.Router
      controller: API
