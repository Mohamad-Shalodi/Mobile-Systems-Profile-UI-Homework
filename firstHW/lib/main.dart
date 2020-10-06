import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 15, right: 15, top: 50, bottom: 10),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Center",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: double.infinity,
                height: 180,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  color: Color.fromRGBO(55, 117, 253, 1),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 32,
                              backgroundImage:
                                  AssetImage("assets/images/profile.jpg"),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Muasam Rayamajhi",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "A trendsetter",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ProfileStatistic(number: 846, name: "collect"),
                            ProfileStatistic(number: 51, name: "Attention"),
                            ProfileStatistic(number: 267, name: "Track"),
                            ProfileStatistic(number: 39, name: "Coupons"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconsListItem(
                        name: "Wallet",
                        icon: Icons.account_balance_wallet,
                        numOfNotification: 0),
                    IconsListItem(
                        name: "Delivery",
                        icon: Icons.card_travel,
                        numOfNotification: 0),
                    IconsListItem(
                        name: "Message",
                        icon: Icons.message,
                        numOfNotification: 2),
                    IconsListItem(
                        name: "Service",
                        icon: Icons.attach_money,
                        numOfNotification: 0)
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    ListViewItem(
                        icon: Icons.location_pin,
                        iconcolor: Color.fromRGBO(141, 122, 238, 1),
                        name: "Address",
                        description: "Ensure your harvesting address"),
                    ListViewItem(
                        icon: Icons.lock,
                        iconcolor: Color.fromRGBO(243, 105, 183, 1),
                        name: "Privacy",
                        description: "System permission change"),
                    ListViewItem(
                        icon: Icons.layers,
                        iconcolor: Color.fromRGBO(255, 200, 91, 1),
                        name: "General",
                        description: "Basic functional settings"),
                    ListViewItem(
                        icon: Icons.notifications,
                        iconcolor: Color.fromRGBO(93, 209, 211, 1),
                        name: "Notification",
                        description: "Take over the news in time"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ListViewItem extends StatelessWidget {
  final IconData icon;
  final Color iconcolor;
  final String name;
  final String description;

  const ListViewItem({
    @required this.icon,
    @required this.name,
    @required this.description,
    @required this.iconcolor,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          blurRadius: 20,
          spreadRadius: 1,
          color: Color.fromRGBO(159, 240, 242, 0.3),
        ),
      ]),
      margin: EdgeInsets.only(bottom: 14),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        child: Container(
          height: 70,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: this.iconcolor,
                  child: Icon(
                    this.icon,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        this.name,
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        this.description,
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 12,
                          color: Colors.black26,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black26,
                      size: 16,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IconsListItem extends StatelessWidget {
  final IconData icon;
  final String name;
  final int numOfNotification;

  const IconsListItem({
    @required this.icon,
    @required this.name,
    @required this.numOfNotification,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundColor: Color.fromRGBO(120, 120, 120, 0.1),
              child: Icon(
                this.icon,
                color: Colors.black,
              ),
            ),
            (this.numOfNotification > 0)
                ? Container(
                    width: 50,
                    height: 50,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.blue,
                        child: Text(
                          numOfNotification.toString(),
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                  )
                : SizedBox(),
          ],
        ),
        Text(this.name,
            style: TextStyle(
              fontWeight: FontWeight.w400,
            )),
      ],
    );
  }
}

class ProfileStatistic extends StatelessWidget {
  final int number;
  final String name;

  const ProfileStatistic({@required this.number, @required this.name, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          this.number.toString(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        Text(
          this.name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
