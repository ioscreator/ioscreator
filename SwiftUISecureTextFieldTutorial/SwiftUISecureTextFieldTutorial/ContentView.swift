//
//  ContentView.swift
//  SwiftUISecureTextFieldTutorial
//
//  Created by Arthur Knopper on 13/10/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var password: String = ""
    var body: some View {
        Form {
            Section(header: Text("Authentication")) {
                SecureField("Enter a password", text: $password)
                Text("You entered: \(password)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
