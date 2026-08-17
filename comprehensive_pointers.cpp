#include <iostream>
#include <string>
#include <cstdlib>

using namespace std;

// ==========================================
// 1. BASIC POINTER OPERATIONS
// ==========================================
void basicPointerOperations() {
    cout << "--- 1. Basic Pointer Operations ---" << endl;
    int value = 42;
    int* ptr = &value; // Reference operator (&) gets the memory address

    cout << "Value: " << value << endl;
    cout << "Memory Address (&value): " << ptr << endl;
    cout << "Dereferenced Value (*ptr): " << *ptr << endl; // Dereference operator (*) accesses the value at the address

    *ptr = 100; // Modifying the value using the pointer
    cout << "Modified Value via pointer: " << value << endl;
    cout << endl;
}

// ==========================================
// 2. POINTER ARITHMETIC
// ==========================================
void pointerArithmetic() {
    cout << "--- 2. Pointer Arithmetic ---" << endl;
    int arr[] = {10, 20, 30, 40, 50};
    int* ptr = arr; // ptr points to the first element (arr[0])

    cout << "Initial ptr value: " << *ptr << endl;
    
    ptr++; // Move to the next integer in memory
    cout << "After ptr++: " << *ptr << endl;
    
    ptr += 2; // Move two integers forward
    cout << "After ptr += 2: " << *ptr << endl;
    
    ptr--; // Move one integer backward
    cout << "After ptr--: " << *ptr << endl;

    cout << endl;
}

// ==========================================
// 3. POINTERS TO POINTERS (Multiple Indirection)
// ==========================================
void doublePointers() {
    cout << "--- 3. Pointers to Pointers ---" << endl;
    int value = 999;
    int* ptr = &value;       // Pointer to integer
    int** doublePtr = &ptr;  // Pointer to pointer to integer

    cout << "Value: " << value << endl;
    cout << "Value via double pointer (**doublePtr): " << **doublePtr << endl;
    cout << endl;
}

// ==========================================
// 4. CONST POINTERS
// ==========================================
void constPointers() {
    cout << "--- 4. Const Pointers ---" << endl;
    int value1 = 10, value2 = 20;

    // 1. Pointer to a constant (Cannot change the value pointed to)
    const int* ptrToConst = &value1;
    // *ptrToConst = 15; // ERROR!
    ptrToConst = &value2; // OK (can change where it points)

    // 2. Constant pointer (Cannot change where it points)
    int* const constPtr = &value1;
    *constPtr = 15; // OK (can change the value)
    // constPtr = &value2; // ERROR!

    // 3. Constant pointer to a constant
    const int* const constPtrToConst = &value1;
    // *constPtrToConst = 15; // ERROR!
    // constPtrToConst = &value2; // ERROR!
    cout << "Const pointers explained in code comments." << endl;
    cout << endl;
}

// ==========================================
// 5. FUNCTION POINTERS (Algorithms Support)
// ==========================================
// A simple algorithm that takes a function pointer for a callback
void processData(int data, void (*callback)(int)) {
    // Doing some processing...
    int result = data * 2;
    // Call the provided function pointer
    callback(result);
}

void myCallback(int result) {
    cout << "Callback executed with result: " << result << endl;
}

void functionPointers() {
    cout << "--- 5. Function Pointers ---" << endl;
    // Assign function to a pointer
    void (*funcPtr)(int) = myCallback;
    
    // Pass function pointer to an algorithm
    processData(5, funcPtr);
    cout << endl;
}

// ==========================================
// 6. DYNAMIC MEMORY ALLOCATION
// ==========================================
void dynamicMemory() {
    cout << "--- 6. Dynamic Memory Allocation ---" << endl;
    // Allocating a single integer
    int* dynInt = new int(55);
    cout << "Dynamically allocated int: " << *dynInt << endl;
    delete dynInt; // Free memory

    // Allocating an array
    int* dynArray = new int[3];
    dynArray[0] = 1; dynArray[1] = 2; dynArray[2] = 3;
    cout << "Dynamically allocated array [1]: " << dynArray[1] << endl;
    delete[] dynArray; // Free array memory
    cout << endl;
}

// ==========================================
// 7. DATA STRUCTURES: LINKED LIST
// ==========================================
// Pointers are the foundation of dynamic data structures
struct ListNode {
    int data;
    ListNode* next;
    ListNode(int val) : data(val), next(nullptr) {}
};

void linkedListDemo() {
    cout << "--- 7. Data Structures: Linked List ---" << endl;
    ListNode* head = new ListNode(10);
    head->next = new ListNode(20);
    head->next->next = new ListNode(30);

    // Traversal using a pointer
    ListNode* current = head;
    cout << "Linked List: ";
    while (current != nullptr) {
        cout << current->data << " -> ";
        current = current->next;
    }
    cout << "NULL" << endl;

    // Cleanup
    while (head != nullptr) {
        ListNode* temp = head;
        head = head->next;
        delete temp;
    }
    cout << endl;
}

// ==========================================
// 8. DATA STRUCTURES: BINARY TREE
// ==========================================
struct TreeNode {
    int data;
    TreeNode* left;
    TreeNode* right;
    TreeNode(int val) : data(val), left(nullptr), right(nullptr) {}
};

void inOrderTraversal(TreeNode* node) {
    if (node == nullptr) return;
    inOrderTraversal(node->left);
    cout << node->data << " ";
    inOrderTraversal(node->right);
}

void binaryTreeDemo() {
    cout << "--- 8. Data Structures: Binary Tree ---" << endl;
    TreeNode* root = new TreeNode(2);
    root->left = new TreeNode(1);
    root->right = new TreeNode(3);

    cout << "Tree In-Order Traversal: ";
    inOrderTraversal(root);
    cout << endl << endl;

    // Cleanup
    delete root->left;
    delete root->right;
    delete root;
}

// ==========================================
// 9. ALGORITHMS: POINTER MANIPULATION
// ==========================================
// Using pointers for pass-by-reference to modify original variables
void swapValues(int* a, int* b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

// Reversing an array using two pointers (Algorithm)
void reverseArray(int* arr, int size) {
    int* start = arr;
    int* end = arr + size - 1;
    
    while (start < end) {
        swapValues(start, end);
        start++;
        end--;
    }
}

void algorithmDemo() {
    cout << "--- 9. Algorithms: Two-Pointer Technique ---" << endl;
    int arr[] = {1, 2, 3, 4, 5};
    int size = sizeof(arr) / sizeof(arr[0]);

    cout << "Original array: ";
    for (int i = 0; i < size; i++) cout << arr[i] << " ";
    cout << endl;

    reverseArray(arr, size);

    cout << "Reversed array: ";
    for (int i = 0; i < size; i++) cout << arr[i] << " ";
    cout << endl << endl;
}

int main() {
    cout << "=== COMPREHENSIVE POINTERS DEMO ===" << endl << endl;
    
    basicPointerOperations();
    pointerArithmetic();
    doublePointers();
    constPointers();
    functionPointers();
    dynamicMemory();
    linkedListDemo();
    binaryTreeDemo();
    algorithmDemo();

    return 0;
}
