import 'package:flutter_modular/flutter_modular.dart';
import 'package:organization/app/modules/organization/external/organization_datasource_impl.dart';
import 'package:organization/app/modules/organization/infra/repositories/organization_repository_impl.dart';
import 'modules/organization/domain/usecases/organiaztion_usecase.dart';
import 'modules/organization/presenter/home/home_page.dart';
import 'package:organization/app/modules/organization/presenter/home/home_page_controller.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => OrganizationDatasourceImpl()),
        Bind((i) => OrganizationRepositoryImpl((i()))),
        Bind((i) => OganizationUseImpl((i()))),
        Bind((i) => HomePageController((i()))),
      ];

  @override
  List<ModularRoute> get routes => [ChildRoute(Modular.initialRoute, child: (_, __) => HomePage())];
}
