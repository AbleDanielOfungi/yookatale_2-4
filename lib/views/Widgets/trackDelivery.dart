import 'package:flutter/material.dart';
import 'package:order_tracker/order_tracker.dart';

class TrackDelivery extends StatefulWidget {
  TrackDelivery({Key? key}) : super(key: key);

  @override
  State<TrackDelivery> createState() => _TrackDeliveryState();
}

class _TrackDeliveryState extends State<TrackDelivery> {
  List<TextDto> orderList = [
    TextDto("Your order has been placed", "Fri, 25th August '22  - 10:47pm"),
    TextDto("Seller ha processed your order", "Sun, 27th August '22  - 10:19am"),
    TextDto("Your item has been picked up by courier partner.", "Tue, 29th Mar '22 - 5:00pm"),
  ];

  List<TextDto> shippedList = [
    TextDto("Your order has been shipped", "Tue, August '22  - 5:04pm"),
    TextDto("Your item has been received in the nearest hub to you.", null),
  ];

  List<TextDto> outOfDeliveryList = [
    TextDto("Your order is out for delivery", "Thu, August '22  - 2:27pm"),
  ];

  List<TextDto> deliveredList = [
    TextDto("Your order has been delivered", "Thu, 31th August '22 - 3:58pm"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Track Delivery'),
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: ()=> Navigator.of(context).pop(),
          child: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:25, vertical: 10),
        child: OrderTracker(
          status: Status.delivered,
          activeColor: Colors.green,
          inActiveColor: Colors.grey[300],
          orderTitleAndDateList: orderList,
          shippedTitleAndDateList: shippedList,
          outOfDeliveryTitleAndDateList: outOfDeliveryList,
          deliveredTitleAndDateList: deliveredList,
        ),
      ),    
    );
  }
}