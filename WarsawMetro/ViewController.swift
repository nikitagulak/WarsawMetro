//
//  ViewController.swift
//  WarsawMetro
//
//  Created by Nick on 03/06/2018.
//  Copyright © 2018 Yofa. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var metroButtonView: UIButton!
    @IBOutlet weak var skmButtonView: UIButton!
    @IBOutlet weak var tabBar: UIView!
    
    @IBAction func skmButton(_ sender: Any) {
        imageView.image = UIImage(named: "WarsawSKM")
        metroButtonView.setTitleColor(UIColor(red:0.78, green:0.84, blue:0.91, alpha:1.0), for: .normal)
        skmButtonView.setTitleColor(UIColor(red:1.00, green:0.28, blue:0.20, alpha:1.0), for: .normal)
    }
    
    @IBAction func metroButton(_ sender: Any) {
        imageView.image = UIImage(named: "WarsawMetro")
        metroButtonView.setTitleColor(UIColor(red:1.00, green:0.28, blue:0.20, alpha:1.0), for: .normal)
        skmButtonView.setTitleColor(UIColor(red:0.78, green:0.84, blue:0.91, alpha:1.0), for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.scrollView.minimumZoomScale = 1.0
        self.scrollView.maximumZoomScale = 6.0
        tabBar.backgroundColor = UIColor.white
        tabBar.layer.shadowColor = UIColor.black.cgColor
        tabBar.layer.shadowRadius = 30
        tabBar.layer.shadowOpacity = 0.1
        tabBar.layer.shadowOffset = CGSize(width: 0, height: 0)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.imageView
    }
}

