
// Haskell Functors and Monoids
class Functor:
    define __init__(self, value): self.value = value;
    define fmap(self, func):
        if self.value is None: return Functor(None);
        return Functor(func(self.value));

class Monoid:
    define __init__(self, val, empty_val):
        self.val = val;
        self.empty_val = empty_val;
    define mappend(self, other):
        return Monoid(self.val + other.val, self.empty_val);
