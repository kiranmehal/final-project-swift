//
//  PlacingOrders.swift
//  final_project
//
//  Created by MacStudent on 2018-02-13.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation


class PlacingOrders
{
    
    func placingOrder1()
    {
        let od1:OrderDetails = OrderDetails.init(orderdate: Date(), ordertotal: 0, pro_id: 100, quanty: 2, pro_Name: "MACBOOK", price: 2200.0)
        od1.calcprice()
        
        let od2:OrderDetails = OrderDetails.init(orderdate: Date(), ordertotal: 0, pro_id: 200, quanty: 3, pro_Name: "iPhone X", price: 1300.0)
        od2.calcprice()
        //var od3:OrderDetails = OrderDetails.init(orderdate: Date(), ordertotal: 0, pro_id: 300, quanty: 4, pro_Name: "MACBOOK PRO", price: 3000.0)
        
        //creting shipping info
        let s1:ShippingInfo = ShippingInfo.init(shippingId: 11, shippingCost: 30, shippingType: "cash on delivery", shippingRegionId: 1501)
        //var s2:ShippingInfo = ShippingInfo.init(shippingId: 12, shippingCost: 0, shippingType: "pick up from store", shippingRegionId: 1500)
        
        
        let or1:Orders = Orders.init(orderid: 1, datecreated: Date(), dateshipped: Date(), shippingarray: [s1], orderarray: [od1 , od2], custArray: [c3])
        or1.printDetails()
    }
    
    
}
