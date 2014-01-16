package phaser.loader;
import phaser.animation.FrameData;
import phaser.core.Game;

@:native("Phaser.LoaderParser")
@:publicFields
extern class LoaderParser {
	static function bitmapFont(game:Game, xml:Dynamic, cacheKey:FrameData):Void;
}