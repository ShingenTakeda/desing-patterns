module base.game_object;

class GameObject {}

class Entity : GameObject
{
    private Component[] components;
    private Drawable[] drawable;

    abstract void update();
    abstract void draw();
}

class Component : GameObject
{
    abstract void update();
}

class Drawable
{
    abstract void draw();
}