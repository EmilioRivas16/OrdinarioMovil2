//
//  ViewControllerLogin.swift
//  Ordinario0,1
//
//  Created by Ingenieria on 16/05/22.
//

import UIKit

class ViewControllerLogin: UIViewController {
    
    @IBOutlet weak var UserFild: UITextField!
    @IBOutlet weak var ContraFild: UITextField!
    
    @IBOutlet weak var errorData: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        errorData.isHidden = true
        errorData.textColor = UIColor.red
        UserFild.placeholder = "Nombre de usuario"
        ContraFild.placeholder = "Contraseña"
    
        
    }
    
    
    @IBAction func ButtonMenu(_ sender: Any) {
        
        if UserFild.hasText == true && ContraFild.hasText == true{
            
        performSegue(withIdentifier: "LoginToMenu", sender: self)
            
        }
        else{
            
            
            errorData.isHidden = false
            
            UserFild.placeholder = "Ingresar Datos"
            ContraFild.placeholder = "Ingresar Datos"
            
        }
    }
    
    
    @IBAction func ButtonLogReg(_ sender: Any) {
        
        performSegue(withIdentifier: "LoginToRegister", sender: self)
        
    }
    

}
