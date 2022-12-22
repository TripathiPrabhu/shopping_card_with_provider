import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_card_with_provider/provider_models/DataProvider.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    size: 40,
                  ),
                ),
                Text(
                  'Shopping Card',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 10,
                width: double.infinity,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Consumer<DataProvider>(
                  builder: (context, DataProvider, child) {
                    return Text(
                    '${DataProvider.count}',
                    style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                    ),
                    );
                  },

                ),
                Text(
                  'Total',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey, width: 5)),
                  child: Center(
                    child: Consumer<DataProvider>(
                        builder: (context, DataProvider, child) {
                      return IconButton(
                        onPressed: () {
                          DataProvider.Increment();

                        },
                        icon: Icon(Icons.add),
                      );
                    }),
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/SecondScreen');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black87,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Next-Page',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.skip_next_outlined,
                            size: 40,
                          )
                        ],
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
