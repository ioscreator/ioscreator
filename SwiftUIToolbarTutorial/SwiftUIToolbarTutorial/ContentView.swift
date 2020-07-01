//
//  ContentView.swift
//  SwiftUIToolbarTutorial
//
//  Created by Arthur Knopper on 01/07/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack() {
                Text("Lorem ipsum dolor sit amet, ad usu justo novum voluptatibus, suas inermis voluptaria an has, vix hinc aliquid te. Eos at offendit invenire voluptatum, ei vim lucilius interesset. Vim probo equidem complectitur cu, alia pericula et his. Ceteros menandri vel ei, nonumy fuisset incorrupte in mea, ei vivendo tibique vis. Quot legendos signiferumque an eam, ea eum omittam efficiendi, te adhuc oratio per.Rebum ornatus rationibus mea et, an vidit delenit delicata mea. At pro salutandi accommodare comprehensam, enim neglegentur mea in. Quod vituperata in nec. Regione voluptaria id mel, nam ei meis labitur posidonium. Amet scripserit definitionem ei sit, eum brute iudicabit democritum ea, has ea ponderum consectetuer reprehendunt. Ei sea omnes legere referrentur.Vel illud utinam sanctus an, iisque detraxit qui no. Vel at habemus volutpat, cum habeo aperiam at, aperiam cotidieque dissentiet vel at. Sale eleifend ea sit. Eam ad clita labore. Ne qui ceteros menandri reprehendunt.Ut usu harum consequat, mei falli vitae argumentum ea. Cum eu inani percipit. Nam case movet tibique at, an vix lobortis voluptatum. Utamur maluisset vis et, nihil principes id eos. Putant placerat an usu. Ex vis noster lobortis.")
                Spacer()
            }
            .padding(.all, 10)
            .navigationTitle("SwiftUI Toolbars")
            
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    HStack(spacing: 50) {
                        Image(systemName: "trash")
                        Image(systemName: "info")
                        Image(systemName: "paperclip")
                        Text("Share")
                        HStack {
                            Image(systemName: "photo")
                            Text("Photo")
                        }
                    }
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
