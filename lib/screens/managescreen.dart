import 'package:flutter/material.dart';

class ManageScreen extends StatelessWidget {
  const ManageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
        leading: const Icon(Icons.arrow_back),
        actions: const [Icon(Icons.info_outline)],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(4)),
                  height: 174,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Transation Limit ',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w500),
                        ),
                        boxSized(),
                        Text(
                          'A free limit up to which you will receive ',
                          style: spaceletter(2),
                        ),
                        Text(
                          'the online Payments directly in your bank',
                          style: spaceletter(2),
                        ),
                        boxSized(),
                        const LinearProgressIndicator(
                          value: 0.2,
                          backgroundColor: Color.fromARGB(255, 202, 195, 195),
                        ),
                        boxSized(),
                        Text(
                          '36,668 left out of ₹50,000',
                          style: spaceletter(1),
                        ),
                        boxSized(),
                        ElevatedButton(
                            onPressed: () {},
                            child: const Text('Increase limit'))
                      ],
                    ),
                  )),
            ),
          ),
          Container(
            height: 105,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Default Methoud',
                        style: TextStyle(fontSize: 19),
                      ),
                      Text('Payment Profile', style: TextStyle(fontSize: 19))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Row(
                        children: [
                          Text(
                            'Online Payment',
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                          Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                      boxSized(),
                      boxSized(),
                      const Row(
                        children: [
                          Text('Bank account',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey)),
                          Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(
              thickness: 3,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Payments Overview',
                      style: TextStyle(fontSize: 18),
                    ),
                    Row(
                      children: [
                        Text(
                          'Life Time',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        Icon(Icons.keyboard_arrow_down)
                      ],
                    )
                  ],
                ),
                boxSized(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    decContainer(
                        paint: Colors.orange,
                        text1: 'AMOUNT ON HOLD',
                        price: '0'),
                    decContainer(
                        paint: Colors.green,
                        text1: 'Amount received',
                        price: '13,332')
                  ],
                )
              ],
            ),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Transations',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              container3(text: 'On hold'),
              Container(
                height: 40,
                width: 120,
                child: Center(
                    child: Text(
                  'Payouts(15)',
                  style: TextStyle(color: Colors.white),
                )),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(21)),
              ),
              container3(text: 'Refunds'),
            ],
          ),
          boxSized(),
          // viewList(),
          viewList(
              imageq:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfynG3IPWKlYWuzFXtic4E3ehpE2WlAqPB18PPTcTV8nuV1VHdvgyLPaz0wgu1pvT94FE&usqp=CAU'),
          viewList(
              imageq:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnUj-TshzI_fF1b5lwz6ENQqr8LxaCjaUUoA&usqp=CAU'),
          viewList(
              imageq:
                  'https://masculine.com.bd/cdn/shop/products/FullShirt7.1_533x.jpg?v=1678704357'),
          viewList(
              imageq:
                  'https://assets.ajio.com/medias/sys_master/root/20230615/Xs7z/648b116042f9e729d74492c4/-473Wx593H-466278337-white-MODEL.jpg'),
          viewList(
              imageq:
                  'https://www.beyours.in/cdn/shop/products/german-grey-classic-shirt-5_1200x1200_crop_center.jpg?v=1672642650'),
          viewList(
              imageq:
                  'https://contents.mediadecathlon.com/p2511365/b56ebd41ddfccff9283ab6dcdbb0b224/p2511365.jpg'),
          viewList(
              imageq:
                  'https://static.zara.net/photos///2023/I/0/1/p/4376/319/250/20/w/1920/4376319250_1_1_1.jpg?ts=1690804764643'),
        ],
      ),
    );
  }

  boxSized() {
    return const SizedBox(
      height: 8,
    );
  }

  spaceletter(double space) {
    return TextStyle(letterSpacing: space, color: Colors.blueGrey);
  }

  decContainer({required Color paint, required text1, required price}) {
    return Container(
      height: 90,
      width: 180,
      decoration:
          BoxDecoration(color: paint, borderRadius: BorderRadius.circular(9)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            boxSized(),
            Text(
              text1,
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            boxSized(),
            Text('₹${price} ',
                style: TextStyle(color: Colors.white, fontSize: 28))
          ]),
        ),
      ),
    );
  }

  container3({required text}) {
    return Container(
      height: 40,
      width: 80,
      child: Center(
        child: Text(
          text,
        ),
      ),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 211, 210, 210),
          borderRadius: BorderRadius.circular(21)),
    );
  }

  viewList({required String imageq}) {
    return Container(
      color: Colors.white,
      height: 109,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 60, width: 50,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(
                            width: 0.2,
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(6),
                          image: DecorationImage(
                              image: NetworkImage(imageq), fit: BoxFit.fill)),
                      // child: Image.network(
                      //   image,
                      //   //'https://rukminim2.flixcart.com/image/850/1000/xif0q/shirt/8/x/n/s-st27-vebnor-original-imagpgs4aheazzqc.jpeg?q=90',
                      //   fit: BoxFit.fill,
                      // ),
                    ),
                    const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '   Order #222111',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text('jul 12, 02:32 PM')
                        ]),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text('₹799'),
                      boxSized(),
                      const Row(
                        children: [
                          CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.green,
                          ),
                          Text('  Sucessfully')
                        ],
                      )
                    ]),
              ),
            ],
          ),
          const Text('  ₹799 deposited to 54321862272'),
          Divider(
            thickness: 2,
          )
        ],
      ),
    );
  }
}
