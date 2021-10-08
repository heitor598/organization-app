
import 'package:organization/app/modules/organization/domain/entities/organization.dart';

abstract class OrganizationRepository{
  List<Organization> getAll();
}