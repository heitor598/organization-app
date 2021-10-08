import 'package:organization/app/modules/organization/domain/entities/organization.dart';
import 'package:organization/app/modules/organization/infra/datasource/organization_datasource.dart';
import 'package:organization/app/shared/uteis/constaints.dart';

class OrganizationDatasourceImpl implements OrganizationDatasource {
  @override
  List<Organization> getAll() {
    final list = (content).map((e) => Organization.fromJson(e)).toList();
    return list;
  }
}
