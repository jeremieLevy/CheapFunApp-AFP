//
//  ScrollViewTest.swift
//  CheapFun
//
//  Created by apprenant49 on 07/05/2024.
//

import SwiftUI

struct ScrollViewTest: View {
    var event = [
        CheapFunData(name: "Projection : Freaks", img: "freaks", type: "Cinéma", date: "12.06", price: "Gratuit", place: "", description: "", hour: ""),
        CheapFunData(name: "Chifoumi", img: "solarium", type: "Expo", date: "17.07", price: "Gratuit", place: "", description: "", hour: ""),
        CheapFunData(name: "Color Bus", img: "Colorbus-Marseille-Sightseeing-Tour-893x534", type: "Tourisme", date: "24.06", price: "5 euros", place: "", description: "", hour: "")
        
    ]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(event) { events in
                    NavigationLink {
                        DetailsView(data: events, isHidden: true)
                    } label: {
                        ZStack (alignment: .topLeading) {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(.mainApp)
                                .frame(maxWidth: 350, maxHeight: 260)
                            VStack {
                                ZStack (alignment: .topLeading){
                                    Image(events.img)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(maxWidth: 340, maxHeight: 190)
                                        .cornerRadius(7)
                                        .padding(5)
                                        .background(Color.mainApp)
                                        .cornerRadius(10)
                                    HStack {
                                        VStack {
                                            Button {

                                            }label: {
                                                Image(systemName: "heart")
                                                    .font(.title2)
                                                    .foregroundStyle(.white)
                                                    .bold()
                                                    .padding()
                                            }
                                        }
                                    }
                                }
                                HStack /*(alignment: .top)*/{
                                    VStack (alignment: .leading){
                                        Text(events.name)
                                            .bold()
                                            .foregroundStyle(.white)
                                            .padding(.trailing)
                                        Text(events.type)
                                            .foregroundStyle(.white)
                                            .padding(.trailing)
                                    }
                                    Text(events.price)
                                        .bold()
                                        .foregroundStyle(.white)
                                        .padding(.trailing)
                                    Image(systemName:"calendar")
                                        .foregroundStyle(.white)
                                    Text(events.date)
                                        .bold()
                                        .foregroundStyle(.white)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewTest()
}




