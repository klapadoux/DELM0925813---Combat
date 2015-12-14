//
//  GymViewController.swift
//  DELM0925813-FINAL
//
//  Created by 0925813 on 2015-12-14.
//  Copyright (c) 2015 0925813. All rights reserved.
//

import UIKit

class GymViewController: UIViewController {

    @IBOutlet weak var labNom: UILabel!
    @IBOutlet weak var labNiv: UILabel!

    @IBOutlet weak var labFor: UILabel!
    @IBOutlet weak var labAgi: UILabel!
    @IBOutlet weak var labRap: UILabel!
    
    @IBOutlet weak var labVic: UILabel!
    @IBOutlet weak var labDef: UILabel!
    @IBOutlet weak var labRatio: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Init des component sur la scène
        labNom.text = "Charles"
        labNiv.text = "12"
        
        labFor.text = "7"
        labAgi.text = "5"
        labRap.text = "3"
        
        let victoire:UInt = 110
        let defaite:UInt = 1900
        let ratio:Float = Float(victoire) / Float(defaite)
        
        labVic.text = "\(victoire)"
        labDef.text = "\(defaite)"
        //labRatio.text = "\(victoire / defaite)"
        
        labRatio.text = (NSString(format:"%.2f", ratio) as String)
    }

}
