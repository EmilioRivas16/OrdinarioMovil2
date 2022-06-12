//
//  ViewControllerAlcohol.swift
//  Ordinario0,1
//
//  Created by Ingenieria on 10/06/22.
//

import UIKit

class ViewControllerAlcohol: UIViewController {
    
    private let frutas = ["Manzan","Pera","Fresa","Uva","Naranja","Banana","Toronja"]
    private let costo = ["10","20","10","23","3","50","10"]
    
    @IBOutlet weak var miTabla: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        miTabla.dataSource = self
        miTabla.delegate = self
        miTabla.register(UINib(nibName: "TableViewCellPersonalizada", bundle: nil), forCellReuseIdentifier: "cellpersonalizada")
       
        
    }


}

extension ViewControllerAlcohol:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return frutas.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = miTabla.dequeueReusableCell(withIdentifier: "cellpersonalizada", for: indexPath) as? TableViewCellPersonalizada
        cell?.etiqueta1.text = frutas[indexPath.row]
        cell?.etiqueta2.text = costo[indexPath.row]
        return cell!
       
    }
    
    
}

extension ViewControllerAlcohol:UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
 
    }
    
    
}
