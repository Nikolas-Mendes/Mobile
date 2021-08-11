import 'package:flutter/material.dart';
import 'package:magazine/model/products.dart';
import 'package:magazine/provider/product.dart';
import 'package:magazine/style.dart';

class Home extends StatefulWidget {
  @override
  createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              "assets/logo.jpg",
              height: 50,
            ),

            SizedBox(
              width: 12,
            ),

            Text(
              "Ofertas do dia",
            ),
          ],
        ),

        bottom: PreferredSize(
          child: Container(
            height: 5,
            decoration: BoxDecoration(
              gradient: appBarGradient,
            ),
          ),
          preferredSize: Size.fromHeight(5),
        ),
      ),

      body: ListView.separated(

        scrollDirection: Axis.vertical,
        
        itemBuilder: (BuildContext context, int index) {
          Products product = products.elementAt(index);
          
          return ListTile(
            trailing: IconButton(
              icon: (product.isFavorite)
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_outline),

              onPressed: () {
                setState(() {
                  product.isFavorite = !product.isFavorite;
                });
              },

              color: redTheme,
            ),

            title: Row(
              children: [
                Container(
                  child: Image.asset(
                    product.photo,
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),

                SizedBox(
                  width: 12,
                ),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Text(
                        product.description,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                          top: 5,
                        ),
                        child: Text(
                          product.price,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: blueTheme,
                          ),
                        ),
                      ),

                      Text(
                        product.installments,
                        style: TextStyle(
                          fontSize: 12,
                          color: blueTheme,
                        ),
                      ),

                    ],
                  ),
                ),

              ],
            ),
          );
        }, 

        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        }, 

        itemCount: 7,
      ),
    );
  }
  
}