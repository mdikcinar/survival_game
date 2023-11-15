class Helpers {
  static const TILE_SIZE = 32;
  static const TILE_SIZE_SPRITE_SHEET = 16;

  static double valueByTileSize(double value) {
    return value * (TILE_SIZE / TILE_SIZE_SPRITE_SHEET);
  }
}
