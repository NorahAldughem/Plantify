//
//  ContentView.swift
//  Plantify
//
//  Created by Norah Aldughem on 04/08/1445 AH.
//

import SwiftUI

struct ContentView: View {
    @State var segmentedChoice = 0
    
    var body: some View {
        NavigationStack{
            VStack {
                HStack{
                    Text("Watering")
                        .font(.title.bold())
                    Spacer()
                    NavigationLink(destination: SeeAll(), label: {
                        Text("See All")
                            .font(.system(size: 12))
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    
                    })
                }
            }
            VStack{
                Picker("",selection: $segmentedChoice){
                    Text("Today").tag(0)
                    Text("Next Week").tag(1)
                    Text("Over").tag(2)
                }
                .pickerStyle(.segmented)
            }
            .padding()
        }
        


    }
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .backgroundButtons
        
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.screenBackground], for: .selected)
        
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.bodyText], for: .normal)
    }
}

#Preview {
    ContentView()
}
