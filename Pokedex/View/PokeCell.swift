//
//  PokeCell.swift
//  Pokedex
//
//  Created by KELVIN LING SHENG SIANG on 04/10/2017.
//  Copyright © 2017 KELVIN LING SHENG SIANG. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.cornerRadius = 5.0
    }
    
    func configureCell(pokemon: Pokemon) {
        self.pokemon = pokemon
        thumbImg.image = UIImage(named: "\(self.pokemon.pokedexID)")
        nameLbl.text = self.pokemon.name.capitalized
    }
}
