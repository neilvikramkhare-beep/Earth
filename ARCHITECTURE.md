# Earth Ecosystem Architecture: The "One Language, One File" Standard

## Mandatory Project Directive

All future modifications, enhancements, bug fixes, and feature additions in this repository **MUST** adhere to the **One Language, One File Method**:

For any given programming language used or supported in this ecosystem, all backend code, runtime execution logic, tools, algorithms, and services are consolidated into that single dedicated file.

---

### Language-to-File Mapping

| Language | Dedicated Master File | Scope & Contents |
| :--- | :--- | :--- |
| **Python** | `backend.py` | Compiler, AST transpiler, `epip` package manager, IDE, FastAPI & HTTP server, algorithms suite, audit engine, security monitor, CLI dispatcher |
| **Earth Language (.sl)** | `backend.sl` | Native Earth standard library, servers, multi-paradigm interfaces (LINQ, Mixins, WaitGroups, DI, KB), database connectors, and algorithms |
| **Earth Language (.et)** | `backend.et` | Native Earth `.et` HTTP REST server, API routes, database connectors, and verified execution handlers |
| **Windows Batch** | `backend.bat` | Command-line dispatching, compilation, server launch, environment PATH configuration, and file associations |
| **PowerShell** | `backend.ps1` | PowerShell execution automation, compiler commands, and service controllers |
| **HTML / Web UI** | `backend.html` | Unified frontend web dashboard, interactive Earth code sandbox, API explorer, and server telemetry |
| **C#** | `backend.cs` | LINQ queries (`EnumerableWrapper`), DI container, and native C# HTTP service |
| **Java** | `backend.java` | Spring-style DI container (`DIContainer`), autowire reflection, and Java HTTP server |
| **Go** | `backend.go` | Goroutines, `EarthWaitGroup`, `DeferStack`, and Go HTTP API server |
| **Ruby** | `backend.rb` | Ruby Mixins (`EarthLoggerMixin`), yield block execution (`earth_times`), and WEBrick server |
| **PHP** | `backend.php` | Superglobals simulation, session manager, and REST API router |
| **Haskell** | `backend.hs` | Functional `Functor`, `Monoid`, and pure data pipelines |
| **Prolog** | `backend.pl` | Logic engine, dynamic knowledge base, facts, and query predicates |
| **JavaScript / Node.js** | `backend.js` | Node.js HTTP router, execution dispatcher, and JSON API handlers |
| **C++** | `backend.cpp` | Native pointer operations, memory management, and high-performance algorithms |

---

### Rule for Future Updates

1. **Do not create fragmented one-off scripts** for individual features or bug fixes.
2. When extending Python capabilities, integrate them directly into [`backend.py`](file:///c:/Users/Admin/Desktop/Earth/backend.py).
3. When extending Earth language capabilities, integrate them directly into [`backend.sl`](file:///c:/Users/Admin/Desktop/Earth/backend.sl) (or [`backend.et`](file:///c:/Users/Admin/Desktop/Earth/backend.et)).
4. When extending any other target language, integrate directly into its corresponding `backend.<ext>` file.
5. Always run `python audit.py` or `python backend.py audit` to ensure 100% ecosystem compliance.
