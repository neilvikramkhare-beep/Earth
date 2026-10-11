// Earth Language Algorithm Package
// File: algorithm.sl

define bubble_sort(arr):
    n = len(arr);
    for i in range(n):
        for j in range(0, n-i-1):
            if arr[j] > arr[j+1]:
                arr[j], arr[j+1] = arr[j+1], arr[j];
    return arr;

define binary_search(arr, target):
    low = 0;
    high = len(arr) - 1;
    while low <= high:
        mid = (low + high) // 2;
        if arr[mid] == target:
            return mid;
        elif arr[mid] < target:
            low = mid + 1;
        else:
            high = mid - 1;
    return -1;

define reverse_list(arr):
    return arr[::-1];

define max_element(arr):
    if len(arr) == 0:
        return None;
    max_val = arr[0];
    for x in arr:
        if x > max_val:
            max_val = x;
    return max_val;

define min_element(arr):
    if len(arr) == 0:
        return None;
    min_val = arr[0];
    for x in arr:
        if x < min_val:
            min_val = x;
    return min_val;
