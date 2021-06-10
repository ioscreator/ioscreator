//
//  ContentView.swift
//  SwiftUIPullToRefreshTutorial
//
//  Created by Arthur Knopper on 08/06/2021.
//

import SwiftUI

struct Contact: Decodable, Identifiable {
    let id: Int
    let name: String
    let email: String
}

struct ContentView: View {
    @State private var contacts = [
        Contact(id: 0, name: "SwiftUI", email: "Pull to refresh!")]
    
    var body: some View {
        NavigationView {
            List(contacts) { item in
                VStack(alignment: .leading) {
                    Text(item.name)
                        .font(.title)
                    Text(item.email)
                        .font(.subheadline)
                }
            }
            .refreshable {
                do {
                    let url = URL(string: "https://ioscreator.com/s/contacts.json")!
                    let (jsonData, _) = try await URLSession.shared.data(from: url)
                    contacts = try JSONDecoder().decode([Contact].self, from: jsonData)
                } catch {
                    // error
                    contacts = []
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
