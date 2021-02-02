//
//  main.swift
//  Trident
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/trident.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("Trident")
print("=======")

// INPUT

// Get tine length
var tineLength = Int.collectInput(withPrompt: "Enter tine length:",
                                  minimum: 0,
                                  maximum: nil)
// Get tine spacing
var spacing = Int.collectInput(withPrompt: "Enter the spacing:",
                               minimum: 0,
                               maximum: nil)

// Get handle length
var handleLength = Int.collectInput(withPrompt: "Enter tine length:",
                                    minimum: 0,
                                    maximum: nil)

// OUTPUT
func drawTrident(tineLength tL: Int, tineSpacing tS: Int, handleLength hL: Int) -> String {
    var output = ""
    // Produce top of trident according to length given
    if tL >= 1 {
    for _ in 1...tL {
        // Print the first two tines
        for _ in 1...2 {
            // Print part of a tine
            output += "*"
            // Print space between tines
            for _ in 1...tS {
                output += " "
            }
        }
        // Print the last tine
        for _ in 3...3 {
            output += "*"
        }
        // Go to next row of tine
        output += "\n"
    }
    }
    // Print the connector(?) between the tines and the handle
    if tS >= 1 {
    for _ in 1...(3 + 2*tS) {
        output += "*"
    }
    // Go to the next line(handle)
    output += "\n"
    } else {
        for _ in 1...(3 + 2*tS) {
            output += "*"
    }
    }
    // Produce first (handLength - 1) rows of handle
    // Print only 1 row of handle When hL = 1
    if hL == 1 {
        for _ in 0...tS {
            output += " "
        }
            output += "*"
    } else if hL > 1 {
    for _ in 2...hL {
        for _ in 0...tS {
            output += " "
        }
        output += "*"
        output += "\n"
    }
    // Produce the last row of handle without adding a new line after it(this may cause an error)
    for _ in 0...tS {
        output += " "
    }
        output += "*"
    // Returns the finished trident
    }
    return output
}

print(drawTrident(tineLength: tineLength, tineSpacing: spacing, handleLength: handleLength))
