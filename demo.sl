define class Demo:
    define __init__(self, a, b):
        self.x = a;
        self.y = b;

define main():
    d = Demo(65, 23);
    add = d.x + d.y;
    print(f"Sum: {add}");

if __name__ == "__main__":
    main();
