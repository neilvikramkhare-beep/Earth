import sys
import io
import ast
import builtins
import traceback
from tkinter import *
from tkinter import ttk, font, filedialog, messagebox
from tkinter.scrolledtext import ScrolledText
from threading import Thread
import os

# Add these methods to the CompilerApp class
# =============================================================================
# Custom output redirector
# =============================================================================
class OutputRedirector:
    def __init__(self, text_widget, color="white"):
        self.text_widget = text_widget
        self.color = color

    def write(self, string):
        if string.strip():
            self.text_widget.insert(END, string, ("output",))
            self.text_widget.see(END)

    def flush(self):
        pass


# =============================================================================
# Highlighter Syntax (minimal but functional)
# =============================================================================
class SyntaxHighlighter:
    def __init__(self, text_widget):
        self.text_widget = text_widget
        self.keywords = {
            "define", "return", "print", "if", "else", "elif", "for", "while",
            "in", "def", "import", "from", "class", "True", "False", "None",
            "and", "or", "not", "is", "lambda", "global", "nonlocal", "try",
            "except", "finally", "raise", "with", "as", "pass", "break",
            "continue", "assert", "yield", "del"
        }
        self.setup_tags()

    def setup_tags(self):
        self.text_widget.tag_configure("keyword", foreground="#FF79C6")
        self.text_widget.tag_configure("function", foreground="#50FA7B")
        self.text_widget.tag_configure("string", foreground="#F1FA8C")
        self.text_widget.tag_configure("comment", foreground="#6272A4")
        self.text_widget.tag_configure("number", foreground="#BD93F9")
        self.text_widget.tag_configure("operator", foreground="#FFB86C")

    def highlight(self, event=None):
        self.text_widget.tag_remove("keyword", "1.0", END)
        self.text_widget.tag_remove("function", "1.0", END)
        self.text_widget.tag_remove("string", "1.0", END)
        self.text_widget.tag_remove("comment", "1.0", END)
        self.text_widget.tag_remove("number", "1.0", END)
        self.text_widget.tag_remove("operator", "1.0", END)

        content = self.text_widget.get("1.0", END)
        # crude but effective
        for line_idx, line in enumerate(content.split("\n")):
            if line.strip().startswith("#"):
                self.text_widget.tag_add("comment", f"{line_idx+1}.0", f"{line_idx+1}.{len(line)}")
                continue

            # highlight strings
            in_string = False
            for i, ch in enumerate(line):
                if ch in ('"', "'"):
                    if not in_string:
                        start = i
                        in_string = True
                    else:
                        self.text_widget.tag_add("string", f"{line_idx+1}.{start}", f"{line_idx+1}.{i+1}")
                        in_string = False

            # numbers and keywords
            words = line.split()
            idx = 0
            for w in words:
                start = line.find(w, idx)
                if start == -1:
                    continue
                end = start + len(w)
                if w in self.keywords:
                    self.text_widget.tag_add("keyword", f"{line_idx+1}.{start}", f"{line_idx+1}.{end}")
                elif w.lstrip('-').replace('.','',1).isdigit():
                    self.text_widget.tag_add("number", f"{line_idx+1}.{start}", f"{line_idx+1}.{end}")
                elif w.endswith('(') and w[:-1].isidentifier():
                    self.text_widget.tag_add("function", f"{line_idx+1}.{start}", f"{line_idx+1}.{end}")
                idx = start + len(w)


# =============================================================================
# Custom Python Interpreter that supports 'define' syntax
# =============================================================================
class CustomInterpreter:
    """Simulates execution of code that uses 'define' (function definition)."""

    def __init__(self):
        self.globals = {}
        self.locals = {}

    def translate_define(self, code):
        """Replace 'define foo(args): ...' with 'def foo(args): ...'."""
        lines = code.splitlines()
        new_lines = []
        for line in lines:
            stripped = line.lstrip()
            if stripped.startswith("define "):
                indent = line[:len(line)-len(stripped)]
                rest = stripped[6:]  # after 'define '
                # find the colon
                if ':' in rest:
                    def_part, body_part = rest.split(':', 1)
                    new_line = f"{indent}def {def_part}:{body_part}"
                    new_lines.append(new_line)
                else:
                    new_lines.append(line)  # keep original if malformed
            else:
                new_lines.append(line)
        return "\n".join(new_lines)

    def execute(self, code):
        """Execute custom code with 'define' support."""
        translated = self.translate_define(code)
        # Capture output
        old_stdout = sys.stdout
        stdout_capture = io.StringIO()
        sys.stdout = stdout_capture
        try:
            exec(translated, self.globals, self.locals)
            output = stdout_capture.getvalue()
        except Exception as e:
            output = stdout_capture.getvalue()
            output += traceback.format_exc()
        finally:
            sys.stdout = old_stdout
        return output


