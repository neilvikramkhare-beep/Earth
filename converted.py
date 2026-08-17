# print("Welcome to Earth")
# input_val = input("Enter your name: ")
# print("Hello", input_val)
# if "-" in input_val:
#     print("Hello boss")
# else:
#     print("Sorry , you are not boss")
# for i in range(name):
#     print(i)
# else:
#     print("Loop finished")
# def greet(name):
#     print("Hello", name)
# # ignored import: import MyFunctions.psm1,interpreter.ps1
# def main():
#     print("Main function")
# main()
def addition(a,b):
    return a+b
def subraction(a,b):
    return a-b
def multiplication(a,b):
    return a*b
def division(a,b):
    return a/b
# print("Addition of 2 and 3 is",addition(2,3))
# print("Subtraction of 2 and 3 is",subraction(2,3))
# print("Multiplication of 2 and 3 is",multiplication(2,3))
# print("Division of 2 and 3 is",division(2,3))
def power(a,b):
    return a**b
# print("Power of 2 and 3 is",power(2,3))
def factorial(a):
    return a*factorial(a-1)
# print("Factorial of 5 is",factorial(5))
def fibonacci(a):
    return fibonacci(a-1)+fibonacci(a-2)
# print("Fibonacci of 5 is",fibonacci(5))
def isPrime(a):
    for i in range(2,a):
        if a%i==0:
            return False
    return True
# print("Is 5 prime?",isPrime(5))
def binarySearch(a,b):
    if a[len(a)/2]==b:
        return True
    elif a[len(a)/2]>b:
        return binarySearch(a[:len(a)/2],b)
    else:
        return binarySearch(a[len(a)/2:],b)
# print("Binary search of 5 in [1,2,3,4,5] is",binarySearch([1,2,3,4,5],5))
def bubbleSort(a):
    for i in range(len(a)):
        for j in range(len(a)-i-1):
            if a[j]>a[j+1]:
                a[j],a[j+1]=a[j+1],a[j]
    return a
# print("Bubble sort of [1,2,3,4,5] is",bubbleSort([1,2,3,4,5]))
def selectionSort(a):
    for i in range(len(a)):
        min_idx=i
        for j in range(i+1,len(a)):
            if a[j]<a[min_idx]:
                min_idx=j
        a[i],a[min_idx]=a[min_idx],a[i]
    return a
# print("Selection sort of [1,2,3,4,5] is",selectionSort([1,2,3,4,5]))
def radixSort(a):
    for i in range(len(a)):
        for j in range(len(a)-i-1):
            if a[j]>a[j+1]:
                a[j],a[j+1]=a[j+1],a[j]
    return a
# print("Radix sort of [1,2,3,4,5] is",radixSort([1,2,3,4,5]))
def mergeSort(a):
    if len(a)==1:
        return a
    mid=len(a)/2
    left=mergeSort(a[:mid])
    right=mergeSort(a[mid:])
    return merge(left,right)
def merge(left,right):
    result=[]
    while left and right:
        if left[0]<right[0]:
            result.append(left.pop(0))
        else:
            result.append(right.pop(0))
    result.extend(left)
    result.extend(right)
    return result
# print("Merge sort of [1,2,3,4,5] is",mergeSort([1,2,3,4,5]))
def quickSort(a):
    if len(a)==1:
        return a
    pivot=a[len(a)/2]
    left=[x for x in a if x<pivot]
    middle=[x for x in a if x==pivot]
    right=[x for x in a if x>pivot]
    return quickSort(left)+middle+quickSort(right)
# print("Quick sort of [1,2,3,4,5] is",quickSort([1,2,3,4,5]))
def heapSort(a):
    for i in range(len(a)):
        for j in range(len(a)-i-1):
            if a[j]>a[j+1]:
                a[j],a[j+1]=a[j+1],a[j]
    return a
# print("Heap sort of [1,2,3,4,5] is",heapSort([1,2,3,4,5]))
def linearSearch(a,b):
    for i in range(len(a)):
        if a[i]==b:
            return i
    return -1
# print("Linear search of 5 in [1,2,3,4,5] is",linearSearch([1,2,3,4,5],5))
def jumpSearch(a,b):
    for i in range(len(a)):
        if a[i]==b:
            return i
    return -1
# print("Jump search of 5 in [1,2,3,4,5] is",jumpSearch([1,2,3,4,5],5))
def interpolationSearch(a,b):
    for i in range(len(a)):
        if a[i]==b:
            return i
    return -1
# print("Interpolation search of 5 in [1,2,3,4,5] is",interpolationSearch([1,2,3,4,5],5))
def exponentialSearch(a,b):
    for i in range(len(a)):
        if a[i]==b:
            return i
    return -1
# print("Exponential search of 5 in [1,2,3,4,5] is",exponentialSearch([1,2,3,4,5],5))
def binarySearchTree(a):
    if len(a)==1:
        return a
    mid=len(a)/2
    left=binarySearchTree(a[:mid])
    right=binarySearchTree(a[mid:])
    return merge(left,right)
def merge(left,right):
    result=[]
    while left and right:
        if left[0]<right[0]:
            result.append(left.pop(0))
        else:
            result.append(right.pop(0))
    result.extend(left)
    result.extend(right)
    return result
# print("Binary search tree of [1,2,3,4,5] is",binarySearchTree([1,2,3,4,5]))
def linearSearchTree(a,b):
    for i in range(len(a)):
        if a[i]==b:
            return i
    return -1
# print("Linear search tree of 5 in [1,2,3,4,5] is",linearSearchTree([1,2,3,4,5],5))
def linearSearch(a,b):
    for i in range(len(a)):
        if a[i]==b:
            return i
    return -1
# print("Linear search of 5 in [1,2,3,4,5] is",linearSearch([1,2,3,4,5],5))
def stackPush(a,b):
    a.append(b)
    return a
# print("Stack push 6 to [1,2,3,4,5] is", stackPush([1,2,3,4,5], 6))
def stackPop(a):
    return a.pop()
# print("Stack pop from [1,2,3,4,5] is", stackPop([1,2,3,4,5]))
def stackPeek(a):
    return a[-1]
# print("Stack peek of [1,2,3,4,5] is", stackPeek([1,2,3,4,5]))
def stackIsEmpty(a):
    return len(a) == 0
# print("Is stack [1,2,3,4,5] empty?", stackIsEmpty([1,2,3,4,5]))
def stackSize(a):
    return len(a)
# print("Size of stack [1,2,3,4,5] is", stackSize([1,2,3,4,5]))
def stackClear(a):
    a.clear()
    return a
# print("Clear stack [1,2,3,4,5] gives", stackClear([1,2,3,4,5]))
def queue(a):
    return a.pop(0)
# print("Queue of [1,2,3,4,5] is",queue([1,2,3,4,5]))
def deque(a):
    return a.pop()
# print("Deque of [1,2,3,4,5] is",deque([1,2,3,4,5]))
def circularQueue(a):
    return a.pop(0)
# print("Circular queue of [1,2,3,4,5] is",circularQueue([1,2,3,4,5]))
def priorityQueue(a):
    return a.pop()
# print("Priority queue of [1,2,3,4,5] is",priorityQueue([1,2,3,4,5]))
def graph(a):
    return a.pop(0)
# print("Graph of [1,2,3,4,5] is",graph([1,2,3,4,5]))
def tree(a):
    return a.pop()
# print("Tree of [1,2,3,4,5] is",tree([1,2,3,4,5]))
def heap(a):
    return a.pop()
# print("Heap of [1,2,3,4,5] is",heap([1,2,3,4,5]))
def Trie(a):
    return a.pop()
# print("Trie of [1,2,3,4,5] is",Trie([1,2,3,4,5]))
def linkedList(a):
    return a.pop()
# print("Linked list of [1,2,3,4,5] is",linkedList([1,2,3,4,5]))
def doublyLinkedList(a):
    return a.pop()
# print("Doubly linked list of [1,2,3,4,5] is",doublyLinkedList([1,2,3,4,5]))
def circularLinkedList(a):
    return a.pop()
