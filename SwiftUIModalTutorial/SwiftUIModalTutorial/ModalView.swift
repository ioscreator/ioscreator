//
//  ModalView.swift
//  SwiftUIModalTutorial
//
//  Created by Arthur Knopper on 02/10/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ModalView: View {
    
    @Binding var showModal: Bool
    
    var body: some View {
        VStack {
            Text("Inside Modal View")
                .padding()
            
            Button("Dismiss") {
                self.showModal.toggle()
            }
        }
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView(showModal: .constant(true))
    }
}
