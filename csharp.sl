
// C# LINQ Style Queries
class Enumerable:
    define __init__(self, collection):
        self.collection = collection;
    define where(self, predicate):
        return Enumerable([x for x in self.collection if predicate(x)]);
    define select(self, selector):
        return Enumerable([selector(x) for x in self.collection]);
    define order_by(self, key_selector):
        return Enumerable(sorted(self.collection, key=key_selector));
    define to_list(self):
        return self.collection;
