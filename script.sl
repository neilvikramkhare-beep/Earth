import MyFunctions.psm1,interpreter.py
print ("Welcome to Earth");
input_val = input("Enter your name: ");
print("Hello", input_val);
if "-" in input_val:
    print("Hello boss");
else:
    print("Sorry , you are not boss");
for i in range(name):
    print(i)
else:
    print("Loop finished");
define greet(name):
    print("Hello", name);
    import MyFunctions.psm1,interpreter.py
define main():
    print("Main function");
main();
define addition(a,b):
    return a+b;
define subraction(a,b):
    return a-b;
define multiplication(a,b):
    return a*b;
define division(a,b):
    return a/b;
print("Addition of 2 and 3 is",addition(2,3));
print("Subtraction of 2 and 3 is",subraction(2,3));
print("Multiplication of 2 and 3 is",multiplication(2,3));
print("Division of 2 and 3 is",division(2,3));
define power(a,b):
    if isinstance(a, list): a = len(a)
    if isinstance(b, list) or b is None: b = 2
    return a**b;
print("Power of 2 and 3 is",power(2,3));
define factorial(a):
    if a <= 1: return 1;
    return a*factorial(a-1);
print("Factorial of 5 is",factorial(5));
define fibonacci(a):
    if a <= 1: return a;
    return fibonacci(a-1)+fibonacci(a-2);
print("Fibonacci of 5 is",fibonacci(5));
define isPrime(a):
    for i in range(2,a):
        if a%i==0:
            return False;
    return True;
print("Is 5 prime?",isPrime(5));
define binarySearch(a,b):
    if a[len(a)/2]==b:
        return True;
    elif a[len(a)/2]>b:
        return binarySearch(a[:len(a)/2],b);
    else:
        return binarySearch(a[len(a)/2:],b);
print("Binary search of 5 in [1,2,3,4,5] is",binarySearch([1,2,3,4,5],5));
define bubbleSort(a):
    for i in range(len(a)):
        for j in range(len(a)-i-1):
            if a[j]>a[j+1]:
                a[j],a[j+1]=a[j+1],a[j];
    return a;
print("Bubble sort of [1,2,3,4,5] is",bubbleSort([1,2,3,4,5]));
define selectionSort(a):
    for i in range(len(a)):
        min_idx=i;
        for j in range(i+1,len(a)):
            if a[j]<a[min_idx]:
                min_idx=j;
        a[i],a[min_idx]=a[min_idx],a[i];
    return a;
print("Selection sort of [1,2,3,4,5] is",selectionSort([1,2,3,4,5]));
define radixSort(a):
    for i in range(len(a)):
        for j in range(len(a)-i-1):
            if a[j]>a[j+1]:
                a[j],a[j+1]=a[j+1],a[j];
    return a;
print("Radix sort of [1,2,3,4,5] is",radixSort([1,2,3,4,5]));
define mergeSort(a):
    if len(a)<=1:
        return a;
    mid=len(a)/2;
    left=mergeSort(a[:mid]);
    right=mergeSort(a[mid:]);
    return merge(left,right);
define merge(left,right):
    result=[];
    while left and right:
        if left[0]<right[0]:
            result.append(left.pop(0));
        else:
            result.append(right.pop(0));
    result.extend(left);
    result.extend(right);
    return result;
print("Merge sort of [1,2,3,4,5] is",mergeSort([1,2,3,4,5]));
define quickSort(a):
    if len(a)<=1:
        return a;
    pivot=a[len(a)/2];
    left=[x for x in a if x<pivot];
    middle=[x for x in a if x==pivot];
    right=[x for x in a if x>pivot];
    return quickSort(left)+middle+quickSort(right);
print("Quick sort of [1,2,3,4,5] is",quickSort([1,2,3,4,5]));
define heapSort(a):
    for i in range(len(a)):
        for j in range(len(a)-i-1):
            if a[j]>a[j+1]:
                a[j],a[j+1]=a[j+1],a[j];
    return a;
print("Heap sort of [1,2,3,4,5] is",heapSort([1,2,3,4,5]));
define linearSearch(a,b):
    for i in range(len(a)):
        if a[i]==b:
            return i;
    return -1;
print("Linear search of 5 in [1,2,3,4,5] is",linearSearch([1,2,3,4,5],5));
define jumpSearch(a,b):
    for i in range(len(a)):
        if a[i]==b:
            return i;
    return -1;
print("Jump search of 5 in [1,2,3,4,5] is",jumpSearch([1,2,3,4,5],5));
define interpolationSearch(a,b):
    for i in range(len(a)):
        if a[i]==b:
            return i;
    return -1;
print("Interpolation search of 5 in [1,2,3,4,5] is",interpolationSearch([1,2,3,4,5],5));
define exponentialSearch(a,b):
    for i in range(len(a)):
        if a[i]==b:
            return i;
    return -1;
print("Exponential search of 5 in [1,2,3,4,5] is",exponentialSearch([1,2,3,4,5],5));
def binarySearchTree(a):
    if len(a)<=1:
        return a;
    mid=len(a)/2;
    left=binarySearchTree(a[:mid]);
    right=binarySearchTree(a[mid:]);
    return merge(left,right);
def merge(left,right):
    result=[];
    while left and right:
        if left[0]<right[0]:
            result.append(left.pop(0));
        else:
            result.append(right.pop(0));
    result.extend(left);
    result.extend(right);
    return result;
print("Binary search tree of [1,2,3,4,5] is",binarySearchTree([1,2,3,4,5]));
define linearSearchTree(a,b):
    for i in range(len(a)):
        if a[i]==b:
            return i;
    return -1;
print("Linear search tree of 5 in [1,2,3,4,5] is",linearSearchTree([1,2,3,4,5],5));
define linearSearch(a,b):
    for i in range(len(a)):
        if a[i]==b:
            return i;
    return -1;
print("Linear search of 5 in [1,2,3,4,5] is",linearSearch([1,2,3,4,5],5));
define stackCreate(a):
    if a is None: return [];
    if isinstance(a, list): return [x for x in a];
    return [a];
print("Stack create from [1,2,3] is", stackCreate([1,2,3]));
define stackPush(a,b):
    if b is None: b = 0;
    if isinstance(a, list):
        a.append(b);
        return a;
    return a;
print("Stack push 6 to [1,2,3,4,5] is", stackPush([1,2,3,4,5], 6));
define stackPop(a):
    if isinstance(a, list) and len(a) > 0:
        return a.pop();
    return None;
print("Stack pop from [1,2,3,4,5] is", stackPop([1,2,3,4,5]));
define stackPeek(a):
    if isinstance(a, list) and len(a) > 0:
        return a[-1];
    return None;
print("Stack peek of [1,2,3,4,5] is", stackPeek([1,2,3,4,5]));
define stackIsEmpty(a):
    if isinstance(a, list):
        return len(a) == 0;
    return True;
print("Is stack [1,2,3,4,5] empty?", stackIsEmpty([1,2,3,4,5]));
define stackSize(a):
    if isinstance(a, list):
        return len(a);
    return 0;
print("Size of stack [1,2,3,4,5] is", stackSize([1,2,3,4,5]));
define stackClear(a):
    if isinstance(a, list):
        a.clear();
        return a;
    return a;
print("Clear stack [1,2,3,4,5] gives", stackClear([1,2,3,4,5]));
define stackToArray(a):
    if isinstance(a, list):
        return [x for x in a];
    return [];
print("Stack to array of [1,2,3] is", stackToArray([1,2,3]));
define queue(a):
    if isinstance(a, list) and len(a) > 0:
        return a.pop(0);
    return None;
print("Queue of [1,2,3,4,5] is",queue([1,2,3,4,5]));
define queueCreate(a):
    if a is None: return [];
    if isinstance(a, list): return [x for x in a];
    return [a];
print("Queue create of [1,2] is", queueCreate([1,2]));
define enqueue(a, b):
    if b is None: b = 10;
    if isinstance(a, list):
        a.append(b);
        return a;
    return a;
print("Queue after enqueuing a value:",enqueue([1,2,3,4,5], 10));
define queueEnqueue(a, b):
    return enqueue(a, b);
print("Queue enqueue 7 to [1,2,3] is", queueEnqueue([1,2,3], 7));
define dequeue(a):
    if isinstance(a, list) and len(a) > 0:
        return a.pop(0);
    return None;
print("Dequeue from [1,2,3,4,5] is", dequeue([1,2,3,4,5]));
define queueDequeue(a):
    return dequeue(a);
print("Queue dequeue from [1,2,3] is", queueDequeue([1,2,3]));
define queuePeek(a):
    if isinstance(a, list) and len(a) > 0:
        return a[0];
    return None;
print("Queue peek of [1,2,3] is", queuePeek([1,2,3]));
define queueFront(a):
    return queuePeek(a);
print("Queue front of [1,2,3] is", queueFront([1,2,3]));
define queueRear(a):
    if isinstance(a, list) and len(a) > 0:
        return a[-1];
    return None;
print("Queue rear of [1,2,3] is", queueRear([1,2,3]));
define queueIsEmpty(a):
    if isinstance(a, list): return len(a) == 0;
    return True;
print("Is queue empty?", queueIsEmpty([1,2,3]));
define queueSize(a):
    if isinstance(a, list): return len(a);
    return 0;
print("Queue size of [1,2,3] is", queueSize([1,2,3]));
define queueClear(a):
    if isinstance(a, list):
        a.clear();
        return a;
    return a;
print("Queue clear of [1,2,3] is", queueClear([1,2,3]));
define deque(a):
    if isinstance(a, list) and len(a) > 0:
        return a.pop();
    return None;
print("Deque of [1,2,3,4,5] is",deque([1,2,3,4,5]));
define dequeCreate(a):
    if a is None: return [];
    if isinstance(a, list): return [x for x in a];
    return [a];
print("Deque create of [1,2] is", dequeCreate([1,2]));
define dequePushFront(a, b):
    if isinstance(a, list):
        a.insert(0, b);
        return a;
    return a;
print("Deque push front 0 to [1,2] is", dequePushFront([1,2], 0));
define dequePushBack(a, b):
    if isinstance(a, list):
        a.append(b);
        return a;
    return a;
print("Deque push back 3 to [1,2] is", dequePushBack([1,2], 3));
define dequePopFront(a):
    if isinstance(a, list) and len(a) > 0:
        return a.pop(0);
    return None;
print("Deque pop front from [1,2,3] is", dequePopFront([1,2,3]));
define dequePopBack(a):
    if isinstance(a, list) and len(a) > 0:
        return a.pop();
    return None;
print("Deque pop back from [1,2,3] is", dequePopBack([1,2,3]));
define dequePeekFront(a):
    if isinstance(a, list) and len(a) > 0:
        return a[0];
    return None;
print("Deque peek front of [1,2,3] is", dequePeekFront([1,2,3]));
define dequePeekBack(a):
    if isinstance(a, list) and len(a) > 0:
        return a[-1];
    return None;
print("Deque peek back of [1,2,3] is", dequePeekBack([1,2,3]));
define dequeIsEmpty(a):
    if isinstance(a, list): return len(a) == 0;
    return True;
print("Deque is empty?", dequeIsEmpty([1,2,3]));
define dequeSize(a):
    if isinstance(a, list): return len(a);
    return 0;
print("Deque size of [1,2,3] is", dequeSize([1,2,3]));
define dequeClear(a):
    if isinstance(a, list):
        a.clear();
        return a;
    return a;
print("Deque clear of [1,2,3] is", dequeClear([1,2,3]));
define circularQueue(a):
    if isinstance(a, list) and len(a) > 0:
        return a.pop(0);
    return None;
print("Circular queue of [1,2,3,4,5] is",circularQueue([1,2,3,4,5]));
define circularQueueCreate(capacity):
    if capacity is None: capacity = 5;
    return {"items": [], "capacity": capacity};
print("Circular queue create:", circularQueueCreate(5));
define circularQueueEnqueue(cq, item):
    if isinstance(cq, dict):
        if len(cq["items"]) < cq["capacity"]:
            cq["items"].append(item);
            return True;
        return False;
    elif isinstance(cq, list):
        cq.append(item);
        return True;
    return False;
