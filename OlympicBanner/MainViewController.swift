//
//  MainViewController.swift
//  OlympicBanner
//
//  Created by DJ McKay on 2/15/18.
//  Copyright © 2018 DJ McKay. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var eventBannerViewController: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var snowManager = SnowflakeController()
        snowManager.addToView(into: self.eventBannerViewController)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
