import 'package:bonfire/bonfire.dart';

class KnightSpriteSheet {
  static Future<SpriteAnimation> get idleRight => SpriteAnimation.load(
        "characters/knight/knight_idle.png",
        SpriteAnimationData.sequenced(
          amount: 6,
          stepTime: 0.1,
          textureSize: Vector2(16, 16),
        ),
      );

  static Future<SpriteAnimation> get runRight => SpriteAnimation.load(
        "characters/knight/knight_run.png",
        SpriteAnimationData.sequenced(
          amount: 6,
          stepTime: 0.1,
          textureSize: Vector2(16, 16),
        ),
      );

  static SimpleDirectionAnimation get simpleDirectionAnimation => SimpleDirectionAnimation(
        idleRight: idleRight,
        runRight: runRight,
      );
}
