//
//  main.swift
//  Shifty Sums
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/shifty-sums.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("Shifty Sums")
print("===========")

// INPUT

// Get the number to be shifted
var n = Int.collectInput(withPrompt: "Number to be shifted:",
                         minimum: 0,
                         maximum: nil)

// How many times should we shift?
var k = Int.collectInput(withPrompt: "How many times to be shifted:",
                         minimum: 0,
                         maximum: nil)

// PROCESS
var output = n
func shift(n: Int, k: Int) -> Int {
    for i in 1...k {
        print("i is \(i)")
        var toAdd = n
        // Multiply by 10 "i" times
        for j in 1...i {
            toAdd *= 10
        }
        output += toAdd
    }
    return output
}


