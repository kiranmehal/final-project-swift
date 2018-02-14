//
//  ShippingInfo.swift
//  final_project
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation




class ShippingInfo
{
    var shippingId,shippingCost:Int?
    var shippingType:String?
    var shippingRegionId:Int?
    
    
    init(shippingId : Int, shippingCost : Int , shippingType : String , shippingRegionId : Int) {
        
        self.shippingId = shippingId
        self.shippingCost = shippingCost
        self.shippingType = shippingType
        self.shippingRegionId = shippingRegionId
        
        //let ship_dictionary = ["Shipping ID": shippingId ,"Shipping Cost " : shippingCost,"Shipping Type ":shippingType , "Shipping Region ID ": shippingRegionId] as [String : Any]
        
       
    }
    
    func printdata()
    {
        print(self.shippingId!,"\t\t\t\t",self.shippingCost!,"\t\t\t\t",self.shippingType!,"\t\t\t\t",self.shippingRegionId!,"\t\t\t\t")
        
    }
    
    
    func updateShippingInfo()
    {
            print("In the Shipping Info")
    }
}

