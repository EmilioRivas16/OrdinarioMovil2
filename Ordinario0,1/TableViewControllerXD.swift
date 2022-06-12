//
//  TableViewControllerXD.swift
//  Ordinario0,1
//
//  Created by Ingenieria on 10/06/22.
//

import UIKit
import Kingfisher
class TableViewControllerXD: UITableViewController {
    
    private let frutas = ["Manzan","Pera","Fresa","Uva","Naranja","Banana","Toronja"]
    @IBOutlet var miTabla: UITableView!
    @IBOutlet weak var etiqueta1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        etiqueta1.text = "No seleccionaste ninguna"
        miTabla.dataSource = self
        miTabla.delegate = self
        miTabla.register(UINib(nibName: "TableViewCellPersonalizada", bundle: nil), forCellReuseIdentifier: "cellpersonalizada")
  
        
    }
}

extension TableViewControllerXD:UITableViewDataSource{
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return frutas.count
        }
        return frutas.count
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            var cell = miTabla.dequeueReusableCell(withIdentifier: "cell")
            if cell == nil {
                cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
                cell?.backgroundColor = .green
                cell?.textLabel?.font = UIFont.systemFont(ofSize: 20)
            }
            cell!.textLabel?.text = frutas[indexPath.row]
            return cell!
        } else {
            let cell = miTabla.dequeueReusableCell(withIdentifier: "cellpersonalizada", for: indexPath) as? TableViewCellPersonalizada
            cell?.etiqueta1.text = frutas[indexPath.row]
            return cell!
        }
       
    }
    
    
}

extension TableViewControllerXD:UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       etiqueta1.text = frutas[indexPath.row]
    }
    
    
}
