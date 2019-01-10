//
//  ViewController.swift
//  IOSDrawShapesTutorial
//
//  Created by Arthur Knopper on 09/01/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        switch sender.tag {
            case 0: drawLines()
            case 1: drawRectangle()
            case 2: drawCircle()
            default: print("default")
        }
    }
    
    func drawLines() {
        // 1
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 280, height: 250))
        
        let img = renderer.image { ctx in
            // 2
            ctx.cgContext.move(to: CGPoint(x: 20.0, y: 20.0))
            ctx.cgContext.addLine(to: CGPoint(x: 260.0, y: 230.0))
            ctx.cgContext.addLine(to: CGPoint(x: 100.0, y: 200.0))
            ctx.cgContext.addLine(to: CGPoint(x: 20.0, y: 20.0))
            
            ctx.cgContext.setLineWidth(10)
            ctx.cgContext.setStrokeColor(UIColor.black.cgColor)
            
            // 3
            ctx.cgContext.strokePath()
        }
        
        imageView.image = img
    }
    
    
    
    func drawRectangle() {
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 280, height: 250))
        
        let img = renderer.image { ctx in
            let rectangle = CGRect(x: 0, y: 0, width: 280, height: 250)
            
            // 4
            ctx.cgContext.setFillColor(UIColor.yellow.cgColor)
            ctx.cgContext.setStrokeColor(UIColor.gray.cgColor)
            ctx.cgContext.setLineWidth(20)
            
            // 5
            ctx.cgContext.addRect(rectangle)
            ctx.cgContext.drawPath(using: .fillStroke)
        }
        
        imageView.image = img
    }
    
    func drawCircle() {
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 280, height: 250))
        
        let img = renderer.image { ctx in
            let rect = CGRect(x: 5, y: 5, width: 270, height: 240)
            
            // 6
            ctx.cgContext.setFillColor(UIColor.blue.cgColor)
            ctx.cgContext.setStrokeColor(UIColor.black.cgColor)
            ctx.cgContext.setLineWidth(10)
            
            ctx.cgContext.addEllipse(in: rect)
            ctx.cgContext.drawPath(using: .fillStroke)
        }
        
        imageView.image = img
    }
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