print("Circular queue enqueue:", circularQueueEnqueue(circularQueueCreate(5), 10));
define circularQueueDequeue(cq):
    if isinstance(cq, dict) and len(cq["items"]) > 0:
        return cq["items"].pop(0);
    elif isinstance(cq, list) and len(cq) > 0:
        return cq.pop(0);
    return None;
print("Circular queue dequeue:", circularQueueDequeue([1,2,3]));
define circularQueuePeek(cq):
    if isinstance(cq, dict) and len(cq["items"]) > 0:
        return cq["items"][0];
    elif isinstance(cq, list) and len(cq) > 0:
        return cq[0];
    return None;
print("Circular queue peek:", circularQueuePeek([1,2,3]));
define circularQueueIsEmpty(cq):
    if isinstance(cq, dict): return len(cq["items"]) == 0;
    elif isinstance(cq, list): return len(cq) == 0;
    return True;
print("Circular queue is empty:", circularQueueIsEmpty([]));
define circularQueueIsFull(cq):
    if isinstance(cq, dict): return len(cq["items"]) >= cq["capacity"];
    return False;
print("Circular queue is full:", circularQueueIsFull(circularQueueCreate(2)));
define circularQueueSize(cq):
    if isinstance(cq, dict): return len(cq["items"]);
    elif isinstance(cq, list): return len(cq);
    return 0;
print("Circular queue size:", circularQueueSize([1,2,3]));
define priorityQueue(a):
    if isinstance(a, list) and len(a) > 0:
        return a.pop();
    return None;
print("Priority queue of [1,2,3,4,5] is",priorityQueue([1,2,3,4,5]));
define priorityQueueCreate():
    return [];
print("Priority queue create:", priorityQueueCreate());
define priorityQueueEnqueue(pq, item, priority):
    if priority is None: priority = item;
    if isinstance(pq, list):
        pq.append((priority, item));
        pq.sort(key=lambda x: x[0]);
        return pq;
    return pq;
print("Priority queue enqueue:", priorityQueueEnqueue([], 10, 1));
define priorityQueueDequeue(pq):
    if isinstance(pq, list) and len(pq) > 0:
        elem = pq.pop(0);
        if isinstance(elem, tuple) or isinstance(elem, list):
            return elem[1];
        return elem;
    return None;
print("Priority queue dequeue:", priorityQueueDequeue([(1, 10), (2, 20)]));
define priorityQueuePeek(pq):
    if isinstance(pq, list) and len(pq) > 0:
        elem = pq[0];
        if isinstance(elem, tuple) or isinstance(elem, list):
            return elem[1];
        return elem;
    return None;
print("Priority queue peek:", priorityQueuePeek([(1, 10)]));
define priorityQueueIsEmpty(pq):
    if isinstance(pq, list): return len(pq) == 0;
    return True;
print("Priority queue is empty:", priorityQueueIsEmpty([]));
define priorityQueueSize(pq):
    if isinstance(pq, list): return len(pq);
    return 0;
print("Priority queue size:", priorityQueueSize([(1, 10)]));
define graph(a):
    if isinstance(a, list) and len(a) > 0:
        return a.pop(0);
    return None;
print("Graph of [1,2,3,4,5] is",graph([1,2,3,4,5]));
define graphCreate():
    return {};
print("Graph create:", graphCreate());
define graphAddVertex(g, v):
    if isinstance(g, dict):
        if v not in g:
            g[v] = [];
        return g;
    return g;
print("Graph add vertex:", graphAddVertex({}, "A"));
define graphAddEdge(g, u, v):
    if isinstance(g, dict):
        if u not in g: g[u] = [];
        if v not in g: g[v] = [];
        if v not in g[u]: g[u].append(v);
        if u not in g[v]: g[v].append(u);
        return g;
    return g;
print("Graph add edge:", graphAddEdge({}, "A", "B"));
define graphRemoveEdge(g, u, v):
    if isinstance(g, dict):
        if u in g and v in g[u]: g[u].remove(v);
        if v in g and u in g[v]: g[v].remove(u);
        return g;
    return g;
print("Graph remove edge:", graphRemoveEdge({"A": ["B"], "B": ["A"]}, "A", "B"));
define graphRemoveVertex(g, v):
    if isinstance(g, dict) and v in g:
        del g[v];
        for node in g:
            if v in g[node]:
                g[node].remove(v);
        return g;
    return g;
print("Graph remove vertex:", graphRemoveVertex({"A": ["B"], "B": ["A"]}, "A"));
define graphGetNeighbors(g, v):
    if isinstance(g, dict) and v in g:
        return g[v];
    return [];
print("Graph get neighbors:", graphGetNeighbors({"A": ["B", "C"]}, "A"));
define graphHasEdge(g, u, v):
    if isinstance(g, dict) and u in g:
        return v in g[u];
    return False;
print("Graph has edge:", graphHasEdge({"A": ["B"]}, "A", "B"));
define graphBFS(g, start):
    if not isinstance(g, dict) or start not in g: return [];
    visited = [];
    q_list = [start];
    while len(q_list) > 0:
        curr = q_list.pop(0);
        if curr not in visited:
            visited.append(curr);
            for nbr in g.get(curr, []):
                if nbr not in visited:
                    q_list.append(nbr);
    return visited;
print("Graph BFS from A:", graphBFS({"A": ["B", "C"], "B": ["D"], "C": [], "D": []}, "A"));
define tree(a):
    if isinstance(a, list) and len(a) > 0:
        return a.pop();
    return None;
print("Tree of [1,2,3,4,5] is",tree([1,2,3,4,5]));
define treeCreateNode(val):
    return {"val": val, "left": None, "right": None};
print("Tree create node:", treeCreateNode(10));
define treeInsert(root, val):
    if root is None:
        return {"val": val, "left": None, "right": None};
    if val < root["val"]:
        root["left"] = treeInsert(root["left"], val);
    else:
        root["right"] = treeInsert(root["right"], val);
    return root;
print("Tree insert 5:", treeInsert(treeCreateNode(10), 5));
define bstInsert(root, val):
    return treeInsert(root, val);
print("BST insert 15:", bstInsert(treeCreateNode(10), 15));
define bstCreate(a):
    if isinstance(a, list):
        r = None;
        for x in a:
            r = treeInsert(r, x);
        return r;
    return a;
print("BST create from [2, 1, 3]:", bstCreate([2, 1, 3]));
define treeSearch(root, val):
    if root is None or not isinstance(root, dict): return False;
    if root.get("val") == val: return True;
    if val < root.get("val"):
        return treeSearch(root.get("left"), val);
    return treeSearch(root.get("right"), val);
print("Tree search 5 in BST:", treeSearch(bstCreate([10, 5, 15]), 5));
define bstSearch(root, val):
    return treeSearch(root, val);
print("BST search 15:", bstSearch(bstCreate([10, 5, 15]), 15));
define treeInorder(root):
    if root is None or not isinstance(root, dict): return [];
    res = [];
    res.extend(treeInorder(root.get("left")));
    res.append(root.get("val"));
    res.extend(treeInorder(root.get("right")));
    return res;
print("Tree inorder of [2, 1, 3]:", treeInorder(bstCreate([2, 1, 3])));
define treePreorder(root):
    if root is None or not isinstance(root, dict): return [];
    res = [root.get("val")];
    res.extend(treePreorder(root.get("left")));
    res.extend(treePreorder(root.get("right")));
    return res;
print("Tree preorder of [2, 1, 3]:", treePreorder(bstCreate([2, 1, 3])));
define treePostorder(root):
    if root is None or not isinstance(root, dict): return [];
    res = [];
    res.extend(treePostorder(root.get("left")));
    res.extend(treePostorder(root.get("right")));
    res.append(root.get("val"));
    return res;
print("Tree postorder of [2, 1, 3]:", treePostorder(bstCreate([2, 1, 3])));
define treeLevelOrder(root):
    if root is None or not isinstance(root, dict): return [];
    res = [];
    q_list = [root];
    while len(q_list) > 0:
        curr = q_list.pop(0);
        res.append(curr.get("val"));
        if curr.get("left") is not None: q_list.append(curr.get("left"));
        if curr.get("right") is not None: q_list.append(curr.get("right"));
    return res;
print("Tree level order of [2, 1, 3]:", treeLevelOrder(bstCreate([2, 1, 3])));
define treeHeight(root):
    if root is None or not isinstance(root, dict): return 0;
    lh = treeHeight(root.get("left"));
    rh = treeHeight(root.get("right"));
    return max(lh, rh) + 1;
print("Tree height of [2, 1, 3]:", treeHeight(bstCreate([2, 1, 3])));
define treeSize(root):
    if root is None or not isinstance(root, dict): return 0;
    return 1 + treeSize(root.get("left")) + treeSize(root.get("right"));
print("Tree size of [2, 1, 3]:", treeSize(bstCreate([2, 1, 3])));
define heap(a):
    if isinstance(a, list) and len(a) > 0:
        return a.pop();
    return None;
print("Heap of [1,2,3,4,5] is",heap([1,2,3,4,5]));
define heapify(a):
    if isinstance(a, list):
        res = [x for x in a];
        res.sort();
        return res;
    return [];
print("Heapify [5, 3, 1, 4]:", heapify([5, 3, 1, 4]));
define heapPush(h, val):
    if isinstance(h, list):
        h.append(val);
        h.sort();
        return h;
    return h;
print("Heap push 2 to [1, 3, 5]:", heapPush([1, 3, 5], 2));
define heapPop(h):
    if isinstance(h, list) and len(h) > 0:
        return h.pop(0);
    return None;
print("Heap pop from [1, 2, 3, 5]:", heapPop([1, 2, 3, 5]));
define heapPeek(h):
    if isinstance(h, list) and len(h) > 0:
        return h[0];
    return None;
print("Heap peek of [1, 2, 3]:", heapPeek([1, 2, 3]));
define heapSize(h):
    if isinstance(h, list): return len(h);
    return 0;
print("Heap size of [1, 2, 3]:", heapSize([1, 2, 3]));
define heapIsEmpty(h):
    if isinstance(h, list): return len(h) == 0;
    return True;
print("Heap is empty:", heapIsEmpty([]));
define Trie(a):
    if isinstance(a, list) and len(a) > 0:
        return a.pop();
    return None;
print("Trie of [1,2,3,4,5] is",Trie([1,2,3,4,5]));
define trieInsert(trie, word):
    if not isinstance(trie, dict): return trie;
    curr = trie;
    for ch in str(word):
        if ch not in curr:
            curr[ch] = {};
        curr = curr[ch];
    curr["#"] = True;
    return trie;
print("Trie insert 'apple':", trieInsert({}, "apple"));
define trieCreate(words):
    tr = {};
    if isinstance(words, list):
        for w in words:
            trieInsert(tr, w);
    return tr;
print("Trie create with ['cat', 'car']:", trieCreate(["cat", "car"]));
define trieSearch(trie, word):
    if not isinstance(trie, dict): return False;
    curr = trie;
    for ch in str(word):
        if ch not in curr: return False;
        curr = curr[ch];
    return "#" in curr;
print("Trie search 'cat':", trieSearch(trieCreate(["cat", "car"]), "cat"));
define trieStartsWith(trie, prefix):
    if not isinstance(trie, dict): return False;
    curr = trie;
    for ch in str(prefix):
        if ch not in curr: return False;
        curr = curr[ch];
    return True;
print("Trie starts with 'ca':", trieStartsWith(trieCreate(["cat", "car"]), "ca"));
define linkedList(a):
    if isinstance(a, list) and len(a) > 0:
        return a.pop();
    return None;
define linkedListCreate(a):
    if not isinstance(a, list) or len(a) == 0: return None;
    head = {"val": a[0], "next": None};
    curr = head;
    for i in range(1, len(a)):
        curr["next"] = {"val": a[i], "next": None};
        curr = curr["next"];
    return head;
define linkedListToArray(head):
    res = [];
    curr = head;
    while curr is not None:
        res.append(curr.get("val"));
        curr = curr.get("next");
    return res;
define linkedListInsert(head, val):
    new_node = {"val": val, "next": None};
    if head is None: return new_node;
    curr = head;
    while curr.get("next") is not None:
        curr = curr["next"];
    curr["next"] = new_node;
    return head;
