module base.game;
import std.stdio;
import base.defaults;
import raylib;
import base.scene;
import base.stores;

//TODO: Escrever uma cena parão para conseguir initializar a engine sem problemas
class Game
{
    private int windowW;
    private int windowH;
    private int FPS;
    private string windowName;
    private SceneManager sceneManager;
    private SpriteStore spriteStore;
    private SoundStore soundStore;
    private DefaultScene d_scene = new DefaultScene;

    this(string windowName, int windowW, int windowH, int FPS, Scene firstScene = null)
    {
        writeln("Initializando o jogo");
        this.windowW = windowW;
        this.windowH = windowH;
        this.FPS = FPS;
        this.windowName = windowName;

        if(firstScene !is null)
        {
            this.sceneManager = new SceneManager("cena1", firstScene);
        }
        else
        {
            this.sceneManager = new SceneManager("cena1", this.d_scene);
        }
    }

    void update()
    {
        sceneManager.update();
    }

    void draw()
    {
        BeginDrawing();
        ClearBackground(Colors.GRAY);
        sceneManager.draw();
        EndDrawing();
    }

    void run()
    {
        InitWindow(windowW, windowH, windowName.ptr);
        //Load resources into memory here with the stores
        InitAudioDevice();
        SetTargetFPS(60);
        scope (exit)
            CloseWindow();

        while (!WindowShouldClose())
        {
            this.update();
            this.draw();
        }
    }
}

