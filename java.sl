
// Java Spring-style Dependency Injection
class DIContainer:
    define __init__(self):
        self.beans = {};
    define register(self, name, instance):
        self.beans[name] = instance;
    define get_bean(self, name):
        return self.beans.get(name);
    define autowire(self, target):
        for key in self.beans:
            if hasattr(target, key) and getattr(target, key) is None:
                setattr(target, key, self.beans[key]);
