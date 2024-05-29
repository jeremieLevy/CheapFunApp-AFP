//
//  FinalAppView.swift
//  CheapFun
//
//  Created by apprenant53 on 08/05/2024.
//

import SwiftUI

struct FinalAppView: View {
    var body: some View {
        TabView {
            SuggestionsV2()
                .tabItem {
                    Image(systemName: "lightbulb")
                    Text("Suggestion")
                }
            FavorisList()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favoris")
                }
            ListViewV2()
                .tabItem {
                    Image(systemName: "list.dash.header.rectangle")
                    Text("Liste")
                }
        }
    }
}

#Preview {
    FinalAppView()
}
