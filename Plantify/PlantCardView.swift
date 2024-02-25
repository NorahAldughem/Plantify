//
//  PlantCardView.swift
//  Plantify
//
//  Created by Norah Aldughem on 09/08/1445 AH.
//

import SwiftUI

struct PlantCardView: View {
    var PlantCard : PlantCard
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 16)
                .fill(.backgroundCard)
                .frame(width: 350, height: 128)
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.screenBackground)
                        .frame(width: 112, height: 112)
                    Image(systemName: "camera.macro")
                        .font(.system(size: 32))
                        .foregroundColor(.primaryGreen)
                }
                VStack(alignment: .leading){
                    Text("\(PlantCard.PlantName)")
                        .font(.title3)
                        .foregroundColor(.bodyText)
                    RoundedRectangle(cornerRadius: 4.0)
                        .fill(.backgroundTags)
                        .frame(height: 21)
                        .overlay(
                            HStack{
                                Image(systemName:"leaf")
                                    .font(.system(size: 11))
                                    .foregroundColor(.icons)
                                Text("\(PlantCard.PlantType.rawValue)")
                                    .font(.caption2)
                                    .foregroundColor(.bodyText)
                            }
                            )
                    RoundedRectangle(cornerRadius: 4)
                        .fill(.backgroundTags)
                        .frame(width: 95, height: 21)
                        .overlay(
                            HStack{
                                Image(systemName:"hourglass.bottomhalf.filled")
                                    .font(.system(size: 11))
                                    .foregroundColor(.icons)
                                Text("0 Weeks Old")
                                    .font(.caption2)
                                    .foregroundColor(.bodyText)
                            }
                            )
                    
                    
                    
                }
                .frame(width: 95)
                ZStack{
                    Circle()
                        .fill(.backgroundTags)
                        .frame(width:71)
                    Circle()
                        ///trim
                        .stroke(
                            Color.backgroundButtons ,
                            style: StrokeStyle(lineWidth: 4, lineCap: .round)
                        )
                        .frame(width: 71)
                    VStack{
                        Image(systemName: "drop")
                            .font(.system(size: 20))
                            .foregroundColor(.icons)
                        Text("\(PlantCard.Watering) /week")
                            .font(.caption2)
                            .foregroundColor(.subtitleText)
                        
                    }
                }
                .frame(width: 95)
                
            }
            .frame(width: 350, height: 128)
            
        }
    }
}

//#Preview {
//    PlantCardView()
//}
