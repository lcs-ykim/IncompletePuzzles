//
//  ContentView.swift
//  ISpeakTXTMSGApp
//
//  Created by Yeseo Kim on 2021-02-22.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    @State private var input: String = ""

    // MARK: Computed properties
    private var output: String {
        
        if let providedText = String?(input) {
            
            return translate(phrase: input)

        }
        
        else {
            return "Please provide a string value43."
        }

    }
    
    var body: some View {
        
        NavigationView {
            
            Form {
                    Section(header: Text("Text to convert?")) {
                    TextField("e.g.: CU", text: $input)
                }

                // UI to show the result
                Section(header: Text("The text means:")) {
                    
                    Text(output)
                        // Ensures text will wrap to multiple lines
                        .fixedSize(horizontal: false, vertical: true)
                }

            }
            .navigationTitle("I Speak TXTMSG")
            
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
