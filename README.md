# Earth Programming Language

A custom, Python-like programming language.

## Cross-Platform Installation

The Earth language has been packaged so that it can be installed and executed natively across virtually every computing environment, including:
- **Desktop & Server OS**: Windows, macOS, Linux (Ubuntu, Debian, Fedora, Arch, BlackArch, Kali, etc.)
- **Mobile OS**: Android OS (via Termux, Pydroid), iOS (via a-Shell, Pyto, Pythonista)
- **Advanced OS Architectures**: Multitasking OS, Multiprogramming OS, and Batch OS (e.g., IBM z/OS via Python ports)
- **Shells**: PowerShell, Command Prompt, Bash, Zsh, Fish, etc.

### Prerequisites
- Python 3.6 or higher installed on your system.

### Installation Commands for All Operating Systems

Navigate to the directory containing the Earth language source code, then run the specific command for your operating system.

*(Note for Linux users on modern distros like Ubuntu 23.04+, Arch, or Fedora: If you encounter a "PEP 668 externally-managed-environment" error, simply append `--user` or `--break-system-packages` to your pip command, e.g., `pip install --user .` or `pip install --break-system-packages .`)*

#### 🪟 Windows (Multitasking OS)
**Command Prompt (cmd.exe) & PowerShell:**
```cmd
pip install .
```

#### 🍏 macOS (Multitasking OS)
**Terminal (Bash / Zsh):**
```bash
pip3 install .
```

#### 🐧 Linux Distributions (Multitasking & Multiprogramming OS)

**Ubuntu / Debian / Linux Mint / Pop!_OS (APT):**
```bash
sudo apt update && sudo apt install python3-pip -y
pip3 install --user .
```

**Kali Linux / Parrot OS (Debian Security Distros):**
```bash
sudo apt update && sudo apt install python3-pip -y
pip3 install --break-system-packages .
```

**Fedora / RHEL / CentOS / Rocky Linux (DNF/YUM):**
```bash
sudo dnf install python3-pip -y
pip3 install --user .
```

**Arch Linux / BlackArch Linux / Manjaro / EndeavourOS (Pacman):**
```bash
sudo pacman -S python-pip
pip install --break-system-packages .
```

**openSUSE (Zypper):**
```bash
sudo zypper install python3-pip
pip3 install --user .
```

**Alpine Linux:**
```bash
apk add py3-pip
pip3 install .
```

**Gentoo Linux (Portage):**
```bash
emerge dev-python/pip
pip install --user .
```

**Void Linux (XBPS):**
```bash
sudo xbps-install -Su python3-pip
pip3 install --user .
```

#### 📱 Mobile Operating Systems
**Android OS (via Termux):**
```bash
pkg update && pkg install python -y
pip install .
```

**iOS (via a-Shell or Carnets app):**
*Open the app's terminal, navigate to the folder, and run:*
```bash
pip install .
```

#### 🐉 Unix & BSD Systems
**FreeBSD:**
```bash
sudo pkg install py39-pip
pip install --user .
```

**OpenBSD:**
```bash
sudo pkg_add py3-pip
pip3 install --user .
```

**NetBSD:**
```bash
sudo pkgin install py310-pip
pip install --user .
```

#### 🖥️ Mainframes & Batch OS
**IBM z/OS (Batch Environment):**
*Assuming IBM Open Enterprise SDK for Python is installed, submit via Unix System Services (USS) or a BPXBATCH job:*
```sh
pip3 install .
```

#### 🌐 ChromeOS
**Crostini Linux Terminal:**
```bash
sudo apt install python3-pip
pip3 install --user .
```

### Usage

Once installed, you can run Earth scripts globally from anywhere using the new `earth` command! The compiler natively supports both `.sl` and `.et` extensions, and they can be used entirely interchangeably worldwide.

```bash
earth <filename>.sl
# or
earth <filename>.et
```

This acts as a universal executable wrapper created dynamically by Python's setuptools, making it seamlessly compatible with all operating systems and versions without needing separate shell script wrappers.

## 🏛️ One Language, One File Architecture

To maintain a clean, maintainable, and unified codebase, all subsystems and future additions follow the **One Language, One File** standard:

- **Python**: [`backend.py`](file:///c:/Users/Admin/Desktop/Earth/backend.py)
- **Earth Language (.sl)**: [`backend.sl`](file:///c:/Users/Admin/Desktop/Earth/backend.sl)
- **Earth Language (.et)**: [`backend.et`](file:///c:/Users/Admin/Desktop/Earth/backend.et)
- **Windows Batch**: [`backend.bat`](file:///c:/Users/Admin/Desktop/Earth/backend.bat)
- **PowerShell**: [`backend.ps1`](file:///c:/Users/Admin/Desktop/Earth/backend.ps1)
- **Web UI & Dashboard**: [`backend.html`](file:///c:/Users/Admin/Desktop/Earth/backend.html)
- **C#**: [`backend.cs`](file:///c:/Users/Admin/Desktop/Earth/backend.cs)
- **Java**: [`backend.java`](file:///c:/Users/Admin/Desktop/Earth/backend.java)
- **Go**: [`backend.go`](file:///c:/Users/Admin/Desktop/Earth/backend.go)
- **Ruby**: [`backend.rb`](file:///c:/Users/Admin/Desktop/Earth/backend.rb)
- **PHP**: [`backend.php`](file:///c:/Users/Admin/Desktop/Earth/backend.php)
- **Haskell**: [`backend.hs`](file:///c:/Users/Admin/Desktop/Earth/backend.hs)
- **Prolog**: [`backend.pl`](file:///c:/Users/Admin/Desktop/Earth/backend.pl)
- **JavaScript**: [`backend.js`](file:///c:/Users/Admin/Desktop/Earth/backend.js)
- **C++**: [`backend.cpp`](file:///c:/Users/Admin/Desktop/Earth/backend.cpp)

All future updates and features across any language must be added directly into that language's single dedicated backend file.

