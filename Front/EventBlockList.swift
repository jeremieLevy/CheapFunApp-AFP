//
//  EventBlockList.swift
//  CheapFun
//
//  Created by apprenant53 on 08/05/2024.
//

import SwiftUI

struct EventBlockList: View {
    var data = CheapFunData(name: "", img: "freaks", type: "", date: "", price: "", place: "", description: "", hour: "")
    
    var body: some View {
        VStack {
            ZStack (alignment: .topLeading){
                Image(data.img)
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: 400, maxHeight: 200)
                    .cornerRadius(7)
                    .overlay {
                        RoundedRectangle(cornerRadius: 7)
                            .stroke(lineWidth: 8)
                            .foregroundStyle(Color.mainApp)
                    }
                HStack {
                    Button {
//                        action
                    } label: {
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
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                Text(data.type)
                    .font(.title3)
                    .foregroundStyle(.black)
                HStack {
                    Text(data.price)
                        .font(.title3)
                        .fontWeight(.heavy)
                        .foregroundStyle(Color.mainApp)
                    Spacer()
                    Text(data.date)
                        .font(.title3)
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
    EventBlockList(data: CheapFunData(name: "Projection : Freaks", img: "freaks", type: "Cinéma", date: "14.06", price: "11€", place: "Couvent - Belle de Mai", description: "", hour: ""))
}
