//
//  ViewController.swift
//  starter-test
//
//  Created by Tri Rejeki on 18/02/18.
//  Copyright © 2018 GITS Indonesia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewArticle: UIImageView!
    @IBOutlet weak var likedButton: UIButton!
    @IBOutlet weak var descTextView: UITextView!
    
    var isScrollingText: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupImage()
        self.setupTextView()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupImage() {
        imageViewArticle.clipsToBounds = true
        imageViewArticle.layer.masksToBounds = true
        imageViewArticle.layer.cornerRadius = 5.0
    }
    
    func setupTextView() {
        self.descTextView.delegate = self
    }

    @IBAction func didTapLiked(_ sender: Any) {
        self.likedButton.isSelected = !self.likedButton.isSelected
    }
}

extension ViewController: UITextViewDelegate {
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        self.isScrollingText = true
    }
}

