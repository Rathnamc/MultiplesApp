//
//  ViewController.swift
//  multiples
//
//  Created by Christopher Rathnam on 11/22/15.
//  Copyright © 2015 CRDevelops. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Variables
    var currentMultiple = 0
    var updatedMultiple = 0
    var maxMultiple = 100
    
    //Outlets
    @IBOutlet weak var multiLogo: UIImageView!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var multiTxt: UITextField!
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var addLbl: UILabel!
    
    
    @IBAction func onPlayBtnPress(sender: UIButton! ){
        
        //Input Validation
        if multiTxt.text != nil && multiTxt.text != "" {
            
            playBtn.hidden = true
            multiTxt.hidden = true
            
            multiLogo.hidden = false
            addBtn.hidden = false
            addLbl.hidden = false
            
        }
    }
    
    

}


