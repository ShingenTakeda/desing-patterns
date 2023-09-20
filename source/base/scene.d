module base.scene;

class Scene
{
    abstract void update();
    abstract void draw();
}

class SceneManager
{
    private Scene[string] scenes;
    private string currentScene;

    this(string sceneName, Scene firstScene)
    {
        this.scenes[sceneName] = firstScene;
        this.setScene(sceneName);
    }

    void addScene(string sceneName, Scene scene)
    {
        scenes[sceneName] = scene;
    }

    void removeScene(string sceneName)
    {
        scenes.remove(sceneName);
    }

    void update()
    {
        scenes[currentScene].update();
    }

    void draw()
    {
        scenes[currentScene].draw();
    }

    void setScene(string scene)
    {
        currentScene = scene;
    }
}