# =============================================================================
# Main Compiler GUI
# =============================================================================
class CompilerApp:
    def __init__(self, root):
        self.root = root
        self.root.title("Python Compiler - Online Style")
        self.root.geometry("1200x700")
        self.root.configure(bg="#282A36")  # Dracula theme

        self.interpreter = CustomInterpreter()

        # Setup UI
        self.create_menu()
        self.create_main_panes()
        self.setup_fonts()
        self.setup_default_code()
        self.load_script_sl()

        # Bind events
        self.editor.bind("<KeyRelease>", self.highlight_code)

    def create_menu(self):
        menubar = Menu(self.root, bg="#44475A", fg="white")
        file_menu = Menu(menubar, tearoff=0, bg="#44475A", fg="white")
        file_menu.add_command(label="New", command=self.new_file, accelerator="Ctrl+N")
        file_menu.add_command(label="Open Python File", command=self.open_file, accelerator="Ctrl+O")
        file_menu.add_command(label="Open Script (.sl)", command=self.open_sl_file, accelerator="Ctrl+Shift+O")
        file_menu.add_command(label="Save as Python", command=self.save_file, accelerator="Ctrl+S")
        file_menu.add_command(label="Save as Script (.sl)", command=self.save_sl_file, accelerator="Ctrl+Shift+S")
        file_menu.add_separator()
        file_menu.add_command(label="Run Script File", command=self.run_sl_file, accelerator="Ctrl+R")
        file_menu.add_separator()
        file_menu.add_command(label="Exit", command=self.root.quit)
        menubar.add_cascade(label="File", menu=file_menu)
        
        run_menu = Menu(menubar, tearoff=0, bg="#44475A", fg="white")
        run_menu.add_command(label="Run Code", command=self.run_code, accelerator="F5")
        run_menu.add_command(label="Clear Output", command=self.clear_output)
        menubar.add_cascade(label="Run", menu=run_menu)
        
        self.root.config(menu=menubar)
        
        # Bind shortcuts
        self.root.bind("<Control-n>", lambda e: self.new_file())
        self.root.bind("<Control-o>", lambda e: self.open_file())
        self.root.bind("<Control-Shift-O>", lambda e: self.open_sl_file())
        self.root.bind("<Control-s>", lambda e: self.save_file())
        self.root.bind("<Control-Shift-S>", lambda e: self.save_sl_file())
        self.root.bind("<Control-r>", lambda e: self.run_sl_file())
        self.root.bind("<F5>", lambda e: self.run_code())

    def create_main_panes(self):
        # Paned window
        main_pane = PanedWindow(self.root, orient=HORIZONTAL, bg="#282A36", sashrelief=RAISED, sashwidth=5)
        main_pane.pack(fill=BOTH, expand=True, padx=5, pady=5)

        # Editor frame
        editor_frame = Frame(main_pane, bg="#282A36")
        main_pane.add(editor_frame, width=600)

        Label(editor_frame, text="📝 Editor", font=("Segoe UI", 12, "bold"), bg="#282A36", fg="#F8F8F2").pack(anchor=W, padx=5, pady=5)
        self.editor = ScrolledText(editor_frame, wrap=WORD, font=("Consolas", 12), bg="#1E1F29", fg="#F8F8F2",
                                   insertbackground="white", relief=FLAT, borderwidth=0)
        self.editor.pack(fill=BOTH, expand=True, padx=5, pady=5)

        self.highlighter = SyntaxHighlighter(self.editor)

        # Output frame
        output_frame = Frame(main_pane, bg="#282A36")
        main_pane.add(output_frame, width=600)

        # Output toolbar
        out_toolbar = Frame(output_frame, bg="#44475A", height=35)
        out_toolbar.pack(fill=X, padx=5, pady=(5,0))
        Label(out_toolbar, text="📤 Output", font=("Segoe UI", 12, "bold"), bg="#44475A", fg="#50FA7B").pack(side=LEFT, padx=5)
        clear_btn = Button(out_toolbar, text="Clear", command=self.clear_output, bg="#FF5555", fg="white",
                           font=("Segoe UI", 9), relief=FLAT, cursor="hand2")
        clear_btn.pack(side=RIGHT, padx=5)

        self.output = ScrolledText(output_frame, wrap=WORD, font=("Consolas", 12), bg="#1E1F29", fg="#F8F8F2",
                                   relief=FLAT, borderwidth=0)
        self.output.pack(fill=BOTH, expand=True, padx=5, pady=5)
        self.output.tag_configure("output", foreground="#F8F8F2")
        self.output.tag_configure("error", foreground="#FF5555")

    def setup_fonts(self):
        self.editor_font = font.Font(family="Consolas", size=12)
        self.output_font = font.Font(family="Consolas", size=12)

    def setup_default_code(self):
        default_code = '''# Welcome to Earth
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
def greet(name):
    print("Hello", name);
import MyFunctions.psm1,interpreter.ps1
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
    return a**b;
print("Power of 2 and 3 is",power(2,3));
define factorial(a):
    return a*factorial(a-1);
print("Factorial of 5 is",factorial(5));
define fibonacci(a):
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
def selectionSort(a):
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
    if len(a)==1:
        return a;
    mid=len(a)/2;
    left=mergeSort(a[:mid]);
    right=mergeSort(a[mid:]);
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
print("Merge sort of [1,2,3,4,5] is",mergeSort([1,2,3,4,5]));
define quickSort(a):
    if len(a)==1:
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
    if len(a)==1:
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
define stackPush(a,b):
    a.append(b);
    return a;
print("Stack push 6 to [1,2,3,4,5] is", stackPush([1,2,3,4,5], 6));
define stackPop(a):
    return a.pop();
print("Stack pop from [1,2,3,4,5] is", stackPop([1,2,3,4,5]));
define stackPeek(a):
    return a[-1];
print("Stack peek of [1,2,3,4,5] is", stackPeek([1,2,3,4,5]));
define stackIsEmpty(a):
    return len(a) == 0;
print("Is stack [1,2,3,4,5] empty?", stackIsEmpty([1,2,3,4,5]));
define stackSize(a):
    return len(a);
print("Size of stack [1,2,3,4,5] is", stackSize([1,2,3,4,5]));
define stackClear(a):
    a.clear();
    return a;
print("Clear stack [1,2,3,4,5] gives", stackClear([1,2,3,4,5]));
define queue(a):
    return a.pop(0);
print("Queue of [1,2,3,4,5] is",queue([1,2,3,4,5]));
define deque(a):
    return a.pop();
print("Deque of [1,2,3,4,5] is",deque([1,2,3,4,5]));
define circularQueue(a):
    return a.pop(0);
print("Circular queue of [1,2,3,4,5] is",circularQueue([1,2,3,4,5]));
define priorityQueue(a):
    return a.pop();
print("Priority queue of [1,2,3,4,5] is",priorityQueue([1,2,3,4,5]));
define graph(a):
    return a.pop(0);
print("Graph of [1,2,3,4,5] is",graph([1,2,3,4,5]));
define tree(a):
    return a.pop();
print("Tree of [1,2,3,4,5] is",tree([1,2,3,4,5]));
define heap(a):
    return a.pop();
print("Heap of [1,2,3,4,5] is",heap([1,2,3,4,5]));
define Trie(a):
    return a.pop();
print("Trie of [1,2,3,4,5] is",Trie([1,2,3,4,5]));
define linkedList(a):
    return a.pop();
print("Linked list of [1,2,3,4,5] is",linkedList([1,2,3,4,5]));
define doublyLinkedList(a):
    return a.pop();
print("Doubly linked list of [1,2,3,4,5] is",doublyLinkedList([1,2,3,4,5]));
define circularLinkedList(a):
    return a.pop();
print("Circular linked list of [1,2,3,4,5] is",circularLinkedList([1,2,3,4,5]));
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
    return l*b;
print("Rectangle of [1,2,3,4,5] is",rectangle([1,2,3,4,5]));
define square(a):
    return a*a;
print("Square of [1,2,3,4,5] is",square([1,2,3,4,5]));
define circle(r):
    return 3.14*r*r;
print("Circle of [1,2,3,4,5] is",circle([1,2,3,4,5]));
define triangle(a,b):
    return 0.5*a*b;
print("Triangle of [1,2,3,4,5] is",triangle([1,2,3,4,5]));
define hexagon(a):
    return 2.598*a*a;
print("Hexagon of [1,2,3,4,5] is",hexagon([1,2,3,4,5]));
define oval(a,b):
    return 3.14*a*b;
print("Oval of [1,2,3,4,5] is",oval([1,2,3,4,5]));
define trapezoid(a,b,h):
    return 0.5*(a+b)*h;
print("Trapezoid of [1,2,3,4,5] is",trapezoid([1,2,3,4,5]));
define rainwaterTrapping(a,b,h):
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
    return a**b;
print("Power of [1,2,3,4,5] is",power([1,2,3,4,5]));
define bitwiseLeftShift(a,b):
    return a<<b;
print("Bitwise Left Shift of [1,2,3,4,5] is",bitwiseLeftShift([1,2,3,4,5]));
define bitwiseRightShift(a,b):
    return a>>b;
print("Bitwise Right Shift of [1,2,3,4,5] is",bitwiseRightShift([1,2,3,4,5]));
define bitwiseAND(a,b):
    return a&b;
print("Bitwise AND of [1,2,3,4,5] is",bitwiseAND([1,2,3,4,5]));
define bitwiseXOR(a,b):
    return a^b;
print("Bitwise XOR of [1,2,3,4,5] is",bitwiseXOR([1,2,3,4,5]));
define bitwiseOR(a,b):
    return a|b;
print("Bitwise OR of [1,2,3,4,5] is",bitwiseOR([1,2,3,4,5]));
define bitwiseNOT(a):
    return ~a;
print("Bitwise NOT of [1,2,3,4,5] is",bitwiseNOT([1,2,3,4,5]));
define bitwiseLeftShiftAssignment(a,b):
    return a<<=b;
print("Bitwise Left Shift Assignment of [1,2,3,4,5] is",bitwiseLeftShiftAssignment([1,2,3,4,5]));
define bitwiseRightShiftAssignment(a,b):
    return a>>=b;
print("Bitwise Right Shift Assignment of [1,2,3,4,5] is",bitwiseRightShiftAssignment([1,2,3,4,5]));
define bitwiseANDAssignment(a,b):
    return a&=b;
print("Bitwise AND Assignment of [1,2,3,4,5] is",bitwiseANDAssignment([1,2,3,4,5]));
define bitwiseXORAssignment(a,b):
    return a^=b;
print("Bitwise XOR Assignment of [1,2,3,4,5] is",bitwiseXORAssignment([1,2,3,4,5]));
define bitwiseORAssignment(a,b):
    return a|=b;
print("Bitwise OR Assignment of [1,2,3,4,5] is",bitwiseORAssignment([1,2,3,4,5]));
define bitwise NOTAssignment(a):
    return ~a;
print("Bitwise NOT Assignment of [1,2,3,4,5] is",bitwiseNOTAssignment([1,2,3,4,5]));
define logicalAND(a,b):
    return a&&b;
print("Logical AND of [1,2,3,4,5] is",logicalAND([1,2,3,4,5]));
define logicalOR(a,b):
    return a||b;
print("Logical OR of [1,2,3,4,5] is",logicalOR([1,2,3,4,5]));
define logicalNOT(a):
    return !a;
print("Logical NOT of [1,2,3,4,5] is",logicalNOT([1,2,3,4,5]));
define ternaryOperator(a,b,c):
    return a?b:c;
print("Ternary Operator of [1,2,3,4,5] is",ternaryOperator([1,2,3,4,5]));
define sizeof(a):
    return len(a);
print("Sizeof of [1,2,3,4,5] is",sizeof([1,2,3,4,5]));
define typeOf(a):
    return type(a);
print("Type of [1,2,3,4,5] is",typeOf([1,2,3,4,5]));
define instanceof(a,b):
    return isinstance(a,b);
print("Instanceof of [1,2,3,4,5] is",instanceof([1,2,3,4,5]));
define isOperator(a):
    return a in {"+","-","*","/","%","<<",">>","&","|","^","~","<<=",">=","&=","|=","^=","!", "?"};
print("Is Operator of [1,2,3,4,5] is",isOperator([1,2,3,4,5]));
define isKeyword(a):
    return a in {"define","return","print","if","else","for","while","in","out","def","export","import","class","struct","enum","union","namespace","try","catch","finally","throw","yield","await","async","let","const","var","with","as","from","del","global","nonlocal","lambda","lambda","lambda"};
print("Is Keyword of [1,2,3,4,5] is",isKeyword([1,2,3,4,5]));
define isIdentifier(a):
    return a.isalpha();
print("Is Identifier of [1,2,3,4,5] is",isIdentifier([1,2,3,4,5]));
define isNumber(a):
    return a.isdigit();
print("Is Number of [1,2,3,4,5] is",isNumber([1,2,3,4,5]));
define isString(a):
    return a.isprintable();
print("Is String of [1,2,3,4,5] is",isString([1,2,3,4,5]));
define isBoolean(a):
    return a in {True,False};
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
    return isinstance(a,array);
print("Is Array of [1,2,3,4,5] is",isArray([1,2,3,4,5]));
define isMap(a):
    return isinstance(a,map);
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
    return isinstance(a,array);
print("Is Array of [1,2,3,4,5] is",isArray([1,2,3,4,5]));
define isMap(a):
    return isinstance(a,map);
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
    return isinstance(a,array);
print("Is Array of [1,2,3,4,5] is",isArray([1,2,3,4,5]));
define isMap(a):
    return isinstance(a,map);
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
    return isinstance(a,array);
print("Is Array of [1,2,3,4,5] is",isArray([1,2,3,4,5]));
define isMap(a):
    return isinstance(a,map);
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
    return isinstance(a,array);
print("Is Array of [1,2,3,4,5] is",isArray([1,2,3,4,5]));
define isMap(a):
    return isinstance(a,map);
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
    return isinstance(a,array);
print("Is Array of [1,2,3,4,5] is",isArray([1,2,3,4,5]));
define isMap(a):
    return isinstance(a,map);
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
    return isinstance(a,array);
print("Is Array of [1,2,3,4,5] is",isArray([1,2,3,4,5]));
define isMap(a):
    return isinstance(a,map);
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
define global():
    global_var = 10;
print("Global is",global());
define local():
    local_var = 20;
print("Local is",local());
define globalMax():
    return max(global_var);
print("Global Max is",globalMax());
define globalMin():
    return min(global_var);
print("Global Min is",globalMin());
define localMax():
    return max(local_var);
print("Local Max is",localMax());
define localMin():
    return min(local_var);
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
        pass
    child_obj = Child()
    return child_obj.display()
print("Single Inheritance is",singleInheritance());
define multipleInheritance():
    class Parent1:
        def display(self):
            return "Parent1 Property"
    class Parent2:
        def display(self):
            return "Parent2 Property"
    class Child(Parent1, Parent2):
        pass
    child_obj = Child()
    return child_obj.display()
print("Multiple Inheritance is",multipleInheritance());
define multilevelInheritance():
    class Parent:
        def display(self):
            return "Parent Property"
    class Child(Parent):
        pass
    class Grandchild(Child):
        pass
    grandchild_obj = Grandchild()
    return grandchild_obj.display()
print("Multilevel Inheritance is",multilevelInheritance());
define hybridInheritance():
    class Parent1:
        def display(self):
            return "Parent1 Property"
    class Parent2:
        def display(self):
            return "Parent2 Property"
    class Child(Parent1, Parent2):
        pass
    child_obj = Child()
    return child_obj.display()
print("Hybrid Inheritance is",hybridInheritance());
define hierarchicalInheritance():
    class Parent:
        def display(self):
            return "Parent Property"
    class Child(Parent):
        pass
    class Grandchild(Parent):
        pass
    child_obj = Child()
    grandchild_obj = Grandchild()
    return child_obj.display(), grandchild_obj.display()
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
define methodOverloading():
    pass
print("Method Overloading is",methodOverloading());
define methodOverriding():
    pass
print("Method Overriding is",methodOverriding());
define operatorOverloading():
    pass
print("Operator Overloading is",operatorOverloading());
define virtualFunction():
    pass
print("Virtual Function is",virtualFunction());
define abstractMethod():
    pass
print("Abstract Method is",abstractMethod());
define duckTyping():
    pass
print("Duck Typing is",duckTyping());
define statictyping():
    pass
print("Static Typing is",statictyping());
define dynamictyping():
    pass
print("Dynamic Typing is",dynamictyping());
define strongtyping():
    pass
print("Strong Typing is",strongtyping());
define weaktyping():
    pass
print("Weak Typing is",weaktyping());
define importSystem():
    import os
    return os.getcwd()
    import math
    import sys
    import platform
    import time
    import random
    import re
    import json
    import xml.etree.ElementTree as ET
    import csv
    import requests
    import numpy
    import pandas
    import matplotlib
    import seaborn
    import scipy
    import sklearn
    import tensorflow
    import torch
    import keras
    import fastai
    import pytorch
    import pytorch-lightning
    import xgboost
    import lightgbm
    import catboost
    import statsmodels
    import scikit-learn
    import numpy-financial
    import flask
    import django
    import fastapi
    import pyramid
    import bottle
    import tornado
    import cherrypy
    import sqlite3
    import sqlalchemy
    import bs4
    import urllib
    import socket
    import datetime
    import collections
    import itertools
    import functools
    import asyncio
    import threading
    import multiprocessing
    import subprocess
    import argparse
    import logging
    import pathlib
    import typing
    import pytest
    import unittest
    import pydantic
    import celery
    import redis
    import pyspark
    import nltk
    import spacy
    import opencv-python
    import pillow
print("Import System is",importSystem());
define moduleSystem():
    import Flask
    return Flask.run()
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
    import Flask.package
    return Flask.package.run()
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
define namespaceSystem():
    pass
print("Namespace System is",namespaceSystem());
define scopeSystem():
    pass
print("Scope System is",scopeSystem());
define stackSystem():
    pass
print("Stack System is",stackSystem());
define heapSystem():
    pass
print("Heap System is",heapSystem());
define garbageCollection():
    pass
print("Garbage Collection is",garbageCollection());
define memoryManagement():
    pass
print("Memory Management is",memoryManagement());
define processManagement():
    pass
print("Process Management is",processManagement());
define threadManagement():
    pass
print("Thread Management is",threadManagement());
define concurrency():
    pass
print("Concurrency is",concurrency());
define parallelism():
    pass
print("Parallelism is",parallelism());
define async():
    pass
print("Async is",async());
define await():
    pass
print("Await is",await());
define interprocessCommunication():
    pass
print("Interprocess Communication is",interprocessCommunication());
define multiprocessCommunication():
    pass
print("Multiprocess Communication is",multiprocessCommunication());
define networkCommunication():
    pass
print("Network Communication is",networkCommunication());
define remoteProcedureCall():
    pass
print("Remote Procedure Call is",remoteProcedureCall());
define distributedSystem():
    pass
print("Distributed System is",distributedSystem());
define clusterComputing():
    pass
print("Cluster Computing is",clusterComputing());
define gridComputing():
    pass
print("Grid Computing is",gridComputing());
define cloudComputing():
    pass
print("Cloud Computing is",cloudComputing());
define blockchain():
    pass
print("Blockchain is",blockchain());
define machineLearning():
    pass
print("Machine Learning is",machineLearning());
define deepLearning():
    pass
print("Deep Learning is",deepLearning());
define neuralNetwork():
    pass
print("Neural Network is",neuralNetwork());
define computerGraphics():
    pass
print("Computer Graphics is",computerGraphics());
define virtualReality():
    pass
print("Virtual Reality is",virtualReality());
define augmentedReality():
    pass
print("Augmented Reality is",augmentedReality());
define fetch():
    import requests
    return requests.get("https://www.google.com").status_code
print("Fetch is",fetch());
define ceiling(x):
    return math.ceil(x)
print("Ceiling is",ceiling(1));
define floor(x):
    return math.floor(x)
print("Floor is",floor(1));
define round(x):
    return math.round(x)
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
define cubicRoot(x)
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
'''
        self.editor.insert("1.0", default_code)

    def load_script_sl(self):
        script_path = os.path.join(os.path.dirname(__file__), "script.sl")
        if os.path.exists(script_path):
            try:
                with open(script_path, "r", encoding="utf-8") as f:
                    content = f.read()
                self.editor.delete("1.0", END)
                self.editor.insert("1.0", content)
                self.highlight_code()
                self.current_file = script_path
                self.root.title(f"Python Compiler - {os.path.basename(script_path)}")
            except Exception as e:
                messagebox.showerror("Error", f"Cannot load script.sl:\n{e}")

    def highlight_code(self, event=None):
        self.highlighter.highlight()

    def clear_output(self):
        self.output.delete("1.0", END)

    def run_code(self):
        code = self.editor.get("1.0", END)
        self.clear_output()
        # Redirect output to widget
        old_stdout = sys.stdout
        sys.stdout = OutputRedirector(self.output, "white")
        try:
            # Execute the code in a separate thread to avoid GUI freeze
            def execute():
                out = self.interpreter.execute(code)
                if out:
                    self.output.insert(END, out, ("output",))
                    self.output.see(END)
            Thread(target=execute, daemon=True).start()
        except Exception as e:
            self.output.insert(END, traceback.format_exc(), ("error",))
        finally:
            sys.stdout = old_stdout

    def new_file(self):
        self.editor.delete("1.0", END)
        self.clear_output()

    def open_file(self):
        filepath = filedialog.askopenfilename(filetypes=[("Python Files", "*.py"), ("All Files", "*.*")])
        if filepath:
            try:
                with open(filepath, "r", encoding="utf-8") as f:
                    content = f.read()
                self.editor.delete("1.0", END)
                self.editor.insert("1.0", content)
                self.highlight_code()
            except Exception as e:
                messagebox.showerror("Error", f"Cannot open file:\n{e}")

    def save_file(self):
        filepath = filedialog.asksaveasfilename(defaultextension=".py", filetypes=[("Python Files", "*.py"), ("All Files", "*.*")])
        if filepath:
            try:
                content = self.editor.get("1.0", END)
                with open(filepath, "w", encoding="utf-8") as f:
                    f.write(content)
                messagebox.showinfo("Info", "File saved successfully!")
            except Exception as e:
                messagebox.showerror("Error", f"Cannot save file:\n{e}")
    # Add these methods to the CompilerApp class

    def open_sl_file(self):
        """Open .sl script files"""
        filepath = filedialog.askopenfilename(filetypes=[("Script Files", "*.sl"), ("All Files", "*.*")])
        if filepath:
            try:
                with open(filepath, "r", encoding="utf-8") as f:
                    content = f.read()
                self.editor.delete("1.0", END)
                self.editor.insert("1.0", content)
                self.current_file = filepath
                self.highlight_code()
                self.root.title(f"Python Compiler - {filepath}")
            except Exception as e:
                messagebox.showerror("Error", f"Cannot open file:\n{e}")

    def save_sl_file(self):
        """Save as .sl script file"""
        if hasattr(self, 'current_file') and self.current_file:
            filepath = self.current_file
        else:
            filepath = filedialog.asksaveasfilename(
                defaultextension=".sl", 
                filetypes=[("Script Files", "*.sl"), ("All Files", "*.*")]
            )
        if filepath:
            try:
                content = self.editor.get("1.0", END)
                with open(filepath, "w", encoding="utf-8") as f:
                    f.write(content)
                self.current_file = filepath
                self.root.title(f"Python Compiler - {filepath}")
                messagebox.showinfo("Info", "File saved successfully!")
            except Exception as e:
                messagebox.showerror("Error", f"Cannot save file:\n{e}")

    def run_sl_file(self):
        """Execute a .sl file directly"""
        filepath = filedialog.askopenfilename(filetypes=[("Script Files", "*.sl"), ("All Files", "*.*")])
        if filepath:
            try:
                with open(filepath, "r", encoding="utf-8") as f:
                    content = f.read()
                self.editor.delete("1.0", END)
                self.editor.insert("1.0", content)
                self.current_file = filepath
                self.highlight_code()
                self.run_code()  # Auto-run after loading
            except Exception as e:
                messagebox.showerror("Error", f"Cannot run script:\n{e}")


# =============================================================================
# Main entry point
# =============================================================================
if __name__ == "__main__":
    root = Tk()
    app = CompilerApp(root)
    root.mainloop()
