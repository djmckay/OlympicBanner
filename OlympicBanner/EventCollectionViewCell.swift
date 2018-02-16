//
//  EventCollectionViewCell.swift
//  OlympicBanner
//
//  Created by DJ McKay on 2/15/18.
//  Copyright © 2018 DJ McKay. All rights reserved.
//

import UIKit

class EventCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var title: UILabel!
    
    static let nib = UINib(nibName: "EventCollectionViewCell", bundle: nil)
    static let reuseIdentifier = "eventCollectionViewCell"
    static let defaultSize = CGSize(width: 200, height: 200)
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.backgroundColor = UIColor.white.withAlphaComponent(0.25)
        self.layer.cornerRadius = self.frame.width / 4
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.borderWidth = 3.0
        self.layer.masksToBounds = true
    }
    
    func configure(string: String) {
        self.title.text = string
    }

}
