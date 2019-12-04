//
//  ContentView.swift
//  SwiftUICalculatorTutorial
//
//  Created by Arthur Knopper on 30/11/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var firstNumber = 0
    @State private var secondNumber = 0
    @State private var operand = ""
    @State private var calculatorText = "0"
    @State private var isTypingNumber = false
    
    var body: some View {
        VStack(spacing: 30) {
            TextField("0", text: $calculatorText)
                .border(Color.gray, width: 2)
                .padding()
                .multilineTextAlignment(.trailing)
            
            HStack {
                createCalcDigit("1")
                Spacer()
                createCalcDigit("2")
                Spacer()
                createCalcDigit("3")
            }.padding()
            
            HStack {
                createCalcDigit("4")
                Spacer()
                createCalcDigit("5")
                Spacer()
                createCalcDigit("6")
            }.padding()
            
            HStack {
                createCalcDigit("7")
                Spacer()
                createCalcDigit("8")
                Spacer()
                createCalcDigit("9")
            }.padding()
            
            HStack {
                Button(action: {
                    self.operandTapped("-")
                }) {
                    (Text("-"))
                }
                Spacer()
                createCalcDigit("0")
                Spacer()
                Button(action: {
                    self.operandTapped("+")
                }) {
                    (Text("+"))
                }
            
            }.padding()
            
            HStack {
                Spacer()
                Button(action: {
                    self.calculate()
                }) {
                    (Text("="))
                }
                Spacer()
            }
        }
        .font(.largeTitle)
    }
    
    private func createCalcDigit(_ number: String) -> Button<Text> {
        return Button(action: {
            self.digitTapped(number)
        }) {
            (Text(number))
        }
    }
    
    private func digitTapped(_ number: String) -> Void {
        if isTypingNumber {
            calculatorText += number
        } else {
            calculatorText = number
            isTypingNumber = true
        }
    }
    
    private func operandTapped(_ operand: String) {
        isTypingNumber = false
        firstNumber = Int(calculatorText)!
        self.operand = operand
        calculatorText = operand
    }
    
    private func calculate() {
        isTypingNumber = false
        var result  = 0
        secondNumber = Int(calculatorText)!
        
        if operand == "+" {
            result = firstNumber + secondNumber
        } else if operand == "-" {
            result = firstNumber - secondNumber
        }
        
        calculatorText = "\(result)"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