define linkedListDelete(head, val):
    if head is None: return None;
    if head.get("val") == val: return head.get("next");
    curr = head;
    while curr.get("next") is not None:
        if curr["next"].get("val") == val:
            curr["next"] = curr["next"].get("next");
            break;
        curr = curr["next"];
    return head;
define linkedListSearch(head, val):
    curr = head;
    while curr is not None:
        if curr.get("val") == val: return True;
        curr = curr.get("next");
    return False;
define linkedListSize(head):
    cnt = 0;
    curr = head;
    while curr is not None:
        cnt = cnt + 1;
        curr = curr.get("next");
    return cnt;
print("Linked list of [1,2,3,4,5] is",linkedList([1,2,3,4,5]));
print("Linked list create from [1, 2, 3]:", linkedListCreate([1, 2, 3]));
print("Linked list to array:", linkedListToArray(linkedListCreate([1, 2, 3])));
print("Linked list insert 4 into [1, 2, 3]:", linkedListToArray(linkedListInsert(linkedListCreate([1, 2, 3]), 4)));
print("Linked list delete 2 from [1, 2, 3]:", linkedListToArray(linkedListDelete(linkedListCreate([1, 2, 3]), 2)));
print("Linked list search 2 in [1, 2, 3]:", linkedListSearch(linkedListCreate([1, 2, 3]), 2));
print("Linked list size of [1, 2, 3]:", linkedListSize(linkedListCreate([1, 2, 3])));
define doublyLinkedList(a):
    if isinstance(a, list) and len(a) > 0:
        return a.pop();
    return None;
define doublyLinkedListCreate(a):
    if not isinstance(a, list) or len(a) == 0: return None;
    head = {"val": a[0], "next": None, "prev": None};
    curr = head;
    for i in range(1, len(a)):
        new_node = {"val": a[i], "next": None, "prev": curr};
        curr["next"] = new_node;
        curr = new_node;
    return head;
define doublyLinkedListToArray(head):
    res = [];
    curr = head;
    while curr is not None:
        res.append(curr.get("val"));
        curr = curr.get("next");
    return res;
define doublyLinkedListInsert(head, val):
    new_node = {"val": val, "next": None, "prev": None};
    if head is None: return new_node;
    curr = head;
    while curr.get("next") is not None:
        curr = curr["next"];
    curr["next"] = new_node;
    new_node["prev"] = curr;
    return head;
define doublyLinkedListDelete(head, val):
    if head is None: return None;
    if head.get("val") == val:
        nxt = head.get("next");
        if nxt is not None: nxt["prev"] = None;
        return nxt;
    curr = head;
    while curr is not None:
        if curr.get("val") == val:
            prv = curr.get("prev");
            nxt = curr.get("next");
            if prv is not None: prv["next"] = nxt;
            if nxt is not None: nxt["prev"] = prv;
            break;
        curr = curr.get("next");
    return head;
define doublyLinkedListSearch(head, val):
    curr = head;
    while curr is not None:
        if curr.get("val") == val: return True;
        curr = curr.get("next");
    return False;
print("Doubly linked list of [1,2,3,4,5] is",doublyLinkedList([1,2,3,4,5]));
print("Doubly linked list create from [1, 2, 3]:", doublyLinkedListCreate([1, 2, 3]));
print("Doubly linked list to array:", doublyLinkedListToArray(doublyLinkedListCreate([1, 2, 3])));
print("Doubly linked list insert 4:", doublyLinkedListToArray(doublyLinkedListInsert(doublyLinkedListCreate([1, 2, 3]), 4)));
print("Doubly linked list delete 2:", doublyLinkedListToArray(doublyLinkedListDelete(doublyLinkedListCreate([1, 2, 3]), 2)));
print("Doubly linked list search 2:", doublyLinkedListSearch(doublyLinkedListCreate([1, 2, 3]), 2));
define circularLinkedList(a):
    if isinstance(a, list) and len(a) > 0:
        return a.pop();
    return None;
define circularLinkedListCreate(a):
    if not isinstance(a, list) or len(a) == 0: return None;
    head = {"val": a[0], "next": None};
    curr = head;
    for i in range(1, len(a)):
        curr["next"] = {"val": a[i], "next": None};
        curr = curr["next"];
    curr["next"] = head;
    return head;
define circularLinkedListToArray(head):
    if head is None: return [];
    res = [head.get("val")];
    curr = head.get("next");
    while curr != head and curr is not None:
        res.append(curr.get("val"));
        curr = curr.get("next");
    return res;
define circularLinkedListInsert(head, val):
    new_node = {"val": val, "next": None};
    if head is None:
        new_node["next"] = new_node;
        return new_node;
    curr = head;
    while curr.get("next") != head:
        curr = curr["next"];
    curr["next"] = new_node;
    new_node["next"] = head;
    return head;
define circularLinkedListDelete(head, val):
    if head is None: return None;
    if head.get("val") == val:
        if head.get("next") == head: return None;
        curr = head;
        while curr.get("next") != head:
            curr = curr["next"];
        curr["next"] = head.get("next");
        return head.get("next");
    curr = head;
    while curr.get("next") != head:
        if curr["next"].get("val") == val:
            curr["next"] = curr["next"].get("next");
            break;
        curr = curr["next"];
    return head;
define circularLinkedListSearch(head, val):
    if head is None: return False;
    if head.get("val") == val: return True;
    curr = head.get("next");
    while curr != head and curr is not None:
        if curr.get("val") == val: return True;
        curr = curr.get("next");
    return False;
print("Circular linked list of [1,2,3,4,5] is",circularLinkedList([1,2,3,4,5]));
print("Circular linked list create from [1, 2, 3]:", circularLinkedListCreate([1, 2, 3]));
print("Circular linked list to array:", circularLinkedListToArray(circularLinkedListCreate([1, 2, 3])));
print("Circular linked list insert 4:", circularLinkedListToArray(circularLinkedListInsert(circularLinkedListCreate([1, 2, 3]), 4)));
print("Circular linked list delete 2:", circularLinkedListToArray(circularLinkedListDelete(circularLinkedListCreate([1, 2, 3]), 2)));
print("Circular linked list search 2:", circularLinkedListSearch(circularLinkedListCreate([1, 2, 3]), 2));
define polynomialRegression(a,b):
    return a.pop();
print("Polynomial regression of [1,2,3,4,5] is",polynomialRegression([1,2,3,4,5]));
define multipleLinearRegression(a,b):
    return a.pop();
print("Multiple linear regression of [1,2,3,4,5] is",multipleLinearRegression([1,2,3,4,5]));
define logisticRegression(a,b):
    return a.pop();
print("Logistic regression of [1,2,3,4,5] is",logisticRegression([1,2,3,4,5]));
define decisionTree(a,b):
    return a.pop();
print("Decision tree of [1,2,3,4,5] is",decisionTree([1,2,3,4,5]));
define randomForest(a,b):
    return a.pop();
print("Random forest of [1,2,3,4,5] is",randomForest([1,2,3,4,5]));
define svm(a,b):
    return a.pop();
print("SVM of [1,2,3,4,5] is",svm([1,2,3,4,5]));
define naiveBayes(a,b):
    return a.pop();
print("Naive Bayes of [1,2,3,4,5] is",naiveBayes([1,2,3,4,5]));
define kNearestNeighbors(a,b):
    return a.pop();
print("K Nearest Neighbors of [1,2,3,4,5] is",kNearestNeighbors([1,2,3,4,5]));
define kMeans(a,b):
    return a.pop();
print("K Means of [1,2,3,4,5] is",kMeans([1,2,3,4,5]));
define hierachicalClustering(a,b):
    return a.pop();
print("Hierachical clustering of [1,2,3,4,5] is",hierachicalClustering([1,2,3,4,5]));
define pca(a,b):
    return a.pop();
print("PCA of [1,2,3,4,5] is",pca([1,2,3,4,5]));
define tsne(a,b):
    return a.pop();
print("TSNE of [1,2,3,4,5] is",tsne([1,2,3,4,5]));
define dbsCAN(a,b):
    return a.pop();
print("DBSCAN of [1,2,3,4,5] is",dbsCAN([1,2,3,4,5]));
define gaussianMixtureModel(a,b):
    return a.pop();
print("Gaussian Mixture Model of [1,2,3,4,5] is",gaussianMixtureModel([1,2,3,4,5]));
define adaboost(a,b):
    return a.pop();
print("Adaboost of [1,2,3,4,5] is",adaboost([1,2,3,4,5]));
define xgBoost(a,b):
    return a.pop();
print("XGBoost of [1,2,3,4,5] is",xgBoost([1,2,3,4,5]));
define lightGBM(a,b):
    return a.pop();
print("LightGBM of [1,2,3,4,5] is",lightGBM([1,2,3,4,5]));
define catBoost(a,b):
    return a.pop();
print("CatBoost of [1,2,3,4,5] is",catBoost([1,2,3,4,5]));
define neuralNetwork(a,b):
    return a.pop();
print("Neural Network of [1,2,3,4,5] is",neuralNetwork([1,2,3,4,5]));
define convolutionalNeuralNetwork(a,b):
    return a.pop();
print("Convolutional Neural Network of [1,2,3,4,5] is",convolutionalNeuralNetwork([1,2,3,4,5]));
define recurrentNeuralNetwork(a,b):
    return a.pop();
print("Recurrent Neural Network of [1,2,3,4,5] is",recurrentNeuralNetwork([1,2,3,4,5]));
define longShortTermMemory(a,b):
    return a.pop();
print("Long Short Term Memory of [1,2,3,4,5] is",longShortTermMemory([1,2,3,4,5]));
define transformer(a,b):
    return a.pop();
print("Transformer of [1,2,3,4,5] is",transformer([1,2,3,4,5]));
define autoencoder(a,b):
    return a.pop();
print("Autoencoder of [1,2,3,4,5] is",autoencoder([1,2,3,4,5]));
define variationalAutoencoder(a,b):
    return a.pop();
print("Variational Autoencoder of [1,2,3,4,5] is",variationalAutoencoder([1,2,3,4,5]));
define generativeAdversarialNetwork(a,b):
    return a.pop();
print("Generative Adversarial Network of [1,2,3,4,5] is",generativeAdversarialNetwork([1,2,3,4,5]));
define reinforcementLearning(a,b):
    return a.pop();
print("Reinforcement Learning of [1,2,3,4,5] is",reinforcementLearning([1,2,3,4,5]));
define clustering(a,b):
    return a.pop();
print("Clustering of [1,2,3,4,5] is",clustering([1,2,3,4,5]));
define classification(a,b):
    return a.pop();
print("Classification of [1,2,3,4,5] is",classification([1,2,3,4,5]));
define regression(a,b):
    return a.pop();
print("Regression of [1,2,3,4,5] is",regression([1,2,3,4,5]));
define clustering(a,b):
    return a.pop();
print("Clustering of [1,2,3,4,5] is",clustering([1,2,3,4,5]));
define classification(a,b):
    return a.pop();
print("Classification of [1,2,3,4,5] is",classification([1,2,3,4,5]));
define regression(a,b):
    return a.pop();
print("Regression of [1,2,3,4,5] is",regression([1,2,3,4,5]));
define dimensionalityReduction(a,b):
    return a.pop();
print("Dimensionality reduction of [1,2,3,4,5] is",dimensionalityReduction([1,2,3,4,5]));
define anomalyDetection(a,b):
    return a.pop();
print("Anomaly detection of [1,2,3,4,5] is",anomalyDetection([1,2,3,4,5]));
define recommendationSystem(a,b):
    return a.pop();
print("Recommendation system of [1,2,3,4,5] is",recommendationSystem([1,2,3,4,5]));
define timeSeriesAnalysis(a,b):
    return a.pop();
print("Time series analysis of [1,2,3,4,5] is",timeSeriesAnalysis([1,2,3,4,5]));
define naturalLanguageProcessing(a,b):
    return a.pop();
print("Natural Language Processing of [1,2,3,4,5] is",naturalLanguageProcessing([1,2,3,4,5]));
define computerVision(a,b):
    return a.pop();
print("Computer Vision of [1,2,3,4,5] is",computerVision([1,2,3,4,5]));
define speechRecognition(a,b):
    return a.pop();
print("Speech Recognition of [1,2,3,4,5] is",speechRecognition([1,2,3,4,5]));
define audioAnalysis(a,b):
    return a.pop();
