# HaxeFlixelPlatformer

Base code for making a platformer game in HaxeFlixel.

## Features
- `Player` class with basic platformer physics
    - Movement
    - Jump
    - Collision
    - Camera follows player
- `Level` class
    - One sample CSV tiled map
    - Collision with player

## Usage

- Edit values as desired:
    - Project.xml: `title` and `file` values to the name of your project/game.
    - Main.hx: game width/height
    - Reg.hx: tile size
    - Player.hx:
        - max X/Y speed
        - walk speed multiplier (x acceleration)
        - gravity multiplier (y acceleration)
        - keyboard controls
    - assets/map.txt
    - assets/images/tiles.png
