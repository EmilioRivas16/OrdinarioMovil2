//
//  ViewControllerRegister.swift
//  Ordinario0,1
//
//  Created by Ingenieria on 16/05/22.
//

import UIKit

class ViewControllerRegister: UIViewController {
   
    @IBOutlet weak var nameRegistro: UITextField!
    @IBOutlet weak var emailRegistro: UITextField!
    @IBOutlet weak var passRegistro: UITextField!
    @IBOutlet weak var lostData: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        lostData.isHidden = true
        lostData.textColor = UIColor.red
        
        
        
        nameRegistro.placeholder = "Ingresa tu nombre"
        emailRegistro.placeholder = "Ingresa tu correo"
        passRegistro.placeholder = "Ingresa tu contraseña"
        
        
    }
    
    @IBAction func ButtonRegisMenu(_ sender: Any) {
        
        
        
        
        if nameRegistro.hasText == true && emailRegistro.hasText == true && passRegistro.hasText == true{
            
            performSegue(withIdentifier: "RegisterToMenu", sender: self)
        }
        else{
            
            lostData.isHidden = false
            
            nameRegistro.placeholder = "Ingresar datos"
            emailRegistro.placeholder = "Ingresar datos"
            passRegistro.placeholder = "Ingresar datos"
            
        }
        
    }
    
    @IBAction func regresarLogin(_ sender: Any) {
        
        performSegue(withIdentifier: "backLogin", sender: self)
        
    }
    
    

}
