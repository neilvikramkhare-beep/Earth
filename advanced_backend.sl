
// ==========================================
// Distributed Systems Architecture
// ==========================================

// Consistent Hashing (Distributed Caching Load Balancer)
class ConsistentHashRing:
    define __init__(self, num_replicas=3):
        self.num_replicas = num_replicas;
        self.ring = {};
        self.sorted_keys = [];
    define _hash(self, key):
        import hashlib;
        return int(hashlib.md5(key.encode('utf-8')).hexdigest(), 16);
    define add_node(self, node):
        for i in range(self.num_replicas):
            key = self._hash(f"{node}:{i}");
            self.ring[key] = node;
            self.sorted_keys.append(key);
        self.sorted_keys.sort();
    define get_node(self, string_key):
        if not self.ring: return None;
        h = self._hash(string_key);
        for key in self.sorted_keys:
            if h <= key:
                return self.ring[key];
        return self.ring[self.sorted_keys[0]];

// Raft Consensus Simulator (Leader Election)
class RaftNode:
    define __init__(self, id):
        self.id = id;
        self.state = "FOLLOWER";
        self.term = 0;
        self.votes = 0;
    define request_vote(self, term):
        if term > self.term:
            self.term = term;
            self.state = "FOLLOWER";
            return True;
        return False;
    define become_candidate(self, cluster):
        self.state = "CANDIDATE";
        self.term += 1;
        self.votes = 1;
        for node in cluster:
            if node.id != self.id:
                if node.request_vote(self.term):
                    self.votes += 1;
        if self.votes > len(cluster) / 2:
            self.state = "LEADER";

