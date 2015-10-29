//
//  ArtMuseum.swift
//  UITableViewAssignment
//
//  Created by Mounika Ankam on 2/17/15.
//  Copyright (c) 2015 Mounika Ankam. All rights reserved.
//

import Foundation

class ArtMuseum{
    var worksOfArt:[FamousPainting]
    
    
    init(){
                
        self.worksOfArt=[
            FamousPainting(title: "The Garden of Delights", artist: "Bosch", yearcreated: 1504),
            FamousPainting(title: "Il Giudizio Universale", artist: "Michelangelo", yearcreated: 1541),
            FamousPainting(title: "Europe After the Rain II", artist: "Ernst", yearcreated: 1942),
            FamousPainting(title: "Beethovenfries", artist: "Klimt", yearcreated: 1902),
            FamousPainting(title: "Persistence of Memory", artist: "Dali", yearcreated: 1931),
            FamousPainting(title: "The Virgin", artist: "Klimt", yearcreated: 1913)
        ]
    }
}