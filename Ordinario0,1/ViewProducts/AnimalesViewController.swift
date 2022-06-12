//
//  AnimalesViewController.swift
//  Ordinario0,1
//
//  Created by Monica Tuyub herrera on 12/06/22.
//

import UIKit
import Alamofire
import Kingfisher



class AnimalesViewController: UIViewController {

    @IBOutlet weak var mensaje: UILabel!
    
    var categorias: Array<Animal> = []

    @IBOutlet weak var miTabla: UITableView!
    func loadCategories() {
        let request = AF.request("https://62858a2ff0e8f0bb7c057f14.mockapi.io/animal")
        request.responseDecodable(of: Array<Animal>.self) {response in
            guard let data = response.value else { return }
            self.categorias = data
            
            self.changeScrollView(data: self.categorias)
            self.miTabla.reloadData()
        }
    }
    
    func changeScrollView(data: Array<Animal>) {
        miTabla.isHidden = false

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadCategories()
        
        miTabla.dataSource = self
        miTabla.delegate = self
        miTabla.register(UINib(nibName: "TableViewCellPersonalizada", bundle: nil), forCellReuseIdentifier: "cellPersonalizado")
        mensaje.text = "Compras no disponibles"
        mensaje.isHidden = true
    }
    

    

}
extension AnimalesViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("categorias:", categorias.count)
        return categorias.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = miTabla.dequeueReusableCell(withIdentifier: "cellPersonalizado", for: indexPath) as? TableViewCellPersonalizada
        print(categorias[indexPath.row].nombre)
        cell?.etiqueta1.text = categorias[indexPath.row].nombre
        cell?.etiqueta2.text = categorias[indexPath.row].precio
        let url = URL(string: categorias[indexPath.row].imagen)
        cell?.imagen1.kf.setImage(with: url)
        //cell?.etiqueta2.isHidden = true
        return cell!
       
                
    }
    
}

extension AnimalesViewController:UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        mensaje.isHidden = false
        //etiqueta1.text = frutas[indexPath.row]
    }
    
}
