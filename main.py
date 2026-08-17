from fastapi import FastAPI, HTTPException
import ctypes
import os
import platform

app = FastAPI(
    title="Pointer Concepts Backend",
    description="A Python FastAPI backend that interfaces with a C++ Shared Library to demonstrate pointer operations."
)

# Determine the correct library extension
lib_name = "pointer_lib.dll" if platform.system() == "Windows" else "libpointer_lib.so"
lib_path = os.path.join(os.path.dirname(__file__), lib_name)

# Attempt to load the C++ Shared Library
try:
    pointer_lib = ctypes.CDLL(lib_path)

    # Define argument and return types for the exported C functions
    
    # basic_pointer_ops
    pointer_lib.basic_pointer_ops.argtypes = [ctypes.c_int]
    pointer_lib.basic_pointer_ops.restype = ctypes.c_void_p

    # free_string
    pointer_lib.free_string.argtypes = [ctypes.c_void_p]

    # pointer_arithmetic
    pointer_lib.pointer_arithmetic.argtypes = [ctypes.c_int]
    pointer_lib.pointer_arithmetic.restype = ctypes.c_int

    # linked_list_demo
    pointer_lib.linked_list_demo.restype = ctypes.c_void_p

    # reverse_array
    pointer_lib.reverse_array.restype = ctypes.c_void_p
    
    DLL_LOADED = True
except Exception as e:
    print(f"Warning: Failed to load {lib_name}. {e}")
    DLL_LOADED = False

def call_and_free_string(func, *args):
    """
    Helper function to call a C function that returns a dynamically allocated string,
    decode it to Python, and free the C++ memory to prevent leaks.
    """
    if not DLL_LOADED:
        raise HTTPException(status_code=500, detail="C++ Library not loaded. Please compile it first.")
    
    # Get the raw memory pointer
    ptr = func(*args)
    if not ptr:
        return ""
    
    # Cast to char pointer and decode
    result = ctypes.cast(ptr, ctypes.c_char_p).value.decode('utf-8')
    
    # Free the memory using the exported C++ delete function
    pointer_lib.free_string(ptr)
    
    return result

@app.get("/api/basic-pointer/{value}")
def basic_pointer(value: int):
    """Demonstrate referencing and dereferencing"""
    result = call_and_free_string(pointer_lib.basic_pointer_ops, value)
    return {"message": "Basic Pointer Operations", "result": result}

@app.get("/api/pointer-arithmetic/{step}")
def pointer_arithmetic(step: int):
    """Demonstrate pointer arithmetic on an array [10, 20, 30, 40, 50]"""
    if not DLL_LOADED:
        raise HTTPException(status_code=500, detail="DLL not loaded")
    val = pointer_lib.pointer_arithmetic(step)
    if val == -1:
        return {"error": "Step out of bounds (0-4 only)"}
    return {"message": f"Pointer arithmetic (base_ptr + {step})", "dereferenced_value": val}

@app.get("/api/linked-list")
def linked_list():
    """Demonstrate linked list creation and traversal using pointers"""
    result = call_and_free_string(pointer_lib.linked_list_demo)
    return {"message": "Linked List Traversal", "result": result}

@app.get("/api/algorithms/reverse")
def reverse_array():
    """Demonstrate the two-pointer technique to reverse an array"""
    result = call_and_free_string(pointer_lib.reverse_array)
    return {"message": "Two-Pointer Algorithm", "result": result}

# ==========================================
# Script.sl Pointer Implementations
# ==========================================

@app.get("/api/sl/pointer/create/{val}")
def sl_create_pointer(val: int):
    """Simulate creating a pointer using the logic from script.sl"""
    # In Python, we use the object's id as a mock memory address
    return {"message": "Created Pointer", "pointer": {"address": id(val), "value": val}}

@app.get("/api/sl/pointer/dereference/{address}/{val}")
def sl_dereference(address: int, val: int):
    """Simulate dereferencing a pointer from script.sl"""
    ptr = {"address": address, "value": val}
    value = ptr.get("value")
    return {"message": "Dereferenced Pointer", "value": value}

@app.get("/api/sl/pointer/arithmetic/{address}/{offset}")
def sl_pointer_arithmetic(address: int, offset: int):
    """Simulate pointer arithmetic from script.sl (moving by offset)"""
    # Simulate moving pointer by 4 bytes per offset step
    new_address = address + (offset * 4)
    return {
        "message": f"Pointer arithmetic (offset {offset})", 
        "pointer": {"address": new_address, "value": None}
    }

@app.get("/api/sl/pointer/swap/{val1}/{val2}")
def sl_swap_pointers(val1: int, val2: int):
    """Simulate swapping two pointers from script.sl"""
    ptrA = {"address": id(val1), "value": val1}
    ptrB = {"address": id(val2), "value": val2}
    
    # Swap values
    temp = ptrA["value"]
    ptrA["value"] = ptrB["value"]
    ptrB["value"] = temp
    
    return {
        "message": "Swapped pointers successfully",
        "ptrA": ptrA,
        "ptrB": ptrB
    }
