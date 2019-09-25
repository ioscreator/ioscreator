//
//  ContentView.swift
//  SwiftUIDragGestureTutorial
//
//  Created by Arthur Knopper on 24/09/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentPosition: CGSize = .zero
    @State private var newPosition: CGSize = .zero
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(Color.red)
            .offset(x: self.currentPosition.width, y: self.currentPosition.height)
            
            .gesture(DragGesture()
                .onChanged { value in
                    self.currentPosition = CGSize(width: value.translation.width + self.newPosition.width, height: value.translation.height + self.newPosition.height)
            }
                .onEnded { value in
                    self.currentPosition = CGSize(width: value.translation.width + self.newPosition.width, height: value.translation.height + self.newPosition.height)
                    print(self.newPosition.width)
                    self.newPosition = self.currentPosition
                }
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



/*  @State private var tapped: Bool = false
   @State private var cardDragState: CGSize = CGSize.zero
   
   var body: some View {
       Card(tapped: self.tapped)
           .animation(.spring())
          .offset(y: self.cardDragState.height)
           
       .gesture(DragGesture()
           .onChanged { value in
               self.cardDragState = value.translation
           }
       /*.onEnded { value in
           self.cardDragState = CGSize.zero
           
           }*/
       )
           
       .gesture(TapGesture(count: 1)
           .onEnded({ () in
               self.tapped.toggle()
           })
       )
   }*/
