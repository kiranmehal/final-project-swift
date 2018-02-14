//
//  Administrator.swift
//  final_project
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Admin
{
    
    var adminName:String!
    var email:String!
    
    var userId: String = "admin"
    
    var password: String = "admin"
    
    var loginStatus: String = ""
    
    
    
    func verifylogin() -> Bool {
        
        if loginStatus == "true"
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    func verify()
    {
        print("Enter admin ID")
        let adminUser = readLine()
        
        print("Enter admin password")
        let adminPassword = readLine()
        
        if adminUser == userId && adminPassword == password
        {
            loginStatus = "true"
            print("Verify Logins ?  1-Yes 2-No")
            let ch = readLine()
            switch ch
            {
            case "1"? :
                print("Logins verified")
                break
            case "2"? :
                print("Logins not verified")
                break
            default:
                break
            }
            
        }
        else
        {
            loginStatus = "false"
            _ = Mainclass()
        }
    }
    
    func adminManip()
    {
        if verifylogin() == true
        {

            
        }
    }
    
     func updateCatalog()
     {
       
    }
}