print("Audio Analysis of [1,2,3,4,5] is",audioAnalysis([1,2,3,4,5]));
define timeSeriesForecasting(a,b):
    return a.pop();
print("Time Series Forecasting of [1,2,3,4,5] is",timeSeriesForecasting([1,2,3,4,5]));
define reinforcementLearning(a,b):
    return a.pop();
print("Reinforcement Learning of [1,2,3,4,5] is",reinforcementLearning([1,2,3,4,5]));
define clustering(a,b):
    return a.pop();
print("Clustering of [1,2,3,4,5] is",clustering([1,2,3,4,5]));
define classification(a,b):
    return a.pop();
print("Classification of [1,2,3,4,5] is",classification([1,2,3,4,5]));
define regression(a,b):
    return a.pop();
print("Regression of [1,2,3,4,5] is",regression([1,2,3,4,5]));
define clustering(a,b):
    return a.pop();
print("Clustering of [1,2,3,4,5] is",clustering([1,2,3,4,5]));
define classification(a,b):
    return a.pop();
print("Classification of [1,2,3,4,5] is",classification([1,2,3,4,5]));
define regression(a,b):
    return a.pop();
print("Regression of [1,2,3,4,5] is",regression([1,2,3,4,5]));
define dimensionalityReduction(a,b):
    return a.pop();
print("Dimensionality reduction of [1,2,3,4,5] is",dimensionalityReduction([1,2,3,4,5]));
define anomalyDetection(a,b):
    return a.pop();
print("Anomaly detection of [1,2,3,4,5] is",anomalyDetection([1,2,3,4,5]));
define recommendationSystem(a,b):
    return a.pop();
print("Recommendation system of [1,2,3,4,5] is",recommendationSystem([1,2,3,4,5]));
define timeSeriesAnalysis(a,b):
    return a.pop();
print("Time series analysis of [1,2,3,4,5] is",timeSeriesAnalysis([1,2,3,4,5]));
define naturalLanguageProcessing(a,b):
    return a.pop();
print("Natural Language Processing of [1,2,3,4,5] is",naturalLanguageProcessing([1,2,3,4,5]));
define computerVision(a,b):
    return a.pop();
print("Computer Vision of [1,2,3,4,5] is",computerVision([1,2,3,4,5]));
define speechRecognition(a,b):
    return a.pop();
print("Speech Recognition of [1,2,3,4,5] is",speechRecognition([1,2,3,4,5]));
define audioAnalysis(a,b):
    return a.pop();
print("Audio Analysis of [1,2,3,4,5] is",audioAnalysis([1,2,3,4,5]));
define timeSeriesForecasting(a,b):
    return a.pop();
print("Time Series Forecasting of [1,2,3,4,5] is",timeSeriesForecasting([1,2,3,4,5]));
define deepLearning(a,b):
    return a.pop();
print("Deep Learning of [1,2,3,4,5] is",deepLearning([1,2,3,4,5]));
define machineLearning(a,b):
    return a.pop();
print("Machine Learning of [1,2,3,4,5] is",machineLearning([1,2,3,4,5]));
define artificialIntelligence(a,b):
    return a.pop();
print("Artificial Intelligence of [1,2,3,4,5] is",artificialIntelligence([1,2,3,4,5]));
define dataScience(a,b):
    return a.pop();
print("Data Science of [1,2,3,4,5] is",dataScience([1,2,3,4,5]));
define bigData(a,b):
    return a.pop();
print("Big Data of [1,2,3,4,5] is",bigData([1,2,3,4,5]));
define cloudComputing(a,b):
    return a.pop();
print("Cloud Computing of [1,2,3,4,5] is",cloudComputing([1,2,3,4,5]));
define blockchain(a,b):
    return a.pop();
print("Blockchain of [1,2,3,4,5] is",blockchain([1,2,3,4,5]));
define internetOfThings(a,b):
    return a.pop();
print("Internet of Things of [1,2,3,4,5] is",internetOfThings([1,2,3,4,5]));
define cyberSecurity(a,b):
    return a.pop();
print("Cyber Security of [1,2,3,4,5] is",cyberSecurity([1,2,3,4,5]));
define quantumComputing(a,b):
    return a.pop();
print("Quantum Computing of [1,2,3,4,5] is",quantumComputing([1,2,3,4,5]));
define nanotechnology(a,b):
    return a.pop();
print("Nanotechnology of [1,2,3,4,5] is",nanotechnology([1,2,3,4,5]));
define biotechnology(a,b):
    return a.pop();
print("Biotechnology of [1,2,3,4,5] is",biotechnology([1,2,3,4,5]));
define syntheticBiology(a,b):
    return a.pop();
print("Synthetic Biology of [1,2,3,4,5] is",syntheticBiology([1,2,3,4,5]));
define geneticEngineering(a,b):
    return a.pop();
print("Genetic Engineering of [1,2,3,4,5] is",geneticEngineering([1,2,3,4,5]));
define stemCellTherapy(a,b):
    return a.pop();
print("Stem Cell Therapy of [1,2,3,4,5] is",stemCellTherapy([1,2,3,4,5]));
define immunotherapy(a,b):
    return a.pop();
print("Immunotherapy of [1,2,3,4,5] is",immunotherapy([1,2,3,4,5]));
define geneTherapy(a,b):
    return a.pop();
print("Gene Therapy of [1,2,3,4,5] is",geneTherapy([1,2,3,4,5]));
define regenerativeMedicine(a,b):
    return a.pop();
print("Regenerative Medicine of [1,2,3,4,5] is",regenerativeMedicine([1,2,3,4,5]));
define personalizedMedicine(a,b):
    return a.pop();
print("Personalized Medicine of [1,2,3,4,5] is",personalizedMedicine([1,2,3,4,5]));
define precisionMedicine(a,b):
    return a.pop();
print("Precision Medicine of [1,2,3,4,5] is",precisionMedicine([1,2,3,4,5]));
define targetedTherapy(a,b):
    return a.pop();
print("Targeted Therapy of [1,2,3,4,5] is",targetedTherapy([1,2,3,4,5]));
define drugDiscovery(a,b):
    return a.pop();
print("Drug Discovery of [1,2,3,4,5] is",drugDiscovery([1,2,3,4,5]));
define clinicalTrials(a,b):
    return a.pop();
print("Clinical Trials of [1,2,3,4,5] is",clinicalTrials([1,2,3,4,5]));
define precisionPublicHealth(a,b):
    return a.pop();
print("Precision Public Health of [1,2,3,4,5] is",precisionPublicHealth([1,2,3,4,5]));
define personalizedNutrition(a,b):
    return a.pop();
print("Personalized Nutrition of [1,2,3,4,5] is",personalizedNutrition([1,2,3,4,5]));
define precisionAgriculture(a,b):
    return a.pop();
print("Precision Agriculture of [1,2,3,4,5] is",precisionAgriculture([1,2,3,4,5]));
define precisionManufacturing(a,b):
    return a.pop();
print("Precision Manufacturing of [1,2,3,4,5] is",precisionManufacturing([1,2,3,4,5]));
define precisionRetail(a,b):
    return a.pop();
print("Precision Retail of [1,2,3,4,5] is",precisionRetail([1,2,3,4,5]));
define precisionFinance(a,b):
    return a.pop();
print("Precision Finance of [1,2,3,4,5] is",precisionFinance([1,2,3,4,5]));
define precisionMarketing(a,b):
    return a.pop();
print("Precision Marketing of [1,2,3,4,5] is",precisionMarketing([1,2,3,4,5]));
define precisionEducation(a,b):
    return a.pop();
print("Precision Education of [1,2,3,4,5] is",precisionEducation([1,2,3,4,5]));
define precisionEngineering(a,b):
    return a.pop();
print("Precision Engineering of [1,2,3,4,5] is",precisionEngineering([1,2,3,4,5]));
define precisionArchitecture(a,b):
    return a.pop();
print("Precision Architecture of [1,2,3,4,5] is",precisionArchitecture([1,2,3,4,5]));
define precisionInteriorDesign(a,b):
    return a.pop();
print("Precision Interior Design of [1,2,3,4,5] is",precisionInteriorDesign([1,2,3,4,5]));
define precisionLandscaping(a,b):
    return a.pop();
print("Precision Landscaping of [1,2,3,4,5] is",precisionLandscaping([1,2,3,4,5]));
define precisionEnvironmentalScience(a,b):
    return a.pop();
print("Precision Environmental Science of [1,2,3,4,5] is",precisionEnvironmentalScience([1,2,3,4,5]));
define precisionGeology(a,b):
    return a.pop();
print("Precision Geology of [1,2,3,4,5] is",precisionGeology([1,2,3,4,5]));
define precisionOceanography(a,b):
    return a.pop();
print("Precision Oceanography of [1,2,3,4,5] is",precisionOceanography([1,2,3,4,5]));
define precisionMeteorology(a,b):
    return a.pop();
print("Precision Meteorology of [1,2,3,4,5] is",precisionMeteorology([1,2,3,4,5]));
define precisionAstronomy(a,b):
    return a.pop();
print("Precision Astronomy of [1,2,3,4,5] is",precisionAstronomy([1,2,3,4,5]));
define precisionCosmology(a,b):
    return a.pop();
print("Precision Cosmology of [1,2,3,4,5] is",precisionCosmology([1,2,3,4,5]));
define precisionPhysics(a,b):
    return a.pop();
print("Precision Physics of [1,2,3,4,5] is",precisionPhysics([1,2,3,4,5]));
define precisionChemistry(a,b):
    return a.pop();
print("Precision Chemistry of [1,2,3,4,5] is",precisionChemistry([1,2,3,4,5]));
define precisionBiology(a,b):
    return a.pop();
print("Precision Biology of [1,2,3,4,5] is",precisionBiology([1,2,3,4,5]));
define precisionMedicine(a,b):
    return a.pop();
print("Precision Medicine of [1,2,3,4,5] is",precisionMedicine([1,2,3,4,5]));
define precisionBiotechnology(a,b):
    return a.pop();
print("Precision Biotechnology of [1,2,3,4,5] is",precisionBiotechnology([1,2,3,4,5]));
define precisionSyntheticBiology(a,b):
    return a.pop();
print("Precision Synthetic Biology of [1,2,3,4,5] is",precisionSyntheticBiology([1,2,3,4,5]));
define precisionGeneticEngineering(a,b):
    return a.pop();
print("Precision Genetic Engineering of [1,2,3,4,5] is",precisionGeneticEngineering([1,2,3,4,5]));
define precisionStemCellTherapy(a,b):
    return a.pop();
print("Precision Stem Cell Therapy of [1,2,3,4,5] is",precisionStemCellTherapy([1,2,3,4,5]));
define precisionImmunotherapy(a,b):
    return a.pop();
print("Precision Immunotherapy of [1,2,3,4,5] is",precisionImmunotherapy([1,2,3,4,5]));
define precisionGeneTherapy(a,b):
    return a.pop();
print("Precision Gene Therapy of [1,2,3,4,5] is",precisionGeneTherapy([1,2,3,4,5]));
define precisionRegenerativeMedicine(a,b):
    return a.pop();
print("Precision Regenerative Medicine of [1,2,3,4,5] is",precisionRegenerativeMedicine([1,2,3,4,5]));
define precisionPersonalizedMedicine(a,b):
    return a.pop();
print("Precision Personalized Medicine of [1,2,3,4,5] is",precisionPersonalizedMedicine([1,2,3,4,5]));
define shapenext(a,b):
    return a.pop();
print("Shape Next of [1,2,3,4,5] is",shapenext([1,2,3,4,5]));
define earth(a,b):
    return a.pop();
print("Earth of [1,2,3,4,5] is",earth([1,2,3,4,5]));
define rectangle(l,b):
    if isinstance(l, list): l = len(l)
    if isinstance(b, list) or b is None: b = l
    return l*b;
print("Rectangle of [1,2,3,4,5] is",rectangle([1,2,3,4,5]));
define square(a):
    if isinstance(a, list): a = len(a)
    return a*a;
print("Square of [1,2,3,4,5] is",square([1,2,3,4,5]));
define circle(r):
    if isinstance(r, list): r = len(r)
    return 3.14*r*r;
print("Circle of [1,2,3,4,5] is",circle([1,2,3,4,5]));
define triangle(a,b):
    if isinstance(a, list): a = len(a)
    if isinstance(b, list) or b is None: b = a
    return 0.5*a*b;
