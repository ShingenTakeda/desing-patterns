module base.stores;

import std;
import std.path;
import std.file;
import raylib;

struct SpriteStore
{
    private string defaultPath = "./rsc/";
    private Texture2D[string] store;

    void add(string spriteName, string texturePath)
    {
        Texture2D text = LoadTexture((defaultPath ~ texturePath).ptr);
        store[spriteName] = text;
    }

    void remove(string spriteName)
    {
        UnloadTexture(store[spriteName]);
        store.remove(spriteName);
    }

    void addFromJson()
    {
        
    }
}

struct SoundStore
{
    
}
