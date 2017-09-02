http://backend.turing.io/module1/projects/battleship


BattleShip
Classic fun for the whole patriarchy!

In this project you’ll use Ruby to build an implementation of the classic game Battleship.

Introduction

Learning Goals / Areas of Focus

Proficiently use TDD to drive development
Practice breaking a program into logical components
Practice implementing a useable REPL interface
Apply previously learned Enumerable techniques in a real context
Base Expectations

You are to build a playable game of Battleship that runs in a REPL interface. The game will allow a single human player to play against a (simplistic) computer player.

The game will include several distinct phases:

Start Game Sequence
Computer Ship Placement
Player Ship Placement
Player Shot Sequence
Computer Shot Sequence
Ship Hit Sequence
End Game Sequence
Setup SimpleCov to monitor test coverage along the way
Start Game Sequence

The player starts the game by running ruby battleship.rb from within your project directory
Then they see:
Welcome to BATTLESHIP

Would you like to (p)lay, read the (i)nstructions, or (q)uit?
>
If they enter p or play then they enter the ship layout described below.
If they enter i or instructions they should be presented with a short explanation of how the game is played.
If they enter q or quit then the game should exit
Computer Ship Placement

When the player decides to start a game, the computer player should place their ships. The baseline computer should simply use random placements, but still obey these constraints:

Validating Ship Coordinates

Note that there are certain restrictions on where a ship can be placed. Specifically:

Ships cannot wrap around the board
Ships cannot overlap
Ships can be laid either horizontally or vertically
Coordinates must correspond to the first and last units of the ship. (IE: You can’t place a two unit ship at “A1 A3”)
Player Ship Placement

After the computer has placed its ships, the player should see:

I have laid out my ships on the grid.
You now need to layout your two ships.
The first is two units long and the
second is three units long.
The grid has A1 at the top left and D4 at the bottom right.

Enter the squares for the two-unit ship:
Player Entering Ship Coordinates

Then they enter coordinates like this:

A1 A2
Which places the two element ship on squares A1 and A2. Then it asks for the coordinates for the three-unit ship.

Player ship positions should be validated according to the same rules listed above. If a user enters an invalid ship coordinate, the game should display a message explaining which of the rules their choice violated, then ask them to re-enter all coordinates for that specific ship. (Any previous ship placements should still be retained)

Once all ships have been placed, the user can enter the main game flow phase.

Game Flow (Main Phase)

During the main game, players take turns firing at one another by selecting positions on the grid to attack.

Rendering the Game Grid

During this phase the game will frequently need to display the current game view. We’ll use a simple ASCII text grid of letters (to indicate rows) and numbers (to indicate columns).

Your board will look something like this:

===========
. 1 2 3 4
A
B
C
D
===========
Player Shot Sequence

Once the ships are laid out the game starts with the Player Shot Sequence.

Display the map from the current player’s point of view
Prompt the player for a position on which to fire
Indicate whether that shot was a hit or a miss and display an updated map
1. Displaying the map

Display a map using the format described above. On the map, include information about the current player’s previous shots. For every shot that landed a hit, mark that position with an H, and for every shot that missed, mark that position with an M.

So, on the first turn, a player’s grid will look empty. But as the game progresses, it will gradually fill up with misses and hits:

===========
. 1 2 3 4
A H M
B H   M
C   H M
D
===========
2. Prompting Player for a Shot

At the bottom of the grid display, the board should include a message prompting the player to enter a coordinate to fire on. This should follow the same pattern as when placing ships – a letter/number combination to indicate the row and column to hit.

You should validate that the player’s choice is a valid coordinate on the board, and that they have not already fired on that position before. (If they have, display a message explaining these constraints)

3. Displaying Shot Information

After the player has entered their target, display a short message indicating whether it was a hit or a miss. Additionally, re-render the board showing the new shot.

Finally, prompt the player to end their turn by pressing ENTER.

Computer Shot Sequence

Once the player has ended their turn, the AI will fire. This follows a similar process, except that instead of prompting for a target, the computer will simply select one at random from the positions that it has not yet fired at (again, not a very sophisticated AI, but good enough for now).

Once the computer has selected, display a message to the human player indicating which position the computer fired at and whether it was a miss or a hit.

Finally, give the player an overview of the computer’s progress so far by displaying the game grid of the player’s ships with Hs over any positions the computer has hit and Ms over any positions the computer has fired at but missed.

Then, return to the Player Shot Sequence.

Ship Hit Sequence

If the hit did not sink the ship, tell them that they hit an enemy ship
If the hit sunk the ship, tell them they sunk it and the size of the ship.
If the hit sunk the ship and it was the last enemy ship, then enter the End Game Sequence
End Game Sequence

When either the player or computer win the game…

Output a sorry or congratulations message
Output how many shots it took the winner to sink the opponent’s ships
Output the total time that the game took to play
Extensions

If you’re able to finish the base expectations, add on one or more of the following extensions:

Difficulty Levels

When the user is getting ready to start a game, ask them what difficulty level they’d like to play, with the following adaptations:

Beginner = 4x4 grid, 2-unit boat, 3-unit boat
Intermediate = 8x8 grid, 2-unit boat, 3-unit boat, 4-unit boat
Advanced = 12x12 grid, 2-unit boat, 3-unit boat, 4-unit boat, 5-unit boat
Remote Play

Allow two players to play against each other across the network.

Graphical Interface

Use Ruby-Processing to generate a graphical user interface that allows the players to see the game and click the grid to shoot.

Package & Polish

Your game won’t be very popular if it’s hard to install and run.

Add a Command Line Wrapper

Create an executable script that allows the user to just run battleship from their terminal without directly executing Ruby.

Build a Gem

Wrap your code into a Ruby gem and publish it on Rubygems.org with a name like battleship-jcasimir based on your GitHub user name.



Evaluation Rubric

The project will be assessed with the following rubric:



1. Ruby Sytnax & Style

4: Application demonstrates excellent knowledge of Ruby syntax, style, and refactoring
3: Application shows strong effort towards organization, content, and refactoring
2: Application runs but the code has long methods, unnecessary or poorly named variables, and needs significant refactoring
1: Application generates syntax error or crashes during execution

2. Breaking Logic into Components
4: Application is expertly divided into logical components each with a clear, single responsibility
3: Application effectively breaks logical components apart but breaks the principle of SRP
2: Application shows some effort to break logic into components, but the divisions are inconsistent or unclear
1: Application logic shows poor decomposition with too much logic mashed together

3. Test-Driven Development
4: Application is broken into components which are well tested in both isolation and integration
3: Application is well tested but does not balance isolation and integration tests
2: Application makes some use of tests, but the coverage is insufficient
1: Application does not demonstrate strong use of TDD


4. Functional Expectations
4: Application meets all requirements, and implements one extension properly.
3: Application meets all requirements as laid out per the specification.
2: Application runs, but does not work properly, or does not meet specifications.
1: Application does not run, crashes on start.


5. Version Control
4: Student demonstrates strong git workflow, commits frequently to document progress, uses commits to identify added functionality, and utilizes pull requests for communication and feedback
3: Student utilizes git workflow essentials, committing frequently to document progress
2: Student adds and commits infrequently and pushes project to GitHub
1: Student makes an initial commit and pushes project to GitHub
