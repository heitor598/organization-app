import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lecupon'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Observer(builder: (_) {
          if (controller.organizations == null || controller.organizations.length == 0)
            return MessageWidget(
              onPressed: () => controller.getAll(),
            );

          return ListView.builder(
              itemCount: controller.organizations.length,
              itemBuilder: (context, index) {
                return Card(
                    elevation: 5,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: OrganizationItemWidget(item: controller.organizations[index]),
                    ));
              });
        }),
      ),
    );
  }
}
