import 'package:flutter/cupertino.dart';
import 'package:organization/app/modules/organization/domain/entities/organization.dart';
import 'package:organization/app/modules/organization/domain/usecases/organiaztion_usecase.dart';

class HomePageController {
  OganizationUsecase usecase;

  ValueNotifier<Future<List<Organization>>> organizations;

  HomePageController(this.usecase);

  Future<List<Organization>> getAll() async {
    return await Future.delayed(const Duration(seconds: 2), () {
      return usecase.getAll();
    });
  }

  listOrganizationChange() {
    organizations.value = getAll();
  }
}
