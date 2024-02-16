import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  SampleItem? selectedMenu;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text("Custom PopUp Menu"),
        actions: [
          PopupMenuButton(
              constraints: const BoxConstraints.expand(
                  width: 300, height: 280),
              initialValue: selectedMenu,

              // Callback that sets the selected popup menu item.
              onSelected: (SampleItem item) {
                setState(() {
                  selectedMenu = item;
                });
              },
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(
                    value: SampleItem.itemOne,
                    child: StatefulBuilder(builder:
                        (BuildContext context,
                        StateSetter setState) {
                      return Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment
                                      .start,
                                  children: [
                                    const Text(
                                      "Importance",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight:
                                          FontWeight
                                              .bold),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      padding:
                                      const EdgeInsets
                                          .symmetric(
                                          horizontal:
                                          10),
                                      width: double
                                          .infinity,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color:
                                              Colors
                                                  .grey),
                                          color:
                                          Colors
                                              .white,
                                          borderRadius:
                                          BorderRadius
                                              .circular(
                                              10)),
                                      height: 50,
                                      child: TextFormField(),)

                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment
                                      .start,
                                  children: [
                                    const Text(
                                      "Stage",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight:
                                          FontWeight
                                              .bold),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      padding:
                                      const EdgeInsets
                                          .symmetric(
                                          horizontal:
                                          10),
                                      width:
                                      double.infinity,
                                      decoration: BoxDecoration(
                                          color: Colors
                                              .white,
                                          border: Border.all(
                                              color: Colors
                                                  .grey),
                                          borderRadius:
                                          BorderRadius
                                              .circular(
                                              10)),
                                      height: 50,

                                      child: TextFormField(),)
                                  ],
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment
                                      .start,
                                  children: [
                                    const Text(
                                      "Status",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight:
                                          FontWeight
                                              .bold),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      padding:
                                      const EdgeInsets
                                          .symmetric(
                                          horizontal:
                                          10),
                                      width: double
                                          .infinity,
                                      decoration: BoxDecoration(
                                          color:
                                          Colors
                                              .white,
                                          border: Border.all(
                                              color:
                                              Colors
                                                  .grey),
                                          borderRadius:
                                          BorderRadius
                                              .circular(
                                              10)),
                                      height: 50,

                                      child: TextFormField(),)
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment
                                      .start,
                                  children: [
                                    const Text(
                                      "Assigned Truck",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight:
                                          FontWeight
                                              .bold),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      padding:
                                      const EdgeInsets
                                          .symmetric(
                                          horizontal:
                                          10),
                                      width: double
                                          .infinity,
                                      decoration: BoxDecoration(
                                          color:
                                          Colors
                                              .white,
                                          border: Border.all(
                                              color:
                                              Colors
                                                  .grey),
                                          borderRadius:
                                          BorderRadius
                                              .circular(
                                              10)),
                                      height: 50,
                                      child: TextFormField(),)
                                  ],
                                ),
                              ),

                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);

                            },
                            child: Container(
                              margin: const EdgeInsets.only(
                                  top: 25),
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .primaryColor,
                                  borderRadius:
                                  BorderRadius.circular(
                                      10)),
                              alignment: Alignment.center,
                              child: const Text(
                                "Apply",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight:
                                    FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                          )
                        ],
                      );
                    })),
              ] )
        ],
      ),

    );
  }
}
enum SampleItem { itemOne, itemTwo, itemThree }