import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:organization/app/modules/organization/domain/entities/organization.dart';
import 'package:organization/app/modules/organization/presenter/home/home_page_controller.dart';
import 'package:organization/app/shared/widgets/message_widget.dart';
import 'package:organization/app/shared/widgets/organization_item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomePageController> {
  @override
  void initState() {
    controller.organizations = ValueNotifier(Future.value());
    controller.listOrganizationChange();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Organization'),
          actions: [IconButton(onPressed: () => controller.listOrganizationChange(), icon: Icon(Icons.refresh))],
        ),
        body: Container(
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            child: ValueListenableBuilder(
                valueListenable: controller.organizations,
                builder: (context, value, child) {
                  return FutureBuilder(
                      future: controller.organizations.value,
                      builder: (context, snapshot) {
                        switch (snapshot.connectionState) {
                          case ConnectionState.active:
                          case ConnectionState.none:
                          case ConnectionState.waiting:
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          case ConnectionState.done:
                            if (snapshot.hasData) {
                              List<Organization> organizations = snapshot.data;
                              return ListView.builder(
                                  itemCount: organizations.length,
                                  itemBuilder: (context, index) {
                                    return Card(
                                        elevation: 5,
                                        child: Container(
                                          padding: EdgeInsets.all(8),
                                          child: OrganizationItemWidget(item: organizations[index]),
                                        ));
                                  });
                            } else {
                              return MessageWidget(onPressed: () => controller.listOrganizationChange());
                            }
                        }
                        return Container();
                      });
                })));
  }
}
