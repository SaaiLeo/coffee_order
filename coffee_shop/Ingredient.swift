//
//  Ingredient.swift
//  coffee_shop
//
//  Created by Sei Mouk on 27/8/24.
//

import Foundation
import UIKit

class Ingredient: UIView {
    
    // Properties to access and modify the view's frame
    var x: CGFloat {
        get { frame.origin.x }
        set { frame.origin.x = newValue }
    }
    
    var y: CGFloat {
        get { frame.origin.y }
        set { frame.origin.y = newValue }
    }
    
    var width: CGFloat {
        get { frame.size.width }
        set { frame.size.width = newValue }
    }
    
    var height: CGFloat {
        get { frame.size.height }
        set { frame.size.height = newValue }
    }
    
    // Initializer to set up the view with a default frame
    init(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) {
        let frame = CGRect(x: x, y: y, width: width, height: height)
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    // Method to set up default properties or subviews
    private func setupView() {
        backgroundColor = .brown // Example of default background color
        // Add additional setup code here (e.g., subviews, constraints)
    }
    
    // Method to easily update the frame
    func updateFrame(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) {
        self.frame = CGRect(x: x, y: y, width: width, height: height)
    }
}
