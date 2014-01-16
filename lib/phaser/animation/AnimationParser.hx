package phaser.animation;
import phaser.core.Game;

@:native("Phaser.AnimationParser")
@:publicFields
extern class AnimationParser {
	static function spriteSheet(game:Game, key:String, frameWidth:F, frameHeight:Int, ?frameMax:Int):FrameData;
	static function JSONData(game:Game, json:Dynamic, cacheKey:String):FrameData;
	static function JSONDataHash(game:Game, json:Dynamic, cacheKey:String):FrameData;
	static function XMLData(game:Game, xml:Dynamic, cacheKey:String):FrameData;
}