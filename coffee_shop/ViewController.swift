//
//  ViewController.swift
//  coffee_shop
//
//  Created by Sei Mouk on 27/8/24.
//

import UIKit

class ViewController: UIViewController {
    
    var menus: [Menu] = []
    private let itemsPerRow: CGFloat = 2
    let sectionInsets = UIEdgeInsets(top: 20, left: 30, bottom: 20, right: 20)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let jsonData = readJSONFile(named: "menu", withExtension: "json") {
            menus = jsonData.menus
        }
        
    }
    
    
    func readJSONFile(named fileName: String, withExtension fileExtension: String) -> Menus? {
        // Locate the file in the bundle
        if let fileURL = Bundle.main.url(forResource: fileName, withExtension: fileExtension) {
            do {
                // Read the data from the file
                let data = try Data(contentsOf: fileURL)
                // Decode the data to the AppInfo struct
                let appInfo = try JSONDecoder().decode(Menus.self, from: data)
                return appInfo
            } catch {
                print("Error reading or decoding file: \(error.localizedDescription)")
            }
        } else {
            print("File not found.")
        }
        return nil
    }
}


extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menus.count
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let index = indexPath.item
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "menucell", for: indexPath) as! MenuCollectionViewCell
        
        cell.nameLabel.text = menus[index].name
        cell.priceLabel.text = "\(menus[index].price)"
        cell.menuImageView.image = UIImage(named: menus[index].image)
        cell.ratingLabel.text = menus[index].rating
        
        cell.backgroundColor = #colorLiteral(red: 0.8602648377, green: 0.7570562959, blue: 0.6719692349, alpha: 1)
        cell.layer.cornerRadius = 10
        cell.menuImageView.layer.cornerRadius = 10
        
        return cell
    }
        
    
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let paddingSpace = sectionInsets.left * (itemsPerRow + 1)
        let availableWidth = view.frame.width - paddingSpace
        let widthPerItem = availableWidth / itemsPerRow
        
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsets
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInsets.left
    }
}

