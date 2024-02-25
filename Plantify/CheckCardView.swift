//
//  CheckCardView.swift
//  Plantify
//
//  Created by Norah Aldughem on 09/08/1445 AH.
//

import SwiftUI

struct CheckCardView: View {
    var CheckCard: CheckCard
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 16)
                .fill(.backgroundCard)
                .frame(width: 350, height: 66)
            HStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Circle()
                        .stroke(
                            Color.icons,
                            style: StrokeStyle(lineWidth: 2))
                        .frame(width: 24)
                        .padding()
                })
                VStack(alignment:.leading){
                    Text("\(CheckCard.PlantName)")
                        .font(.title3)
                        .foregroundColor(.bodyText)
                    
                    Text("\(CheckCard.PlantType.rawValue)")
                        .font(.caption)
                        .foregroundColor(.subtitleText)
                    
                    
                }
            }
            .frame(width: 350, height: 66, alignment: .leading)
            
        }
    }
}
//#Preview {
//    CheckCardView()
//}
