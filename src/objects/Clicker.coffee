class Clicker extends Phaser.Sprite
	constructor: (game, x, y, sprite, @callback) ->
		super game, x, y, sprite
		@clicks = 0
		@inputEnabled = true
		@events.onInputDown.add(@onClick)
	onClick: =>
		@clicks++
		@callback? @clicks

module.exports = Clicker