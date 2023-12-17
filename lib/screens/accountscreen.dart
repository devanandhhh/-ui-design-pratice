import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(Icons.arrow_back),
        title: const Text('Order #22334123'),
      ),
      body: ListView(children: [
        boxsized(),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '   May 31, 05:42 PM',
              style: TextStyle(fontSize: 14),
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 6,
                  backgroundColor: Colors.blue,
                ),
                Text(
                  '   Delivered ',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Divider(
            thickness: 1,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '1 ITEM ',
                style: TextStyle(color: Colors.grey),
              ),
              Row(
                children: [
                  Icon(
                    Icons.notes,
                    color: Colors.blue,
                  ),
                  Text(
                    'RECEIPT',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              )
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 65,
                width: 55,
                color: Colors.red,
                child: Image.network(
                  'https://contents.mediadecathlon.com/p2511365/b56ebd41ddfccff9283ab6dcdbb0b224/p2511365.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              // color: Colors.orange,
              height: 90,
              width: 310,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Explore | Men | Navy Blue',
                    style: TextStyle(fontSize: 16),
                  ),
                  height5(),
                  const Text('1piece'),
                  height5(),
                  const Text('Size : XL'),
                  height5(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 18,
                            width: 18,
                            child: Center(child: Text('1')),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 153, 215, 244),
                                border: Border.all(color: Colors.blue)),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text('x 799'),
                        ],
                      ),
                      const Text('₹799'),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        const Divider(
          thickness: 1.2,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            iteams(aIteam: 'iteam Total', bIteam: '₹799'),
            boxsized7(),
            iteams(aIteam: 'Delivery', bIteam: 'FREE ', paint: Colors.green),
            boxsized7(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Grand Total',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  '₹799',
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ]),
        ),
        const Divider(
          thickness: 1.5,
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'CUSTOMER DETAILS ',
                style: TextStyle(color: Colors.grey),
              ),
              Row(children: [
                Icon(Icons.share),
                SizedBox(
                  width: 5,
                ),
                Text('SHARE')
              ])
            ],
          ),
        ),
        boxsized7(),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Deepa',
                    style: TextStyle(fontSize: 17),
                  ),
                  height5(),
                  const Text('+91-7829000484')
                ],
              ),
              const Row(
                children: [
                  Icon(Icons.call_rounded),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(FontAwesomeIcons.whatsapp)
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Address ',
                style: TextStyle(fontSize: 18),
              ),
              height5(),
              const Text('D 1101 Chartered Benverly '),
              height5(),
              const Text('Hills Subramanyapuram po '),
              boxsized7(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'City',
                        style: fontx(),
                      ),
                      const SizedBox(
                        width: 139,
                      ),
                      Text(
                        'Pincode ',
                        style: fontx(),
                      ),
                    ],
                  ),
                  height5(),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Bangalore'),
                      SizedBox(
                        width: 109,
                      ),
                      Text('489292')
                    ],
                  ),
                  boxsized7(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Payment ',
                        style: fontx(),
                      ),
                      height5(),
                      Row(
                        children: [
                          const Text('Online '),
                          const SizedBox(
                            width: 270,
                          ),
                          Container(
                            height: 20,
                            width: 60,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 136, 242, 148),
                                border: Border.all(color: Colors.green),
                                borderRadius: BorderRadius.circular(3)),
                            child: const Center(
                                child: Text(
                              'PAID',
                              style: TextStyle(
                                  color: Color.fromARGB(156, 5, 142, 10)),
                            )),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        const Divider(
          thickness: 1.4,
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'ADDITIONAL INFORMATION ',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 11,
              ),
              Text(
                'State',
                style: fontx(),
              ),
              height5(),
              const Text(
                'Karnataka',
              ),
              const SizedBox(
                height: 11,
              ),
              Text(
                'Email',
                style: fontx(),
              ),
              height5(),
              const Text(
                'suhailkarate@gmail.com',
                style: TextStyle(letterSpacing: 2),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 500,
                height: 50,
                child: Center(
                    child: Text(
                  'Share receipts ',
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                )),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border:
                        Border.all(color: Color.fromARGB(255, 12, 130, 226)),
                    borderRadius: BorderRadius.circular(8)),
              )
            ],
          ),
        ),
      ]),
    );
  }

  boxsized() => const SizedBox(
        height: 20,
      );
  iteams({required aIteam, required bIteam, Color? paint}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(aIteam),
        Text(
          bIteam,
          style: TextStyle(color: paint),
        )
      ],
    );
  }

  widthbox() => SizedBox(
        width: 10,
      );
  boxsized7() {
    return const SizedBox(
      height: 8,
    );
  }

  fontx() {
    return const TextStyle(
      fontSize: 18,
    );
  }

  height5() {
    return const SizedBox(
      height: 4,
    );
  }
}
