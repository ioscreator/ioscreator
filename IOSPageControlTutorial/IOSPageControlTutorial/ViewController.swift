//
//  ViewController.swift
//  IOSPageControlTutorial
//
//  Created by Arthur Knopper on 21/01/2020.
//  Copyright © 2020 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var movies: [String] = ["bad-boys","joker","hollywood"]
    var frame = CGRect.zero
       
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pageControl.numberOfPages = movies.count
        setupScreens()
        
        scrollView.delegate = self
    }
    
    func setupScreens() {
        for index in 0..<movies.count {
            frame.origin.x = scrollView.frame.size.width * CGFloat(index)
            frame.size = scrollView.frame.size
            
            let imgView = UIImageView(frame: frame)
            imgView.image = UIImage(named: movies[index])
            
            self.scrollView.addSubview(imgView)
        }
        
        scrollView.contentSize = CGSize(width: (scrollView.frame.size.width * CGFloat(movies.count)), height: scrollView.frame.size.height)
        scrollView.delegate = self
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = scrollView.contentOffset.x / scrollView.frame.size.width
        pageControl.currentPage = Int(pageNumber)
    }
}

