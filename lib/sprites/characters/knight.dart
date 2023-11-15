import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:survival_game/sprites/characters/knight_sprite_sheet.dart';
import 'package:survival_game/utils/helpers.dart';

class Knight extends SimplePlayer with BlockMovementCollision {
  Knight(Vector2 position)
      : super(
          position: position,
          size: Vector2.all(32),
          animation: KnightSpriteSheet.simpleDirectionAnimation,
          life: 100,
          speed: 100,
        );

  @override
  Future<void> onLoad() {
    add(
      RectangleHitbox(
        size: Vector2(16, 17),
        position: Vector2(9, 10),
      ),
    );
    return super.onLoad();
  }

  @override
  void die() {
    removeFromParent();
    gameRef.add(
      GameDecoration.withSprite(
        sprite: Sprite.load('textures/crypt.png'),
        position: Vector2(
          position.x,
          position.y,
        ),
        size: Vector2.all(30),
      ),
    );
    super.die();
  }

  @override
  void receiveDamage(AttackFromEnum attacker, double damage, dynamic identify) {
    if (isDead) return;
    showDamage(
      damage,
      config: TextStyle(
        fontSize: Helpers.valueByTileSize(5),
        color: Colors.orange,
        fontFamily: 'Normal',
      ),
    );
    super.receiveDamage(attacker, damage, identify);
  }
}
