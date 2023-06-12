import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    List orderList = [
      [
        'https://rukminim1.flixcart.com/image/850/650/kl2mljk0/kids-t-shirt/y/h/c/7-8-years-pretty-awesome-isle-of-tangerines-original-imagy9zpzbfzrxge.jpeg?q=20',
        '1688068',
        '799',
        'Jul 12, 02:06 PM'
      ],
      [
        'https://cdn.shopify.com/s/files/1/0584/2770/3448/products/t-shirts-for-kids-bu021939-rama-11_1400x.jpg?v=1647344261',
        '1457741',
        '397.4',
        'Apr 26, 07:47 AM'
      ],
      [
        'https://i.pinimg.com/550x/93/20/13/932013c737cc814726d1de4da585bfdd.jpg',
        '1408896',
        '686.42',
        'Apr 11, 10:54 AM'
      ],
      [
        'https://www.thedottedi.in/pub/media/catalog/product/cache/2a8d341df1aabef95fa418beb77089e8/s/u/super_bro_combo.jpg',
        '1369633',
        '1123.5',
        'Apr 2, 11:29 AM'
      ],
      [
        'https://5.imimg.com/data5/SELLER/Default/2022/8/BH/EE/VB/122998678/n-3-250x250.png',
        '1370125',
        '1722.75',
        'Apr 2, 11:29 AM'
      ],
      [
        'https://www.thedottedi.in/pub/media/catalog/product/cache/2a8d341df1aabef95fa418beb77089e8/i/n/incrediblesistercombo_-_thedottedi.jpg',
        '1359971',
        '884.17',
        'Apr 1, 11:19 AM'
      ],
      [
        'https://rukminim1.flixcart.com/image/312/312/xif0q/pencil-box/y/f/b/stn-combo-37-8-poksi-original-imagdmyyuzvtyzvh.jpeg?q=70',
        '1359971',
        '599.25',
        'Apr 1, 10:37 AM'
      ],
      [
        'https://cdn.shopify.com/s/files/1/0036/7637/3061/products/WhatsAppImage2022-06-30at5.52.17PM_1.jpg?v=1656936482',
        '1265103',
        '2297',
        'Mar 6, 01:26 PM'
      ],
      [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8c4PQBIROujYZ05Nv14XwVLSXwwqArHtUXQ&usqp=CAU',
        '1173537',
        '599.25',
        'Feb 22, 10:04 PM'
      ],
      [
        'https://cdn.shopaccino.com/feranoid/products/keep-it-mellow-t-shirt-542798_m.jpg?v=452',
        '1176731',
        '1123.5',
        'Feb 20, 09:54 AM'
      ],
      [
        'https://cdn.shopify.com/s/files/1/0050/9994/6070/products/ridingspiritolive_150x150_crop_center.jpg?v=1641487858',
        '1174282',
        '799',
        'Feb 19, 10:47 AM'
      ],
      [
        'https://cdn.shopify.com/s/files/1/0399/7620/6492/products/WhatsAppImage2021-04-07at9.15.57AM.jpg?v=1617775003&width=533',
        '1174435',
        '524.25',
        'Feb 18, 12:08 PM'
      ],
      [
        'https://i.ebayimg.com/images/g/LTEAAOSwhsBjGTqg/s-l500.jpg',
        '1164892',
        '524.25',
        'Feb 13, 07:57 AM'
      ],
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        centerTitle: true,
        title: Text('Payments'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.info_outline),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              cardTile(),
              sizedBoxWithHeight(10),
              tileView(
                  title: 'Default Method',
                  subTitle: 'Online Payments',
                  icon: Icons.arrow_forward_ios_rounded),
              tileView(
                title: 'Payment Profile',
                subTitle: 'Bank Account',
                icon: Icons.arrow_forward_ios_rounded,
              ),
              Divider(
                thickness: 2,
              ),
              tileView(
                  title: 'Payments Overview',
                  subTitle: 'Life Time',
                  icon: Icons.arrow_drop_down),
              sizedBoxWithHeight(10),
              Row(
                children: [
                  colorCard(
                      title: 'AMOUNT ON HOLD',
                      amount: '0',
                      color: Colors.orange),
                  colorCard(
                      title: 'AMOUNT RECEIVED',
                      amount: '13,332',
                      color: Color.fromARGB(255, 3, 202, 50)),
                ],
              ),
              sizedBoxWithHeight(3),
              Text(
                'Transactions',
                style: TextStyle(fontSize: 17),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  chipButton(
                      label: 'On hold',
                      labelColor: Colors.grey,
                      bgColor: Colors.grey[300]),
                  chipButton(
                      label: 'Payouts(15)',
                      labelColor: Colors.white,
                      bgColor: Colors.blue[800]),
                  chipButton(
                      label: 'Refunds',
                      labelColor: Colors.grey,
                      bgColor: Colors.grey[300])
                ],
              ),
              ...List.generate(orderList.length, (index) {
                return orderListTile(
                    imgPath: orderList[index][0],
                    orderId: orderList[index][1],
                    price: orderList[index][2],
                    dateAndTime: orderList[index][3]);
              })
            ],
          ),
        ),
      ),
    );
  }

  Column orderListTile(
      {required String imgPath,
      required String orderId,
      required String price,
      required String dateAndTime}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.network(
                height: 50,
                width: 50,
                imgPath,
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  Text(
                    'Order #$orderId',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  sizedBoxWithHeight(5),
                  Text(
                    dateAndTime,
                    style: TextStyle(color: Colors.grey[400]),
                  )
                ],
              ),
              SizedBox(
                width: 90,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '₹$price',
                    style: TextStyle(
                        color: Colors.blue[800], fontWeight: FontWeight.bold),
                  ),
                  sizedBoxWithHeight(5),
                  Row(
                    children: [
                      Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.green),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          'Successful',
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            '₹$price deposited to: 58860200000138',
            style: TextStyle(
                fontSize: 11,
                color: Colors.grey[600],
                fontStyle: FontStyle.italic),
          ),
        ),
        Divider()
      ],
    );
  }

  InkWell chipButton({required label, required labelColor, required bgColor}) {
    return InkWell(
      onTap: () {},
      child: Chip(
        label: Text(
          label,
          style: TextStyle(color: labelColor),
        ),
        backgroundColor: bgColor,
      ),
    );
  }

  Expanded colorCard(
      {required String title, required String amount, required color}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  '₹$amount',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row tileView(
      {required String title, required String subTitle, required icon}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 17),
        ),
        SizedBox(
          width: 100,
        ),
        Text(
          subTitle,
          style: TextStyle(color: Colors.grey),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(icon),
          color: Colors.grey,
        )
      ],
    );
  }

  Card cardTile() {
    return Card(
      elevation: 2,
      child: SizedBox(
        height: 180,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Transaction Limit',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              sizedBoxWithHeight(5),
              Text(
                'A free limit up to which you will recieve the online payments directly in your bank.',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              sizedBoxWithHeight(10),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: LinearProgressIndicator(
                  value: 13332 / 50000,
                  color: Colors.blue[800],
                  backgroundColor: Colors.grey[300],
                  minHeight: 5,
                ),
              ),
              sizedBoxWithHeight(5),
              Text(
                '36,668 left out of ₹50,000',
                style: TextStyle(color: Colors.grey),
              ),
              sizedBoxWithHeight(15),
              SizedBox(
                height: 30,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[800]),
                    onPressed: () {},
                    child: Text('Increase limit')),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget sizedBoxWithHeight(double height) {
    return SizedBox(
      height: height,
    );
  }
}
