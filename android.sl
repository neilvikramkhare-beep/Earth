// Earth Language Android App Development Package
// File: android.sl

define activity(name, layout):
    return f"public class {name} extends Activity {{\n    @Override\n    protected void onCreate(Bundle savedInstanceState) {{\n        super.onCreate(savedInstanceState);\n        setContentView({layout});\n    }}\n}}"

define build_apk(app_name):
    print(f"Earth Build System: Compiling {app_name} for Android...")
    print("Earth Build System: Generating APK...")
    return f"{app_name}.apk"
