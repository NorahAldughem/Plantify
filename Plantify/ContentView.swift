//
//  ContentView.swift
//  Plantify
//
//  Created by Norah Aldughem on 04/08/1445 AH.
//

import SwiftUI

struct ContentView: View {
    @State var segmentedChoice = 0
    @State var checkCards : [CheckCard] = []
    @State var PlantCards : [PlantCard] = []
    @State var isshowingsheet = false
    
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
                    
                    if (checkCards.isEmpty) {
                        VStack{
                            Image(systemName:"zzz")
                                .font(.system(size: 32))
                                .foregroundStyle(.icons)
                                .padding()
                            Text("You don't have anyplants that needs watering")
                                .font(.caption)
                                .foregroundStyle(.subtitleText)
                                
                        }
                        .frame(width: 350, height: 270, alignment: .center)
                        
                    }
                    else{
                        ScrollView{
                            VStack{
                                ForEach (checkCards, id: \.self){
                                  checkCard in
                                    CheckCardView(CheckCard: checkCard)
                                    
                                }
                            }
                        }
                    }
                    HStack{
                        Text("Office Plants")
                            .font(.title2)
                            .bold()
                            .foregroundStyle(.titleText)
                        Spacer()
                        Button {
                            isshowingsheet.toggle()
                        } label: {
                            Image(systemName: "plus")
                                .font(.system(size: 24))
                                .foregroundStyle(.backgroundButtons)
                            
                        }
                        .sheet(isPresented: $isshowingsheet, content: {Sheet()
                            
                            
                        })

                    }
                    if (PlantCards.isEmpty){
                        VStack{
                            Image(systemName: "leaf")
                                .font(.system(size: 32))
                                .foregroundStyle(.icons)
                                .padding()
                            Text("Tap ")
                                .font(.system(size: 17))
                                .foregroundStyle(.subtitleText)
                            + Text(Image(systemName: "plus"))
                                .font(.system(size: 22))
                                .foregroundStyle(.backgroundButtons)
                            + Text(" To dd one")
                                .font(.system(size: 17))
                                .foregroundColor(.subtitleText)
                            
                            Text("You can add all plants you have in your office")
                                .font(.caption)
                                .foregroundColor(.subtitleText)
                            
                        }
                    }
                        

                    
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
