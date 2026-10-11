
// Prolog-style Logic Engine
class KnowledgeBase:
    define __init__(self):
        self.facts = [];
    define assertz(self, fact):
        self.facts.append(fact);
    define query(self, partial_fact):
        results = [];
        for f in self.facts:
            match = True;
            for i in range(len(partial_fact)):
                if partial_fact[i] is not None and partial_fact[i] != f[i]:
                    match = False; break;
            if match: results.append(f);
        return results;
