# Global Installation Commands for Earth Language

This document provides the exact terminal commands required to install the Earth Language VS Code Extension (`earth-language-1.0.0.vsix`) and the Antigravity Plugin (`Earth_AGY`) across all operating systems and platforms.

---

## 1. Windows

**VS Code:**
```powershell
code --install-extension earth-language-1.0.0.vsix
```

**Antigravity:**
```powershell
Copy-Item -Path ".\Earth_AGY" -Destination "$env:USERPROFILE\.gemini\config\plugins\" -Recurse -Force
```

---

## 2. macOS (Apple Desktop/Laptop)

**VS Code:**
```bash
code --install-extension earth-language-1.0.0.vsix
```

**Antigravity:**
```bash
cp -r ./Earth_AGY ~/.gemini/config/plugins/
```

---

## 3. Unix / Linux OS (Ubuntu, Debian, Fedora, Arch, CentOS, etc.)

**VS Code:**
```bash
code --install-extension earth-language-1.0.0.vsix
```
*(If you are using the open-source VSCodium version, replace `code` with `codium`)*

**Antigravity:**
```bash
cp -r ./Earth_AGY ~/.gemini/config/plugins/
```

---

## 4. Android

*Note: Android does not run the native desktop version of VS Code. Developers typically use a terminal emulator like **Termux** running `code-server` (VS Code accessed through the mobile browser).*

**VS Code (via Termux & code-server):**
```bash
code-server --install-extension earth-language-1.0.0.vsix
```

**Antigravity (via Termux):**
```bash
cp -r ./Earth_AGY ~/.gemini/config/plugins/
```

---

## 5. iOS / iPadOS

*Note: Apple's iOS/iPadOS strictly restricts native terminal executions and does not have a native VS Code app. Developers code on iOS using SSH (like Blink Shell) to a remote server or by using Cloud IDEs (like GitHub Codespaces).*

**VS Code (via SSH or Cloud IDE running on iPad/iPhone):**
```bash
code --install-extension earth-language-1.0.0.vsix
```

---

## 6. Android Studio (and IntelliJ IDEA products)

*Important: Android Studio is built on the JetBrains/IntelliJ framework, not the VS Code framework. It uses `.zip` or `.jar` plugins, so it cannot natively install `.vsix` files.*

To fully support Android Studio in the future, a separate IntelliJ Plugin must be compiled using Kotlin/Java. However, you can register the `.sl` extension as a recognizable file type inside Android Studio:
1. Open Android Studio -> Settings -> Editor -> File Types.
2. Under "Recognized File Types", select "Text".
3. Add `*.sl`, `*.eh`, `*.et`, and `*.eth` to the File Name Patterns.

---

## 7. Chrome OS (Chromebooks)

*Note: Chrome OS uses a Linux container (Crostini) to run developer tools.*

**VS Code:**
```bash
code --install-extension earth-language-1.0.0.vsix
```

**Antigravity:**
```bash
cp -r ./Earth_AGY ~/.gemini/config/plugins/
```

---

## 8. FreeBSD / OpenBSD / Other BSDs

**VS Code:**
```bash
code --install-extension earth-language-1.0.0.vsix
```

**Antigravity:**
```bash
cp -r ./Earth_AGY ~/.gemini/config/plugins/
```
