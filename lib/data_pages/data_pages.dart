import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_s_m/data_pages/home_cubit.dart';

import '../homepages/login_page.dart';
import '../shared_preference/sharedprefernece.dart';



class datas extends StatelessWidget {
  const datas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer:  Drawer(
        child: Column(
          children: [
            SizedBox(height: 150),
            InkWell(
              onTap: () {
                dlt(){
                  LocalStorage().deleteApi();
                  Navigator.of(context)
                      .push(MaterialPageRoute(
                    builder: (context) => login(),
                  ));
                }

              },
              child: Row(
                children: [
                  SizedBox(
                    width: 80,
                  ),
                  Text("LogOut"),
                  Icon(Icons.logout)
                ],
              ),
            )
          ],
        ),
      ),
      body: BlocProvider(
        create: (context) => HomeCubit(context),
        child: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
          if (state is viewall) {
            return Column(
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
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 180,
                                height: 100,
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          state.data!.data!.leads![index].name!,
                                          style: const TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          state.data!.data!.leads![index]
                                              .mobile!,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          state.data!.data!.leads![index].id
                                              .toString(),
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12),
                                        )
                                      ],
                                    ),
                                    const Row(
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
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
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
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        }),
      ),
    );
  }
}
