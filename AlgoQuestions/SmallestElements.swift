//
//  SmallestElements.swift
//  AlgoQuestions
//
//  Created by Uji Saori on 2021-03-21.
//

import Foundation

// Time: O(N lg M)
// Space: O(M)

var smallest = [Int]()      // Space: O(M)

func smallestElements(input: [Int], numOfElements: Int) -> [Int] {
    for e in input {        // Time: O(N)
        addToArr(newElement: e, numOfElements: numOfElements)
    }
    return smallest
}

func addToArr(newElement: Int, numOfElements: Int) {
    if smallest.count < numOfElements {
        smallest.append(newElement)
    } else {
        if smallest.last! > newElement {
            smallest.removeLast()
            smallest.append(newElement)
        }
    }
    
    // Quick sort   Time: O(M lg M)
    quickSort(arr: &smallest, stIndex: 0, edIndex: smallest.count - 1)
//    print(smallest)
}
