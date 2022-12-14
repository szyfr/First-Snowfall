package gamedata


//= Imports
import "vendor:raylib"

import "../graphics/sprites"


//= Constants
PLAYER_HEALTH_MAX       :: 4
PLAYER_SNOWBALL_START   :: 0
PLAYER_SNOWBALL_MAX     :: 3
PLAYER_SNOWGATHER_TOTAL :: 40


//= Structures
Player :: struct {
	camera     : raylib.Camera2D,
	position   : raylib.Vector2,
	pointer    : raylib.Vector2,
	bounds     : raylib.BoundingBox,

	charSpr    : sprites.Sprite,
	pointerSpr : sprites.Sprite,

	rounds     : uint,
	healthCur  : uint,

	snowballCount : uint,
	snowGather    : uint,
}

Snowball :: struct {
	starting : raylib.Vector2,
	position : raylib.Vector2,
	target   : raylib.Vector2,
	rotation : f32,
	scale    : f32,

	player   : bool,
	lob      : bool,

	bounds   : raylib.BoundingBox,
}