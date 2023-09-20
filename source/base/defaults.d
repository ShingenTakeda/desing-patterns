module base.defaults;
import raylib;
import base.scene;

class DefaultScene : Scene
{
  override void update()
  {

  }

  override void draw()
  {
    DrawText("No Scene loaded! LMAO!", 250, 300, 28, Colors.BLACK);
  }
}
