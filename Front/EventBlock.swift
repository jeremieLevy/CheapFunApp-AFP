//
//  EventBlock.swift
//  CheapFun
//
//  Created by apprenant53 on 07/05/2024.
//

import SwiftUI

struct EventBlock: View {
    
    var favorites: CheapFunData
    
    var data = CheapFunData(name: "", img: "freaks", type: "", date: "", price: "", place: "", description: "", hour: "")
    
    
    @State var addToFavorites = [CheapFunData]()
    
    var body: some View {
        VStack (alignment: .leading)  {
            ZStack (alignment: .topLeading){
                Image(data.img)
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: 180, maxHeight: 120)
                    .cornerRadius(7)
                    .overlay {
                        RoundedRectangle(cornerRadius: 7)
                            .stroke(lineWidth: 4)
                            .foregroundStyle(Color.mainApp)
                    }
                HStack {
                    Button {
//                        favorites.isFavorite = true
                    }label: {
                        Image(systemName: "heart")
                            .font(.title2)
                            .foregroundStyle(.white)
                            .bold()
                        .padding()
                    }
                }
            }
            VStack (alignment: .leading) {
                Text(data.name)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                Text(data.type)
                    .font(.footnote)
                    .foregroundStyle(.black)
                HStack {
                    Text(data.price)
                        .font(.headline)
                        .fontWeight(.heavy)
                        .foregroundStyle(Color.mainApp)
                    Spacer()
                    Text(data.date)
                        .font(.subheadline)
                        .fontWeight(.regular)
                        .foregroundStyle(Color.mainApp)
                    Image(systemName: "calendar")
                        .font(.title2)
                        .foregroundStyle(Color.mainApp)
                    
                }
            }
        }
    }
}

#Preview {
    EventBlock(favorites: CheapFunData(name: "", img: "", type: "", date: "", price: "", place: "", description: "", hour: ""), data: CheapFunData(name: "Projection : Freaks", img: "freaks", type: "Cinéma", date: "14.06", price: "11€", place: "Couvent - Belle de Mai", description: "", hour: ""))
}
