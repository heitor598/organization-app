import 'dart:math';

import 'package:organization/app/modules/organization/domain/entities/organization.dart';
import 'package:organization/app/modules/organization/infra/datasource/organization_datasource.dart';
import 'package:organization/app/modules/organization/infra/models/organization_model.dart';
import 'package:organization/app/shared/uteis/constaints.dart';

class OrganizationDatasourceImpl implements OrganizationDatasource {
  @override
  List<Organization> getAll() {
    var rng = new Random();
    int randomNumber = rng.nextInt(100);
    if (randomNumber.floor().isEven) {
      final list = (content).map((e) => OrganizationModel.fromJson(e)).toList();
      return list;
    } else {
      return null;
    }
  }
}
