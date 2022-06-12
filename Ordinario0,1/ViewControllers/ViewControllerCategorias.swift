//
//  ViewControllerCategorias.swift
//  Ordinario0,1
//
//  Created by Ingenieria on 20/05/22.
//

import UIKit

class ViewControllerCategorias: UIViewController {
    
    
    @IBOutlet weak var imgFrutas: UIImageView!
    @IBOutlet weak var imgAnimalOrig: UIImageView!
    @IBOutlet weak var imgJugos: UIImageView!
    @IBOutlet weak var imgVerduras: UIImageView!
    @IBOutlet weak var imgAlcohol: UIImageView!
    @IBOutlet weak var imgPostres: UIImageView!
    @IBOutlet weak var nombre: UILabel!
    @IBOutlet weak var mensaje: UILabel!
    @IBOutlet weak var btton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        imgFrutas.kf.setImage(with: URL(string: "http://1.bp.blogspot.com/-0yezXoP2s44/T_Dp4RD7qhI/AAAAAAAAHCs/FdfauM20Mq4/s400/Frutas%2Bpara%2Bdibujar%2Bpintar%2Bcolorear%2Bimprimir%2Brecortar%2By%2Bpegar%2B000.jpg"))
        imgAnimalOrig.kf.setImage(with: URL(string: "https://sites.google.com/site/pequetics/pescados-custom-size-128-97.jpg"))
        imgJugos.kf.setImage(with: URL(string: "https://img.freepik.com/vector-gratis/dibujado-mano-batido-bebidas-frutas-frias-verano-jugo-comida-batido-liquido-saludable-imagenes-dibujo-vector-dieta_80590-9829.jpg?w=740"))
        imgVerduras.kf.setImage(with: URL(string: "https://img.freepik.com/vector-gratis/diseno-ilustracion-dibujo-verduras_317408-459.jpg?w=1060"))
        imgAlcohol.kf.setImage(with: URL(string: "https://us.123rf.com/450wm/canbedone/canbedone1702/canbedone170200086/72377520-taza-de-cerveza-de-dibujos-animados-haciendo-v%C3%ADtores-aislados-en-blanco.jpg?ver=6"))
        imgPostres.kf.setImage(with: URL(string: "https://static.vecteezy.com/system/resources/previews/007/141/866/non_2x/delicious-desserts-cartoon-set-free-vector.jpg"))
    }
    
    
    
    
    @IBAction func loginBackbutton(_ sender: Any) {
        
        performSegue(withIdentifier: "CloseSesion", sender: self)
    }
    

}
