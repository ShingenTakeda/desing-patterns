module base.game_object;

class Component
{
    abstract string getType();
    abstract string getSpecificType();
    abstract void disableComponent();
    abstract void enableComponent();
    abstract bool isEnabled();
    //abstract void start(GameObjectSharer gos, GameObject self);
}

class UpdateComponent : Component
{
    private string type = "update";
    private bool enabled = false;

    abstract void update();

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

    override bool isEnabled()
    {
        return this.enabled;
    }

    void start()//(GameObjectSharer* gos, GameObject* self) <- change to this argument later
    {

    }
}

class GraphicsComponentLocation : Component
{
    private string type = "graphics";
    private bool enabled = false;

    abstract void draw();
    abstract void initGraphics();

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

    override bool isEnabled()
    {
        return this.enabled;
    }

    void start()//(GameObjectSharer* gos, GameObject* self) <- change to this argument later
    {

    }
}

class GameObject
{
    private Component[] components;
    private bool active = false;
    private int numberUpdateComponents = 0;
    private bool hasUpdateComponent = false;
    private int firstComponentLocation = -1;
    private int graphicsComponentLocation = -1;
    private bool hasGraphicComponent = false;
    private int transformComponentLocation = -1;

    string tag;

    void update()
    {
        if(active && hasUpdateComponent)
        {
            for(int i = firstComponentLocation; i < firstComponentLocation + numberUpdateComponents; i++)
            {
                //if(temp)
            }
        }
    }
}

struct EntityManager
{
    GameObject[] entities;

    void addEntity(GameObject entity)
    {

    }

    void killEntity(int id)
    {
        
    }
}