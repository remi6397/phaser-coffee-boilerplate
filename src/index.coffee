GameState = require 'states/GameState.coffee'

class Game extends Phaser.Game
	constructor: ->
		super '100', '100', Phaser.AUTO, 'content', null
		this.state.add 'GameState', GameState, false
		this.state.start 'GameState'

new Game
