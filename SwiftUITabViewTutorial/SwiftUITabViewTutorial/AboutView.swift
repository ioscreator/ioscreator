//
//  AboutView.swift
//  SwiftUITabViewTutorial
//
//  Created by Arthur Knopper on 10/09/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
            Text("About View")
                .font(.largeTitle)
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
