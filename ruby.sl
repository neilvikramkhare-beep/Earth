
// Ruby Style Mixins
define include_mixin(base_class, mixin_class):
    for attr in dir(mixin_class):
        if not attr.startswith('__'):
            setattr(base_class, attr, getattr(mixin_class, attr));
    return base_class;

// Ruby Yield Simulation
define times(n, block):
    for i in range(n): block(i);
