//
//  WalkthroughContentViewController.swift
//  Open_Restaurant
//
//  Created by Teddy on 2018. 6. 27..
//  Copyright © 2018년 Teddy. All rights reserved.
//

import UIKit

class WalkthroughContentViewController: UIViewController {

    
    
    internal let numberOfPages = 4
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var contentImgView: UIImageView!
    @IBOutlet weak var forwardButton: LineButton!
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    var index = 0
    var imageFile = ""
    var content = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        contentLabel.text = content
        contentImgView.image = UIImage(named: imageFile)
        pageControl.currentPage = index
        
        
        switch index {
        case 0...2: forwardButton.setTitle("다음", for: .normal)
        case 3: forwardButton.setTitle("시작", for: .normal)
        default: break
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        
        switch index {
        case 0...2: // Next Button
            let pageViewController = parent as! WalkthroughPageViewController
            pageViewController.forward(index: index)
            
        case 3: // Done Button
            UserDefaults.standard.set(true, forKey: "hasViewedWalkthrough")
            self.dismiss(animated: true, completion: nil)
            
        default: break
            
        }
        
    }

}
