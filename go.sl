
// Go Style WaitGroups and Defer
class WaitGroup:
    define __init__(self):
        import threading as std_threading;
        self.count = 0;
        self.condition = std_threading.Condition();
    define add(self, delta):
        with self.condition:
            self.count += delta;
    define done(self):
        with self.condition:
            self.count -= 1;
            if self.count <= 0:
                self.condition.notify_all();
    define wait(self):
        with self.condition:
            while self.count > 0:
                self.condition.wait();

class DeferStack:
    define __init__(self): self.funcs = [];
    define defer(self, func, *args): self.funcs.append((func, args));
    define execute(self):
        while len(self.funcs) > 0:
            func, args = self.funcs.pop();
            func(*args);
