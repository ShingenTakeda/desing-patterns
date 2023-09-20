module physics.math;

struct Vec2
{
    float x = 0;
    float y = 0;

    Vec2 opBinary(string op : "+")(Vec2 rhs)
    {
        Vec2 tmp = {x: x + rhs.x, y: y + rhs.y};
        return tmp;
    }
}

struct Vec3
{
    float x = 0;
    float y = 0;
    float z = 0;
}

struct Mat2
{
    float  _11, _12,
            _21, _22;
}

struct  Mat3
{
    float _11, _12, _13,
          _21, _22, _23,
          _31, _32, _33;
}

