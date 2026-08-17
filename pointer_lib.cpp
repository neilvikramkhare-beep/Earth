#include <iostream>
#include <string>
#include <sstream>
#include <cstring>

#if defined(_WIN32) || defined(__CYGWIN__)
  #define EXPORT __declspec(dllexport)
#else
  #define EXPORT
#endif

extern "C" {

    // Helper to free memory allocated in C++ for Python strings
    EXPORT void free_string(char* str) {
        delete[] str;
    }

    // 1. Basic Pointer Operations
    EXPORT char* basic_pointer_ops(int value) {
        int* ptr = &value;
        std::ostringstream oss;
        oss << "Value: " << value 
            << " | Address: " << ptr 
            << " | Dereferenced (*ptr): " << *ptr;
        
        std::string s = oss.str();
        char* cstr = new char[s.length() + 1];
        std::strcpy(cstr, s.c_str());
        return cstr;
    }

    // 2. Pointer Arithmetic
    EXPORT int pointer_arithmetic(int step) {
        int arr[] = {10, 20, 30, 40, 50};
        int* ptr = arr; // Base address
        ptr += step;    // Pointer arithmetic
        
        if (step >= 0 && step < 5) return *ptr;
        return -1; // Out of bounds
    }

    // 7. Linked List Traversal
    struct ListNode {
        int data;
        ListNode* next;
        ListNode(int val) : data(val), next(nullptr) {}
    };

    EXPORT char* linked_list_demo() {
        ListNode* head = new ListNode(10);
        head->next = new ListNode(20);
        head->next->next = new ListNode(30);

        ListNode* current = head;
        std::ostringstream oss;
        while (current != nullptr) {
            oss << current->data << " -> ";
            current = current->next;
        }
        oss << "NULL";

        // Cleanup
        while (head != nullptr) {
            ListNode* temp = head;
            head = head->next;
            delete temp;
        }

        std::string s = oss.str();
        char* cstr = new char[s.length() + 1];
        std::strcpy(cstr, s.c_str());
        return cstr;
    }

    // 9. Algorithms: Two-Pointer Technique (Reverse Array)
    void swapValues(int* a, int* b) {
        int temp = *a;
        *a = *b;
        *b = temp;
    }

    EXPORT char* reverse_array() {
        int arr[] = {1, 2, 3, 4, 5};
        int size = 5;
        
        int* start = arr;
        int* end = arr + size - 1;
        
        while (start < end) {
            swapValues(start, end); // Passing pointers to algorithm
            start++;
            end--;
        }
        
        std::ostringstream oss;
        oss << "Reversed [1, 2, 3, 4, 5]: ";
        for (int i = 0; i < size; i++) oss << arr[i] << " ";
        
        std::string s = oss.str();
        char* cstr = new char[s.length() + 1];
        std::strcpy(cstr, s.c_str());
        return cstr;
    }
}
