import 'package:bonfire/bonfire.dart';

class NecromancerSpriteSheet {
  static Future<SpriteAnimation> get idleRight => SpriteAnimation.load(
        "mobs/necromancer/necromancer_idle.png",
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.4,
          textureSize: Vector2(16, 16),
        ),
      );

  static SimpleDirectionAnimation get simpleDirectionAnimation => SimpleDirectionAnimation(
        idleRight: idleRight,
        runRight: idleRight,
      );
}
