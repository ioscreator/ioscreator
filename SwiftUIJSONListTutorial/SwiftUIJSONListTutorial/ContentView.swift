//
//  ContentView.swift
//  SwiftUIJSONListTutorial
//
//  Created by Arthur Knopper on 18/02/2020.
//  Copyright © 2020 Arthur Knopper. All rights reserved.
//

import SwiftUI
import Foundation
import Combine

struct Todo: Codable, Identifiable {
    public var id: Int
    public var title: String
    public var completed: Bool
}

class FetchToDo: ObservableObject {
    @Published var todos = [Todo]()
     
    init() {
        let url = URL(string: "https://jsonplaceholder.typicode.com/todos")!
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            do {
                if let todoData = data {
                    let decodedData = try JSONDecoder().decode([Todo].self, from: todoData)
                    DispatchQueue.main.async {
                        self.todos = decodedData
                    }
                } else {
                    print("No data")
                }
            } catch {
                print("Error")
            }
        }.resume()
    }
}

struct ContentView: View {
    @ObservedObject var fetch = FetchToDo()
    var body: some View {
        VStack {
            List(fetch.todos) { todo in
                VStack(alignment: .leading) {
                    Text(todo.title)
                    Text("\(todo.completed.description)") // print boolean
                        .font(.system(size: 11))
                        .foregroundColor(Color.gray)
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
