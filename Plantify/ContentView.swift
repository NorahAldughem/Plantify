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
            ZStack{
                VStack {
                    HStack{
                        Text("Watering")
                            .font(.title2.bold())
                        
                        Spacer()
                        NavigationLink(destination: SeeAll(), label: {
                            Text("See All")
                                .font(.system(size: 12))
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            
                        })
                    }
                    
                    VStack{
                        Picker("",selection: $segmentedChoice){
                            Text("Today").tag(0)
                            Text("Next Week").tag(1)
                            Text("Overdue").tag(2)
                        }
                        .pickerStyle(.segmented)
                        
                    }
                    
                    if (var plantCardViewModel: PlantCardViewModel)

                    
                }
                .padding()
                .navigationBarTitle("My Plants")
                .toolbarBackground(.visible)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        NavigationLink("", destination: ContentView())
                    }
                }
            }
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
