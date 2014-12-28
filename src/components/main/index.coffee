module.exports = React.createClass
  mixins: [Overworld.mixinFor(-> portal)]
  onClick: ->
    @emit 'main:update', Date.now().toString()

  render: ->
    React.createElement 'div', {key: 'foo'}, [
      React.createElement 'h1', {key: 'h1'}, 'App'
      React.createElement 'button', {key: '1', onClick: @onClick}, 'click me'
      React.createElement 'p', {key: '2'}, @props.body
    ]
