//
//  ViewController.swift
//  UILabelError
//
//  Created by Carlos Jimenez on 2022-07-27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadLabel()
    }

    func loadLabel() {
        
        label?.numberOfLines = 0
        
        let quote = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed accumsan dapibus euismod. In pulvinar et orci sit amet tristique. Curabitur iaculis consequat sollicitudin. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce vel odio rhoncus, faucibus felis at, lacinia tortor. Vivamus tempor cursus ex a hendrerit"
        let attributedQuote = NSMutableAttributedString()
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 0
        paragraphStyle.paragraphSpacingBefore = 0
        paragraphStyle.paragraphSpacing = 0
        // 👇 Will crash the app on iOS 16. Change back to [0.0...1.0]
        /// On iOS 15, will work fine.
        paragraphStyle.hyphenationFactor = 15
        paragraphStyle.tailIndent = 0

        let attributes:[NSAttributedString.Key : Any] = [.paragraphStyle : paragraphStyle]
        
        attributedQuote.append(NSAttributedString(string: quote, attributes:attributes))
        
        label?.attributedText = attributedQuote
        
    }
}

