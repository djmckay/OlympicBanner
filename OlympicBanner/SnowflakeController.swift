//
//  SnowflakeController.swift
//  OlympicBanner
//
//  Created by DJ McKay on 2/15/18.
//  Copyright © 2018 DJ McKay. All rights reserved.
//

import UIKit

struct SnowflakeController {
    
    var gravitiy: UIGravityBehavior!
    
    let snowLayer = CAEmitterLayer()
    lazy var snowCell: CAEmitterCell = {
        let cell = CAEmitterCell()
        cell.contents = #imageLiteral(resourceName: "snowflake").cgImage
        cell.birthRate = 50
        cell.velocity = -30.0
        cell.velocityRange = 20.0
        cell.lifetime = 30.0
        cell.color = UIColor.white.withAlphaComponent(0.75).cgColor
        cell.alphaRange = 0.5
        cell.scale = 0.05
        cell.scaleRange = 0.09
        cell.emissionRange = .pi * 2.0
        cell.yAcceleration = 10
        cell.xAcceleration = 3
        cell.spin = -0.5
        cell.spinRange = 2
        return cell
    }()
    
    mutating func addToView(into view: UIView) {
        snowLayer.emitterPosition = CGPoint(x: view.frame.size.width / 2.0, y: -view.frame.size.height)
        snowLayer.emitterMode = kCAEmitterLayerSurface
        snowLayer.emitterCells = [snowCell]
        view.layer.addSublayer(snowLayer)
    }
}
