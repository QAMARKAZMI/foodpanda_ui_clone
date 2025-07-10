import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage('assets/cricket_deal_2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.close,
                      color: Color.fromARGB(255, 175, 9, 117),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Cricket Deal 2",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Column(
                children: [
                  Text(
                    "Rs. 869.00",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  Text(
                    "Rs. 549.00",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 5),
          Text(
            '6 inches sub & 345 ml drink',
            style: TextStyle(fontSize: 14, color: Colors.black54),
          ),
          Divider(height: 40, color: Colors.black12),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 175, 9, 117).withOpacity(0.07),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black26),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Choose Your Bread',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 175, 9, 117),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        "Required",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  "Select One",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 175, 9, 117),
                  ),
                ),
                SizedBox(height: 8),
                RadioListTile(
                  value: 'Italian',
                  groupValue: 'bread',
                  title: Text('Italian'),
                  secondary: Text('Free', style: TextStyle(fontSize: 15)),
                  activeColor: Color.fromARGB(255, 175, 9, 117),
                  onChanged: (value) {},
                ),
                RadioListTile(
                  value: 'Wheat',
                  groupValue: 'bread',
                  title: Text('Wheat'),
                  secondary: Text('Free', style: TextStyle(fontSize: 15)),
                  activeColor: Color.fromARGB(155, 175, 9, 117),
                  onChanged: (value) {},
                ),
                RadioListTile(
                  value: 'Sesame',
                  groupValue: 'bread',
                  title: Text('Sesame'),
                  secondary: Text('Free', style: TextStyle(fontSize: 15)),
                  activeColor: Color.fromARGB(155, 175, 9, 117),
                  onChanged: (value) {},
                ),
                RadioListTile(
                  value: 'Honey Oat',
                  groupValue: 'bread',
                  title: Text('Honey Oat'),
                  secondary: Text('Free', style: TextStyle(fontSize: 15)),
                  activeColor: Color.fromARGB(155, 175, 9, 117),
                  onChanged: (value) {},
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Text(
            'Special Instructions',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30),
          Text(
            'Please let us know if you have any special requests or dietary restrictions. We will do our best to accommodate your needs.',
            style: TextStyle(fontSize: 14, color: Colors.black54),
          ),
          SizedBox(height: 30),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(
              hintText: 'e.g. no mayo',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              contentPadding: EdgeInsets.all(12),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 10),
              child: Text('0/500', style: TextStyle(color: Colors.black)),
            ),
          ),
          SizedBox(height: 30),
          Text(
            "If this product is not available, you can choose a similar product from the list below.",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: ListTile(
              title: Text("Remove it away my order"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Color.fromARGB(255, 175, 9, 117),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 90,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black12, spreadRadius: 1, blurRadius: 2),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.remove, color: Colors.white, size: 30),
                ),
                SizedBox(width: 20),
                Text(
                  '1',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 20),
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 175, 9, 117),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.add, color: Colors.white, size: 30),
                ),
              ],
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                padding: EdgeInsets.symmetric(vertical: 18),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 175, 9, 117),
                ),
                child: Center(
                  child: Text(
                    "Add to Cart",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
