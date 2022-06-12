//
//  ViewControllerAnimales.swift
//  Ordinario0,1
//
//  Created by Ingenieria on 10/06/22.
//

import UIKit
import Alamofire
import Kingfisher

class ViewControllerAnimal: UIViewController {
    var categorias: Array<Animal> = []
    
    //private let frutas = ["Manzan","Pera","Fresa","Uva","Naranja","Banana","Toronja"]
    //private let costo = ["10","20","10","23","3","50","10"]
    
    //@IBOutlet weak var indicator3: UIActivityIndicatorView!
    
    
    @IBOutlet weak var miTabla2: UITableView!
    
    
    
    func loadCategories() {
        let request = AF.request("https://62858a2ff0e8f0bb7c057f14.mockapi.io/animal")
        request.responseDecodable(of: Array<Animal>.self) {response in
            guard let data = response.value else { return }
            self.categorias = data
            //self.indicator3.stopAnimating()
            //self.indicator3.hidesWhenStopped = true
            self.changeScrollView(data: self.categorias)
            self.miTabla2.reloadData()
        }
    }
    
    func changeScrollView(data: Array<Animal>) {
        miTabla2.isHidden = false
        // categoriesSv.subviews.forEach({ $0.removeFromSuperview() })
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //indicator3.startAnimating()
        loadCategories()
        // Do any additional setup after loading the view.
        miTabla2.dataSource = self
        miTabla2.delegate = self
        miTabla2.register(UINib(nibName: "TableViewCellPersonalizada", bundle: nil), forCellReuseIdentifier: "cellPersonalizado")
        
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
extension ViewControllerAnimal:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("categorias:", categorias.count)
        return categorias.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = miTabla2.dequeueReusableCell(withIdentifier: "cellPersonalizado", for: indexPath) as? TableViewCellPersonalizada
        print(categorias[indexPath.row].nombre)
        cell?.etiqueta1.text = categorias[indexPath.row].nombre
        cell?.etiqueta2.text = categorias[indexPath.row].precio
        let url = URL(string: categorias[indexPath.row].imagen)
        cell?.imagen1.kf.setImage(with: url)
        //cell?.etiqueta2.isHidden = true
        return cell!
       
                
    }
    
}

extension ViewControllerAnimal:UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //etiqueta1.text = frutas[indexPath.row]
       
       
    }
    
}
