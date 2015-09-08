@SPA.module "Home.Show", (Show, App, Backbone, Marionette, $, _) ->

  class Show.Layout extends Marionette.LayoutView
    template: "home/show/layout"
    className: 'container'