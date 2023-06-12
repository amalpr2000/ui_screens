import 'package:flutter/material.dart';

class Screen6 extends StatefulWidget {
  Screen6({super.key});

  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  List productName = [
    'Couch Potato | Women...',
    'Couch Potato | Men | Bl...',
    'Mug | Explore',
    'Combo Blahst 1 | Pack...',
    'Mug | Orchard',
    'Combo Blahst 2 | Expla...',
    'I see Combo Pack',
    'Kids Combo Blahst',
  ];
  List productImgPath = [
    'https://rukminim1.flixcart.com/image/850/650/kl2mljk0/kids-t-shirt/y/h/c/7-8-years-pretty-awesome-isle-of-tangerines-original-imagy9zpzbfzrxge.jpeg?q=20',
    'https://cdn.shopify.com/s/files/1/0584/2770/3448/products/t-shirts-for-kids-bu021939-rama-11_1400x.jpg?v=1647344261',
    'https://i.pinimg.com/550x/93/20/13/932013c737cc814726d1de4da585bfdd.jpg',
    'https://www.thedottedi.in/pub/media/catalog/product/cache/2a8d341df1aabef95fa418beb77089e8/s/u/super_bro_combo.jpg',
    'https://5.imimg.com/data5/SELLER/Default/2022/8/BH/EE/VB/122998678/n-3-250x250.png',
    'https://www.thedottedi.in/pub/media/catalog/product/cache/2a8d341df1aabef95fa418beb77089e8/i/n/incrediblesistercombo_-_thedottedi.jpg',
    'https://rukminim1.flixcart.com/image/312/312/xif0q/pencil-box/y/f/b/stn-combo-37-8-poksi-original-imagdmyyuzvtyzvh.jpeg?q=70',
    'https://cdn.shopify.com/s/files/1/0036/7637/3061/products/WhatsAppImage2022-06-30at5.52.17PM_1.jpg?v=1656936482'
  ];
  List productPrice = [799, 799, 399, 699, 449, 599, 1299, 1199];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        centerTitle: true,
        title: Text('Catalogue'),
        actions: [Icon(Icons.search)],
        bottom: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              text: 'Products',
            ),
            Tab(
              text: 'Categories',
            )
          ],
        ),
      ),
      body: TabBarView(controller: tabController, children: [
        SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  children: List.generate(productName.length, (index) {
                return ProductCard(
                    name: productName[index],
                    imgPath: productImgPath[index],
                    price: productPrice[index]);
              }))),
        ),
        Center(
          child: Text('Categories'),
        )
      ]),
    );
  }
}

class ProductCard extends StatefulWidget {
  String name;
  String imgPath;
  int price;

  ProductCard(
      {super.key,
      required this.name,
      required this.imgPath,
      required this.price});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isSwitchon = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 3, bottom: 3),
      child: Card(
        elevation: 2,
        child: SizedBox(
          height: 170,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              image: NetworkImage(widget.imgPath),
                              fit: BoxFit.cover)),
                      height: 100,
                      width: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 199,
                                child: Text(
                                  widget.name,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17),
                                ),
                              ),
                              InkWell(
                                  onTap: () {},
                                  child: Icon(Icons.more_vert_outlined))
                            ],
                          ),
                          Text('1 piece'),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '₹${widget.price}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Row(
                            children: [
                              Text(
                                'In Stock',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: 100,
                              ),
                              SizedBox(
                                height: 20,
                                child: Switch(
                                    value: isSwitchon,
                                    onChanged: (value) {
                                      setState(
                                        () {
                                          if (isSwitchon == true) {
                                            isSwitchon = false;
                                          } else {
                                            isSwitchon = true;
                                          }
                                        },
                                      );
                                    }),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Divider(
                  thickness: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.share_outlined),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Share Product',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
