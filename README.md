# Overview

This is a little "side quest" i set for myself.

The goal is to implement chess in OO Ruby with appropriate abstractions and encapsulation.

For now the runs on the command line, however the goal is to implement the game in such a way that a view can be plugged in later.

## Implementation Overview

### Objects

#### Player

- name (string)
- color (boolean)
- score (num)

- Piece
  - legal_moves ([])
  - color (boolean)

#### Board

- squares []
  - Piece (piece_type)
- display()

#### Game

- players
- run()
  - game flow

- Player selects a piece (using a letter and a row?)

## Todo

- define chess piece
- define different piece types
- let player move a piece

### Done

- let players choose name
- initialize board
  - place pieces