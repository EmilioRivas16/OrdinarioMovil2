//
//  TableViewControllerFrutas.swift
//  Ordinario0,1
//
//  Created by Ingenieria on 10/06/22.
//

import UIKit

class TableViewControllerFrutas: UITableViewController {
    let frutas =  ["hola","puto"]
    
    @IBOutlet weak var datos: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        datos.dataSource = self
        datos.delegate = self
        datos.register(UINib(nibName: "celdas", bundle: nil), forCellReuseIdentifier: "celdas")
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
    }

    
}
