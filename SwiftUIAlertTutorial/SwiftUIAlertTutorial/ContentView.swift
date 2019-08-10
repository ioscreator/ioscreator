//
//  ContentView.swift
//  SwiftUIAlertTutorial
//
//  Created by Arthur Knopper on 05/07/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State private var showAlert = false
    
    var alert: Alert {
        Alert(title: Text("iOScreator"), message: Text("Hello SwiftUI"), dismissButton: .default(Text("Dismiss")))
    }
    
    var body: some View {
        Button(action: {
            self.showAlert.toggle()
        }) {
            Text("Show Alert")
        }
        .alert(isPresented: $showAlert, content: { self.alert })
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
