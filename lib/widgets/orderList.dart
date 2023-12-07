import 'package:flutter/material.dart';

class RefactoringOrderItem extends StatelessWidget {
  RefactoringOrderItem();
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.sizeOf(context).width * 0.5,
        height: MediaQuery.sizeOf(context).height * 0.7,
        decoration: BoxDecoration(color: Colors.grey, border: Border.all()),
        child: Column(
          children: [
            Text("Dine-In",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    child: Text(
                  "SI NO",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 6.0, top: 8.0, bottom: 8.0),
                  child: Container(
                      child: Text(
                    "Product Name",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 6.0, top: 8.0, bottom: 8.0),
                  child: Container(
                      child: Text(
                    "Quantity",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 6.0, top: 8.0, bottom: 8.0),
                  child: Container(
                      child: Text(
                    "Rate",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
              ],
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Container(
                          height: MediaQuery.sizeOf(context).height * .9,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20),
                                    child: Container(child: Text("1")),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20),
                                    child: Container(
                                      child: Text("biriyani"),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20),
                                    child: Container(child: Text("*3")),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20),
                                    child: Container(child: Text("500")),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Total:   ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "250",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
