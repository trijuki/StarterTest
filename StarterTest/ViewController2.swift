//
//  ViewController2.swift
//  starter-test
//
//  Created by Tri Rejeki on 18/02/18.
//  Copyright © 2018 GITS Indonesia. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var segmentLabel: UILabel!
    @IBOutlet weak var segmentedBtn: UISegmentedControl!
    @IBOutlet weak var switchBtn: UISwitch!
    @IBOutlet weak var activateBtn: UIButton!
    @IBOutlet weak var loader: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTapBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func didTapActiveateIndicator(_ sender: Any) {
        self.activateBtn.isSelected = !self.activateBtn.isSelected
        
        if self.activateBtn.isSelected {
            self.loader.startAnimating()
        }else{
            self.loader.stopAnimating()
        }
    }
    
    @IBAction func didSwitchChange(_ sender: Any) {
        if self.switchBtn.isOn {
            print("is on")
        }else{
            print("is off")
        }
    }
    
    @IBAction func didTapBtn1(_ sender: Any) {
        self.btn1.isSelected = !self.btn1.isSelected
    }
    
    @IBAction func didTapBtn2(_ sender: Any) {
        self.btn2.isSelected = !self.btn2.isSelected
    }
    
    @IBAction func didChangeSegment(_ sender: Any) {
        switch segmentedBtn.selectedSegmentIndex
        {
        case 0:
            segmentLabel.text = "Segment Satu Aktif";
        case 1:
            segmentLabel.text = "Segment Dua Aktif";
        default:
            segmentLabel.text = "Segment Tiga Aktif";
            break
        }
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
