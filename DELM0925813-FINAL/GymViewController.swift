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
        
        // Voici comment créer un dictionnaire à partir d'un résultat JSON.
        // ATTENTION, il n'y a aucune validation dans les lignes qui suivent.
        let leId = "3"
        
        // 1 - Créer une instance NSURL à partir d'un lien
        let adresseURL = "http://madlprog.com/api/?id=\(leId)"
        let url = NSURL(string: adresseURL)
        
        // 2 - Obtenir les données (en format brut 'NSData': des octets sans signature)
        let data = NSData(contentsOfURL:url!, options: nil, error: nil)
        
        // 3 - Convertir les données, du format JSON, vers un Dictionary <String, AnyObject>
        let resultat = NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers, error: nil) as! Dictionary<String, AnyObject>
        
        println(resultat)
        
        
        // Obtenir l'élément à la clé "resultat":
        let combattant = resultat[leId] as! Dictionary<String, AnyObject>
        
        println(combattant)

        //----------------------------------------------------------------------
        
        //Init des component sur la scène
        labNom.text = combattant["c_nom"] as? String
        labNiv.text = "1"
        
        labFor.text = combattant["c_force"] as? String
        labAgi.text = combattant["c_agilite"] as? String
        labRap.text = combattant["c_rapidite"] as? String
        labVic.text = combattant["c_victoire"] as? String
        labDef.text = combattant["c_defaite"] as? String
        //labRatio.text = "\(victoire / defaite)"
        //labRatio.text = (NSString(format:"%.2f", ratio) as String)
    }

}