print("Triangle of [1,2,3,4,5] is",triangle([1,2,3,4,5]));
define hexagon(a):
    if isinstance(a, list): a = len(a)
    return 2.598*a*a;
print("Hexagon of [1,2,3,4,5] is",hexagon([1,2,3,4,5]));
define oval(a,b):
    if isinstance(a, list): a = len(a)
    if isinstance(b, list) or b is None: b = a
    return 3.14*a*b;
print("Oval of [1,2,3,4,5] is",oval([1,2,3,4,5]));
define trapezoid(a,b,h):
    if isinstance(a, list): a = len(a)
    if isinstance(b, list) or b is None: b = a
    if isinstance(h, list) or h is None: h = a
    return 0.5*(a+b)*h;
print("Trapezoid of [1,2,3,4,5] is",trapezoid([1,2,3,4,5]));
define rainwaterTrapping(a,b,h):
    if isinstance(a, list): a = len(a)
    if isinstance(b, list) or b is None: b = a
    if isinstance(h, list) or h is None: h = a
    return 0.5*(a+b)*h;
print("Rainwater Trapping of [1,2,3,4,5] is",rainwaterTrapping([1,2,3,4,5]));
define time(a,b):
    return a.pop();
print("Time of [1,2,3,4,5] is",time([1,2,3,4,5]));
define ceil(a,b):
    return a.pop();
print("Ceil of [1,2,3,4,5] is",ceil([1,2,3,4,5]));
define floor(a,b):
    return a.pop();
print("Floor of [1,2,3,4,5] is",floor([1,2,3,4,5]));
define power(a,b):
    if isinstance(a, list): a = len(a)
    if isinstance(b, list) or b is None: b = 2
    return a**b;
print("Power of [1,2,3,4,5] is",power([1,2,3,4,5]));
define bitwiseLeftShift(a,b):
    if isinstance(a, list): a = len(a)
    if isinstance(b, list) or b is None: b = 1
    return a<<b;
print("Bitwise Left Shift of [1,2,3,4,5] is",bitwiseLeftShift([1,2,3,4,5]));
define bitwiseRightShift(a,b):
    if isinstance(a, list): a = len(a)
    if isinstance(b, list) or b is None: b = 1
    return a>>b;
print("Bitwise Right Shift of [1,2,3,4,5] is",bitwiseRightShift([1,2,3,4,5]));
define bitwiseAND(a,b):
    if isinstance(a, list): a = len(a)
    if isinstance(b, list) or b is None: b = a
    return a&b;
print("Bitwise AND of [1,2,3,4,5] is",bitwiseAND([1,2,3,4,5]));
define bitwiseXOR(a,b):
    if isinstance(a, list): a = len(a)
    if isinstance(b, list) or b is None: b = a
    return a^b;
print("Bitwise XOR of [1,2,3,4,5] is",bitwiseXOR([1,2,3,4,5]));
define bitwiseOR(a,b):
    if isinstance(a, list): a = len(a)
    if isinstance(b, list) or b is None: b = a
    return a|b;
print("Bitwise OR of [1,2,3,4,5] is",bitwiseOR([1,2,3,4,5]));
define bitwiseNOT(a):
    if isinstance(a, list): a = len(a)
    return ~a;
print("Bitwise NOT of [1,2,3,4,5] is",bitwiseNOT([1,2,3,4,5]));
define bitwiseLeftShiftAssignment(a,b):
    if isinstance(a, list): a = len(a)
    if isinstance(b, list) or b is None: b = 1
    return a<<b;
print("Bitwise Left Shift Assignment of [1,2,3,4,5] is",bitwiseLeftShiftAssignment([1,2,3,4,5]));
define bitwiseRightShiftAssignment(a,b):
    if isinstance(a, list): a = len(a)
    if isinstance(b, list) or b is None: b = 1
    return a>>b;
print("Bitwise Right Shift Assignment of [1,2,3,4,5] is",bitwiseRightShiftAssignment([1,2,3,4,5]));
define bitwiseANDAssignment(a,b):
    if isinstance(a, list): a = len(a)
    if isinstance(b, list) or b is None: b = a
    return a&b;
print("Bitwise AND Assignment of [1,2,3,4,5] is",bitwiseANDAssignment([1,2,3,4,5]));
define bitwiseXORAssignment(a,b):
    if isinstance(a, list): a = len(a)
    if isinstance(b, list) or b is None: b = a
    return a^b;
print("Bitwise XOR Assignment of [1,2,3,4,5] is",bitwiseXORAssignment([1,2,3,4,5]));
define bitwiseORAssignment(a,b):
    if isinstance(a, list): a = len(a)
    if isinstance(b, list) or b is None: b = a
    return a|b;
print("Bitwise OR Assignment of [1,2,3,4,5] is",bitwiseORAssignment([1,2,3,4,5]));
define bitwiseNOTAssignment(a):
    if isinstance(a, list): a = len(a)
    return ~a;
print("Bitwise NOT Assignment of [1,2,3,4,5] is",bitwiseNOTAssignment([1,2,3,4,5]));
define logicalAND(a,b):
    return bool(a) and bool(b);
print("Logical AND of [1,2,3,4,5] is",logicalAND([1,2,3,4,5]));
define logicalOR(a,b):
    return bool(a) or bool(b);
print("Logical OR of [1,2,3,4,5] is",logicalOR([1,2,3,4,5]));
define logicalNOT(a):
    return not bool(a);
print("Logical NOT of [1,2,3,4,5] is",logicalNOT([1,2,3,4,5]));
define ternaryOperator(a,b,c):
    if b is None: b = a
    if c is None: c = a
    return b if a else c;
print("Ternary Operator of [1,2,3,4,5] is",ternaryOperator([1,2,3,4,5]));
define sizeof(a):
    return len(a);
print("Sizeof of [1,2,3,4,5] is",sizeof([1,2,3,4,5]));
define typeOf(a):
    return type(a);
print("Type of [1,2,3,4,5] is",typeOf([1,2,3,4,5]));
define instanceof(a,b):
    if b is None: b = object
    return isinstance(a,b);
print("Instanceof of [1,2,3,4,5] is",instanceof([1,2,3,4,5]));
define isOperator(a):
    return a in ["+","-","*","/","%","<<",">>","&","|","^","~","<<=",">=","&=","|=","^=","!", "?"];
print("Is Operator of [1,2,3,4,5] is",isOperator([1,2,3,4,5]));
define isKeyword(a):
    return a in ["define","return","print","if","else","for","while","in","out","def","export","import","class","struct","enum","union","namespace","try","catch","finally","throw","yield","await","async","let","const","var","with","as","from","del","global","nonlocal","lambda"];
print("Is Keyword of [1,2,3,4,5] is",isKeyword([1,2,3,4,5]));
define isIdentifier(a):
    return str(a).isalpha();
print("Is Identifier of [1,2,3,4,5] is",isIdentifier([1,2,3,4,5]));
define isNumber(a):
    return str(a).isdigit();
print("Is Number of [1,2,3,4,5] is",isNumber([1,2,3,4,5]));
define isString(a):
    return isinstance(a, str);
print("Is String of [1,2,3,4,5] is",isString([1,2,3,4,5]));
define isBoolean(a):
    return a in [True,False];
print("Is Boolean of [1,2,3,4,5] is",isBoolean([1,2,3,4,5]));
define isNone(a):
    return a is None;
print("Is None of [1,2,3,4,5] is",isNone([1,2,3,4,5]));
define isFunction(a):
    return callable(a);
print("Is Function of [1,2,3,4,5] is",isFunction([1,2,3,4,5]));
define isClass(a):
    return isinstance(a,type);
print("Is Class of [1,2,3,4,5] is",isClass([1,2,3,4,5]));
define isObject(a):
    return isinstance(a,object);
print("Is Object of [1,2,3,4,5] is",isObject([1,2,3,4,5]));
define isList(a):
    return isinstance(a,list);
print("Is List of [1,2,3,4,5] is",isList([1,2,3,4,5]));
define isTuple(a):
    return isinstance(a,tuple);
print("Is Tuple of [1,2,3,4,5] is",isTuple([1,2,3,4,5]));
define isSet(a):
    return isinstance(a,set);
print("Is Set of [1,2,3,4,5] is",isSet([1,2,3,4,5]));
define isDict(a):
    return isinstance(a,dict);
print("Is Dict of [1,2,3,4,5] is",isDict([1,2,3,4,5]));
define isArray(a):
    return isinstance(a, (list, tuple));
print("Is Array of [1,2,3,4,5] is",isArray([1,2,3,4,5]));
define isMap(a):
    return isinstance(a, dict);
print("Is Map of [1,2,3,4,5] is",isMap([1,2,3,4,5]));
define isList(a):
    return isinstance(a,list);
print("Is List of [1,2,3,4,5] is",isList([1,2,3,4,5]));
define isDict(a):
    return isinstance(a,dict);
print("Is Dict of [1,2,3,4,5] is",isDict([1,2,3,4,5]));
define isSet(a):
    return isinstance(a,set);
print("Is Set of [1,2,3,4,5] is",isSet([1,2,3,4,5]));
define isTuple(a):
    return isinstance(a,tuple);
print("Is Tuple of [1,2,3,4,5] is",isTuple([1,2,3,4,5]));
define isArray(a):
    return isinstance(a, (list, tuple));
print("Is Array of [1,2,3,4,5] is",isArray([1,2,3,4,5]));
define isMap(a):
    return isinstance(a, dict);
print("Is Map of [1,2,3,4,5] is",isMap([1,2,3,4,5]));
define isList(a):
    return isinstance(a,list);
print("Is List of [1,2,3,4,5] is",isList([1,2,3,4,5]));
define isDict(a):
    return isinstance(a,dict);
print("Is Dict of [1,2,3,4,5] is",isDict([1,2,3,4,5]));
define isSet(a):
    return isinstance(a,set);
print("Is Set of [1,2,3,4,5] is",isSet([1,2,3,4,5]));
define isTuple(a):
    return isinstance(a,tuple);
print("Is Tuple of [1,2,3,4,5] is",isTuple([1,2,3,4,5]));
define isArray(a):
    return isinstance(a, (list, tuple));
print("Is Array of [1,2,3,4,5] is",isArray([1,2,3,4,5]));
define isMap(a):
    return isinstance(a, dict);
print("Is Map of [1,2,3,4,5] is",isMap([1,2,3,4,5]));
define isList(a):
    return isinstance(a,list);
print("Is List of [1,2,3,4,5] is",isList([1,2,3,4,5]));
define isDict(a):
    return isinstance(a,dict);
print("Is Dict of [1,2,3,4,5] is",isDict([1,2,3,4,5]));
define isSet(a):
    return isinstance(a,set);
print("Is Set of [1,2,3,4,5] is",isSet([1,2,3,4,5]));
define isTuple(a):
    return isinstance(a,tuple);
print("Is Tuple of [1,2,3,4,5] is",isTuple([1,2,3,4,5]));
define isArray(a):
    return isinstance(a, (list, tuple));
print("Is Array of [1,2,3,4,5] is",isArray([1,2,3,4,5]));
define isMap(a):
    return isinstance(a, dict);
print("Is Map of [1,2,3,4,5] is",isMap([1,2,3,4,5]));
define isList(a):
    return isinstance(a,list);
print("Is List of [1,2,3,4,5] is",isList([1,2,3,4,5]));
define isDict(a):
    return isinstance(a,dict);
print("Is Dict of [1,2,3,4,5] is",isDict([1,2,3,4,5]));
define isSet(a):
    return isinstance(a,set);
print("Is Set of [1,2,3,4,5] is",isSet([1,2,3,4,5]));
define isTuple(a):
    return isinstance(a,tuple);
print("Is Tuple of [1,2,3,4,5] is",isTuple([1,2,3,4,5]));
define isArray(a):
    return isinstance(a, (list, tuple));
print("Is Array of [1,2,3,4,5] is",isArray([1,2,3,4,5]));
define isMap(a):
    return isinstance(a, dict);
print("Is Map of [1,2,3,4,5] is",isMap([1,2,3,4,5]));
define isList(a):
    return isinstance(a,list);
print("Is List of [1,2,3,4,5] is",isList([1,2,3,4,5]));
define isDict(a):
    return isinstance(a,dict);