# print("Circular linked list of [1,2,3,4,5] is",circularLinkedList([1,2,3,4,5]))
def polynomialRegression(a,b):
    return a.pop()
# print("Polynomial regression of [1,2,3,4,5] is",polynomialRegression([1,2,3,4,5]))
def multipleLinearRegression(a,b):
    return a.pop()
# print("Multiple linear regression of [1,2,3,4,5] is",multipleLinearRegression([1,2,3,4,5]))
def logisticRegression(a,b):
    return a.pop()
# print("Logistic regression of [1,2,3,4,5] is",logisticRegression([1,2,3,4,5]))
def decisionTree(a,b):
    return a.pop()
# print("Decision tree of [1,2,3,4,5] is",decisionTree([1,2,3,4,5]))
def randomForest(a,b):
    return a.pop()
# print("Random forest of [1,2,3,4,5] is",randomForest([1,2,3,4,5]))
def svm(a,b):
    return a.pop()
# print("SVM of [1,2,3,4,5] is",svm([1,2,3,4,5]))
def naiveBayes(a,b):
    return a.pop()
# print("Naive Bayes of [1,2,3,4,5] is",naiveBayes([1,2,3,4,5]))
def kNearestNeighbors(a,b):
    return a.pop()
# print("K Nearest Neighbors of [1,2,3,4,5] is",kNearestNeighbors([1,2,3,4,5]))
def kMeans(a,b):
    return a.pop()
# print("K Means of [1,2,3,4,5] is",kMeans([1,2,3,4,5]))
def hierachicalClustering(a,b):
    return a.pop()
# print("Hierachical clustering of [1,2,3,4,5] is",hierachicalClustering([1,2,3,4,5]))
def pca(a,b):
    return a.pop()
# print("PCA of [1,2,3,4,5] is",pca([1,2,3,4,5]))
def tsne(a,b):
    return a.pop()
# print("TSNE of [1,2,3,4,5] is",tsne([1,2,3,4,5]))
def dbsCAN(a,b):
    return a.pop()
# print("DBSCAN of [1,2,3,4,5] is",dbsCAN([1,2,3,4,5]))
def gaussianMixtureModel(a,b):
    return a.pop()
# print("Gaussian Mixture Model of [1,2,3,4,5] is",gaussianMixtureModel([1,2,3,4,5]))
def adaboost(a,b):
    return a.pop()
# print("Adaboost of [1,2,3,4,5] is",adaboost([1,2,3,4,5]))
def xgBoost(a,b):
    return a.pop()
# print("XGBoost of [1,2,3,4,5] is",xgBoost([1,2,3,4,5]))
def lightGBM(a,b):
    return a.pop()
# print("LightGBM of [1,2,3,4,5] is",lightGBM([1,2,3,4,5]))
def catBoost(a,b):
    return a.pop()
# print("CatBoost of [1,2,3,4,5] is",catBoost([1,2,3,4,5]))
def neuralNetwork(a,b):
    return a.pop()
# print("Neural Network of [1,2,3,4,5] is",neuralNetwork([1,2,3,4,5]))
def convolutionalNeuralNetwork(a,b):
    return a.pop()
# print("Convolutional Neural Network of [1,2,3,4,5] is",convolutionalNeuralNetwork([1,2,3,4,5]))
def recurrentNeuralNetwork(a,b):
    return a.pop()
# print("Recurrent Neural Network of [1,2,3,4,5] is",recurrentNeuralNetwork([1,2,3,4,5]))
def longShortTermMemory(a,b):
    return a.pop()
# print("Long Short Term Memory of [1,2,3,4,5] is",longShortTermMemory([1,2,3,4,5]))
def transformer(a,b):
    return a.pop()
# print("Transformer of [1,2,3,4,5] is",transformer([1,2,3,4,5]))
def autoencoder(a,b):
    return a.pop()
# print("Autoencoder of [1,2,3,4,5] is",autoencoder([1,2,3,4,5]))
def variationalAutoencoder(a,b):
    return a.pop()
# print("Variational Autoencoder of [1,2,3,4,5] is",variationalAutoencoder([1,2,3,4,5]))
def generativeAdversarialNetwork(a,b):
    return a.pop()
# print("Generative Adversarial Network of [1,2,3,4,5] is",generativeAdversarialNetwork([1,2,3,4,5]))
def reinforcementLearning(a,b):
    return a.pop()
# print("Reinforcement Learning of [1,2,3,4,5] is",reinforcementLearning([1,2,3,4,5]))
def clustering(a,b):
    return a.pop()
# print("Clustering of [1,2,3,4,5] is",clustering([1,2,3,4,5]))
def classification(a,b):
    return a.pop()
# print("Classification of [1,2,3,4,5] is",classification([1,2,3,4,5]))
def regression(a,b):
    return a.pop()
# print("Regression of [1,2,3,4,5] is",regression([1,2,3,4,5]))
def clustering(a,b):
    return a.pop()
# print("Clustering of [1,2,3,4,5] is",clustering([1,2,3,4,5]))
def classification(a,b):
    return a.pop()
# print("Classification of [1,2,3,4,5] is",classification([1,2,3,4,5]))
def regression(a,b):
    return a.pop()
# print("Regression of [1,2,3,4,5] is",regression([1,2,3,4,5]))
def dimensionalityReduction(a,b):
    return a.pop()
# print("Dimensionality reduction of [1,2,3,4,5] is",dimensionalityReduction([1,2,3,4,5]))
def anomalyDetection(a,b):
    return a.pop()
# print("Anomaly detection of [1,2,3,4,5] is",anomalyDetection([1,2,3,4,5]))
def recommendationSystem(a,b):
    return a.pop()
# print("Recommendation system of [1,2,3,4,5] is",recommendationSystem([1,2,3,4,5]))
def timeSeriesAnalysis(a,b):
    return a.pop()
# print("Time series analysis of [1,2,3,4,5] is",timeSeriesAnalysis([1,2,3,4,5]))
def naturalLanguageProcessing(a,b):
    return a.pop()
# print("Natural Language Processing of [1,2,3,4,5] is",naturalLanguageProcessing([1,2,3,4,5]))
def computerVision(a,b):
    return a.pop()
# print("Computer Vision of [1,2,3,4,5] is",computerVision([1,2,3,4,5]))
def speechRecognition(a,b):
    return a.pop()
# print("Speech Recognition of [1,2,3,4,5] is",speechRecognition([1,2,3,4,5]))
def audioAnalysis(a,b):
    return a.pop()
# print("Audio Analysis of [1,2,3,4,5] is",audioAnalysis([1,2,3,4,5]))
def timeSeriesForecasting(a,b):
    return a.pop()
# print("Time Series Forecasting of [1,2,3,4,5] is",timeSeriesForecasting([1,2,3,4,5]))
def reinforcementLearning(a,b):
    return a.pop()
# print("Reinforcement Learning of [1,2,3,4,5] is",reinforcementLearning([1,2,3,4,5]))
def clustering(a,b):
    return a.pop()
# print("Clustering of [1,2,3,4,5] is",clustering([1,2,3,4,5]))
def classification(a,b):
    return a.pop()
# print("Classification of [1,2,3,4,5] is",classification([1,2,3,4,5]))
def regression(a,b):
    return a.pop()
# print("Regression of [1,2,3,4,5] is",regression([1,2,3,4,5]))
def clustering(a,b):
    return a.pop()
# print("Clustering of [1,2,3,4,5] is",clustering([1,2,3,4,5]))
def classification(a,b):
    return a.pop()
# print("Classification of [1,2,3,4,5] is",classification([1,2,3,4,5]))
def regression(a,b):
    return a.pop()
# print("Regression of [1,2,3,4,5] is",regression([1,2,3,4,5]))
def dimensionalityReduction(a,b):
    return a.pop()
# print("Dimensionality reduction of [1,2,3,4,5] is",dimensionalityReduction([1,2,3,4,5]))
def anomalyDetection(a,b):
    return a.pop()
# print("Anomaly detection of [1,2,3,4,5] is",anomalyDetection([1,2,3,4,5]))
def recommendationSystem(a,b):
    return a.pop()
