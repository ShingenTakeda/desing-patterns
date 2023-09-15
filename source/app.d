import std.stdio;
import raylib;
import game;


void main()
{
  Game game = new Game("Design pattern", 800, 600, 60);
  game.run();
}
