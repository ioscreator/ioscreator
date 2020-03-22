//
//  ContentView.swift
//  SwiftUIDeleteMultipleRowsListTutorial
//
//  Created by Arthur Knopper on 20/03/2020.
//  Copyright © 2020 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var numbers = ["One","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten"]
    @State var editMode = EditMode.inactive
    @State var selection = Set<String>()
    
    var body: some View {
        NavigationView {
            List(selection: $selection) {
                ForEach(numbers, id: \.self) { number in
                    Text(number)
                }
            }
            .navigationBarItems(leading: deleteButton, trailing: editButton)
            .environment(\.editMode, self.$editMode)
        }
    }
    
    private var deleteButton: some View {
        if editMode == .inactive {
            return Button(action: {}) {
                Image(systemName: "")
            }
        } else {
            return Button(action: deleteNumbers) {
                Image(systemName: "trash")
            }
        }
    }
    
    private func deleteNumbers() {
        for id in selection {
            if let index = numbers.lastIndex(where: { $0 == id })  {
                numbers.remove(at: index)
            }
        }
        selection = Set<String>()
    }
    
    private var editButton: some View {
        if editMode == .inactive {
            return Button(action: {
                self.editMode = .active
                self.selection = Set<String>()
            }) {
                Text("Edit")
            }
        }
        else {
            return Button(action: {
                self.editMode = .inactive
                self.selection = Set<String>()
            }) {
                Text("Done")
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


