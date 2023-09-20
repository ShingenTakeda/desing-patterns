module base.game_object;

interface GameObject 
{
    void draw();
    void update();
}

class Entity : GameObject
{
    GameObject[] components;

    override void update() {}
    override void draw() {}
}

class Component : GameObject
{
    override void draw() {}
    override void update() {}
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