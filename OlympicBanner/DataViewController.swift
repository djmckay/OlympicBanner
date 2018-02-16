//
//  DataViewController.swift
//  OlympicBanner
//
//  Created by DJ McKay on 2/15/18.
//  Copyright © 2018 DJ McKay. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    var dataObject: [String] = []
    
    @IBOutlet weak var eventsInformationCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.eventsInformationCollectionView.register(EventCollectionViewCell.nib, forCellWithReuseIdentifier: EventCollectionViewCell.reuseIdentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.dataLabel!.text = "Winter Olympics"
    }


}

extension DataViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataObject.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: EventCollectionViewCell.reuseIdentifier, for: indexPath) as! EventCollectionViewCell
        cell.configure(string: dataObject[indexPath.item])
        return cell
    }
    
    
}

extension DataViewController: UICollectionViewDelegate {
    
}

extension DataViewController: UICollectionViewDelegateFlowLayout {
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionSize = collectionView.layer.bounds.size
        var collectionItemSize = CGSize()
        collectionItemSize.width = collectionSize.width / CGFloat(dataObject.count) - 10
        collectionItemSize.height = collectionSize.height
        return collectionItemSize
    }
}

