//
//  ViewController.swift
//  SuperkahramanKitabi
//
//  Created by Oktay Kuzu on 12.08.2023.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{

    @IBOutlet weak var TableView: UITableView!
    var superKahramanisimleri = [String] ()
    var superkahramanGorselisimleri = [String] ()
    var secilenisim=""
    var secilenGorselisim=""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TableView.delegate=self
        TableView.dataSource=self
        
      
        superKahramanisimleri.append("Batman")
        superKahramanisimleri.append("Aquaman")
        superKahramanisimleri.append("İronman")
        superKahramanisimleri.append("Superman")
        superKahramanisimleri.append("Siperder-Man")
        
        
       // var superKahramanGorselisimleri = [UIImage] ()
       // superKahramanGorselisimleri.append(UIImage(named: "Aquaman")!)
       // superKahramanGorselisimleri.append(UIImage(named: "Batman")!)
      //  superKahramanGorselisimleri.append(UIImage(named: "ironman")!)
      //  superKahramanGorselisimleri.append(UIImage(named: "spiderman")!)
      //  superKahramanGorselisimleri.append(UIImage(named: "superman")!)
        
      
        superkahramanGorselisimleri.append("Batman")
        superkahramanGorselisimleri.append("Aquaman")
        superkahramanGorselisimleri.append("ironman")
        superkahramanGorselisimleri.append("superman")
        superkahramanGorselisimleri.append("spiderman")
        
    
    }
    
    //numberOfRowsInsection -> kaç tane hücre gösterilecek "row olacak
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superKahramanisimleri.count
    }
    
    
    
    // cellForRow atIndexPath -> hüçrein içersinde neler gösterilecek
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = superKahramanisimleri[indexPath.row]
        return cell
    }


    
    //tıkalnıon verirnin diğer tarafa gitmesi index yoluyla
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
         secilenisim = superKahramanisimleri[indexPath.row]
        secilenGorselisim = superkahramanGorselisimleri[indexPath.row]
        performSegue(withIdentifier:"TodetailsVC" , sender: nil)
    
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TodetailsVC" {
            let destitonVc=segue.destination as! ViewControllertwo
            destitonVc.secilanGorselKahramanismi=secilenGorselisim
            destitonVc.secilenKahramanismi=secilenisim
        }
    }
   
}

