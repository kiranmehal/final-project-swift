//
//  Users.swift
//  final_project
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

protocol IUser {

   // var ver: bool!
    var userId:String{get set}
    var password:String{get set}
    var loginStatus:String{get}
    func verifylogin() -> Bool
    
}
   
    extension Float
    {
        func currency() -> String
        {
            return String.init(format: "$%0.2f", self)
        }
    }
    
    extension Int
    {
        func unit() -> String
        {
            return String.init(format: "%d Units", self)
        }
    
  
}
