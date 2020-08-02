//
//  ContentView.swift
//  SwiftUIPlaceholderTutorial
//
//  Created by Arthur Knopper on 30/07/2020.
//

import SwiftUI

struct Contact: Identifiable {
    var id = UUID()
    var name: String
    var number: String
}

struct ContentView: View {
    // 1.
    var contacts: [Contact] = [
        Contact(name: "John Doe", number: "202-555-0122"),
        Contact(name: "Oscar Hansen", number: "202-555-0147"),
        Contact(name: "Freddie Wilde", number: "202-555-0138"),
        Contact(name: "Maria Owen", number: "202-555-0122")
    ]
    // 2.
    @State private var isRedacted: Bool = false
    
    var body: some View {
        NavigationView {
            
            VStack {
                // 3.
                Toggle(isOn: $isRedacted, label: {
                   Text("Redact View")
                }).padding()
                
                List(contacts) { contact in
                    HStack {
                        Image(systemName: "person.circle.fill")
                        VStack(alignment: .leading) {
                            Text("\(contact.name)")
                            Text("\(contact.number)")
                        }.padding(.leading)
                    }
                    // 4.
                    .redacted(reason:  isRedacted ? .placeholder : .init())
                    
                }
            .navigationTitle(Text("Contacts"))
            }
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
