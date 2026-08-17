import os
import sys
import shutil
import winreg
from pathlib import Path

def main():
    print("====================================")
    print("       Earth Language Setup")
    print("====================================")
    
    base_dir = Path(getattr(sys, '_MEIPASS', os.path.dirname(os.path.abspath(__file__))))
    
    install_dir = Path(os.environ.get('LOCALAPPDATA')) / 'EarthLang'
    if not install_dir.exists():
        install_dir.mkdir(parents=True)
    
    print(f"Installing to {install_dir}...")
    
    earth_exe = base_dir / "earth_dist" / "earth.exe"
    if not earth_exe.exists():
        print(f"Error: Could not find earth.exe at {earth_exe}")
        input("Press Enter to exit...")
        return

    dest_exe = install_dir / "earth.exe"
    shutil.copy2(earth_exe, dest_exe)

    print("Adding to PATH...")
    try:
        key = winreg.OpenKey(winreg.HKEY_CURRENT_USER, r"Environment", 0, winreg.KEY_ALL_ACCESS)
        try:
            path, _ = winreg.QueryValueEx(key, "Path")
        except WindowsError:
            path = ""
        
        if str(install_dir) not in path:
            new_path = path + ";" + str(install_dir) if path else str(install_dir)
            winreg.SetValueEx(key, "Path", 0, winreg.REG_EXPAND_SZ, new_path)
    except Exception as e:
        print(f"Failed to add to PATH: {e}")

    print("Registering .sl extension...")
    try:
        sl_key = winreg.CreateKey(winreg.HKEY_CURRENT_USER, r"Software\Classes\.sl")
        winreg.SetValueEx(sl_key, "", 0, winreg.REG_SZ, "EarthScript")
        winreg.CloseKey(sl_key)

        prog_key = winreg.CreateKey(winreg.HKEY_CURRENT_USER, r"Software\Classes\EarthScript")
        winreg.SetValueEx(prog_key, "", 0, winreg.REG_SZ, "Earth Script File")
        winreg.CloseKey(prog_key)

        cmd_key = winreg.CreateKey(winreg.HKEY_CURRENT_USER, r"Software\Classes\EarthScript\shell\open\command")
        cmd_str = f'"{dest_exe}" "%1" %*'
        winreg.SetValueEx(cmd_key, "", 0, winreg.REG_SZ, cmd_str)
        winreg.CloseKey(cmd_key)
    except Exception as e:
        print(f"Failed to register extension: {e}")

    try:
        import ctypes
        HWND_BROADCAST = 0xFFFF
        WM_SETTINGCHANGE = 0x001A
        SMTO_ABORTIFHUNG = 0x0002
        result = ctypes.c_long()
        ctypes.windll.user32.SendMessageTimeoutW(HWND_BROADCAST, WM_SETTINGCHANGE, 0, "Environment", SMTO_ABORTIFHUNG, 5000, ctypes.byref(result))
    except:
        pass

    print("Installation Complete! You can now use the 'earth' command globally.")
    input("Press Enter to exit...")

if __name__ == "__main__":
    main()
