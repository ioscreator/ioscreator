//
//  ContentView.swift
//  SwiftUIActionSheetTutorial
//
//  Created by Arthur Knopper on 16/07/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State var showActionSheet: Bool = false
    
    var actionSheet: ActionSheet {
        ActionSheet(title: Text("Action Sheet"), message: Text("Choose Option"), buttons: [
            .default(Text("Save")),
            .default(Text("Delete")),
            .destructive(Text("Cancel"))
        ])
    }

    var body: some View {
        Button(action: {
            self.showActionSheet.toggle()
        }) {
            Text("Display Action Sheet")
        }
        .actionSheet(isPresented: $showActionSheet, content: {
            self.actionSheet })
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