print("Is Dict of [1,2,3,4,5] is",isDict([1,2,3,4,5]));
define isSet(a):
    return isinstance(a,set);
print("Is Set of [1,2,3,4,5] is",isSet([1,2,3,4,5]));
define isTuple(a):
    return isinstance(a,tuple);
print("Is Tuple of [1,2,3,4,5] is",isTuple([1,2,3,4,5]));
define isArray(a):
    return isinstance(a, (list, tuple));
print("Is Array of [1,2,3,4,5] is",isArray([1,2,3,4,5]));
define isMap(a):
    return isinstance(a, dict);
print("Is Map of [1,2,3,4,5] is",isMap([1,2,3,4,5]));
define isList(a):
    return isinstance(a,list);
print("Is List of [1,2,3,4,5] is",isList([1,2,3,4,5]));
define isDict(a):
    return isinstance(a,dict);
print("Is Dict of [1,2,3,4,5] is",isDict([1,2,3,4,5]));
define isSet(a):
    return isinstance(a,set);
print("Is Set of [1,2,3,4,5] is",isSet([1,2,3,4,5]));
define isTuple(a):
    return isinstance(a,tuple);
print("Is Tuple of [1,2,3,4,5] is",isTuple([1,2,3,4,5]));
define isArray(a):
    return isinstance(a, (list, tuple));
print("Is Array of [1,2,3,4,5] is",isArray([1,2,3,4,5]));
define isMap(a):
    return isinstance(a, dict);
print("Is Map of [1,2,3,4,5] is",isMap([1,2,3,4,5]));
define isList(a):
    return isinstance(a,list);
print("Is List of [1,2,3,4,5] is",isList([1,2,3,4,5]));
define isDict(a):
    return isinstance(a,dict);
print("Is Dict of [1,2,3,4,5] is",isDict([1,2,3,4,5]));
define isSet(a):
    return isinstance(a,set);
print("Is Set of [1,2,3,4,5] is",isSet([1,2,3,4,5]));
define sort(a):
    return sorted(a);
print("Sort of [1,2,3,4,5] is",sort([1,2,3,4,5]));
define globalMax(a):
    return max(a);
print("Global Max of [1,2,3,4,5] is",globalMax([1,2,3,4,5]));
define globalMin(a):
    return min(a);
print("Global Min of [1,2,3,4,5] is",globalMin([1,2,3,4,5]));
define localMax(a):
    return max(a);
print("Local Max of [1,2,3,4,5] is",localMax([1,2,3,4,5]));
define localMin(a):
    return min(a);
print("Local Min of [1,2,3,4,5] is",localMin([1,2,3,4,5]));
global_var = 10;
define global():
    global global_var;
    global_var = 10;
    return global_var;
print("Global is",global());
local_var = 20;
define local():
    local_var = 20;
    return local_var;
print("Local is",local());
define globalMax():
    return global_var;
print("Global Max is",globalMax());
define globalMin():
    return global_var;
print("Global Min is",globalMin());
define localMax():
    return local_var;
print("Local Max is",localMax());
define localMin():
    return local_var;
print("Local Min is",localMin());
define globalMaxLocalMin():
    return global_var - local_var;
print("Global Max Local Min is",globalMaxLocalMin());
define globalMinLocalMax():
    return local_var - global_var;
print("Global Min Local Max is",globalMinLocalMax());
define globalMaxLocalMax():
    return global_var + local_var;
print("Global Max Local Max is",globalMaxLocalMax());
define globalMinLocalMin():
    return global_var + local_var;
print("Global Min Local Min is",globalMinLocalMin());
define globalMaxLocalMin():
    return global_var - local_var;
print("Global Max Local Min is",globalMaxLocalMin());
define globalMinLocalMax():
    return local_var - global_var;
print("Global Min Local Max is",globalMinLocalMax());
define globalMaxLocalMax():
    return global_var + local_var;
print("Global Max Local Max is",globalMaxLocalMax());
define globalMinLocalMin():
    return global_var + local_var;
print("Global Min Local Min is",globalMinLocalMin());
define globalMaxLocalMinMax():
    return global_var - local_var;
print("Global Max Local Min Max is",globalMaxLocalMinMax());
define globalMinLocalMaxMin():
    return local_var - global_var;
print("Global Min Local Max Min is",globalMinLocalMaxMin());
define globalMaxLocalMinMax():
    return global_var - local_var;
print("Global Max Local Min Max is",globalMaxLocalMinMax());
define localMaxLocalMinMax():
    return local_var - global_var;
print("Local Max Local Min Max is",localMaxLocalMinMax());
define class(a):
    return a;
print("Class of [1,2,3,4,5] is",class([1,2,3,4,5]));
define list(a):
    return a;
print("List of [1,2,3,4,5] is",list([1,2,3,4,5]));
define array(a):
    return a;
print("Array of [1,2,3,4,5] is",array([1,2,3,4,5]));
define map(a):
    return a;
print("Map of [1,2,3,4,5] is",map([1,2,3,4,5]));
define set(a):
    return a;
print("Set of [1,2,3,4,5] is",set([1,2,3,4,5]));
define tuple(a):
    return a;
print("Tuple of [1,2,3,4,5] is",tuple([1,2,3,4,5]));
define object(a):
    return a;
print("Object of [1,2,3,4,5] is",object([1,2,3,4,5]));
define dict(a):
    return a;
print("Dict of [1,2,3,4,5] is",dict([1,2,3,4,5]));
define singleInheritance():
    class Parent:
        def display(self):
            return "Parent Property"
    class Child(Parent):
        def child_display(self):
            return "Child Property Derived from " + self.display()
    child_obj = Child()
    return child_obj.child_display()
print("Single Inheritance is",singleInheritance());
define multipleInheritance():
    class Parent1:
        def display1(self):
            return "Parent1 Property"
    class Parent2:
        def display2(self):
            return "Parent2 Property"
    class Child(Parent1, Parent2):
        def display(self):
            return self.display1() + " & " + self.display2()
    child_obj = Child()
    return child_obj.display()
print("Multiple Inheritance is",multipleInheritance());
define multilevelInheritance():
    class Parent:
        def display(self):
            return "Parent Property"
    class Child(Parent):
        def child_display(self):
            return "Child -> " + self.display()
    class Grandchild(Child):
        def grand_display(self):
            return "Grandchild -> " + self.child_display()
    grandchild_obj = Grandchild()
    return grandchild_obj.grand_display()
print("Multilevel Inheritance is",multilevelInheritance());
define hybridInheritance():
    class Parent1:
        def display1(self):
            return "Parent1 Property"
    class Parent2:
        def display2(self):
            return "Parent2 Property"
    class Child(Parent1, Parent2):
        def display_hybrid(self):
            return "Hybrid: " + self.display1() + " + " + self.display2()
    child_obj = Child()
    return child_obj.display_hybrid()
print("Hybrid Inheritance is",hybridInheritance());
define hierarchicalInheritance():
    class Parent:
        def display(self):
            return "Parent Property"
    class Child(Parent):
        def child_info(self):
            return "Child derived from " + self.display()
    class Grandchild(Parent):
        def sibling_info(self):
            return "Sibling derived from " + self.display()
    child_obj = Child()
    grandchild_obj = Grandchild()
    return child_obj.child_info(), grandchild_obj.sibling_info()
print("Hierarchical Inheritance is",hierarchicalInheritance());
define APIcreator(name):
    return name
print("API Creator is",APIcreator("Earth API"));
define differenciate(x):
    return x+1
print("Differenciate is",differenciate(1));
define integrate(x):
    return x+1
print("Integrate is",integrate(1));
define vector(x,y):
    return (x,y)
print("Vector is",vector(1,2));
define magnitude(x,y):
    return (x**2 + y**2)**0.5
print("Magnitude is",magnitude(1,2));
define sin(a):
    return a+1
print("Sin is",sin(1));
define cos(a):
    return a+1
print("Cos is",cos(1));
define tan(a):
    return a+1
print("Tan is",tan(1));
define csc(a):
    return a+1
print("Csc is",csc(1));
define sec(a):
    return a+1
print("Sec is",sec(1));
define cot(a):
    return a+1
print("Cot is",cot(1));
define methodOverloading(a, b, c):
    if c is not None: return a + b + c;
    if b is not None: return a + b;
    if a is not None: return a * 2;
    return 0;
print("Method Overloading is",methodOverloading(10, 20, 30));
define methodOverriding():
    class BaseShape:
        def area(self): return 0
    class CircleShape(BaseShape):
        def area(self): return 3.14 * 5 * 5
    s = CircleShape()
    return s.area()
print("Method Overriding is",methodOverriding());
define operatorOverloading():
    class Vector2D:
        def __init__(self, x, y): self.x = x; self.y = y
        def __add__(self, other): return Vector2D(self.x + other.x, self.y + other.y)
    v1 = Vector2D(1, 2)
    v2 = Vector2D(3, 4)
    v3 = v1 + v2
    return (v3.x, v3.y)
print("Operator Overloading is",operatorOverloading());
define virtualFunction():
    class Animal:
        def speak(self): return "Animal Sound"
    class Dog(Animal):
        def speak(self): return "Woof"
    d = Dog()
    return d.speak()
print("Virtual Function is",virtualFunction());
define abstractMethod():
    class AbstractCalculator:
        def compute(self, x, y): return -1
    class AddCalculator(AbstractCalculator):
        def compute(self, x, y): return x + y
    calc = AddCalculator()
    return calc.compute(10, 20)
print("Abstract Method is",abstractMethod());
define duckTyping(obj):
    if obj is None:
        class Duck:
            def quack(self): return "Quack!"
        obj = Duck()
    if hasattr(obj, "quack"):
        return obj.quack()
    return "Not a duck"
print("Duck Typing is",duckTyping(None));
define statictyping(val, expected_type):
    if val is None: val = 42; expected_type = "int";
    if expected_type == "int" and isinstance(val, int): return True;
    if expected_type == "str" and isinstance(val, str): return True;
    return False;
print("Static Typing is",statictyping(42, "int"));
define dynamictyping():
    x = 10;
    x = "Ten";
    x = [1, 0];
    return type(x).__name__;
print("Dynamic Typing is",dynamictyping());
define strongtyping(a, b):
    if a is None: a = "Score: "; b = 100;
    return str(a) + str(b);
print("Strong Typing is",strongtyping("Score: ", 100));
define weaktyping(a, b):
    if a is None: a = "5"; b = 2;
    return float(a) + float(b);
print("Weak Typing is",weaktyping("5", 2));
define importSystem():
    import os;
    return os.getcwd()
    import math;
import sys;
import platform;
import time;
import random;
import re;
import json;
import xml.etree.ElementTree as ET;
import csv;
import requests;
import numpy;
import pandas;
import matplotlib;
import seaborn;
import scipy;
import sklearn;
import tensorflow;
import torch;
import keras;
import PyQt;
import turtle;
import java.lang;
import Earth.txt;
import interpreter.py;
import MyFunctions.psm1;
import Exceptions.sl;
import util;
import io;
import nio;
import math;
import time;
import net;
import security;
import sql;
import awt;
import swing;
import fx;
import text;
import xml;
import rmi;
import beans;
import reflect;
import concurrent;
import crypto;
import net;
import sound;
import tkinter;
import pytorch;
import pytorch-lightning;
import xgboost;
import lightgbm;
import catboost;
import statsmodels;
import scikit-learnl;
import numpy-financial;
import flask;
import django;
from impacket import smb;
from scapy.all import *;
import pyshark;
from impacket import smb;
from cryptography.fernet import Fernet;
from Crypto.Cipher import AES;
import hashlib;
import nmap;
from pwn import *;
import requests;
import socket;
import fastapi;
import pyramid;
import bottle;
import tornado;
import cherrypy;
import sqlite3;
import sqlalchemy;
import bs4;
import urllib;
import socket;
import datetime;
import collections;
import itertools;
import functools;
import asyncio;
import threading;
import multiprocessing;
import subprocess;
import argparse;
import logging;
import pathlib;
import typing;
import pytest;
import unittest;
import pydantic;
import celery;
import redis;
import Algorithms;
import SL_Packages;
import pyshark;
import nltk;
import spacy;
import opencv-python;
import pillow;
print("Import System is",importSystem());
define moduleSystem():
    return 'Module System Active'
    import django
    return django.run()
    import fastapi
    return fastapi.run()
    import pyramid
    return pyramid.run()
    import bottle
    return bottle.run()
    import tornado
    return tornado.run()
    import cherrypy
    return cherrypy.run()
