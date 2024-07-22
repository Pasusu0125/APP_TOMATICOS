import 'package:app_t_v_1/common/paleta.dart';
import 'package:app_t_v_1/pages/comercial.dart';
import 'package:app_t_v_1/pages/profile.dart';
import 'package:app_t_v_1/pages/public_product.dart';
import 'package:app_t_v_1/structure/atoms/fondo_app.dart';
import 'package:flutter/material.dart';

class AppBarWidgetState extends StatelessWidget {
  const AppBarWidgetState({super.key});

  @override
  Widget build(BuildContext context) {
    const int tabsCount = 3;
    return SafeArea(
      child: FondoApp(
        altoFondo: 1.15,
        child: DefaultTabController(
          initialIndex: 0,
          length: tabsCount,
          child: Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.02,
                right: MediaQuery.of(context).size.width * 0.05,
                left: MediaQuery.of(context).size.width * 0.05),
            child: Scaffold(
              backgroundColor: const Color.fromARGB(0, 0, 0, 0),
              appBar: AppBar(
                leading: const SizedBox(),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                notificationPredicate: (ScrollNotification notification) {
                  return notification.depth == 1;
                },
                scrolledUnderElevation: 4.0,
                shadowColor: Theme.of(context).shadowColor,
                toolbarHeight: 60,
                elevation: 2,
                backgroundColor: const Color.fromARGB(214, 255, 255, 255),
                flexibleSpace: TabBar(
                  tabs: <Widget>[
                    Tab(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.4,
                          decoration: BoxDecoration(
                            color: colorbtn2,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Icon(
                            Icons.home_filled,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.4,
                          decoration: BoxDecoration(
                            color: colorbtn2,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Icon(
                            Icons.attach_money_sharp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.4,
                          decoration: BoxDecoration(
                            color: colorbtn2,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              body: const TabBarView(
                  children: [PublicProduct(), Comercial(), Profile()]),
            ),
          ),
        ),
      ),
    );
  }
}
