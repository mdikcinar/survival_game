import 'dart:math';

import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:survival_game/sprites/characters/knight.dart';
import 'package:survival_game/sprites/mobs/necromancer/necromancer.dart';
import 'package:survival_game/utils/helpers.dart';

class GameView extends StatelessWidget {
  const GameView({super.key});

  @override
  Widget build(BuildContext context) {
    return BonfireWidget(
      joystick: Joystick(
        directional: JoystickDirectional(),
      ), // required
      map: WorldMapByTiled(
        'maps/map.json',
        objectsBuilder: {
          'necromancer': (p) => Necromancer(p.position),
        },
      ),
      player: Knight(Vector2(910, 550)),
      showCollisionArea: true,
      components: [
        ComponentSpawner(
          position: Vector2(20, 20),
          area: RectangleHitbox(
            size: Vector2(
              Helpers.valueByTileSize(7),
              Helpers.valueByTileSize(7),
            ),
            position: Vector2(Helpers.valueByTileSize(3), Helpers.valueByTileSize(4)),
          ),
          interval: 3000,
          builder: (position) {
            final randomPosition = Vector2(Random().nextInt(910).toDouble() + 1, Random().nextInt(550).toDouble() + 1);
            return Necromancer(randomPosition);
          },
          onlyVisible: false,
        ),
      ],
    );
  }
}
