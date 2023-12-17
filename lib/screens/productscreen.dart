//import 'dart:ui';

import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          title: const Text('Dukaan Premium '),
          elevation: 0,
        ),
        body: ListView(
          children: [
            Container(
              height: 210,
              width: 400,
              color: Colors.grey,
              child: Stack(children: [
                Positioned(
                  child: Container(
                    height: 90,
                    width: 400,
                    color: Colors.blue,
                  ),
                ),
                Positioned(
                    top: 90,
                    child: Container(
                      height: 120,
                      width: 400,
                      color: const Color.fromARGB(247, 255, 255, 255),
                    )),
                Positioned(
                    left: 12,
                    child: Container(
                      height: 190,
                      width: 360,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(14)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(children: [
                          boxhight6(),
                          SizedBox(
                            height: 60,
                            width: 170,
                            child: Image.network(
                                'https://mydukaan.io/blog/wp-content/uploads/dukaan_blog_logo.png'),
                          ),
                          const Text(
                            'Get Dukaan Premium for just',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          boxsixed2(),
                          const Text(
                            '₹4,999/year',
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.bold),
                          ),
                          boxhight6(),
                          Text(
                            'All the advanced features for scaling yours',
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontWeight: FontWeight.bold),
                          ),
                          boxsixed2(),
                          Text(
                            'business',
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontWeight: FontWeight.bold),
                          )
                        ]),
                      ),
                    )),
                // Positioned(
                //   left: 110,
                //   top: 20,
                //   child: Container(
                //     height: 60,
                //     width: 170,
                //     color: Colors.red,
                //     child: Image.network(
                //         'https://mydukaan.io/blog/wp-content/uploads/dukaan_blog_logo.png'),
                //   ),
                // ),
                const Positioned(
                    top: 63,
                    left: 210,
                    child: Text(
                      'PREMIUM ',
                      style: TextStyle(
                        color: Colors.blue,
                        backgroundColor: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ))
              ]),
            ),
            SizedBox(
              height: 400,
              width: double.infinity,
              //  color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Features ',
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 20),
                      ),
                      boxhight6(),
                      boxhight6(),
                      featuresColumn(
                        heading: 'Custom domain name',
                        text1: 'Get your own custom domain and build ',
                        text2: 'your brand on the internet. ',
                        imagePic:
                            'https://static.vecteezy.com/system/resources/thumbnails/002/609/604/small/social-media-global-world-digital-internet-network-communicate-technology-line-style-icon-free-vector.jpg',
                      ),
                      boxhight6(),
                      featuresColumn(
                          heading: 'Verified seller badge',
                          text1: 'Get green verified badge under your',
                          text2: 'store name and build trust .',
                          imagePic:
                              'https://i.pinimg.com/736x/b6/99/c7/b699c77440230ed0b8d995c55d441db7.jpg'),
                      boxhight6(),
                      featuresColumn(
                        heading: 'Dukaan for PC',
                        text1: 'Access all the exclusive premium ',
                        text2: 'features on Dukaan for PC.',
                        imagePic:
                            'https://cdn1.iconfinder.com/data/icons/online-streaming-line-vol-1-1/74/laptop__play__video__live-512.png',
                      ),
                      boxhight6(),
                      featuresColumn(
                          heading: 'Priority support',
                          text1: 'Get your questions resolved with our ',
                          text2: 'priority customer support.',
                          imagePic:
                              'https://icons.veryicon.com/png/o/miscellaneous/winsion/service-headset-1.png')
                    ]),
              ),
            ),
            const Divider(
              thickness: 1.2,
            ),
            //   boxhight6(),
            SizedBox(
              width: double.infinity,
              height: 246,
              //color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'What is Dukaan Premium ?',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 177,
                        width: 380,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1.4),
                            // color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'https://i.ytimg.com/vi/id1E0lqnUtY/maxresdefault.jpg'),
                                fit: BoxFit.fill)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Divider(
              thickness: 1.2,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // boxhight6(),
                  Text(
                    'Frequently asked questions',
                    style: stylefont(),
                  ),
                  boxhight6(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'What type of business can use Dukaan',
                            style: TextStyle(letterSpacing: 0.5, fontSize: 18),
                          ),
                          boxsixed2(),
                          Text(
                            'Premium ?',
                            style: stylefont2(),
                          ),
                        ],
                      ),
                      const Text(
                        ' _',
                        style: TextStyle(fontSize: 39),
                      )
                    ],
                  ),

                  boxsixed2(),
                  Text(
                    'Dukaan caters to wide variety of sellers.Be it a',
                    style: gryclrtxt(),
                  ),
                  boxsixed2(),
                  Text(
                    'small grocery store or a big legacy brand - anyone',
                    style: gryclrtxt(),
                  ),
                  boxsixed2(),
                  Text(
                    'who want to sell their product/services online - ',
                    style: gryclrtxt(),
                  ),
                  boxsixed2(),
                  Text(
                    'Dukaan is the perfect platform for you ',
                    style: gryclrtxt(),
                  ),
                  division(), boxsixed2(),
                  rowQs(text: 'What is your refund policy?'),
                  division(), boxsixed2(),
                  rowQs(
                      text: 'Will there be an automatic charge after the  ',
                      text2: 'paid trail?'),
                  division(), boxsixed2(),
                  rowQs(text: 'What payment method do you offer?'),
                  division(), boxsixed2(),
                  rowQs(text: 'What happens when my free trial ends? '),
                  division(), boxsixed2(),
                  rowQs(text: 'What are the terms for the custom domain?'),
                  division(), boxhight6(),
                  const Divider(
                    thickness: 4,
                  ),
                  boxhight6(),
                  Text(
                    'Need help?Get in touch',
                    style: stylefont(),
                  ),
                  boxhight6(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        box2(iconX: Icons.message_outlined, text1: 'Live Chat'),
                        box2(iconX: Icons.phone, text1: 'Phone Call'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 1.3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                lastContainer(
                    text: 'Select Domain',
                    backcolor: Colors.white,
                    colr: Colors.blue),
                lastContainer(
                    text: 'Get Premium',
                    backcolor: Colors.blue,
                    colr: Colors.white),
              ],
            ),
            boxhight6(),
            boxhight6()
          ],
        ));
  }

  featuresColumn(
      {required String heading,
      required String text1,
      required String text2,
      required String imagePic}) {
    return Row(
      children: [
        SizedBox(
            height: 70,
            width: 70,
            // color: Colors.red,
            child: Image.network(
              imagePic,
              fit: BoxFit.fill,
            )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                heading,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              boxsixed2(),
              Text(
                text1,
                style: gryclrtxt(),
              ),
              Text(
                text2,
                style: gryclrtxt(),
              )
            ],
          ),
        )
      ],
    );
  }

  boxhight6() {
    return const SizedBox(
      height: 10,
    );
  }

  gryclrtxt() {
    return const TextStyle(
        color: Colors.grey,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 1);
  }

  boxsixed2() {
    return const SizedBox(
      height: 2,
    );
  }

  stylefont() {
    return const TextStyle(
        fontSize: 19, fontWeight: FontWeight.w500, letterSpacing: 1.1);
  }

  rowQs({required String text, String? text2}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              boxsixed2(),
              Text(
                text,
                style: stylefont2(),
              ),
              Text(
                text2 ?? '',
                style: stylefont2(),
              )
            ],
          ),
        ),
        const Icon(Icons.add)
      ],
    );
  }

  division() {
    return const Divider(
      thickness: 1.3,
    );
  }

  box2({required IconData iconX, required String text1}) {
    return Container(
      height: 100,
      width: 170,
      decoration: BoxDecoration(
          // color: Colors.red,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(width: 0.9, color: Colors.grey)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Icon(
            iconX,
            size: 60,
          ),
          Text(text1)
        ]),
      ),
    );
  }

  lastContainer(
      {required text, required Color backcolor, required Color colr}) {
    return Container(
        height: 50,
        width: 180,
        decoration: BoxDecoration(
            color: backcolor, borderRadius: BorderRadius.circular(7)),
        child: Center(
            child: Text(
          text,
          style: TextStyle(color: colr, fontSize: 18),
        )));
  }

  // lastContainer({required text2, required Color niram}) {
  //   return Container(
  //     child: Center(child: Text(text2)),
  //     height: 40,
  //     width: 170,
  //     decoration:
  //         BoxDecoration(color: niram, borderRadius: BorderRadius.circular(10)),
  //   );
  // }

  // buttoneli() {
  //   return ElevatedButton(
  //     onPressed: () {},
  //     child: Text(
  //       'Select domain',
  //       style: TextStyle(color: Colors.blue),
  //     ),
  //     style: ButtonStyle(
  //       backgroundColor: MaterialStatePropertyAll(Colors.white),
  //     ),
  //   );
  // }

  stylefont2() => const TextStyle(fontSize: 17);
}
