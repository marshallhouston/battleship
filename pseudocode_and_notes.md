LEARNING GOALS: organization, class encapsulation, concise methods and TDD

Actionable items
- if a space is assigned to a ship during ship creation, change that space to occupied
- if a space is attacked, change @attacked to true
- a ship is sunk if all it's positions have been attacked
- validation: if ship coordinate is not in the valid ship spaces, then not valid. collection of valid placements for two unit and three unit. basic "not valid" without explaining the reason (not at that point yet)
- TURN structure inside battleship (or inside a specific class. what data does this hold, how does it interact?)
-- once you've done if something can be sunk, then you can do some basic script for End game.

validations: if the coordinate entered is not included in the gameboard, it is invalid (how to determine which rule it broke? don't worry about that now)

Larger areas to focus on: attack a specific coordinate, ship sunk, turns, which board is being shot at on each turn. FOCUS ON TESTING! Write small, focused methods.

components of the game
1. gameboard: knows it has spaces, ships, and an owner.
2. ships: knows the location, size, whether it's been sunk
3. individual spaces: occupied (default is false), attacked (default is false)


players: player1 and computer. each needs a board assigned to them so that we can check the others board.



turns: 1 shot for player_1, enter coordinates, must check the board that isn't the players to see if that board's coordinate has been attacked, and if not, then if it has a ship. if it does have a ship, that space needs to be changed to attacked. it then needs to check if all the other spaces on that ship have been hit. if all are hit, then it will return a sunk message.
1 shot for computer (randomly selected from a list of spaces that != attacked?). tells the player where this shot was and if it was a hit or a miss.



ship hit: if it's hit and not sunk, reply with hit. if it's hit and sunk, return a message that the ship is sunk and return the size of the ship. if all the ships are now sunk, enter the end game sequence.
end game: all ships are sunk.... reply with sorry if the computer wins, congratulations if the player wins. return the number of shots (can count the number of spaces that have been attacked). return the amount of time elapsed.

validating ship placement?



Classes

I. Gameboard: it knows that it has an owner, has spaces (the 16 different spaces), and has ships. doesn't need to know anything else (that data will be stored in a different class)
II. Ships: size of the ship (number of spaces), location of the ships (assign the spaces to a ship when it is created), and whether the ship has been sunk (all spaces are now hit)
III. Spaces: needs to know if it is occupied or empty and if it has been attacked.
IV. Battleship: where the action takes place...
