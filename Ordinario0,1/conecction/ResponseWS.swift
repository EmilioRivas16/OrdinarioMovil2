//
//  ResponseWS.swift
//  Conexion6
//
//  Created by nicholas holden on 5/26/22.
//

import Foundation

struct ResponseWS:Decodable{
    let Datos:[Categorias]
}


struct Categorias:Decodable{
    let id: String
    let categoria: String
    let imagen: String
}
