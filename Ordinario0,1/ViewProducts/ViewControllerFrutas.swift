//
//  ViewController.swift
//  Listas
//
//  Created by nicholas holden on 5/23/22.
//

import UIKit
import Alamofire
import Kingfisher

class ViewControllerFrutas: UIViewController {
    var categorias: Array<Fruta> = []
    
    //private let frutas = ["Manzan","Pera","Fresa","Uva","Naranja","Banana","Toronja"]
    //private let costo = ["10","20","10","23","3","50","10"]
    
    @IBOutlet weak var miTabla: UITableView!
    
    @IBOutlet weak var mensaje: UILabel!
    
    
    
    func loadCategories() {
        let request = AF.request("https://62858a2ff0e8f0bb7c057f14.mockapi.io/frutas")
        request.responseDecodable(of: Array<Fruta>.self) {response in
            guard let data = response.value else { return }
            self.categorias = data
            
            self.changeScrollView(data: self.categorias)
            self.miTabla.reloadData()
        }
    }
    
    func changeScrollView(data: Array<Fruta>) {
        miTabla.isHidden = false
        // categoriesSv.subviews.forEach({ $0.removeFromSuperview() })
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        loadCategories()
        // Do any additional setup after loading the view.
        miTabla.dataSource = self
        miTabla.delegate = self
        miTabla.register(UINib(nibName: "TableViewCellPersonalizada", bundle: nil), forCellReuseIdentifier: "cellPersonalizado")
        mensaje.text = "Compras no disponibles"
        mensaje.isHidden = true
    }
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if (segue.identifier == "MenutoProducts") {
          let secondView = segue.destination as! ViewControllerProducts
          let object = sender as! [String: Any?]
          secondView.name = object["name"] as? String
          secondView.id_categoria = object["id"] as? String
       }
    }*/
 
    
 
    
    
    
    

}
extension ViewControllerFrutas:UITableViewDataSource{
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

extension ViewControllerFrutas:UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        mensaje.isHidden = false
        //etiqueta1.text = frutas[indexPath.row]
    }
    
}
