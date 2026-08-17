def fetch_weather(city):
    return f"Weather for {city}: 22°C, Sunny"

def show_calendar(year, month):
    return f"Showing calendar for {month}/{year}\n[Events: Team Meeting, Code Review]"

def send_message(user, msg):
    return f"Message sent to {user}: '{msg}'"

def receive_messages():
    return "New Messages:\n- Alice: Hello!\n- Bob: Code approved."

def play_music(song):
    return f"Now Playing: {song} ??"

def stop_music():
    return "Music stopped."

def get_directions(start, end):
    return f"Directions from {start} to {end}:\n1. Head North\n2. Turn right"

def show_map(location):
    return f"Displaying map for: {location}"

def open_settings():
    return "Settings:\n- Display: Dark Mode\n- Volume: 80%"

# --- Pointer Concept Backend Functions ---

def create_pointer(val):
    """Simulate creating a pointer"""
    return {"address": id(val), "value": val}

def dereference(ptr):
    """Simulate dereferencing a pointer"""
    if isinstance(ptr, dict) and "value" in ptr:
        return ptr["value"]
    return None

def update_pointer(ptr, new_val):
    """Update value stored in pointer"""
    if isinstance(ptr, dict) and "value" in ptr:
        ptr["value"] = new_val
    return ptr

def pointer_arithmetic(ptr, offset):
    """Move pointer address by offset"""
    if isinstance(ptr, dict) and "address" in ptr:
        return {"address": ptr["address"] + (offset * 4), "value": None}
    return None

def swap_pointers(ptrA, ptrB):
    """Swap underlying values of two pointers"""
    if isinstance(ptrA, dict) and isinstance(ptrB, dict):
        temp = ptrA.get("value")
        ptrA["value"] = ptrB.get("value")
        ptrB["value"] = temp
        return True
    return False