# print("Recommendation system of [1,2,3,4,5] is",recommendationSystem([1,2,3,4,5]))
def timeSeriesAnalysis(a,b):
    return a.pop()
# print("Time series analysis of [1,2,3,4,5] is",timeSeriesAnalysis([1,2,3,4,5]))
def naturalLanguageProcessing(a,b):
    return a.pop()
# print("Natural Language Processing of [1,2,3,4,5] is",naturalLanguageProcessing([1,2,3,4,5]))
def computerVision(a,b):
    return a.pop()
# print("Computer Vision of [1,2,3,4,5] is",computerVision([1,2,3,4,5]))
def speechRecognition(a,b):
    return a.pop()
# print("Speech Recognition of [1,2,3,4,5] is",speechRecognition([1,2,3,4,5]))
def audioAnalysis(a,b):
    return a.pop()
# print("Audio Analysis of [1,2,3,4,5] is",audioAnalysis([1,2,3,4,5]))
def timeSeriesForecasting(a,b):
    return a.pop()
# print("Time Series Forecasting of [1,2,3,4,5] is",timeSeriesForecasting([1,2,3,4,5]))
def deepLearning(a,b):
    return a.pop()
# print("Deep Learning of [1,2,3,4,5] is",deepLearning([1,2,3,4,5]))
def machineLearning(a,b):
    return a.pop()
# print("Machine Learning of [1,2,3,4,5] is",machineLearning([1,2,3,4,5]))
def artificialIntelligence(a,b):
    return a.pop()
# print("Artificial Intelligence of [1,2,3,4,5] is",artificialIntelligence([1,2,3,4,5]))
def dataScience(a,b):
    return a.pop()
# print("Data Science of [1,2,3,4,5] is",dataScience([1,2,3,4,5]))
def bigData(a,b):
    return a.pop()
# print("Big Data of [1,2,3,4,5] is",bigData([1,2,3,4,5]))
def cloudComputing(a,b):
    return a.pop()
# print("Cloud Computing of [1,2,3,4,5] is",cloudComputing([1,2,3,4,5]))
def blockchain(a,b):
    return a.pop()
# print("Blockchain of [1,2,3,4,5] is",blockchain([1,2,3,4,5]))
def internetOfThings(a,b):
    return a.pop()
# print("Internet of Things of [1,2,3,4,5] is",internetOfThings([1,2,3,4,5]))
def cyberSecurity(a,b):
    return a.pop()
# print("Cyber Security of [1,2,3,4,5] is",cyberSecurity([1,2,3,4,5]))
def quantumComputing(a,b):
    return a.pop()
# print("Quantum Computing of [1,2,3,4,5] is",quantumComputing([1,2,3,4,5]))
def nanotechnology(a,b):
    return a.pop()
# print("Nanotechnology of [1,2,3,4,5] is",nanotechnology([1,2,3,4,5]))
def biotechnology(a,b):
    return a.pop()
# print("Biotechnology of [1,2,3,4,5] is",biotechnology([1,2,3,4,5]))
def syntheticBiology(a,b):
    return a.pop()
# print("Synthetic Biology of [1,2,3,4,5] is",syntheticBiology([1,2,3,4,5]))
def geneticEngineering(a,b):
    return a.pop()
# print("Genetic Engineering of [1,2,3,4,5] is",geneticEngineering([1,2,3,4,5]))
def stemCellTherapy(a,b):
    return a.pop()
# print("Stem Cell Therapy of [1,2,3,4,5] is",stemCellTherapy([1,2,3,4,5]))
def immunotherapy(a,b):
    return a.pop()
# print("Immunotherapy of [1,2,3,4,5] is",immunotherapy([1,2,3,4,5]))
def geneTherapy(a,b):
    return a.pop()
# print("Gene Therapy of [1,2,3,4,5] is",geneTherapy([1,2,3,4,5]))
def regenerativeMedicine(a,b):
    return a.pop()
# print("Regenerative Medicine of [1,2,3,4,5] is",regenerativeMedicine([1,2,3,4,5]))
def personalizedMedicine(a,b):
    return a.pop()
# print("Personalized Medicine of [1,2,3,4,5] is",personalizedMedicine([1,2,3,4,5]))
def precisionMedicine(a,b):
    return a.pop()
# print("Precision Medicine of [1,2,3,4,5] is",precisionMedicine([1,2,3,4,5]))
def targetedTherapy(a,b):
    return a.pop()
# print("Targeted Therapy of [1,2,3,4,5] is",targetedTherapy([1,2,3,4,5]))
def drugDiscovery(a,b):
    return a.pop()
# print("Drug Discovery of [1,2,3,4,5] is",drugDiscovery([1,2,3,4,5]))
def clinicalTrials(a,b):
    return a.pop()
# print("Clinical Trials of [1,2,3,4,5] is",clinicalTrials([1,2,3,4,5]))
def precisionPublicHealth(a,b):
    return a.pop()
# print("Precision Public Health of [1,2,3,4,5] is",precisionPublicHealth([1,2,3,4,5]))
def personalizedNutrition(a,b):
    return a.pop()
# print("Personalized Nutrition of [1,2,3,4,5] is",personalizedNutrition([1,2,3,4,5]))
def precisionAgriculture(a,b):
    return a.pop()
# print("Precision Agriculture of [1,2,3,4,5] is",precisionAgriculture([1,2,3,4,5]))
def precisionManufacturing(a,b):
    return a.pop()
# print("Precision Manufacturing of [1,2,3,4,5] is",precisionManufacturing([1,2,3,4,5]))
def precisionRetail(a,b):
    return a.pop()
# print("Precision Retail of [1,2,3,4,5] is",precisionRetail([1,2,3,4,5]))
def precisionFinance(a,b):
    return a.pop()
# print("Precision Finance of [1,2,3,4,5] is",precisionFinance([1,2,3,4,5]))
def precisionMarketing(a,b):
    return a.pop()
# print("Precision Marketing of [1,2,3,4,5] is",precisionMarketing([1,2,3,4,5]))
def precisionEducation(a,b):
    return a.pop()
# print("Precision Education of [1,2,3,4,5] is",precisionEducation([1,2,3,4,5]))
def precisionEngineering(a,b):
    return a.pop()
# print("Precision Engineering of [1,2,3,4,5] is",precisionEngineering([1,2,3,4,5]))
def precisionArchitecture(a,b):
    return a.pop()
# print("Precision Architecture of [1,2,3,4,5] is",precisionArchitecture([1,2,3,4,5]))
def precisionInteriorDesign(a,b):
    return a.pop()
# print("Precision Interior Design of [1,2,3,4,5] is",precisionInteriorDesign([1,2,3,4,5]))
def precisionLandscaping(a,b):
    return a.pop()
# print("Precision Landscaping of [1,2,3,4,5] is",precisionLandscaping([1,2,3,4,5]))
def precisionEnvironmentalScience(a,b):
    return a.pop()
# print("Precision Environmental Science of [1,2,3,4,5] is",precisionEnvironmentalScience([1,2,3,4,5]))
def precisionGeology(a,b):
    return a.pop()
# print("Precision Geology of [1,2,3,4,5] is",precisionGeology([1,2,3,4,5]))
def precisionOceanography(a,b):
    return a.pop()
# print("Precision Oceanography of [1,2,3,4,5] is",precisionOceanography([1,2,3,4,5]))
def precisionMeteorology(a,b):
    return a.pop()
# print("Precision Meteorology of [1,2,3,4,5] is",precisionMeteorology([1,2,3,4,5]))
def precisionAstronomy(a,b):
    return a.pop()
# print("Precision Astronomy of [1,2,3,4,5] is",precisionAstronomy([1,2,3,4,5]))
def precisionCosmology(a,b):
    return a.pop()
# print("Precision Cosmology of [1,2,3,4,5] is",precisionCosmology([1,2,3,4,5]))
def precisionPhysics(a,b):
    return a.pop()
# print("Precision Physics of [1,2,3,4,5] is",precisionPhysics([1,2,3,4,5]))
def precisionChemistry(a,b):
    return a.pop()
# print("Precision Chemistry of [1,2,3,4,5] is",precisionChemistry([1,2,3,4,5]))
def precisionBiology(a,b):
    return a.pop()