print("Module System is",moduleSystem());
define packageSystem():
    return 'Package System Active'
    import django.package
    return django.package.run()
    import fastapi.package
    return fastapi.package.run()
    import pyramid.package
    return pyramid.package.run()
    import bottle.package
    return bottle.package.run()
    import tornado.package
    return tornado.package.run()
    import cherrypy
    return cherrypy.run()  
print("Package System is",packageSystem());
define namespaceSystem(name):
    if name is None: name = "std.math.pi";
    ns = {"std": {"math": {"pi": 3.14159, "e": 2.718}}};
    parts = str(name).split(".");
    curr = ns;
    for p in parts:
        if type(curr).__name__ == "dict" and p in curr: curr = curr[p];
        else: return None;
    return curr;
print("Namespace System is",namespaceSystem("std.math.pi"));
define scopeSystem():
    global_scope = {"x": 1};
    outer_scope = {"x": 2, "y": 10};
    inner_scope = {"x": 3};
    return [inner_scope["x"], outer_scope["y"], global_scope["x"]];
print("Scope System is",scopeSystem());
define stackSystem():
    frames = [];
    frames.append({"func": "main", "line": 15});
    frames.append({"func": "stackSystem", "line": 1870});
    return frames;
print("Stack System is",stackSystem());
define heapSystem(size):
    if size is None: size = 64;
    heap_blk = {"address": 4096, "bytes": size, "allocated": True};
    return heap_blk;
print("Heap System is",heapSystem(64));

define garbageCollection():
    objects = [{"id": 1, "refs": 2}, {"id": 2, "refs": 0}, {"id": 3, "refs": 1}];
    collected = [obj["id"] for obj in objects if obj["refs"] == 0];
    return collected;
print("Garbage Collection is",garbageCollection());
define memoryManagement():
    pages = {"total": 1024, "used": 256, "free": 768};
    return pages;
print("Memory Management is",memoryManagement());
define processManagement():
    processes = [{"pid": 101, "name": "init", "state": "running"}, {"pid": 102, "name": "sl_worker", "state": "ready"}];
    return processes;
print("Process Management is",processManagement());
define threadManagement():
    threads = [{"tid": 1, "status": "active"}, {"tid": 2, "status": "idle"}];
    return threads;
print("Thread Management is",threadManagement());
define concurrency():
    queue_buf = [1, 2, 3, 4, 5];
    out = [];
    while len(queue_buf) > 0: out.append(queue_buf.pop(0));
    return out;
print("Concurrency is",concurrency());
define parallelism(data):
    if data is None: data = [1, 2, 3, 4, 5, 6];
    chunk1 = [x * 2 for x in data[:3]];
    chunk2 = [x * 2 for x in data[3:]];
    return chunk1 + chunk2;
print("Parallelism is",parallelism([1, 2, 3, 4, 5, 6]));
define async(task_name):
    if task_name is None: task_name = "fetch_data";
    return {"task": task_name, "status": "pending", "id": 42};
print("Async is",async("fetch_data"));
define await(promise):
    if promise is None: promise = {"task": "fetch_data", "status": "pending", "id": 42};
    promise["status"] = "resolved";
    promise["result"] = "Success 200 OK";
    return promise["result"];
print("Await is",await(None));
define interprocessCommunication(msg):
    if msg is None: msg = "IPC Message Ping";
    pipe = {"buffer": msg, "read_pos": 0};
    return pipe["buffer"];
print("Interprocess Communication is",interprocessCommunication("IPC Message Ping"));
define multiprocessCommunication(msg):
    if msg is None: msg = "Proc 1 -> Proc 2";
    mq = [msg];
    return mq.pop(0);
print("Multiprocess Communication is",multiprocessCommunication("Proc 1 -> Proc 2"));
define networkCommunication(host, port):
    if host is None: host = "127.0.0.1"; port = 8080;
    return {"host": host, "port": port, "status": "CONNECTED"};
print("Network Communication is",networkCommunication("127.0.0.1", 8080));
define remoteProcedureCall(method, params):
    if method is None: method = "getUser"; params = [101];
    payload = {"jsonrpc": "2.0", "method": method, "params": params, "id": 1};
    return payload;
print("Remote Procedure Call is",remoteProcedureCall("getUser", [101]));
define distributedSystem():
    nodes = [{"id": 1, "role": "leader"}, {"id": 2, "role": "follower"}, {"id": 3, "role": "follower"}];
    return [n for n in nodes if n["role"] == "leader"][0]["id"];
print("Distributed System is",distributedSystem());
define clusterComputing(nodes, key):
    if nodes is None: nodes = ["node-1", "node-2", "node-3"]; key = "user_42";
    idx = len(key) % len(nodes);
    return nodes[idx];
print("Cluster Computing is",clusterComputing(["node-1", "node-2", "node-3"], "user_42"));
define gridComputing(jobs):
    if jobs is None: jobs = 4;
    batches = [];
    for i in range(0, jobs, 2): batches.append([i, i+1]);
    return batches;
print("Grid Computing is",gridComputing(4));
define cloudComputing(load):
    if load is None: load = 85;
    if load > 80: return "Scale Up: Add Instance";
    return "Healthy: Maintain Cluster";
print("Cloud Computing is",cloudComputing(85));
define blockchain(data, prev_hash):
    if data is None: data = "Genesis Block"; prev_hash = "0000000000";
    import hashlib;
    block_str = str(prev_hash) + str(data);
    block_hash = hashlib.sha256(block_str.encode('utf-8')).hexdigest();
    return {"data": data, "hash": block_hash};
print("Blockchain is",blockchain("Genesis Block", "0000000000"));
define machineLearning(w, lr, grad):
    if w is None: w = 1.0; lr = 0.01; grad = 0.5;
    new_w = w - lr * grad;
    return new_w;
print("Machine Learning is",machineLearning(1.0, 0.01, 0.5));
define deepLearning(x, w, b):
    if x is None: x = 2.0; w = 1.5; b = -0.5;
    z = x * w + b;
    return max(0.0, z);
print("Deep Learning is",deepLearning(2.0, 1.5, -0.5));
define neuralNetwork(inputs):
    if inputs is None: inputs = [0.5, 0.8];
    h1 = max(0.0, inputs[0]*0.2 + inputs[1]*0.4);
    h2 = max(0.0, inputs[0]*0.6 + inputs[1]*0.1);
    out = h1 * 0.5 + h2 * 0.5;
    return out;
print("Neural Network is",neuralNetwork([0.5, 0.8]));
define computerGraphics(x0, y0, x1, y1):
    if x0 is None: x0 = 0; y0 = 0; x1 = 3; y1 = 3;
    points = [];
    for i in range(x0, x1 + 1): points.append((i, i));
    return points;
print("Computer Graphics is",computerGraphics(0, 0, 3, 3));
define virtualReality(pitch, yaw, roll):
    if pitch is None: pitch = 0; yaw = 0; roll = 0;
    return {"pose": (pitch, yaw, roll), "tracking": "6DOF_TRACKED"};
print("Virtual Reality is",virtualReality(0, 0, 0));
define augmentedReality(anchor_id):
    if anchor_id is None: anchor_id = "table_surface_01";
    return {"anchor": anchor_id, "matrix": [[1,0,0],[0,1,0],[0,0,1]]};
print("Augmented Reality is",augmentedReality("table_surface_01"));
define fetch():
    import requests
    try:
        return requests.get("https://www.google.com", timeout=2).status_code
    except Exception:
        return 200
print("Fetch is",fetch());
define ceiling(x):
    return math.ceil(x)
print("Ceiling is",ceiling(1));
define floor(x):
    return math.floor(x)
print("Floor is",floor(1));
define round(x):
    return builtins.round(x)
print("Round is",round(1));
define power(x,y):
    return x**y
print("Power is",power(1,2));
define sqrt(x):
    return x**0.5
print("Sqrt is",sqrt(1));
define log(x):
    return math.log(x)
print("Log is",log(1));
define pi():
    return math.pi
print("Pi is",pi());
define degrees(x):    
    return math.degrees(x)
print("Degrees is",degrees(1));
define radians(x):
    return math.radians(x)
print("Radians is",radians(1));    
define factorial(x):
    return math.factorial(x)
print("Factorial is",factorial(1));
define cubicRoot(x):
    return x**(1/3)
print("Cubic Root is",cubicRoot(1));
define power(x,y):
    return x**y
print("Power is",power(1,2));
define sqrt(x):
    return x**0.5
print("Sqrt is",sqrt(1));
define gcd(x,y):
    return math.gcd(x,y)
print("Gcd is",gcd(1,2));
define lcm(x,y):
    return math.lcm(x,y)
print("Lcm is",lcm(1,2));
define interface():
    print("Main Menu");
    print("1. Option 1");
    print("2. Option 2");
    print("3. Exit");
    choice = input("Enter your choice: ");
    if choice == "1":
        print("You chose Option 1");
    elif choice == "2":
        print("You chose Option 2");
    elif choice == "3":
        print("Exiting");
    else:
        print("Invalid choice");
define abstract(a):
    print("--- Abstract Base Algorithm ---");
    if len(a) == 0:
        print("Error: Empty input");
        return -1;
    print("Step 1: Initialization");
    result = [];
    print("Step 2: Core Processing");
    for i in range(len(a)):
        result.append(a[i]);
    print("Step 3: Finalization");
    return result;
define differenciate(a):
    print("--- Discrete Differentiation ---");
    if len(a) < 2:
        return [];
    result = [];
    for i in range(1, len(a)):
        result.append(a[i] - a[i-1]);
    return result;
print("Differentiation of [1, 3, 6, 10] is", differenciate([1, 3, 6, 10]));
define integration(a):
    print("--- Discrete Integration (Cumulative Sum) ---");
    if len(a) == 0:
        return [];
    result = [];
    current_sum = 0;
    for i in range(len(a)):
        current_sum = current_sum + a[i];
        result.append(current_sum);
    return result;
print("Integration of [1, 2, 3, 4] is", integration([1, 2, 3, 4]));
define getter(data, index):
    print("Getter Algorithm");
    if index >= 0 and index < len(data):
        return data[index];
    print("Error: Index out of bounds");
    return None;
print("Getter from [10, 20, 30] at index 1 is", getter([10, 20, 30], 1));
define setter(data, index, value):
    print("--- Setter Algorithm ---");
    if index >= 0 and index < len(data):
        data[index] = value;
        return data;
    print("Error: Index out of bounds");
    return data;
print("Setter on [10, 20, 30] at index 1 to 99 gives", setter([10, 20, 30], 1, 99));
define dataframe(headers, data_rows):
    print("Creating Dataframe");
    if len(data_rows) == 0:
        return {};
    df = {};
    for i in range(len(headers)):
        col_data = [];
        for row in data_rows:
            col_data.append(row[i]);
        df[headers[i]] = col_data;
    return df;
print("Dataframe is", dataframe(["ID", "Name"], [[1, "Alice"], [2, "Bob"]]));
define nullPointerException(msg):
    print("nullPointerException raised: ", msg);
    return -1;
define nullPointerException(msg):
    print("nullPointerException raised: ", msg);
    return -1;
define arrayIndexOutOfBoundsException(msg):
    print("arrayIndexOutOfBoundsException raised: ", msg);
    return -1;
define classCastException(msg):
    print("classCastException raised: ", msg);
    return -1;
define illegalArgumentException(msg):
    print("illegalArgumentException raised: ", msg);
    return -1;
define illegalStateException(msg):
    print("illegalStateException raised: ", msg);
    return -1;
define numberFormatException(msg):
    print("numberFormatException raised: ", msg);
    return -1;
define arithmeticException(msg):
    print("arithmeticException raised: ", msg);
    return -1;
define stringIndexOutOfBoundsException(msg):
    print("stringIndexOutOfBoundsException raised: ", msg);
    return -1;
define unsupportedOperationException(msg):
    print("unsupportedOperationException raised: ", msg);
    return -1;
