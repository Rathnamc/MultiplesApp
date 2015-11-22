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
    var choosenMultiple = 0
    var updatedMultiple = 0
    var result = 0
    var maxMultiple = 100
    
    //Outlets
    @IBOutlet weak var multiLogo: UIImageView!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var multiTxt: UITextField!
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var addLbl: UILabel!
    @IBOutlet weak var equationLbl: UILabel!
    
    @IBAction func onAddBtnPress(sender: UIButton!) {
        updatedMultiple = result
        result = choosenMultiple + updatedMultiple
        updateEquationLbl()
        
        if isGameOver(){
            restartGame()
        }
    }
    
    
    @IBAction func onPlayBtnPress(sender: UIButton! ){
        
        //Input Validation
        if multiTxt.text != nil && multiTxt.text != "" {
            
            playBtn.hidden = true
            multiTxt.hidden = true
            
            multiLogo.hidden = false
            addBtn.hidden = false
            addLbl.hidden = false
            equationLbl.hidden = false
            
            //Convert String input into Int
            choosenMultiple = Int(multiTxt.text!)!
            updatedMultiple = 0
            result = choosenMultiple + updatedMultiple
            updateEquationLbl()
            
        }
    }
    
    //Restart Function Once game is Complete... Resets all Settings
    func restartGame(){
        choosenMultiple = 0
        updatedMultiple = 0
        multiTxt.text = ""
        
        playBtn.hidden = false
        multiTxt.hidden = false
        multiLogo.hidden = false
        
        addLbl.hidden = true
        addBtn.hidden = true
        equationLbl.hidden = true
        
        
        
    }
    
    //Check is multiplier hits max (100)
    func isGameOver() -> Bool{
        if result >= maxMultiple{
            return true
        } else {
            return false
        }
    }
    
    //Function to update Equation
    func updateEquationLbl() {
        equationLbl.text = "\(choosenMultiple) + \(updatedMultiple) = \(result)"
    }
    

}


