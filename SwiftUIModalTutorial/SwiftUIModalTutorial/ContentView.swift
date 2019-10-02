//
//  ContentView.swift
//  SwiftUIModalTutorial
//
//  Created by Arthur Knopper on 02/10/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showModal = false
    
    var body: some View {
       Button("Show Modal") {
          self.showModal.toggle()
       }.sheet(isPresented: $showModal) {
            ModalView(showModal: self.$showModal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