# print("Precision Biology of [1,2,3,4,5] is",precisionBiology([1,2,3,4,5]))
def precisionMedicine(a,b):
    return a.pop()
# print("Precision Medicine of [1,2,3,4,5] is",precisionMedicine([1,2,3,4,5]))
def precisionBiotechnology(a,b):
    return a.pop()
# print("Precision Biotechnology of [1,2,3,4,5] is",precisionBiotechnology([1,2,3,4,5]))
def precisionSyntheticBiology(a,b):
    return a.pop()
# print("Precision Synthetic Biology of [1,2,3,4,5] is",precisionSyntheticBiology([1,2,3,4,5]))
def precisionGeneticEngineering(a,b):
    return a.pop()
# print("Precision Genetic Engineering of [1,2,3,4,5] is",precisionGeneticEngineering([1,2,3,4,5]))
def precisionStemCellTherapy(a,b):
    return a.pop()
# print("Precision Stem Cell Therapy of [1,2,3,4,5] is",precisionStemCellTherapy([1,2,3,4,5]))
def precisionImmunotherapy(a,b):
    return a.pop()
# print("Precision Immunotherapy of [1,2,3,4,5] is",precisionImmunotherapy([1,2,3,4,5]))
def precisionGeneTherapy(a,b):
    return a.pop()
# print("Precision Gene Therapy of [1,2,3,4,5] is",precisionGeneTherapy([1,2,3,4,5]))
def precisionRegenerativeMedicine(a,b):
    return a.pop()
# print("Precision Regenerative Medicine of [1,2,3,4,5] is",precisionRegenerativeMedicine([1,2,3,4,5]))
def precisionPersonalizedMedicine(a,b):
    return a.pop()
# print("Precision Personalized Medicine of [1,2,3,4,5] is",precisionPersonalizedMedicine([1,2,3,4,5]))
def shapenext(a,b):
    return a.pop()
# print("Shape Next of [1,2,3,4,5] is",shapenext([1,2,3,4,5]))
def earth(a,b):
    return a.pop()
# print("Earth of [1,2,3,4,5] is",earth([1,2,3,4,5]))
def rectangle(l,b):
    return l*b
# print("Rectangle of [1,2,3,4,5] is",rectangle([1,2,3,4,5]))
def square(a):
    return a*a
# print("Square of [1,2,3,4,5] is",square([1,2,3,4,5]))
def circle(r):
    return 3.14*r*r
# print("Circle of [1,2,3,4,5] is",circle([1,2,3,4,5]))
def triangle(a,b):
    return 0.5*a*b
# print("Triangle of [1,2,3,4,5] is",triangle([1,2,3,4,5]))
def hexagon(a):
    return 2.598*a*a
# print("Hexagon of [1,2,3,4,5] is",hexagon([1,2,3,4,5]))
def oval(a,b):
    return 3.14*a*b
# print("Oval of [1,2,3,4,5] is",oval([1,2,3,4,5]))
def trapezoid(a,b,h):
    return 0.5*(a+b)*h
# print("Trapezoid of [1,2,3,4,5] is",trapezoid([1,2,3,4,5]))
def rainwaterTrapping(a,b,h):
    return 0.5*(a+b)*h
# print("Rainwater Trapping of [1,2,3,4,5] is",rainwaterTrapping([1,2,3,4,5]))
def time(a,b):
    return a.pop()
# print("Time of [1,2,3,4,5] is",time([1,2,3,4,5]))
def ceil(a,b):
    return a.pop()
# print("Ceil of [1,2,3,4,5] is",ceil([1,2,3,4,5]))
def floor(a,b):
    return a.pop()
# print("Floor of [1,2,3,4,5] is",floor([1,2,3,4,5]))
def power(a,b):
    return a**b
# print("Power of [1,2,3,4,5] is",power([1,2,3,4,5]))
def bitwiseLeftShift(a,b):
    return a<<b
# print("Bitwise Left Shift of [1,2,3,4,5] is",bitwiseLeftShift([1,2,3,4,5]))
def bitwiseRightShift(a,b):
    return a>>b
# print("Bitwise Right Shift of [1,2,3,4,5] is",bitwiseRightShift([1,2,3,4,5]))
def bitwiseAND(a,b):
    return a&b
# print("Bitwise AND of [1,2,3,4,5] is",bitwiseAND([1,2,3,4,5]))
def bitwiseXOR(a,b):
    return a^b
# print("Bitwise XOR of [1,2,3,4,5] is",bitwiseXOR([1,2,3,4,5]))
def bitwiseOR(a,b):
    return a|b
# print("Bitwise OR of [1,2,3,4,5] is",bitwiseOR([1,2,3,4,5]))
def bitwiseNOT(a):
    return ~a
# print("Bitwise NOT of [1,2,3,4,5] is",bitwiseNOT([1,2,3,4,5]))
def bitwiseLeftShiftAssignment(a,b):
    a<<=b; return a
# print("Bitwise Left Shift Assignment of [1,2,3,4,5] is",bitwiseLeftShiftAssignment([1,2,3,4,5]))
def bitwiseRightShiftAssignment(a,b):
    a>>=b; return a
# print("Bitwise Right Shift Assignment of [1,2,3,4,5] is",bitwiseRightShiftAssignment([1,2,3,4,5]))
def bitwiseANDAssignment(a,b):
    a&=b; return a
# print("Bitwise AND Assignment of [1,2,3,4,5] is",bitwiseANDAssignment([1,2,3,4,5]))
def bitwiseXORAssignment(a,b):
    a^=b; return a
# print("Bitwise XOR Assignment of [1,2,3,4,5] is",bitwiseXORAssignment([1,2,3,4,5]))
def bitwiseORAssignment(a,b):
    a|=b; return a
# print("Bitwise OR Assignment of [1,2,3,4,5] is",bitwiseORAssignment([1,2,3,4,5]))
# define bitwise NOTAssignment(a):
#     return ~a
# print("Bitwise NOT Assignment of [1,2,3,4,5] is",bitwiseNOTAssignment([1,2,3,4,5]))
def logicalAND(a,b):
#     return a&&b
# print("Logical AND of [1,2,3,4,5] is",logicalAND([1,2,3,4,5]))
# def logicalOR(a,b):
#     return a||b
# print("Logical OR of [1,2,3,4,5] is",logicalOR([1,2,3,4,5]))
# def logicalNOT(a):
#     return !a
# print("Logical NOT of [1,2,3,4,5] is",logicalNOT([1,2,3,4,5]))
# def ternaryOperator(a,b,c):
#     return a?b:c
# print("Ternary Operator of [1,2,3,4,5] is",ternaryOperator([1,2,3,4,5]))
# def sizeof(a):
    return len(a)
# print("Sizeof of [1,2,3,4,5] is",sizeof([1,2,3,4,5]))
def typeOf(a):
    return type(a)
# print("Type of [1,2,3,4,5] is",typeOf([1,2,3,4,5]))
def instanceof(a,b):
    return isinstance(a,b)
# print("Instanceof of [1,2,3,4,5] is",instanceof([1,2,3,4,5]))
def isOperator(a):
    return a in {"+","-","*","/","%","<<",">>","&","|","^","~","<<=",">=","&=","|=","^=","!", "?"}
# print("Is Operator of [1,2,3,4,5] is",isOperator([1,2,3,4,5]))
def isKeyword(a):
    return a in {"define","return","print","if","else","for","while","in","out","def","export","import","class","struct","enum","union","namespace","try","catch","finally","throw","yield","await","async","let","const","var","with","as","from","del","global","nonlocal","lambda","lambda","lambda"}
# print("Is Keyword of [1,2,3,4,5] is",isKeyword([1,2,3,4,5]))
def isIdentifier(a):
    return a.isalpha()
# print("Is Identifier of [1,2,3,4,5] is",isIdentifier([1,2,3,4,5]))
def isNumber(a):
    return a.isdigit()
# print("Is Number of [1,2,3,4,5] is",isNumber([1,2,3,4,5]))
def isString(a):
    return a.isprintable()
# print("Is String of [1,2,3,4,5] is",isString([1,2,3,4,5]))
def isBoolean(a):
    return a in {True,False}
