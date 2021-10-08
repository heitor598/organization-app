import 'package:flutter_modular/flutter_modular.dart';
import 'package:organization/app/modules/organization/domain/entities/organization.dart';
import 'package:organization/app/modules/organization/domain/usecases/organiaztion_usecase.dart';
import 'package:mobx/mobx.dart';

part 'home_page_controller.g.dart';

@Injectable()
class HomePageController = _HomePageControllerBase with _$HomePageController;

abstract class _HomePageControllerBase with Store {
  OganizationUsecase usecase;

  @observable
  List<Organization> organizations;

  _HomePageControllerBase(this.usecase) {
    getAll();
  }

  @action
  void getAll() {
    organizations = usecase.getAll().asObservable();
  }
}
