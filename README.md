PhaserHaxe
==========

Haxe bindings for the JavaScript library Phaser (http://www.photonstorm.com/phaser)

Current version 1.1.5

These extern classes were written manually mostly, so there probably are bugs, but also a lot of things normally going wrong in automated processes were prevented.

Missing stuff
==========	
- the PIXI library within Phaser ("pixi/Pixi.js")


Resources
==========
#### Full Screen Mobile Template ( resources/Project Templates/Full Screen Mobile )
A template for full screen mobile apps ported from Phaser 1.1.5. 

Notes: 
- The template contains none of the asset files which the example code loads.
- Pay attention to the comments in Preloader.update regarding the need for the update function when not using music. As the template will not go to the MainMenu State if you do not add music assets or remove the update function and add game.state.start('MainMenu'); to create.
