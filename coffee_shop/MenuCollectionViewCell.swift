//
//  MenuCollectionViewCell.swift
//  coffee_shop
//
//  Created by Sei Mouk on 27/8/24.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var menuImageView: UIImageView!
    @IBOutlet var ratingLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var addButton: UIButton!
    
    @IBAction func addButton(_ sender : UIButton ) {
        print("Add button Clicked.")
    }
    
}
