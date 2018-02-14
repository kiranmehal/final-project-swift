//
//  Orders.swift
//  final_project
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation


 let pl = PlacingOrders()
 let c1 = Customer()

class Orders
{
    var orderId:Int = Int()
    var datecreated:Date = Date()
    var dateShipped:Date = Date()
    // var orderDate :Date = Date()
    var customername,customerId,status,shippingid:String?
    var shipingarray:[ShippingInfo] = [ShippingInfo]()
    var orderdetailArray:[OrderDetails] = [OrderDetails]()
    var custArray:[Customer] = [Customer]()
    

    init()
    {
        //self.orderId = 1
        //self.shipingarray = [ShippingInfo]()
        //self.orderdetailArray = [OrderDetails]()
    }
    
    init(orderid:Int,datecreated:Date,dateshipped:Date,shippingarray:[ShippingInfo],orderarray:[OrderDetails],custArray:[Customer]){
        
   
        self.orderId = orderid
        self.datecreated = datecreated
        self.dateShipped = dateshipped
        self.shipingarray = shippingarray
        
        self.orderdetailArray = orderarray
      self.custArray = custArray
        
       
    }
    func printDetails()
    {
        print("****************************ORDER DETAILS**************************")
        print("ORDER ID IS : \(self.orderId)")
        print("DATE CREATED : \(self.getformat(date:datecreated))")
        print("DATE SHIPPED : \(self.getformat(date:dateShipped))\n")
        
        print("---------------------------PRODUCT DETAILS-------------------------\n")
        print("PRODUCT ID","PRODUCT NAME","PRICE","QUANTITY","ORDER TOTAL","ORDER DATE",separator:"\t\t\t")
        for order in orderdetailArray
        {
            order.printdetails()
           
        }
        print("\n\nSHIPPING INFORMATION \n\n\n")
        
        print("SHIPPING ID","SHIPPING COST","SHIPPING TYPE","SHIPPING REGION ID",separator:"\t\t\t")
        for ship in shipingarray
        {
            ship.printdata()
            
        }
    }
    
    func placeOrder() {
        
        print("Do you need to place any other orders (1-YES and 2-No)")
        let ch = readLine()
        
        switch ch {
        case "1"?:
            pl.placingOrder1()
            c1.orderManipulation()
        case "2"?:
            break
        default:
            break
        }
    }
    
    func getformat(date : Date) -> String
    {
        let dateformat = DateFormatter()
        dateformat.dateFormat = "EEEE,dd MMMM,YYYY"
        let formatteddate = dateformat.string(from: date)
        return formatteddate
    }
    
    
    
}
