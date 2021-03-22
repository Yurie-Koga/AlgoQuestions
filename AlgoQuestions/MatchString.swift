//
//  MatchString.swift
//  AlgoQuestions
//
//  Created by Uji Saori on 2021-03-21.
//

import Foundation

// Time: O(N)
// Space: O(M)
func matchString(input: String, pattern: String) -> Int {
    let len = pattern.count
    var substring = ""                          // Space: O(M)
    for i in 0 ..< input.count - (len - 1) {    // Time: O(N)
        substring = input[i, i+len]
        if substring == pattern {
            return i
        }
    }
    return 0
}
