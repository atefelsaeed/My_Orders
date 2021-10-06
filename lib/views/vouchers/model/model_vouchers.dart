import 'package:my_order_app_v1/translations/locale_keys.g.dart';
import 'package:my_order_app_v1/views/vouchers/components/active_tab_body.dart';
import 'package:my_order_app_v1/views/vouchers/components/expired_tab_body.dart';
import 'package:my_order_app_v1/views/vouchers/components/used_tab_body.dart';

class ModelVouchers {
  var tabNames = [
    LocaleKeys.active,
    LocaleKeys.used,
    LocaleKeys.expired,
  ];

  var pages = [
    ActiveTabBody(),
    UsedTabBody(),
    ExpiredTabBody(),
  ];
}
