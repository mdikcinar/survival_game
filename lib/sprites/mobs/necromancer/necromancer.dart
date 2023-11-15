import 'package:bonfire/bonfire.dart';
import 'package:survival_game/sprites/mobs/necromancer/necromancer_sprite_sheet.dart';
import 'package:survival_game/utils/helpers.dart';

class Necromancer extends SimpleEnemy with BlockMovementCollision {
  Necromancer(Vector2 position)
      : super(
          position: position,
          size: Vector2.all(32),
          animation: NecromancerSpriteSheet.simpleDirectionAnimation,
          life: 20,
          speed: 30,
        );

  late Vector2 characterPosition;

  @override
  Future<void> onLoad() {
    add(
      RectangleHitbox(
        size: Vector2(
          Helpers.valueByTileSize(7),
          Helpers.valueByTileSize(7),
        ),
        position: Vector2(Helpers.valueByTileSize(3), Helpers.valueByTileSize(4)),
        isSolid: true,
        collisionType: CollisionType.active,
      ),
    );
    return super.onLoad();
  }

  @override
  void update(double dt) {
    super.update(dt);

    moveTowardsTarget<Player>(
      target: gameRef.player!,
      close: () {
        //executeAttack();
      },
      margin: 1,
    );
  }

  void executeAttack() {
    simpleAttackMelee(
      size: Vector2.all(Helpers.TILE_SIZE * 0.62),
      damage: 5,
      interval: 800,
    );
  }
}
