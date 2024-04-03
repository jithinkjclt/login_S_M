import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class datas extends StatelessWidget {
  const datas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15, bottom: 10, top: 15),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              blurStyle: BlurStyle.outer)
                        ]),
                    width: 390,
                    height: 100,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 50,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.blue.shade100,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Center(
                            child: Text(
                              "01",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 180,
                          height: 100,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "jhonathan james",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Exapmle@gmail.com",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Created:05/03/2023",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "text",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 25,
                          decoration: BoxDecoration(
                              color: Colors.blue.shade100,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Center(
                            child: Text(
                              "text",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_sharp,
                                  size: 10,
                                ),
                                Text(
                                  "calicut",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(
                              Icons.wifi_calling_3,
                              size: 35,
                            ),
                            SizedBox(
                              height: 25,
                            )
                          ],
                        )
                      ],
                    )),
              );
            },
          ))
        ],
      ),
    );
  }
}
