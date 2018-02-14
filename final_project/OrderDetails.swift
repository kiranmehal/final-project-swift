//
//  OrderDetails.swift
//  final_project
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class OrderDetails
    
{
   
    var orderDate:Date = Date()
    //var arrayshipping:[ShippingInfo] = [ShippingInfo]()
    var orderTotal:Float = Float()
    var productId:Int = Int()
    var  quantity:Int = Int()
    var productName:String?
    var price:Float = Float()
    //var subTotal:Float?
    

    init() {
        
    }
    init(orderdate:Date,ordertotal:Float,pro_id:Int,quanty:Int,pro_Name:String,price:Float)
    {
        self.orderDate = orderdate
        self.orderTotal = ordertotal
        self.productId = pro_id
        self.productName = pro_Name
        self.price = price
        self.quantity = quanty
    }
    
    func updateQuantity(newQuantity:Int) {
        self.quantity = self.quantity + newQuantity
    }
    
    //calculate total
    func calcprice()
    {
        var finaltotal:Float = 0.0
        finaltotal = finaltotal + ((price) * Float(quantity))
        self.orderTotal = finaltotal
    }
    
    
    func printdetails()
    {
       
        print( self.productId,self.productName!,self.price.currency(), self.quantity.unit(), self.orderTotal.currency(),self.orderDate,separator:"\t\t\t\t")
        // Create a dictionary
        //separator in array
    }
    
}
