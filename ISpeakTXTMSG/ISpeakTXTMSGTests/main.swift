//
//  main.swift
//  I Speak TXTMSG
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/i-speak-txtmsg.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("I Speak TXTMSG")
print("==============")

// INPUT and OUTPUT
var translation = ""
repeat {
    while true {
    // Ask for a phrase
    print("Enter phrase> ", terminator: "\n")
    
    // Get the input(ensure that it is valid)
        guard let phrase = readLine() else {
            continue
        }
    
    // Translate the input
    // Here, we are at the "call site".
    // This is where a function is "called" or invoked.
    // The external parameter name shows at the call site.
    // What we "pass in" for a parameter is referred to as the "argument".
    // Parameter == question. Argument == answer.
    translation = translate(phrase: phrase)
    
    // Show the translation
    print(translation)
    }
    //Keep going, so long as the user did not say "talk to you later"
} while translation != "talk to you later"

