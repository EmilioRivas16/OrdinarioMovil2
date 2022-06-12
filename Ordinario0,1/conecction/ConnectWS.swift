//
//  ConnectWS.swift
//  Conexion6
//
//  Created by nicholas holden on 5/26/22.
//

import Foundation
import Alamofire


class ConnectWS{
    
    static let cmd = ConnectWS()
    private let urlBase = "https://62858a2ff0e8f0bb7c057f14.mockapi.io/categorias"
    private let code = 200...299
    
    func getUsers(user: String, pass: String,success: @escaping(_ user: String) -> (), failure: @escaping(_ error: Error?)-> ()) {
        
        AF.request(urlBase,method: .get).validate(statusCode: code).responseDecodable(of: ResponseWS.self){
            response in
            if let respuesta = response.data {
                
                print(String(decoding: respuesta, as: UTF8.self))
                success(String(decoding: respuesta, as: UTF8.self))
                
            }else{
                
                print(response.error!)
                failure(response.error)
                
            }
            
        }
        
    }
    
}
