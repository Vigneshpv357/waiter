import 'package:flutter/material.dart';
import 'package:waiter/provider/foood_provider.dart';
import 'package:provider/provider.dart';
import 'package:stacked/stacked.dart';
import'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:waiter/widgets/foodview.dart';
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
      body: UserDetails(),
    );
  }
}
