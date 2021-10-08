import 'package:flutter/material.dart';
import 'package:organization/app/modules/organization/domain/entities/organization.dart';

class OrganizationItemWidget extends StatelessWidget {
  final Organization item;

  const OrganizationItemWidget({this.item, Key key}) : super(key: key);

  subTitle({@required String title, @required value}) => Container(
        padding: EdgeInsets.only(top: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$title: ',
              maxLines: 2,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
            ),
            Expanded(
              child: Text(
                '$value',
                maxLines: 2,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            )
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Nome: ${item.name}',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        subTitle(title: 'Descrição', value: item.description),
        subTitle(title: 'Categoria', value: item.categoryName),
        subTitle(title: 'Facebook', value: item.facebookUrl),
        subTitle(title: 'Instagram', value: item.instagramUrl),
      ],
    ));
  }
}
