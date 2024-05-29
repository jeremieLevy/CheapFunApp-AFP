//
//  SuggestionsV2.swift
//  CheapFun
//
//  Created by apprenant53 on 07/05/2024.
//

import SwiftUI

struct SuggestionsV2: View {
    @State var showingModal = false
    
    var eventH = [
        CheapFunData(name: "Projection : Freaks", img: "freaks", type: "Cinéma", date: "14.06", price: "11€", place: "Couvent - Belle de Mai", description: "", hour: ""),
        CheapFunData(name: "Color Bus", img: "Colorbus-Marseille-Sightseeing-Tour-893x534", type: "Tourisme", date: "14.06", price: "11€", place: "Couvent - Belle de Mai", description: "", hour: "")
    ]
    
    var eventV = [
        CheapFunData(name: "Projection : Burning", img: "Capture d’écran 2024-04-19 à 20.45.42", type: "Cinéma", date: "14.06", price: "11€", place: "Couvent - Belle de Mai", description: "", hour: ""),
        CheapFunData(name: "Color Bus", img: "Colorbus-Marseille-Sightseeing-Tour-893x534", type: "Tourisme", date: "14.06", price: "11€", place: "Ville de Marseille", description: "", hour: ""),
        CheapFunData(name: "Concert Plein Air", img: "yvette-de-wit-NYrVisodQ2M-unsplash", type: "Musique", date: "14.06", price: "12€", place: "Parc Borély", description: "", hour: ""),
        CheapFunData(name: "Avant-Première", img: "jeremy-yap-J39X2xX_8CQ-unsplash", type: "Cinéma", date: "14.06", price: "11€", place: "Cinéma Variétés", description: "", hour: ""),
        CheapFunData(name: "Atelier Sushis", img: "derek-duran-Jz4QMhLvGgw-unsplash", type: "Atelier", date: "14.06", price: "11€", place: "Restaurant le Yen", description: "", hour: ""),
        CheapFunData(name: "Initiation Bch.Volley", img: "jannes-glas-0NaQQsLWLkA-unsplash", type: "Sport", date: "14.06", price: "11€", place: "Plage du Prado", description: "", hour: ""),
    ]
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    HStack {
                        Image("plusButton")
                            .foregroundStyle(.mainApp)
                        Text("Suggestions")
                            .font(.body)
                            .fontWeight(.bold)
                    }
                    .padding(.horizontal)
                    Spacer()
                    Button {
                        showingModal.toggle()
                    } label: {
                        Image(systemName:"slider.horizontal.3")
                            .fontWeight(.bold)
                            .foregroundStyle(Color("mainAppColor"))
                            .padding()
                    }
                    .sheet(isPresented: $showingModal) {
                        PreferenceView(text: "")
                    }
                }
                ScrollView {
                    HStack {
                        Text("Top 3 de la semaine")
                            .foregroundStyle(.mainApp)
                        Spacer()
                    }
                    .padding(.horizontal)
                    ScrollViewTest()
                        .padding(.horizontal, 7)
                        .shadow(radius: 5)
                    HStack {
                        Text("Toutes les suggestions")
                            .foregroundStyle(.mainApp)
                        Spacer()
                    }
                    .padding(.top, 40)
                    .padding(.horizontal)
                    Divider()
                        .padding(.horizontal)
                        .padding(.bottom)
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
                        ForEach(eventV) { events in
                            NavigationLink {
                                DetailsView(data: events, isHidden: true)
                            } label: {
                                EventBlock(favorites: CheapFunData(name: "", img: "", type: "", date: "", price: "", place: "", description: "", hour: ""), data: events)
                            }
                        }
                    }
                    .padding(.horizontal, 10)
                }
            }
        }
    }
}

#Preview {
    SuggestionsV2()
}
