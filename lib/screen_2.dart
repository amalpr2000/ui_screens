import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  Screen2({super.key});
  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  int currentSelectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    List bottomNavLabels = ['Home', 'Order', 'Products', 'Manage', 'Account'];
    List bottomNavIcons = [
      Icon(Icons.home),
      Icon(Icons.shopping_cart_checkout),
      Icon(Icons.window_sharp),
      Icon(Icons.menu_open_rounded),
      Icon(Icons.person)
    ];
    List gridName = [
      'Marketing Design',
      'Online Payments',
      'Discount Coupons',
      'My Customers',
      'Store QR Code',
      'Extra Charges',
      'Order Form'
    ];
    List gridIcon = [
      Icons.business_center_sharp,
      Icons.payment_sharp,
      Icons.percent_rounded,
      Icons.perm_contact_cal_outlined,
      Icons.qr_code_2,
      Icons.currency_rupee_rounded,
      Icons.list_alt_rounded,
    ];
    List gridIconColor = [
      Colors.orange[700],
      Color.fromARGB(255, 30, 255, 1),
      Colors.yellow[700],
      Color.fromARGB(255, 36, 223, 154),
      Color.fromARGB(255, 85, 101, 87),
      Color.fromARGB(255, 138, 47, 207),
      Color.fromARGB(255, 230, 117, 203)
    ];
    List isNew = [false, false, false, false, false, false, true];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Manage Store'),
        centerTitle: true,
      ),
      body: currentSelectedIndex == 3
          ? GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: (10 / 7),
              padding: EdgeInsets.all(10),
              children: List.generate(gridName.length, (index) {
                return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: InkWell(
                      onTap: () {},
                      child: SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.all(13),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    gridIcon[index],
                                    size: 40,
                                    color: gridIconColor[index],
                                  ),
                                  if (isNew[index])
                                    Container(
                                      height: 20,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Center(
                                        child: Text(
                                          'NEW',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                gridName[index],
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                    ));
              }))
          : SizedBox(
              height: 1,
            ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentSelectedIndex,
          selectedItemColor: Colors.blue[800],
          unselectedItemColor: Colors.grey,
          iconSize: 30,
          onTap: (value) {
            setState(() {
              currentSelectedIndex = value;
            });
          },
          items: List.generate(bottomNavLabels.length, (index) {
            return BottomNavigationBarItem(
                icon: bottomNavIcons[index], label: bottomNavLabels[index]);
          })),
    );
  }
}
