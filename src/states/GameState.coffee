Clicker = require 'objects/Clicker.coffee'

class GameState extends Phaser.Sprite
	preload: ->
		@game.load.image 'cup', 'img/coffee.png'
		@game.load.audio 'slurp', 'audio/slurp.wav'
	create: ->
		@game.stage.backgroundColor = "#4488AA"
		@slurp = @game.add.audio 'slurp';
		@coffeeClicker = new Clicker @game, @game.world.centerX, @game.world.centerY, 
			'cup', @countUp
		@game.add.existing @coffeeClicker
		@coffeeClicker.anchor.setTo 0.5
	countUp: (clicks) =>
		@slurp.play()
		tween = @game.add.tween(@coffeeClicker.scale).to { x: 1 + clicks * 0.1, y: 1 + clicks * 0.1 }, 500, Phaser.Easing.Linear.None, true
		tween.onComplete.add () -> 
			@game.add.tween(@coffeeClicker.scale).to { x: 1, y: 1 }, 750, Phaser.Easing.Linear.None, true
		, this

module.exports = GameState
