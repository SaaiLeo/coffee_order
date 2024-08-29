//
//  CustomViewController.swift
//  coffee_shop
//
//  Created by Sei Mouk on 27/8/24.
//

import UIKit

class CustomViewController: UIViewController {
    
    @IBOutlet var coffeeTextField : UITextField!
    @IBOutlet var chocolateTextField : UITextField!
    @IBOutlet var milkTextField : UITextField!
    @IBOutlet var waterTextField : UITextField!
    
    
    let coffee_y: CGFloat = 300
    var coffee_heigh: CGFloat = 100
    var chocolate_heigh: CGFloat = 50
    var milk_heigh: CGFloat = 30
    var water_heigh: CGFloat = 20
    
    var coffeeView: Ingredient!
    var chocolateView: Ingredient!
    var milkView: Ingredient!
    var waterView: Ingredient!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var chocolate_y = coffee_y - chocolate_heigh
        var milk_y = coffee_y - chocolate_heigh - milk_heigh
        var water_y = coffee_y - chocolate_heigh - milk_heigh - water_heigh
        
        var coffeeView = Ingredient(x: 75, y: coffee_y, width: 250, height: coffee_heigh)
        let chocolateView = Ingredient(x: 75, y: chocolate_y, width: 250, height: chocolate_heigh)
        let milkView = Ingredient(x: 75, y: milk_y, width: 250, height: milk_heigh)
        let waterView = Ingredient(x: 75, y: water_y, width: 250, height: water_heigh)

        coffeeView.backgroundColor = #colorLiteral(red: 0.3888587952, green: 0.2819396257, blue: 0.1951555014, alpha: 1)
        chocolateView.backgroundColor = #colorLiteral(red: 0.5155168176, green: 0.3746462464, blue: 0.2982526422, alpha: 1)
        milkView.backgroundColor = #colorLiteral(red: 0.9903816581, green: 1, blue: 0.9613069892, alpha: 1)
        waterView.backgroundColor = #colorLiteral(red: 0.1662415862, green: 0.6484370232, blue: 0.929528296, alpha: 1)
        
        view.addSubview(coffeeView)
        view.addSubview(chocolateView)
        view.addSubview(milkView)
        view.addSubview(waterView)
        
        
    }
      
    @IBAction func buttonClicked(_ sender: Any) {
        // Safely convert text field values to CGFloat
//        let coffeeHeight = CGFloat(Int(coffeeTextField.text ?? "0") ?? 0)
//        let chocolateHeight = CGFloat(Int(chocolateTextField.text ?? "0") ?? 0)
//        let milkHeight = CGFloat(Int(milkTextField.text ?? "0") ?? 0)
//        let waterHeight = CGFloat(Int(waterTextField.text ?? "0") ?? 0)
        
        let coffeeHeight = CGFloat(50)
        let chocolateHeight = CGFloat(50)
        let milkHeight = CGFloat(50)
        let waterHeight = CGFloat(50)
        
        // Update properties
        coffee_heigh = coffeeHeight
        chocolate_heigh = chocolateHeight
        milk_heigh = milkHeight
        water_heigh = waterHeight
        
        // Update frames of views
        coffeeView.updateFrame(x: 75, y: coffee_y, width: 250, height: coffeeHeight)
        chocolateView.updateFrame(x: 75, y: coffee_y - chocolateHeight, width: 250, height: chocolateHeight)
        milkView.updateFrame(x: 75, y: coffee_y - chocolateHeight - milkHeight, width: 250, height: milkHeight)
        waterView.updateFrame(x: 75, y: coffee_y - chocolateHeight - milkHeight - waterHeight, width: 250, height: waterHeight)
    }

}
