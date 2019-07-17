//
//  ContentView.swift
//  SwiftUIActionSheetTutorial
//
//  Created by Arthur Knopper on 16/07/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State var isSheetShowing: Bool = false
    
    var actionSheet: ActionSheet {
        ActionSheet(title: Text("Action Sheet"),
            message: Text("Choose Option"),
            buttons: [
                .default(Text("Delete"), onTrigger: {
                    self.isSheetShowing = false
                }),
                .default(Text("Save"), onTrigger: {
                   self.isSheetShowing = false
                }),
                .destructive(Text("Cancel"), onTrigger: {
                   self.isSheetShowing = false
                })
            ]
        )
    }

    var body: some View {
        Button(action: {
            self.isSheetShowing = true
        }) {
            Text("Display Action Sheet")
        }
        .presentation($isSheetShowing) {
            self.actionSheet
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
