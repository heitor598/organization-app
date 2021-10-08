import 'package:organization/app/modules/organization/domain/entities/organization.dart';

abstract class OrganizationDatasource{
  List<Organization> getAll();
}