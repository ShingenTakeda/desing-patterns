module base.components.camera;
import base.game_object;

class Camera : Component
{
    private string type = "camera";
    private bool enabled = false;

    override string getType()
    {
        return this.type;
    }

    override void disableComponent()
    {
        this.enabled = false;
    }

    override void enableComponent()
    {
        this.enabled = true;
    }


}