//
//  main.swift
//  final_project
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print(" final project")

//creating orderdetails
//var OD:OrderDetails = OrderDetails.init()

var c3:Customer = Customer.init(cus_name: "kiran", uid: "kir123",pass : "12345",email: "kiranmahal04@gmail.com", creditcardinfo: "[kiran]-[123456789]")
//var c4:Customer = Customer.init(cus_name: "kanwar", uid: "kan123",pass:"12345",email: "kanwar123@gmail.com", creditcardinfo: "[kanwar]-[456734522]")
//var c5:Customer = Customer.init(cus_name: "ferdin", uid: "fer123",pass:"12345", email: "ferdin@gmail.com", creditcardinfo: "[ferdin]-[984536433]")

//var od1:OrderDetails = OrderDetails.init(orderdate: Date(), ordertotal: 0, pro_id: 100, quanty: 2, pro_Name: "MACBOOK", price: 2200.0)
//od1.calcprice()
//var od2:OrderDetails = OrderDetails.init(orderdate: Date(), ordertotal: 0, pro_id: 200, quanty: 3, pro_Name: "iPhone X", price: 1300.0)
//od2.calcprice()
//var od3:OrderDetails = OrderDetails.init(orderdate: Date(), ordertotal: 0, pro_id: 300, quanty: 4, pro_Name: "MACBOOK PRO", price: 3000.0)

//creting shipping info
//var s1:ShippingInfo = ShippingInfo.init(shippingId: 11, shippingCost: 30, shippingType: "cash on delivery", shippingRegionId: 1501)
//var s2:ShippingInfo = ShippingInfo.init(shippingId: 12, shippingCost: 0, shippingType: "pick up from store", shippingRegionId: 1500)


//var or1:Orders = Orders.init(orderid: 1, datecreated: Date(), dateshipped: Date(), shippingarray: [s1], orderarray: [od2], custArray: [c3])


var admin = Admin()

class Mainclass{
    

    

init()
{
    
    print("Enter Your Selection")
    print("press 1 for REGISTRATION")
    print("press 2 for CUSTOMER LOGIN")
    print("press 3 for ADMIN LOGIN")
    print("press 4 for UPDATING INFO")
    print("press 5 for EXIT")
let  abc = readLine()

    switch abc
 {
    
case "1"?:
c3.register()


case "2"?:
c3.login()

case "3"?:
admin.verify()
admin.verifylogin()


case "4"?:
c3.updateInfo()
break

    case "5"?:
     break
default:
print("INVALID INPUT")
}

}
}

var m=Mainclass()


