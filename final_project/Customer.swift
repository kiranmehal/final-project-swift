//
//  Customer.swift
//  final_project
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation


var o1 = Orders()

class Customer
{
    var userId: String?
    
    var password: String?
    
    var loginStatus: String?
    
    var cust_name,creditCardInfo,shippingInfo:String?
    var email:String?
    
    
    init() {
        
    }
 
    init(cus_name:String,uid:String,pass : String , email:String,creditcardinfo:String) {
        
        self.cust_name = cus_name
        self.userId = uid
        self.email = email
        self.creditCardInfo = creditcardinfo
        
        
    }
    
  
    
    func verifylogin() -> Bool {
        
        if loginStatus=="true"
        {
        return true
        }
        else
        {
            return false
        }
    }
    
    func login()
    {
      print("enter userid")
        userId = readLine()!
        print("enter password")
        password = readLine()!
        if (userId == userId && password == password)
        {
            loginStatus = "true"
            
            print("LOGIN SUCCESSFUL")
            print("User Id is : \(String(describing: self.userId))")
            print("Customer Name  : \(self.cust_name!)")
            print(" Email  : \(self.email!)")
            print("Creditcard information   : \(self.creditCardInfo!)")
        
            self.orderManipulation()
            
        }
        else{
            print("LOGIN FAILED")
            _ = Mainclass()
        }
        
    }
    
    func orderManipulation()
    {
        let od1:OrderDetails = OrderDetails.init(orderdate: Date(), ordertotal: 0, pro_id: 100, quanty: 2, pro_Name: "MACBOOK", price: 2200.0)
        od1.calcprice()
        
        let od2:OrderDetails = OrderDetails.init(orderdate: Date(), ordertotal: 0, pro_id: 200, quanty: 3, pro_Name: "iPhone X", price: 1300.0)
        od2.calcprice()
        //var od3:OrderDetails = OrderDetails.init(orderdate: Date(), ordertotal: 0, pro_id: 300, quanty: 4, pro_Name: "MACBOOK PRO", price: 3000.0)
        
        //creting shipping info
        let s1:ShippingInfo = ShippingInfo.init(shippingId: 11, shippingCost: 30, shippingType: "cash on delivery", shippingRegionId: 1501)
        //var s2:ShippingInfo = ShippingInfo.init(shippingId: 12, shippingCost: 0, shippingType: "pick up from store", shippingRegionId: 1500)
        
        
        let or1:Orders = Orders.init(orderid: 1, datecreated: Date(), dateshipped: Date(), shippingarray: [s1], orderarray: [od1,od2], custArray: [c3])
        or1.printDetails()
        
        let orders = Orders()
        orders.placeOrder()
        //let od1:OrderDetails = OrderDetails.init(orderdate: Date(), ordertotal: 0, pro_id: 100, quanty: 2, pro_Name: "MACBOOK", price: 2200.0)
        //od1.calcprice()
        //od1.printdetails()
    }
    
    func register()
    {
        print("enter cutomer name")
        cust_name=readLine()
        
        print("enter email")
        email=readLine()
       
        print("enter credit card info")
       creditCardInfo=readLine()
        
        print("enter your password")
        password = readLine()!
        
      let dic=["customername":cust_name!,"email":email!,"creditcardInfo":creditCardInfo!]
     print(dic)
        
        _ = Mainclass()
    }
    
    func updateInfo()
    {
        print("Updating Info")
        
        print("Enter your email")
        
        let email_check = readLine()
        
        print("Enter your password")
        
        let pass_check = readLine()
        
        if email_check == email && pass_check == password {
            print("Please select which info you need to edit \n 1.Email \n 2.Password \n 3.Credit Card Info")
            let value1 = readLine()
            
            switch value1 {
            case "1"?:
                print("Enter New Email :")
                let newemail = readLine()
                self.email = newemail
                break
            case "2"?:
                print("Enter New Password :")
                let newpass = readLine()
                self.password = newpass!
                break
            case "3"?:
                print("Enter Credit Card Info :")
                let newcard = readLine()
                self.creditCardInfo = newcard
                break
            default:
                break
            }
            _ = Mainclass()
        }
        else
        {
            print("Updating Failed : Invalid username or password")
            _ = Mainclass()
        }
       
    }
    
}
