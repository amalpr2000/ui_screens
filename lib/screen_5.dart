import 'package:flutter/material.dart';

class Screen5 extends StatelessWidget {
  const Screen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Order #1688068'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'May 31, 05:42 PM',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 120,
                    height: 25,
                  ),
                  Container(
                    height: 12,
                    width: 12,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue[800],
                    ),
                  ),
                  Text(
                    'Delivered',
                    style: TextStyle(color: Colors.grey[600], fontSize: 16),
                  )
                ],
              ),
              Divider(
                thickness: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '1 ITEM',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 190,
                  ),
                  Icon(
                    Icons.receipt,
                    color: Colors.blue[800],
                  ),
                  Text(
                    'RECEIPT',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.blue[800]),
                  )
                ],
              ),
              Container(
                child: Column(children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(2)),
                              child: Image.network(
                                'https://cdn.shopify.com/s/files/1/0050/9994/6070/products/ridingspiritolive_150x150_crop_center.jpg?v=1641487858',
                                height: 60,
                                width: 60,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Explore | Men | Navy Blue',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            '1 piece',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          Text(
                            'Size: XL',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                    color: Colors.blue[100],
                                    border: Border.all(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(3)),
                                child: Center(
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                        color: Colors.blue[800], fontSize: 16),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Text('X'),
                              ),
                              Text(
                                '₹799',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(
                                width: 150,
                              ),
                              Text(
                                '₹799',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                ]),
              ),
              Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Item Total',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      '₹799',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delivery',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'FREE',
                      style: TextStyle(fontSize: 18, color: Colors.green),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Grand Total',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '₹799',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'CUSTOMER DETAILS',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Icon(Icons.share_outlined, color: Colors.blue[800]),
                    Text(
                      'SHARE',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue[800],
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Deepa',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        Text(
                          '+91-7829000484',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Icon(
                      Icons.call,
                      color: Colors.blue[800],
                      size: 30,
                    ),
                    Icon(Icons.messenger_outline_rounded,
                        size: 30, color: Colors.blue[800]),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Address',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        Text(
                          'D 1101 Charteres Beverly',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Hills,Subramanyapura P.O',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 2.5,
                  ),
                  _containersame(str1: 'City', str2: 'Bangalore'),
                  _containersame(str1: 'Pincode', str2: '560061'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 3,
                  ),
                  _containersame(str1: 'Payment', str2: 'Online'),
                  SizedBox(
                    width: 120,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 25,
                        width: 55,
                        decoration: BoxDecoration(
                            color: Colors.green[100],
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.lightGreen)),
                        child: Center(
                          child: Text(
                            'PAID',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Divider(
                thickness: 2,
              ),
              Row(
                children: [
                  Text(
                    'ADDITIONAL INFORMATION',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [_containersame(str1: 'State', str2: 'Karnataka')],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  _containersame(str1: 'Email', str2: 'greeniceaqua@gmail.com')
                ],
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.blue)),
                  child: Center(
                      child: Text(
                    'Share receipt',
                    style: TextStyle(
                        color: Colors.blue[800],
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

_containersame({required String str1, required String str2}) {
  return SizedBox(
    width: 180,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          str1,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        Text(
          str2,
          style: const TextStyle(fontSize: 15),
        )
      ],
    ),
  );
}
