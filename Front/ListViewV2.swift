//
//  ListViewV2.swift
//  CheapFun
//
//  Created by apprenant53 on 08/05/2024.
//

import SwiftUI

struct ListViewV2: View {
    var eventV = [
        CheapFunData(name: "Projection : Burning", img: "Capture d’écran 2024-04-19 à 20.45.42", type: "Cinéma", date: "14.06", price: "11€", place: "Couvent - Belle de Mai", description: "", hour: ""),
        CheapFunData(name: "Color Bus", img: "Colorbus-Marseille-Sightseeing-Tour-893x534", type: "Tourisme", date: "14.06", price: "11€", place: "Ville de Marseille", description: "", hour: ""),
        CheapFunData(name: "Concert Plein Air", img: "yvette-de-wit-NYrVisodQ2M-unsplash", type: "Musique", date: "14.06", price: "12€", place: "Parc Borély", description: "", hour: ""),
        CheapFunData(name: "Avant-Première", img: "jeremy-yap-J39X2xX_8CQ-unsplash", type: "Cinéma", date: "14.06", price: "11€", place: "Cinéma Variétés", description: "", hour: ""),
        CheapFunData(name: "Atelier Sushis", img: "derek-duran-Jz4QMhLvGgw-unsplash", type: "Atelier", date: "14.06", price: "11€", place: "Restaurant le Yen", description: "", hour: ""),
        CheapFunData(name: "Initiation Bch.Volley", img: "jannes-glas-0NaQQsLWLkA-unsplash", type: "Sport", date: "14.06", price: "11€", place: "Plage du Prado", description: "", hour: "")
    ]
    
    
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("Trier")
                        .fontWeight(.bold)
                    Image(systemName: "arrow.up.arrow.down")
                        .foregroundStyle(.mainApp)
                    Spacer()
                }
                .padding(.top, 40)
                .padding(.horizontal, 10)
                Divider()
                    .padding(.bottom)
                    .padding(.horizontal, 10)
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible())]) {
                        ForEach(eventV) { events in
                            NavigationLink {
                                DetailsView(data: events, isHidden: true)
                            } label: {
                                EventBlockList(data: events)
                            }
                        }
                    }
                    .padding(.horizontal, 10)
                    .padding(.top, 5)
                }
            }
        }
    }
}

#Preview {
    ListViewV2()
}
