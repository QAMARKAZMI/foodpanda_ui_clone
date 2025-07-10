import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  ListTile listTile(
    BuildContext context,
    String text,
    IconData? icon,
    VoidCallback onTap,
  ) {
    return icon == null
        ? ListTile(
          onTap: onTap,
          title: Text(
            text,
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
        )
        : ListTile(
          onTap: onTap,
          leading: Icon(icon, color: Color(0xFFFf2B85)),
          title: Text(
            text,
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
        );
  }

  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          Builder(
            builder: (c) {
              return DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFFFF2B85),
                  border: Border.all(color: Color(0xFFFF2B85)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          "D",
                          style: TextStyle(
                            color: Color(0xFFFF2b85),
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Data Programmer",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          Column(
            children: [
              listTile(
                context,
                "vouchers & Offers",
                Icons.local_offer_outlined,
                () {},
              ),
              listTile(
                context,
                "Favourie",
                Icons.favorite_outline_rounded,
                () {},
              ),
              listTile(
                context,
                "Orders & recordering",
                Icons.my_library_books_outlined,
                () {},
              ),
              listTile(context, "Addresses", Icons.location_on_outlined, () {}),
              listTile(context, "Paymet methods", Icons.payment_rounded, () {}),
              listTile(
                context,
                "Help Center",
                Icons.help_center_outlined,
                () {},
              ),
              listTile(
                context,
                "Invite Friends",
                Icons.wallet_giftcard_outlined,
                () {},
              ),
              Divider(),
              listTile(context, "Settings", null, () {}),
              listTile(context, "Terms & Conditions / Privacy", null, () {}),
              listTile(context, "Logout", null, () {}),
            ],
          ),
        ],
      ),
    );
  }
}
