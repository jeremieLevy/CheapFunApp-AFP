//
//  DetailsView.swift
//  CheapfunAppTest
//
//  Created by apprenant53 on 03/05/2024.
//

import SwiftUI

struct DetailsView: View {
    var data: CheapFunData
    
    @State var isHidden: Bool
    
    @State var isViewed = false
    
    var body: some View {
        ScrollView {
            VStack {
                Image(data.img)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 360)
                    .cornerRadius(15)
                    .overlay {
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(.mainApp, lineWidth: 10)
                    }
                HStack {
                    Text(data.name)
                        .font(.title)
                    Spacer()
                    Button {
                    } label: {
                        Image(systemName: "suit.heart")
                            .font(.title)
                        .foregroundStyle(.mainApp)
                    }
                }
                .padding(.top)
                Divider()
                HStack { /*Date*/
                    Text(data.date)
                        .font(.title3)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Spacer()
                }
                HStack { /*Place*/
                    Text(data.place)
                        .font(.title3)
                        .foregroundStyle(.gray)
                    Spacer()
                }
                Text(data.description)
                    .font(.footnote)
                    .lineLimit(isViewed ? 10 : 2)
                    .padding(.top, 30)
                
                Button {
                    isViewed.toggle()
                } label: {
                    Image("plusButton")
                        .foregroundStyle(.mainApp)
                }
                .padding(.top, 2)
                .overlay {
                    Image(systemName: isViewed ? "minus" : "plus")
                        .foregroundStyle(.white)
                        .font(.footnote)
                        .padding(.top, 2)
                        .fontWeight(.bold)
                }
                .drawingGroup()
                .padding(.top)
                HStack {
                    Text(data.price)
                        .font(.title)
                        .foregroundStyle(.mainApp)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Button {
                        //                    Action
                    } label: {
                        Label("Réserver", systemImage: "ticket.fill")
                            .foregroundStyle(.white)
                            .padding()
                            .fontWeight(.bold)
                            .background {
                                RoundedRectangle(cornerRadius: 12.0)
                                    .foregroundStyle(.mainApp)
                            }
                    }
                }
                .padding(.top, 20)
            }
            .padding(.top, 50)
            .padding(.horizontal)
        }
    }
}

#Preview {
    DetailsView(data: CheapFunData(name: "Projection : Burning", img: "Capture d’écran 2024-04-19 à 20.45.42", type: "Cinéma", date: "14.06", price: "11€", place: "Couvent - Belle de Mai", description: "Lors d'une livraison, Jongsu, un jeune coursier, tombe par hasard sur Haemi, une jeune fille qui habitait auparavant son quartier. Elle lui demande de s'occuper de son chat pendant un voyage en Afrique. À son retour, Haemi lui présente Ben, un garçon mystérieux qu'elle a rencontré là-bas. Un jour, Ben leur révèle un bien étrange passe-temps.", hour: ""), isHidden: true, isViewed: false)
}


