import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_task/core/color_manager/color_manager.dart';
import 'package:mega_store_task/core/router/router.dart';
import 'package:mega_store_task/features/delete_account/delete_account_view.dart';
import 'package:mega_store_task/features/my_orders_view/my_orders_view.dart';
import 'package:mega_store_task/features/profile_view/profile_view.dart';
import 'package:mega_store_task/widgets/custom_text_widget.dart';
import 'package:mega_store_task/widgets/pop_scaffold.dart';

import '../address_details/address_details.dart';

part 'units/profile_row.dart';

class AccountViewForm extends StatelessWidget {
  const AccountViewForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0.w),
        child: Column(
          children: [
            SizedBox(
              height: 26.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Account',
                  textStyle: Theme.of(context).textTheme.headline1,
                ),
              ],
            ),
            SizedBox(
              height: 49.h,
            ),
            Column(
              children: const [
                _AccountRow(route: ProfileViewForm(),),
                _AccountRow(
                  text: 'My Orders',
                  route: MyOrdersViewForm(),
                  iconData: Icons.shopping_bag_outlined,
                ),
                _AccountRow(
                  text: 'Address',
                  route: AddressDetailsViewForm(),
                  iconData: Icons.location_on_outlined,
                ),
                _AccountRow(
                  text: 'Log out',
                  iconData: Icons.login_outlined,
                ),
                _AccountRow(
                  text: 'Delete Account',
                  iconColor: Colors.red,
                  iconData: Icons.delete_outline,
                  route: DeleteAccountView(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
