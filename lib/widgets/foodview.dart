import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:waiter/provider/foood_provider.dart';
class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(
        builder: (context, value, child) {
          if (value.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          final products = value.product;
          return Container(
                  height: MediaQuery.of(context).size.height,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                    itemCount: products!.length,
                    itemBuilder: (context, index) {
                      final product = products![index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(child: Image.network(product.image)),
                            Text(product.productName.toLowerCase().toUpperCase(),style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                            Text(product.price),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                onPressed: (){}, 
                                child: Text("Add to Cart")
                                ),
                            ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                onPressed: (){}, 
                                child: Text("Parcel")
                                ),
                              ),
                            //Text(product.price)
                          ],
                        ),
                      );
                    },
                  ),
                );
        },
      );
  }
}