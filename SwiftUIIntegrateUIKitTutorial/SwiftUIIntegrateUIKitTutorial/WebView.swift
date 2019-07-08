//
//  WebView.swift
//  SwiftUIIntegrateUIKitTutorial
//
//  Created by Arthur Knopper on 08/07/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI
import WebKit

// 1.
struct WebView : UIViewRepresentable {
    
    let request: URLRequest
    
    // 2.
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    // 3.
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
}

#if DEBUG
struct WebView_Previews : PreviewProvider {
    static var previews: some View {
        // 4.
        WebView(request: URLRequest(url: URL(string: "https://ioscreator.com")!))
    }
}
#endif
