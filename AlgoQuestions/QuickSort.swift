//
//  QuickSort.swift
//  QuickSort
//
//  Created by Uji Saori on 2021-03-14.
//

import Foundation

func quickSort<T: Comparable>(arr: inout [T], stIndex: Int, edIndex: Int) {
    if stIndex >= edIndex { return }
    
//    print("=== set pivot position st:\(stIndex), ed:\(edIndex) ===")
    let pivotIndex = pivot(arr: &arr, stIndex: stIndex, edIndex: edIndex)
//    print("=== left sort st:\(stIndex), ed:\(pivotIndex - 1) ===")
    quickSort(arr: &arr, stIndex: stIndex, edIndex: pivotIndex - 1)
//    print("=== right sort st:\(pivotIndex + 1), ed:\(edIndex) ===")
    quickSort(arr: &arr, stIndex: pivotIndex + 1, edIndex: edIndex)
}

func pivot<T: Comparable>(arr: inout [T], stIndex: Int, edIndex: Int) -> Int {
    var pivotIndex = stIndex
//    print("--- swapping ---")
    for i in stIndex..<edIndex {
        if arr[i] < arr[edIndex] {
//            print("B<pivotInd> [arr]: <\(pivotIndex)> \(arr)")
            arr.swapAt(pivotIndex, i)
//            print("A<pivotInd> [arr]: <\(pivotIndex)> \(arr)")
            pivotIndex += 1
        }
    }
//    print("--- last swap ---")
//    print("B<pivotInd> [arr]: <\(pivotIndex)> \(arr)")
    arr.swapAt(pivotIndex, edIndex)
//    print("A<pivotInd> [arr]: <\(pivotIndex)> \(arr)")
    return pivotIndex
}