# print("Is Boolean of [1,2,3,4,5] is",isBoolean([1,2,3,4,5]))
def isNone(a):
    return a is None
# print("Is None of [1,2,3,4,5] is",isNone([1,2,3,4,5]))
def isFunction(a):
    return callable(a)
# print("Is Function of [1,2,3,4,5] is",isFunction([1,2,3,4,5]))
def isClass(a):
    return isinstance(a,type)
# print("Is Class of [1,2,3,4,5] is",isClass([1,2,3,4,5]))
def isObject(a):
    return isinstance(a,object)
# print("Is Object of [1,2,3,4,5] is",isObject([1,2,3,4,5]))
def isList(a):
    return isinstance(a,list)
# print("Is List of [1,2,3,4,5] is",isList([1,2,3,4,5]))
def isTuple(a):
    return isinstance(a,tuple)
# print("Is Tuple of [1,2,3,4,5] is",isTuple([1,2,3,4,5]))
def isSet(a):
    return isinstance(a,set)
# print("Is Set of [1,2,3,4,5] is",isSet([1,2,3,4,5]))
def isDict(a):
    return isinstance(a,dict)
# print("Is Dict of [1,2,3,4,5] is",isDict([1,2,3,4,5]))
def isArray(a):
    return isinstance(a,array)
# print("Is Array of [1,2,3,4,5] is",isArray([1,2,3,4,5]))
def isMap(a):
    return isinstance(a,map)
# print("Is Map of [1,2,3,4,5] is",isMap([1,2,3,4,5]))
def isList(a):
    return isinstance(a,list)
# print("Is List of [1,2,3,4,5] is",isList([1,2,3,4,5]))
def isDict(a):
    return isinstance(a,dict)
# print("Is Dict of [1,2,3,4,5] is",isDict([1,2,3,4,5]))
def isSet(a):
    return isinstance(a,set)
# print("Is Set of [1,2,3,4,5] is",isSet([1,2,3,4,5]))
def isTuple(a):
    return isinstance(a,tuple)
# print("Is Tuple of [1,2,3,4,5] is",isTuple([1,2,3,4,5]))
def isArray(a):
    return isinstance(a,array)
# print("Is Array of [1,2,3,4,5] is",isArray([1,2,3,4,5]))
def isMap(a):
    return isinstance(a,map)
# print("Is Map of [1,2,3,4,5] is",isMap([1,2,3,4,5]))
def isList(a):
    return isinstance(a,list)
# print("Is List of [1,2,3,4,5] is",isList([1,2,3,4,5]))
def isDict(a):
    return isinstance(a,dict)
# print("Is Dict of [1,2,3,4,5] is",isDict([1,2,3,4,5]))
def isSet(a):
    return isinstance(a,set)
# print("Is Set of [1,2,3,4,5] is",isSet([1,2,3,4,5]))
def isTuple(a):
    return isinstance(a,tuple)
# print("Is Tuple of [1,2,3,4,5] is",isTuple([1,2,3,4,5]))
def isArray(a):
    return isinstance(a,array)
# print("Is Array of [1,2,3,4,5] is",isArray([1,2,3,4,5]))
def isMap(a):
    return isinstance(a,map)
# print("Is Map of [1,2,3,4,5] is",isMap([1,2,3,4,5]))
def isList(a):
    return isinstance(a,list)
# print("Is List of [1,2,3,4,5] is",isList([1,2,3,4,5]))
def isDict(a):
    return isinstance(a,dict)
# print("Is Dict of [1,2,3,4,5] is",isDict([1,2,3,4,5]))
def isSet(a):
    return isinstance(a,set)
# print("Is Set of [1,2,3,4,5] is",isSet([1,2,3,4,5]))
def isTuple(a):
    return isinstance(a,tuple)
# print("Is Tuple of [1,2,3,4,5] is",isTuple([1,2,3,4,5]))
def isArray(a):
    return isinstance(a,array)
# print("Is Array of [1,2,3,4,5] is",isArray([1,2,3,4,5]))
def isMap(a):
    return isinstance(a,map)
# print("Is Map of [1,2,3,4,5] is",isMap([1,2,3,4,5]))
def isList(a):
    return isinstance(a,list)
# print("Is List of [1,2,3,4,5] is",isList([1,2,3,4,5]))
def isDict(a):
    return isinstance(a,dict)
# print("Is Dict of [1,2,3,4,5] is",isDict([1,2,3,4,5]))
def isSet(a):
    return isinstance(a,set)
# print("Is Set of [1,2,3,4,5] is",isSet([1,2,3,4,5]))
def isTuple(a):
    return isinstance(a,tuple)
# print("Is Tuple of [1,2,3,4,5] is",isTuple([1,2,3,4,5]))
def isArray(a):
    return isinstance(a,array)
# print("Is Array of [1,2,3,4,5] is",isArray([1,2,3,4,5]))
def isMap(a):
    return isinstance(a,map)
# print("Is Map of [1,2,3,4,5] is",isMap([1,2,3,4,5]))
def isList(a):
    return isinstance(a,list)
# print("Is List of [1,2,3,4,5] is",isList([1,2,3,4,5]))
def isDict(a):
    return isinstance(a,dict)
# print("Is Dict of [1,2,3,4,5] is",isDict([1,2,3,4,5]))
def isSet(a):
    return isinstance(a,set)
# print("Is Set of [1,2,3,4,5] is",isSet([1,2,3,4,5]))
def isTuple(a):
    return isinstance(a,tuple)
# print("Is Tuple of [1,2,3,4,5] is",isTuple([1,2,3,4,5]))
def isArray(a):
    return isinstance(a,array)
# print("Is Array of [1,2,3,4,5] is",isArray([1,2,3,4,5]))
def isMap(a):
    return isinstance(a,map)
# print("Is Map of [1,2,3,4,5] is",isMap([1,2,3,4,5]))
def isList(a):
    return isinstance(a,list)
# print("Is List of [1,2,3,4,5] is",isList([1,2,3,4,5]))
def isDict(a):
    return isinstance(a,dict)
# print("Is Dict of [1,2,3,4,5] is",isDict([1,2,3,4,5]))
def isSet(a):
    return isinstance(a,set)
# print("Is Set of [1,2,3,4,5] is",isSet([1,2,3,4,5]))
def isTuple(a):
    return isinstance(a,tuple)
# print("Is Tuple of [1,2,3,4,5] is",isTuple([1,2,3,4,5]))
def isArray(a):
    return isinstance(a,array)
# print("Is Array of [1,2,3,4,5] is",isArray([1,2,3,4,5]))
def isMap(a):
    return isinstance(a,map)
# print("Is Map of [1,2,3,4,5] is",isMap([1,2,3,4,5]))
def isList(a):
    return isinstance(a,list)
# print("Is List of [1,2,3,4,5] is",isList([1,2,3,4,5]))
def isDict(a):
    return isinstance(a,dict)
# print("Is Dict of [1,2,3,4,5] is",isDict([1,2,3,4,5]))
def isSet(a):
    return isinstance(a,set)
# print("Is Set of [1,2,3,4,5] is",isSet([1,2,3,4,5]))
def sort(a):
    return sorted(a)
# print("Sort of [1,2,3,4,5] is",sort([1,2,3,4,5]))
def globalMax(a):
    return max(a)
# print("Global Max of [1,2,3,4,5] is",globalMax([1,2,3,4,5]))
def globalMin(a):
    return min(a)
# print("Global Min of [1,2,3,4,5] is",globalMin([1,2,3,4,5]))
def localMax(a):
    return max(a)
# print("Local Max of [1,2,3,4,5] is",localMax([1,2,3,4,5]))
def localMin(a):
    return min(a)
# print("Local Min of [1,2,3,4,5] is",localMin([1,2,3,4,5]))
# def global():
#     global_var = 10
# print("Global is",global())
def local():
    local_var = 20
# print("Local is",local())
def globalMax():
    return max(global_var)
# print("Global Max is",globalMax())
def globalMin():
    return min(global_var)
# print("Global Min is",globalMin())
def localMax():
    return max(local_var)
