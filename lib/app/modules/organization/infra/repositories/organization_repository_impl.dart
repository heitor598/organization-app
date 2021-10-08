import 'package:organization/app/modules/organization/domain/entities/organization.dart';
import 'package:organization/app/modules/organization/domain/repositories/organization_repository.dart';
import 'package:organization/app/modules/organization/infra/datasource/organization_datasource.dart';

class OrganizationRepositoryImpl implements OrganizationRepository {
  OrganizationDatasource datasource;

  OrganizationRepositoryImpl(this.datasource);

  @override
  List<Organization> getAll() {
    try {
      return datasource.getAll();
    } on Error catch (e) {
      throw e;
    }
  }
}
