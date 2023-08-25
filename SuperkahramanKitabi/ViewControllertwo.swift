//
//  ViewControllertwo.swift
//  SuperkahramanKitabi
//
//  Created by Oktay Kuzu on 12.08.2023.
//

import UIKit

class ViewControllertwo: UIViewController {

    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var ImageView: UIImageView!
    
    var secilenKahramanismi = ""
    var secilanGorselKahramanismi=""
    override func viewDidLoad() {
        super.viewDidLoad()

        ImageView.image=UIImage(named: secilanGorselKahramanismi)
        Label.text = secilenKahramanismi
    }
    

 

}