# print("Local Max is",localMax())
def localMin():
    return min(local_var)
# print("Local Min is",localMin())
def globalMaxLocalMin():
    return global_var - local_var
# print("Global Max Local Min is",globalMaxLocalMin())
def globalMinLocalMax():
    return local_var - global_var
# print("Global Min Local Max is",globalMinLocalMax())
def globalMaxLocalMax():
    return global_var + local_var
# print("Global Max Local Max is",globalMaxLocalMax())
def globalMinLocalMin():
    return global_var + local_var
# print("Global Min Local Min is",globalMinLocalMin())
def globalMaxLocalMin():
    return global_var - local_var
# print("Global Max Local Min is",globalMaxLocalMin())
def globalMinLocalMax():
    return local_var - global_var
# print("Global Min Local Max is",globalMinLocalMax())
def globalMaxLocalMax():
    return global_var + local_var
# print("Global Max Local Max is",globalMaxLocalMax())
def globalMinLocalMin():
    return global_var + local_var
# print("Global Min Local Min is",globalMinLocalMin())
def globalMaxLocalMinMax():
    return global_var - local_var
# print("Global Max Local Min Max is",globalMaxLocalMinMax())
def globalMinLocalMaxMin():
    return local_var - global_var
# print("Global Min Local Max Min is",globalMinLocalMaxMin())
def globalMaxLocalMinMax():
    return global_var - local_var
# print("Global Max Local Min Max is",globalMaxLocalMinMax())
def localMaxLocalMinMax():
    return local_var - global_var
# print("Local Max Local Min Max is",localMaxLocalMinMax())
#  class(a):
#     return a
# print("Class of [1,2,3,4,5] is",class([1,2,3,4,5]))
def list(a):
    return a
# print("List of [1,2,3,4,5] is",list([1,2,3,4,5]))
def array(a):
    return a
# print("Array of [1,2,3,4,5] is",array([1,2,3,4,5]))
def map(a):
    return a
# print("Map of [1,2,3,4,5] is",map([1,2,3,4,5]))
def set(a):
    return a
# print("Set of [1,2,3,4,5] is",set([1,2,3,4,5]))
def tuple(a):
    return a
# print("Tuple of [1,2,3,4,5] is",tuple([1,2,3,4,5]))
def object(a):
    return a
# print("Object of [1,2,3,4,5] is",object([1,2,3,4,5]))
def dict(a):
    return a
# print("Dict of [1,2,3,4,5] is",dict([1,2,3,4,5]))
def singleInheritance():
    class Parent:
# def display(self):
#             return "Parent Property"
#     class Child(Parent):
        pass
    child_obj = Child()
    return child_obj.display()
# print("Single Inheritance is",singleInheritance())
def multipleInheritance():
    class Parent1:
# def display(self):
#             return "Parent1 Property"
#     class Parent2:
# def display(self):
#             return "Parent2 Property"
#     class Child(Parent1, Parent2):
        pass
    child_obj = Child()
    return child_obj.display()
# print("Multiple Inheritance is",multipleInheritance())
def multilevelInheritance():
    class Parent:
# def display(self):
#             return "Parent Property"
#     class Child(Parent):
        pass
    class Grandchild(Child):
        pass
    grandchild_obj = Grandchild()
    return grandchild_obj.display()
# print("Multilevel Inheritance is",multilevelInheritance())
def hybridInheritance():
    class Parent1:
# def display(self):
#             return "Parent1 Property"
#     class Parent2:
# def display(self):
#             return "Parent2 Property"
#     class Child(Parent1, Parent2):
        pass
    child_obj = Child()
    return child_obj.display()
# print("Hybrid Inheritance is",hybridInheritance())
def hierarchicalInheritance():
    class Parent:
# def display(self):
#             return "Parent Property"
#     class Child(Parent):
        pass
    class Grandchild(Parent):
        pass
    child_obj = Child()
    grandchild_obj = Grandchild()
    return child_obj.display(), grandchild_obj.display()
# print("Hierarchical Inheritance is",hierarchicalInheritance())
def APIcreator(name):
    return name
# print("API Creator is",APIcreator("Earth API"))
def differenciate(x):
    return x+1
# print("Differenciate is",differenciate(1))
def integrate(x):
    return x+1
# print("Integrate is",integrate(1))
def vector(x,y):
    return (x,y)
# print("Vector is",vector(1,2))
def magnitude(x,y):
    return (x**2 + y**2)**0.5
# print("Magnitude is",magnitude(1,2))
def sin(a):
    return a+1
# print("Sin is",sin(1))
def cos(a):
    return a+1
# print("Cos is",cos(1))
def tan(a):
    return a+1
# print("Tan is",tan(1))
def csc(a):
    return a+1
# print("Csc is",csc(1))
def sec(a):
    return a+1
# print("Sec is",sec(1))
def cot(a):
    return a+1
# print("Cot is",cot(1))
def methodOverloading():
    pass
# print("Method Overloading is",methodOverloading())
def methodOverriding():
    pass
# print("Method Overriding is",methodOverriding())
def operatorOverloading():
    pass
# print("Operator Overloading is",operatorOverloading())
def virtualFunction():
    pass
# print("Virtual Function is",virtualFunction())
def abstractMethod():
    pass
# print("Abstract Method is",abstractMethod())
def duckTyping():
    pass
# print("Duck Typing is",duckTyping())
def statictyping():
    pass
# print("Static Typing is",statictyping())
def dynamictyping():
    pass
# print("Dynamic Typing is",dynamictyping())
def strongtyping():
    pass
# print("Strong Typing is",strongtyping())
def weaktyping():
    pass
# print("Weak Typing is",weaktyping())
def importSystem():
# import os
    return os.getcwd()
# import math
# import sys
# import platform
# import time
# import random
# import re
# import json
# import xml.etree.ElementTree as ET
# import csv
# import requests
# import numpy
# import pandas
# import matplotlib
# import seaborn
# import scipy
# import sklearn
# import tensorflow
# import torch
# import keras
# import PyQt
# import turtle
# import java.lang
# import Earth.txt
# import interpreter.py
# ignored import: import MyFunctions.psm1
# import Exceptions.sl
# import util
# import io
# import nio
# import math
# import time
# import net
# import security
# import sql
# import awt
# import swing
# import fx
# import text
# import xml
# import rmi
# import beans
# import reflect
# import concurrent
# import crypto
# import net
# import sound
# import tkinter
# import pytorch
# import pytorch-lightning
# import xgboost
# import lightgbm
# import catboost
# import statsmodels
# import scikit-learnl
# import numpy-financial
# import flask
# import django
#     from impacket import smb
#     from scapy.all import *
# import pyshark
# from impacket import smb
# from cryptography.fernet import Fernet
# from Crypto.Cipher import AES
# import hashlib
# import nmap
# from pwn import *
# import requests
# import socket
# import fastapi
# import pyramid
# import bottle
# import tornado
# import cherrypy
# import sqlite3
# import sqlalchemy
# import bs4
# import urllib
# import socket
# import datetime
# import collections
# import itertools
# import functools
# import asyncio
# import threading
# import multiprocessing
# import subprocess
# import argparse
# import logging
# import pathlib
# import typing
# import pytest
# import unittest
# import pydantic
# import celery
# import redis
# import Algorithms
# import SL_Packages
# import pyshark
# import nltk
# import spacy
# import opencv-python
# import pillow
# print("Import System is",importSystem())
def moduleSystem():
# import Flask
    return Flask.run()
# import django
#     return django.run()
# import fastapi
#     return fastapi.run()
# import pyramid
#     return pyramid.run()
# import bottle
#     return bottle.run()
# import tornado
#     return tornado.run()
# import cherrypy
#     return cherrypy.run()
# print("Module System is",moduleSystem())
def packageSystem():
# import Flask.package
    return Flask.package.run()
# import django.package
#     return django.package.run()
# import fastapi.package
#     return fastapi.package.run()
# import pyramid.package
#     return pyramid.package.run()
# import bottle.package
#     return bottle.package.run()
# import tornado.package
#     return tornado.package.run()
# import cherrypy
#     return cherrypy.run()  
# print("Package System is",packageSystem())
def namespaceSystem():
    pass
