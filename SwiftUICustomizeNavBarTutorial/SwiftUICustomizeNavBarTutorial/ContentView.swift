//
//  ContentView.swift
//  SwiftUICustomizeNavBarTutorial
//
//  Created by Arthur Knopper on 25/10/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SwiftUI

struct People: Identifiable{
    var id  = UUID()
    var name = String()
}

struct ContentView: View {
    
    init() {
        UINavigationBar.appearance().backgroundColor = .yellow
       
        UINavigationBar.appearance().largeTitleTextAttributes = [
            .foregroundColor: UIColor.darkGray,
            .font : UIFont(name:"Papyrus", size: 40)!]
                 
        UINavigationBar.appearance().titleTextAttributes = [
            .font : UIFont(name: "HelveticaNeue-Thin", size: 20)!]
    }
    
    let people: [People] = [
        People(name: "Bill"),
        People(name: "Jacob"),
        People(name: "Olivia")]
    
    var body: some View {
        NavigationView {
            List(people) { listedPeople in
                NavigationLink(destination: DetailView(name: listedPeople.name)) {
                    VStack(alignment: .leading){
                        Text(listedPeople.name)
                    }
                }
            }
            .navigationBarItems(leading:
            HStack {
                Button(action: {}) {
                    Image(systemName: "minus.square.fill")
                        .font(.largeTitle)
                }.foregroundColor(.pink)
            }, trailing:
            HStack {
                Button(action: {}) {
                    Image(systemName: "plus.square.fill")
                        .font(.largeTitle)
                }.foregroundColor(.blue)
            })
                .navigationBarTitle(Text("Names"))
        }
    }
}

struct DetailView: View {
    var name: String
    
    var body: some View {
        Text("current name is: \(name) ")
        .navigationBarTitle(Text("Current Name"), displayMode: .inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

