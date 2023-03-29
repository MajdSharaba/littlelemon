//
//  Home.swift
//  Restaurant
//
//  Created by YAWAR on 21/03/2023.
//

import SwiftUI

struct Home: View {
    let persistence = PersistenceController.shared
    var body: some View {
        TabView {
            
            Menu()
                .tabItem {
                Label("Menu", systemImage: "list.dash")
            }
            UserProfile()
                .tabItem {
                Label("Profile", systemImage: "square.and.pencil")
            }
            
            
        }.navigationBarBackButtonHidden(true)
            .environment(\.managedObjectContext, persistence.container.viewContext)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