# print("Namespace System is",namespaceSystem())
def scopeSystem():
    pass
# print("Scope System is",scopeSystem())
def stackSystem():
    pass
# print("Stack System is",stackSystem())
def heapSystem():
    pass
# print("Heap System is",heapSystem())
def garbageCollection():
    pass
# print("Garbage Collection is",garbageCollection())
def memoryManagement():
    pass
# print("Memory Management is",memoryManagement())
def processManagement():
    pass
# print("Process Management is",processManagement())
def threadManagement():
    pass
# print("Thread Management is",threadManagement())
def concurrency():
    pass
# print("Concurrency is",concurrency())
def parallelism():
    pass
# print("Parallelism is",parallelism())
# def async():
#     pass
# print("Async is",async())
# def await():
#     pass
# print("Await is",await())
def interprocessCommunication():
    pass
# print("Interprocess Communication is",interprocessCommunication())
def multiprocessCommunication():
    pass
# print("Multiprocess Communication is",multiprocessCommunication())
def networkCommunication():
    pass
# print("Network Communication is",networkCommunication())
def remoteProcedureCall():
    pass
# print("Remote Procedure Call is",remoteProcedureCall())
def distributedSystem():
    pass
# print("Distributed System is",distributedSystem())
def clusterComputing():
    pass
# print("Cluster Computing is",clusterComputing())
def gridComputing():
    pass
# print("Grid Computing is",gridComputing())
def cloudComputing():
    pass
# print("Cloud Computing is",cloudComputing())
def blockchain():
    pass
# print("Blockchain is",blockchain())
def machineLearning():
    pass
# print("Machine Learning is",machineLearning())
def deepLearning():
    pass
# print("Deep Learning is",deepLearning())
def neuralNetwork():
    pass
# print("Neural Network is",neuralNetwork())
def computerGraphics():
    pass
# print("Computer Graphics is",computerGraphics())
def virtualReality():
    pass
# print("Virtual Reality is",virtualReality())
def augmentedReality():
    pass
# print("Augmented Reality is",augmentedReality())
def fetch():
# import requests
    return requests.get("https://www.google.com").status_code
# print("Fetch is",fetch())
def ceiling(x):
    return math.ceil(x)
# print("Ceiling is",ceiling(1))
def floor(x):
    return math.floor(x)
# print("Floor is",floor(1))
def round(x):
    return math.round(x)
# print("Round is",round(1))
def power(x,y):
    return x**y
# print("Power is",power(1,2))
def sqrt(x):
    return x**0.5
# print("Sqrt is",sqrt(1))
def log(x):
    return math.log(x)
# print("Log is",log(1))
def pi():
    return math.pi
# print("Pi is",pi())
def degrees(x):
    return math.degrees(x)
# print("Degrees is",degrees(1))
def radians(x):
    return math.radians(x)
# print("Radians is",radians(1));    
def factorial(x):
    return math.factorial(x)
# print("Factorial is",factorial(1))
# define cubicRoot(x)
#     return x**(1/3)
# print("Cubic Root is",cubicRoot(1))
def power(x,y):
    return x**y
# print("Power is",power(1,2))
def sqrt(x):
    return x**0.5
# print("Sqrt is",sqrt(1))
def gcd(x,y):
    return math.gcd(x,y)
# print("Gcd is",gcd(1,2))
def lcm(x,y):
    return math.lcm(x,y)
# print("Lcm is",lcm(1,2))
def interface():
    print("Main Menu")
    print("1. Option 1")
    print("2. Option 2")
    print("3. Exit")
    choice = input("Enter your choice: ")
    if choice == "1":
        print("You chose Option 1")
    elif choice == "2":
        print("You chose Option 2")
    elif choice == "3":
        print("Exiting")
    else:
        print("Invalid choice")
def abstract(a):
    print("--- Abstract Base Algorithm ---")
    if len(a) == 0:
        print("Error: Empty input")
        return -1
    print("Step 1: Initialization")
    result = []
    print("Step 2: Core Processing")
    for i in range(len(a)):
        result.append(a[i])
    print("Step 3: Finalization")
    return result
def differenciate(a):
    print("--- Discrete Differentiation ---")
    if len(a) < 2:
        return []
    result = []
    for i in range(1, len(a)):
        result.append(a[i] - a[i-1])
    return result
# print("Differentiation of [1, 3, 6, 10] is", differenciate([1, 3, 6, 10]))
def integration(a):
    print("--- Discrete Integration (Cumulative Sum) ---")
    if len(a) == 0:
        return []
    result = []
    current_sum = 0
    for i in range(len(a)):
        current_sum = current_sum + a[i]
        result.append(current_sum)
    return result
# print("Integration of [1, 2, 3, 4] is", integration([1, 2, 3, 4]))
def getter(data, index):
    print("Getter Algorithm")
    if index >= 0 and index < len(data):
        return data[index]
    print("Error: Index out of bounds")
    return None
# print("Getter from [10, 20, 30] at index 1 is", getter([10, 20, 30], 1))
def setter(data, index, value):
    print("--- Setter Algorithm ---")
    if index >= 0 and index < len(data):
        data[index] = value
        return data
    print("Error: Index out of bounds")
    return data
# print("Setter on [10, 20, 30] at index 1 to 99 gives", setter([10, 20, 30], 1, 99))
def dataframe(headers, data_rows):
    print("Creating Dataframe")
    if len(data_rows) == 0:
        return {}
    df = {}
    for i in range(len(headers)):
        col_data = []
        for row in data_rows:
            col_data.append(row[i])
        df[headers[i]] = col_data
    return df
# print("Dataframe is", dataframe(["ID", "Name"], [[1, "Alice"], [2, "Bob"]]))
def nullPointerException(msg):
    print("nullPointerException raised: ", msg)
    return -1
def nullPointerException(msg):
    print("nullPointerException raised: ", msg)
    return -1
def arrayIndexOutOfBoundsException(msg):
    print("arrayIndexOutOfBoundsException raised: ", msg)
    return -1
def classCastException(msg):
    print("classCastException raised: ", msg)
    return -1
def illegalArgumentException(msg):
    print("illegalArgumentException raised: ", msg)
    return -1
def illegalStateException(msg):
    print("illegalStateException raised: ", msg)
    return -1
def numberFormatException(msg):
    print("numberFormatException raised: ", msg)
    return -1
def arithmeticException(msg):
    print("arithmeticException raised: ", msg)
    return -1
def stringIndexOutOfBoundsException(msg):
    print("stringIndexOutOfBoundsException raised: ", msg)
    return -1
def unsupportedOperationException(msg):
    print("unsupportedOperationException raised: ", msg)
    return -1
def concurrentModificationException(msg):
    print("concurrentModificationException raised: ", msg)
    return -1
def fileNotFoundException(msg):
    print("fileNotFoundException raised: ", msg)
    return -1
def ioException(msg):
    print("ioException raised: ", msg)
    return -1
def sqlException(msg):
    print("sqlException raised: ", msg)
    return -1
def classNotFoundException(msg):
    print("classNotFoundException raised: ", msg)
    return -1
def noSuchMethodException(msg):
    print("noSuchMethodException raised: ", msg)
    return -1
def interruptedException(msg):
    print("interruptedException raised: ", msg)
    return -1
def cloneNotSupportedException(msg):
    print("cloneNotSupportedException raised: ", msg)
    return -1
def javaException(msg):
    print("javaException raised: ", msg)
    return -1
def runtimeException(msg):
    print("runtimeException raised: ", msg)
    return -1
def javaError(msg):
    print("javaError raised: ", msg)
    return -1
def stackOverflowError(msg):
    print("stackOverflowError raised: ", msg)
    return -1
def outOfMemoryError(msg):
    print("outOfMemoryError raised: ", msg)
    return -1
def pythonException(msg):
    print("pythonException raised: ", msg)
    return -1
def standardError(msg):
    print("standardError raised: ", msg)
    return -1
def arithmeticError(msg):
    print("arithmeticError raised: ", msg)
    return -1
def bufferError(msg):
    print("bufferError raised: ", msg)
    return -1
