module game;
import std.stdio;
import raylib;
import scene;

//TODO: Escrever uma cdna parão para conseguir initializar a engine sem problemas
class Game
{
    private int windowW;
    private int windowH;
    private int FPS;
    private string windowName;
    private SceneManager sceneManager;

    this(string windowName, int windowW, int windowH, int FPS, Scene firstScene)
    {
        writeln("Initializando o jogo");
        this.windowW = windowW;
        this.windowH = windowH;
        this.FPS = FPS;
        this.windowName = windowName;
        this.sceneManager = new SceneManager("cena1", firstScene);
    }

    void update()
    {
        sceneManager.update();
    }

    void draw()
    {
        BeginDrawing();
        ClearBackground(Colors.RAYWHITE);
        //DrawText("Hello, World!", 330, 300, 28, Colors.BLACK);
        sceneManager.draw();
        EndDrawing();
    }

    void run()
    {
        InitWindow(windowW, windowH, windowName.ptr);
        SetTargetFPS(60);
        scope(exit) CloseWindow();

        while(!WindowShouldClose())
        {
            this.update();
            this.draw();
        }
    }
}