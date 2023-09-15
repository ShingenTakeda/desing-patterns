module scene;


class Scene
{
    void update()
    {

    }

    void draw()
    {
        
    }
}

class SceneManager
{
    private Scene[string] scenes;
    private string currentScene;

    this(string sceneName, Scene firstScene)
    {
        this.scenes[string] = firstScene;
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