def lookupError(msg):
    print("lookupError raised: ", msg)
    return -1
def assertionError(msg):
    print("assertionError raised: ", msg)
    return -1
def attributeError(msg):
    print("attributeError raised: ", msg)
    return -1
def eofError(msg):
    print("eofError raised: ", msg)
    return -1
def floatingPointError(msg):
    print("floatingPointError raised: ", msg)
    return -1
def generatorExit(msg):
    print("generatorExit raised: ", msg)
    return -1
def importError(msg):
    print("importError raised: ", msg)
    return -1
def moduleNotFoundError(msg):
    print("moduleNotFoundError raised: ", msg)
    return -1
def indexError(msg):
    print("indexError raised: ", msg)
    return -1
def keyError(msg):
    print("keyError raised: ", msg)
    return -1
def keyboardInterrupt(msg):
    print("keyboardInterrupt raised: ", msg)
    return -1
def memoryError(msg):
    print("memoryError raised: ", msg)
    return -1
def nameError(msg):
    print("nameError raised: ", msg)
    return -1
def notImplementedError(msg):
    print("notImplementedError raised: ", msg)
    return -1
def osError(msg):
    print("osError raised: ", msg)
    return -1
def overflowError(msg):
    print("overflowError raised: ", msg)
    return -1
def recursionError(msg):
    print("recursionError raised: ", msg)
    return -1
def referenceError(msg):
    print("referenceError raised: ", msg)
    return -1
def runtimeError(msg):
    print("runtimeError raised: ", msg)
    return -1
def stopIteration(msg):
    print("stopIteration raised: ", msg)
    return -1
def stopAsyncIteration(msg):
    print("stopAsyncIteration raised: ", msg)
    return -1
def syntaxError(msg):
    print("syntaxError raised: ", msg)
    return -1
def indentationError(msg):
    print("indentationError raised: ", msg)
    return -1
def tabError(msg):
    print("tabError raised: ", msg)
    return -1
def systemError(msg):
    print("systemError raised: ", msg)
    return -1
def systemExit(msg):
    print("systemExit raised: ", msg)
    return -1
def typeError(msg):
    print("typeError raised: ", msg)
    return -1
def unboundLocalError(msg):
    print("unboundLocalError raised: ", msg)
    return -1
def unicodeError(msg):
    print("unicodeError raised: ", msg)
    return -1
def unicodeEncodeError(msg):
    print("unicodeEncodeError raised: ", msg)
    return -1
def unicodeDecodeError(msg):
    print("unicodeDecodeError raised: ", msg)
    return -1
def unicodeTranslateError(msg):
    print("unicodeTranslateError raised: ", msg)
    return -1
def valueError(msg):
    print("valueError raised: ", msg)
    return -1
def zeroDivisionError(msg):
    print("zeroDivisionError raised: ", msg)
    return -1
def jsError(msg):
    print("jsError raised: ", msg)
    return -1
def evalError(msg):
    print("evalError raised: ", msg)
    return -1
def internalError(msg):
    print("internalError raised: ", msg)
    return -1
def rangeError(msg):
    print("rangeError raised: ", msg)
    return -1
def uriError(msg):
    print("uriError raised: ", msg)
    return -1
def aggregateError(msg):
    print("aggregateError raised: ", msg)
    return -1
def argumentException(msg):
    print("argumentException raised: ", msg)
    return -1
def argumentNullException(msg):
    print("argumentNullException raised: ", msg)
    return -1
def argumentOutOfRangeException(msg):
    print("argumentOutOfRangeException raised: ", msg)
    return -1
def divideByZeroException(msg):
    print("divideByZeroException raised: ", msg)
    return -1
def formatException(msg):
    print("formatException raised: ", msg)
    return -1
def indexOutOfRangeException(msg):
    print("indexOutOfRangeException raised: ", msg)
    return -1
def invalidOperationException(msg):
    print("invalidOperationException raised: ", msg)
    return -1
def keyNotFoundException(msg):
    print("keyNotFoundException raised: ", msg)
    return -1
def notSupportedException(msg):
    print("notSupportedException raised: ", msg)
    return -1
def nullReferenceException(msg):
    print("nullReferenceException raised: ", msg)
    return -1
def outOfMemoryException(msg):
    print("outOfMemoryException raised: ", msg)
    return -1
def overflowException(msg):
    print("overflowException raised: ", msg)
    return -1
def stackOverflowException(msg):
    print("stackOverflowException raised: ", msg)
    return -1
def timeoutException(msg):
    print("timeoutException raised: ", msg)
    return -1
def cppException(msg):
    print("cppException raised: ", msg)
    return -1
def badAlloc(msg):
    print("badAlloc raised: ", msg)
    return -1
def badCast(msg):
    print("badCast raised: ", msg)
    return -1
def badException(msg):
    print("badException raised: ", msg)
    return -1
def badTypeid(msg):
    print("badTypeid raised: ", msg)
    return -1
def logicError(msg):
    print("logicError raised: ", msg)
    return -1
def domainError(msg):
    print("domainError raised: ", msg)
    return -1
def invalidArgument(msg):
    print("invalidArgument raised: ", msg)
    return -1
def lengthError(msg):
    print("lengthError raised: ", msg)
    return -1
def outOfRange(msg):
    print("outOfRange raised: ", msg)
    return -1
def runtimeErrorCpp(msg):
    print("runtimeErrorCpp raised: ", msg)
    return -1
def rangeErrorCpp(msg):
    print("rangeErrorCpp raised: ", msg)
    return -1
def overflowErrorCpp(msg):
    print("overflowErrorCpp raised: ", msg)
    return -1
def underflowError(msg):
    print("underflowError raised: ", msg)
    return -1
def datatypes():
    print("--- Supported Data Types ---")
    types = ["int", "float", "double", "char", "string", "boolean", "array", "list", "dict", "set", "tuple", "object", "null"]
    for i in range(len(types)):
        print("- ", types[i])
    return types
# print("Data types:", datatypes())
def htmlDiv(content):
    print("<div>", content, "</div>")
    return -1
def htmlSpan(content):
    print("<span>", content, "</span>")
    return -1
def htmlImage(src):
    print("<img src='", src, "' />")
    return -1
def htmlAnchor(href, text):
    print("<a href='", href, "'>", text, "</a>")
    return -1
def htmlForm(inputs):
    print("<form>", inputs, "</form>")
    return -1
def cssFlexbox():
    print("Applied CSS: display: flex; justify-content: center; align-items: center;")
    return -1
def cssGrid():
    print("Applied CSS: display: grid; grid-template-columns: repeat(3, 1fr);")
    return -1
def cssMarginPadding():
    print("Applied CSS: margin: 10px; padding: 15px;")
    return -1
def cssAnimation():
    print("Applied CSS: transition: all 0.3s ease;")
    return -1
def jsGetElementById(id):
    print("Document fetched element with ID:", id)
    return -1
def jsAddEventListener(event, callback):
    print("Listening for event:", event)
    return -1
def jsSetTimeout(callback, time):
    print("Timeout set for", time, "ms")
    return -1
def jsPromise(resolve, reject):
    print("Promise created. Pending resolution...")
    return -1
def reactUseState(initialValue):
    print("React Hook: useState initialized with", initialValue)
    return -1
def reactUseEffect(callback, dependencies):
    print("React Hook: useEffect triggered with dependencies", dependencies)
    return -1
def reactUseContext(context):
    print("React Hook: useContext subscribing to", context)
    return -1
def reactComponent(props):
    print("React Component rendered with props:", props)
    return -1
def bootstrapContainer():
    print("Bootstrap: <div class='container'> created")
    return -1
def bootstrapRow():
    print("Bootstrap: <div class='row'> created")
    return -1
def bootstrapColumn(size):
    print("Bootstrap: <div class='col-", size, "'> created")
    return -1
def bootstrapNavbar():
    print("Bootstrap: <nav class='navbar navbar-expand-lg'> created")
    return -1
def bootstrapCard():
    print("Bootstrap: <div class='card'> created")
    return -1
def bootstrapModal():
    print("Bootstrap: <div class='modal'> created")
    return -1

