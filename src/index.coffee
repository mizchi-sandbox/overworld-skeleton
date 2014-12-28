# requires
global = require 'global'
global.Promise = require 'bluebird'
global.React = require 'react'
global.Overworld = require 'overworld'
Overworld.setReact React

Main = require './scenes/main/'
window.portal = new Overworld.Portal
portal.link 'main', Main

window.addEventListener 'DOMContentLoaded', ->
  portal.mount(document.body)
  portal.transition('main', {id: 'foo'})
