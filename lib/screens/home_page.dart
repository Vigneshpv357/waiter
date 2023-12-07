import 'package:flutter/material.dart';
import 'package:waiter/provider/foood_provider.dart';
import 'package:provider/provider.dart';
import 'package:stacked/stacked.dart';
import'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<ProductProvider>(context, listen: false).getAllTodos();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurant Name',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.brown,
      ),
      body: Consumer<ProductProvider>(
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
                        child: Card(
                          child: Column(
                            children: [
                              Expanded(child: Image.network(product.image)),
                              Text(product.productName.toLowerCase().toUpperCase(),style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                              //Text(product.price)
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );

          
          // ListView.builder(
          //   itemCount: products.length,
          //   itemBuilder: (context, index) {
          //     final product = products[index];
          //     return ListTile(
          //       leading: CircleAvatar(
          //         child:Image.network(product.image),
          //       ),
          //       title: Text(
          //         product.productName,
                  
          //       ),
          //     );
          //   },
          // );
        },
      ),
    );
  }
}