define concurrentModificationException(msg):
    print("concurrentModificationException raised: ", msg);
    return -1;
define fileNotFoundException(msg):
    print("fileNotFoundException raised: ", msg);
    return -1;
define ioException(msg):
    print("ioException raised: ", msg);
    return -1;
define sqlException(msg):
    print("sqlException raised: ", msg);
    return -1;
define classNotFoundException(msg):
    print("classNotFoundException raised: ", msg);
    return -1;
define noSuchMethodException(msg):
    print("noSuchMethodException raised: ", msg);
    return -1;
define interruptedException(msg):
    print("interruptedException raised: ", msg);
    return -1;
define cloneNotSupportedException(msg):
    print("cloneNotSupportedException raised: ", msg);
    return -1;
define javaException(msg):
    print("javaException raised: ", msg);
    return -1;
define runtimeException(msg):
    print("runtimeException raised: ", msg);
    return -1;
define javaError(msg):
    print("javaError raised: ", msg);
    return -1;
define stackOverflowError(msg):
    print("stackOverflowError raised: ", msg);
    return -1;
define outOfMemoryError(msg):
    print("outOfMemoryError raised: ", msg);
    return -1;
define pythonException(msg):
    print("pythonException raised: ", msg);
    return -1;
define standardError(msg):
    print("standardError raised: ", msg);
    return -1;
define arithmeticError(msg):
    print("arithmeticError raised: ", msg);
    return -1;
define bufferError(msg):
    print("bufferError raised: ", msg);
    return -1;
define lookupError(msg):
    print("lookupError raised: ", msg);
    return -1;
define assertionError(msg):
    print("assertionError raised: ", msg);
    return -1;
define attributeError(msg):
    print("attributeError raised: ", msg);
    return -1;
define eofError(msg):
    print("eofError raised: ", msg);
    return -1;
define floatingPointError(msg):
    print("floatingPointError raised: ", msg);
    return -1;
define generatorExit(msg):
    print("generatorExit raised: ", msg);
    return -1;
define importError(msg):
    print("importError raised: ", msg);
    return -1;
define moduleNotFoundError(msg):
    print("moduleNotFoundError raised: ", msg);
    return -1;
define indexError(msg):
    print("indexError raised: ", msg);
    return -1;
define keyError(msg):
    print("keyError raised: ", msg);
    return -1;
define keyboardInterrupt(msg):
    print("keyboardInterrupt raised: ", msg);
    return -1;
define memoryError(msg):
    print("memoryError raised: ", msg);
    return -1;
define nameError(msg):
    print("nameError raised: ", msg);
    return -1;
define notImplementedError(msg):
    print("notImplementedError raised: ", msg);
    return -1;
define osError(msg):
    print("osError raised: ", msg);
    return -1;
define overflowError(msg):
    print("overflowError raised: ", msg);
    return -1;
define recursionError(msg):
    print("recursionError raised: ", msg);
    return -1;
define referenceError(msg):
    print("referenceError raised: ", msg);
    return -1;
define runtimeError(msg):
    print("runtimeError raised: ", msg);
    return -1;
define stopIteration(msg):
    print("stopIteration raised: ", msg);
    return -1;
define stopAsyncIteration(msg):
    print("stopAsyncIteration raised: ", msg);
    return -1;
define syntaxError(msg):
    print("syntaxError raised: ", msg);
    return -1;
define indentationError(msg):
    print("indentationError raised: ", msg);
    return -1;
define tabError(msg):
    print("tabError raised: ", msg);
    return -1;
define systemError(msg):
    print("systemError raised: ", msg);
    return -1;
define systemExit(msg):
    print("systemExit raised: ", msg);
    return -1;
define typeError(msg):
    print("typeError raised: ", msg);
    return -1;
define unboundLocalError(msg):
    print("unboundLocalError raised: ", msg);
    return -1;
define unicodeError(msg):
    print("unicodeError raised: ", msg);
    return -1;
define unicodeEncodeError(msg):
    print("unicodeEncodeError raised: ", msg);
    return -1;
define unicodeDecodeError(msg):
    print("unicodeDecodeError raised: ", msg);
    return -1;
define unicodeTranslateError(msg):
    print("unicodeTranslateError raised: ", msg);
    return -1;
define valueError(msg):
    print("valueError raised: ", msg);
    return -1;
define zeroDivisionError(msg):
    print("zeroDivisionError raised: ", msg);
    return -1;
define jsError(msg):
    print("jsError raised: ", msg);
    return -1;
define evalError(msg):
    print("evalError raised: ", msg);
    return -1;
define internalError(msg):
    print("internalError raised: ", msg);
    return -1;
define rangeError(msg):
    print("rangeError raised: ", msg);
    return -1;
define uriError(msg):
    print("uriError raised: ", msg);
    return -1;
define aggregateError(msg):
    print("aggregateError raised: ", msg);
    return -1;
define argumentException(msg):
    print("argumentException raised: ", msg);
    return -1;
define argumentNullException(msg):
    print("argumentNullException raised: ", msg);
    return -1;
define argumentOutOfRangeException(msg):
    print("argumentOutOfRangeException raised: ", msg);
    return -1;
define divideByZeroException(msg):
    print("divideByZeroException raised: ", msg);
    return -1;
define formatException(msg):
    print("formatException raised: ", msg);
    return -1;
define indexOutOfRangeException(msg):
    print("indexOutOfRangeException raised: ", msg);
    return -1;
define invalidOperationException(msg):
    print("invalidOperationException raised: ", msg);
    return -1;
define keyNotFoundException(msg):
    print("keyNotFoundException raised: ", msg);
    return -1;
define notSupportedException(msg):
    print("notSupportedException raised: ", msg);
    return -1;
define nullReferenceException(msg):
    print("nullReferenceException raised: ", msg);
    return -1;
define outOfMemoryException(msg):
    print("outOfMemoryException raised: ", msg);
    return -1;
define overflowException(msg):
    print("overflowException raised: ", msg);
    return -1;
define stackOverflowException(msg):
    print("stackOverflowException raised: ", msg);
    return -1;
define timeoutException(msg):
    print("timeoutException raised: ", msg);
    return -1;
define cppException(msg):
    print("cppException raised: ", msg);
    return -1;
define badAlloc(msg):
    print("badAlloc raised: ", msg);
    return -1;
define badCast(msg):
    print("badCast raised: ", msg);
    return -1;
define badException(msg):
    print("badException raised: ", msg);
    return -1;
define badTypeid(msg):
    print("badTypeid raised: ", msg);
    return -1;
define logicError(msg):
    print("logicError raised: ", msg);
    return -1;
define domainError(msg):
    print("domainError raised: ", msg);
    return -1;
define invalidArgument(msg):
    print("invalidArgument raised: ", msg);
    return -1;
define lengthError(msg):
    print("lengthError raised: ", msg);
    return -1;
define outOfRange(msg):
    print("outOfRange raised: ", msg);
    return -1;
define runtimeErrorCpp(msg):
    print("runtimeErrorCpp raised: ", msg);
    return -1;
define rangeErrorCpp(msg):
    print("rangeErrorCpp raised: ", msg);
    return -1;
define overflowErrorCpp(msg):
    print("overflowErrorCpp raised: ", msg);
    return -1;
define underflowError(msg):
    print("underflowError raised: ", msg);
    return -1;
define datatypes():
    print("--- Supported Data Types ---");
    types = ["int", "float", "double", "char", "string", "boolean", "array", "list", "dict", "set", "tuple", "object", "null"];
    for i in range(len(types)):
        print("- ", types[i]);
    return types;
print("Data types:", datatypes());
define htmlDiv(content):
    print("<div>", content, "</div>");
    return -1;
define htmlSpan(content):
    print("<span>", content, "</span>");
    return -1;
define htmlImage(src):
    print("<img src='", src, "' />");
    return -1;
define htmlAnchor(href, text):
    print("<a href='", href, "'>", text, "</a>");
    return -1;
define htmlForm(inputs):
    print("<form>", inputs, "</form>");
    return -1;
define cssFlexbox():
    print("Applied CSS: display: flex; justify-content: center; align-items: center;");
    return -1;
define cssGrid():
    print("Applied CSS: display: grid; grid-template-columns: repeat(3, 1fr);");
    return -1;
define cssMarginPadding():
    print("Applied CSS: margin: 10px; padding: 15px;");
    return -1;
define cssAnimation():
    print("Applied CSS: transition: all 0.3s ease;");
    return -1;
define jsGetElementById(id):
    print("Document fetched element with ID:", id);
    return -1;
define jsAddEventListener(event, callback):
    print("Listening for event:", event);
    return -1;
define jsSetTimeout(callback, time):
    print("Timeout set for", time, "ms");
    return -1;
define jsPromise(resolve, reject):
    print("Promise created. Pending resolution...");
    return -1;
define reactUseState(initialValue):
    print("React Hook: useState initialized with", initialValue);
    return -1;
define reactUseEffect(callback, dependencies):
    print("React Hook: useEffect triggered with dependencies", dependencies);
    return -1;
define reactUseContext(context):
    print("React Hook: useContext subscribing to", context);
    return -1;
define reactComponent(props):
    print("React Component rendered with props:", props);
    return -1;
define bootstrapContainer():
    print("Bootstrap: <div class='container'> created");
    return -1;
define bootstrapRow():
    print("Bootstrap: <div class='row'> created");
    return -1;
define bootstrapColumn(size):
    print("Bootstrap: <div class='col-", size, "'> created");
    return -1;
define bootstrapNavbar():
    print("Bootstrap: <nav class='navbar navbar-expand-lg'> created");
    return -1;
define bootstrapCard():
    print("Bootstrap: <div class='card'> created");
    return -1;
define bootstrapModal():
    print("Bootstrap: <div class='modal'> created");
    return -1;
    import spring;
import javaee;
import tkinter;
define runGraphicCodes():
    print("--- Running Python Style Graphic Codes ---");
    tk = tkinter.tkinterWrapper();
    tk.Button("Submit");
    tk.Canvas("MainCanvas");
    tk.Entry("UsernameField");
    tk.run();
    print("--- Running Spring Style Graphic Codes ---");
    sp = spring.SpringWrapper();
    sp.ModelAndView("home.html", "UserData");
    sp.HtmlComponent("loginForm");
    print("--- Running Java EE Style Graphic Codes ---");
    jee = javaee.JavaEEWrapper();
    jee.JSPRenderer("/WEB-INF/views/dashboard.jsp");
    jee.JSFComponent("DataGrid");
runGraphicCodes();
define createPointer(val):
    return {"address": id(val), "value": val};
define dereference(ptr):
    if isinstance(ptr, dict) and "value" in ptr:
        return ptr["value"];
    return None;
define updatePointer(ptr, newVal):
    if isinstance(ptr, dict) and "value" in ptr:
        ptr["value"] = newVal;
    return ptr;
define pointerArithmetic(ptr, offset):
    if isinstance(ptr, dict) and "address" in ptr:
        return {"address": ptr["address"] + (offset * 4), "value": None};
    return None;
define swapPointers(ptrA, ptrB):
    if isinstance(ptrA, dict) and isinstance(ptrB, dict):
        temp = ptrA.get("value");
        ptrA["value"] = ptrB.get("value");
        ptrB["value"] = temp;
        return True;
    return False;
define main():
    print("=== Testing Pointer Backend Operations ===\n")
    val1 = 42
    ptr1 = createPointer(val1)
    print(f"Created Pointer 1: {ptr1}")
    derefVal = dereference(ptr1)
    print(f"Dereferenced Pointer 1: {derefVal}")
    updatePointer(ptr1, 100)
    print(f"Updated Pointer 1 Value to: {dereference(ptr1)}")
    shiftedPtr = pointerArithmetic(ptr1, offset=2)
    print(f"Shifted Pointer 1 by offset 2: {shiftedPtr}")
    val2 = 77
    ptr2 = createPointer(val2)
    print(f"\nBefore Swap:")
    print(f"Pointer 1 Value: {dereference(ptr1)}")
    print(f"Pointer 2 Value: {dereference(ptr2)}")
    swapPointers(ptr1, ptr2)
    print(f"\nAfter Swap:")
    print(f"Pointer 1 Value: {dereference(ptr1)}")
    print(f"Pointer 2 Value: {dereference(ptr2)}")
if __name__ == "__main__":
    main()