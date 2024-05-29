//
//  PreferenceView.swift
//  CheapFun
//
//  Created by apprenant53 on 06/05/2024.
//

import SwiftUI

struct PreferenceView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State var maxBudgetField: String = ""
    @State var dateField: String = ""
    @State var hourField: String = ""
    @State var localisationField: String = ""
    
    @State var text: String
    
    @State var selectedTag: Set<String> = []

    var body: some View {
        VStack {
            Button {
                dismiss()
            } label: {
                Image("plusButton")
                    .foregroundStyle(.mainApp)
                    .font(.title2)
                    .overlay {
                        Image(systemName: "checkmark")
                            .fontWeight(.bold)
                            .font(.caption2)
                            .foregroundStyle(.white)
                    }
//                Label("Valider", systemImage: "checkmark.circle.fill")
//                    .foregroundStyle(.white)
//                    .padding(5)
//                    .background {
//                        RoundedRectangle(cornerRadius: 20.0)
//                            .foregroundStyle(.mainApp)
//                    }
            }
            .padding(.top, 40)
            .padding(.bottom, 30)
            TextField("", text: $maxBudgetField, prompt: Text("Budget Maximum (euros)").foregroundStyle(.white.opacity(0.5)))
                .foregroundStyle(Color.white)
                .padding(10)
                .background(){
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(Color.mainApp)
                }
                .padding([.top, .bottom])
            TextField("", text: $dateField, prompt: Text("Date : jour/mois").foregroundStyle(.white.opacity(0.5)))
                .foregroundStyle(Color.white)
                .padding(10)
                .background(){
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(Color.mainApp)
                }
                .padding([.top, .bottom])
            TextField("", text: $hourField, prompt: Text("Heure").foregroundStyle(.white.opacity(0.5)))
                .foregroundStyle(Color.white)
                .padding(10)
                .background(){
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(Color.mainApp)
                }
                .padding([.top, .bottom])
            TextField("", text: $localisationField, prompt: Text("Lieu").foregroundStyle(.white.opacity(0.5)))
                .foregroundStyle(Color.white)
                .padding(10)
                .background(){
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(Color.mainApp)
                }
                .padding([.top, .bottom])
        }
        .padding([.horizontal, .top])
        Spacer()
        HStack{
            Spacer()
            Image(systemName: "arrow.right")
                .fontWeight(.bold)
                .foregroundStyle(.mainApp)
        }
        .padding(.horizontal)
        TagView(selectedTag: $selectedTag)
            .padding()
        Spacer()
        
    }
}

#Preview {
    PreferenceView(text: "")
}



//.foregroundStyle(Color.white)
//.padding(10)
//.background(){
//    RoundedRectangle(cornerRadius: 10)
//        .foregroundStyle(Color.mainApp)




//VStack {
//    TextField("Budget Maximum", text: $maxBudgetField)
//    
//    .foregroundStyle(Color.white)
//    .padding(10)
//    .background(){
//        RoundedRectangle(cornerRadius: 10)
//            .foregroundStyle(Color.mainApp)
//    }
//}
//.padding()
//.padding(.top, 50)
//.padding(.bottom, 100)
