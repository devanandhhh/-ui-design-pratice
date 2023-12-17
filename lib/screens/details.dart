import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int currentPageIndex = 0;
  bool isSelected = true;
  void togglebutton(bool value) {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Center(child: Text('Catalogue ')),
          bottom: const TabBar(
            indicatorWeight: 4,
            //  indicatorColor: Colors.red,
            tabs: [
              Tab(
                text: 'Products',
              ),
              Tab(
                text: 'Categories',
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          buildpage(),
        ]),
      ),
    );
  }

  Widget buildpage() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color.fromARGB(255, 237, 235, 235),
      child: ListView(children: [
        boxContainer(
            image1:
                'https://printedbritishpotteryandporcelain.com/sites/default/files/pottery/Davenport%20Cup%20Stork%20and%20Fence%20pp.jpg',
            name: 'Mug | Explore ',
            sizedBox: 152,
            price: 399),

        boxContainer(
            image1:
                'https://www.lazyhippos.in/cdn/shop/products/Blackfront.png?v=1664053617',
            name: 'T shirt | Men | offer',
            sizedBox: 116,
            price: 499),
        boxContainer(
            image1:
                'https://in.louisvuitton.com/images/is/image/lv/1/PP_VP_L/louis-vuitton-inside-out-cotton-t-shirt-ready-to-wear--HIY47WJYN547_PM2_Front%20view.jpg',
            name: 'Combo offer | buy 1 get 2 free..  ',
            sizedBox: 20,
            price: 599),

        boxContainer(
            image1:
                'https://countrybean.in/cdn/shop/products/website-mugs-1stimage.jpg?v=1676634717&width=533',
            name: 'Mug | Colorfull Mugs ',
            sizedBox: 98,
            price: 799),
        boxContainer(
            image1:
                'https://cdn.firstcry.com/education/2022/11/06094158/Toy-Names-For-Kids.jpg',
            name: 'Kids Toy | Combo Offer',
            sizedBox: 85,
            price: 899),
        boxContainer(
            image1:
                'https://www.jiomart.com/images/product/original/rvv6fqlgon/veryke-kitchen-set-for-kids-girls-big-cooking-set-light-and-sound-portable-trolley-pretend-play-toys-battery-operated-toys-for-girls-pink-color-product-images-orvv6fqlgon-p600698505-0-202304191356.jpg?im=Resize=(420,420)',
            name: 'Toy for Girls | Offer available',
            sizedBox: 51,
            price: 49)
        // hallo
      ]),
    );
  }

  boxhight2() {
    return SizedBox(
      height: 2,
    );
  }

  boxheight4() {
    return SizedBox(
      height: 4,
    );
  }

  boxContainer(
      {required String image1,
      required String name,
      required double sizedBox,
      required int price}) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 140,
          width: 350,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(6)),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                image1,
                              )),
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(width: 1.2, color: Colors.grey)),
                      // child: ClipRRect(
                      //   borderRadius: BorderRadius.circular(4),
                      //   child: Image.network(
                      //     'https://printedbritishpotteryandporcelain.com/sites/default/files/pottery/Davenport%20Cup%20Stork%20and%20Fence%20pp.jpg',
                      //     fit: BoxFit.fill,
                      //   ),
                      // ),
                      height: 70,
                      width: 70,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            name,
                            // 'Couch Potato Women...',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: sizedBox,
                          ),
                          const Icon(Icons.more_vert)
                        ],
                      ),

                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('1 piece'),
                              boxhight2(),
                              Text(
                                '₹$price',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              boxhight2(),
                              Text(
                                'in stock',
                                style: TextStyle(color: Colors.green),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 180,
                          ),
                          Column(
                            children: [
                              boxheight4(),
                              boxheight4(),
                              Switch(
                                  value: isSelected, onChanged: togglebutton),
                            ],
                          )
                        ],
                      ),

                      // Divider(thickness: ,)
                    ],
                  )
                ],
              ),
              Divider(
                thickness: 1.2,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 124,
                  ),
                  Icon(Icons.share),
                  Text('Share Product')
                ],
              )
            ],
          ),
        ));
  }
}
