//
//  PlantCard.swift
//  Plantify
//
//  Created by Norah Aldughem on 09/08/1445 AH.
//

struct PlantCard : Hashable{
    
    var PlantName : String
    var PlantType : PlantCardViewModel.PlantTypes
    var PotSize : PlantCardViewModel.PotSize
    var Light : PlantCardViewModel.Lighting
    var Watering : Int
    var checkCard : CheckCard
}
