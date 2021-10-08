import 'package:organization/app/modules/organization/domain/entities/organization.dart';
import 'package:organization/app/modules/organization/domain/repositories/organization_repository.dart';

abstract class OganizationUsecase{
  List<Organization> getAll();
}

class OganizationUseImpl implements OganizationUsecase{

  OrganizationRepository repository;

  OganizationUseImpl(this.repository);

  @override
  List<Organization> getAll() {
    return repository.getAll();
  }

}

