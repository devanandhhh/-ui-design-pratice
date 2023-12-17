import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Center(
            child: Text(
              'Manage Store',
            ),
          ),
        ),
        body: Container(
          color: Colors.grey.shade300,
          child: GridView.count(
            childAspectRatio: 10 / 7,
            crossAxisCount: 2,
            children: [
              exContainer(
                  data1: 'Marketing ',
                  data2: 'Designs',
                  chooseColor: const Color.fromARGB(255, 255, 102, 0),
                  chooseIcon: Icons.speaker),
              exContainer(
                  data1: 'Online',
                  data2: 'Payments',
                  chooseColor: Colors.green,
                  chooseIcon: Icons.online_prediction),
              exContainer(
                  data1: 'Discount',
                  data2: 'Coupons',
                  chooseColor: Colors.orange,
                  chooseIcon: Icons.settings_input_antenna),
              exContainer(
                  data1: 'My',
                  data2: 'Customers',
                  chooseColor: const Color.fromARGB(255, 33, 173, 243),
                  chooseIcon: Icons.person),
              exContainer(
                  data1: 'Store QR',
                  data2: 'Code',
                  chooseColor: Colors.grey,
                  chooseIcon: Icons.qr_code_scanner),
              exContainer(
                  data1: 'Extra ',
                  data2: 'Charges',
                  chooseColor: Color.fromARGB(255, 45, 11, 105),
                  chooseIcon: Icons.pages),
              exContainer(
                  data1: 'Order',
                  data2: 'Form',
                  chooseColor: Color.fromARGB(255, 190, 37, 88),
                  chooseIcon: Icons.notes,
                  smBoxColor: Colors.green)
            ],
          ),
        ));
  }

  exContainer(
      {required String data1,
      required data2,
      required Color chooseColor,
      required IconData chooseIcon,
      Color? smBoxColor}) {
    // final Color smBoxColor;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(children: [
          Row(
            children: [
              Container(
                height: 38,
                width: 38,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: chooseColor,
                ),
                child: Icon(
                  chooseIcon,
                  color: Colors.white,
                ),
                margin: EdgeInsets.only(left: 16, top: 10),
              ),
              Container(
                //small  box
                height: 20,
                width: 40,

                decoration: BoxDecoration(
                    color: smBoxColor, borderRadius: BorderRadius.circular(3)),
                child: Center(
                  child: Text(
                    'New',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                margin: EdgeInsets.only(top: 8, left: 70),
              )
            ],
          ),
          ListTile(
            title: Text(
              data1,
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 21,
                  color: Colors.black),
            ),
            subtitle: Text(
              data2,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 21),
            ),
          )
        ]),
      ),
    );
  }
}
