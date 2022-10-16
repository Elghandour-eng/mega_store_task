import 'package:flutter/material.dart';
import 'package:mega_store_task/core/color_manager/color_manager.dart';
import 'package:mega_store_task/widgets/custom_text_widget.dart';
import 'package:mega_store_task/widgets/pop_scaffold.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_task/widgets/product_container.dart';

class SearchViewForm extends StatelessWidget {
  const SearchViewForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        children: [
          SizedBox(
            height: 31.h,
          ),
          const CustomText(text: 'Search Result',
          color: ColorManager.textColor2,),
          SizedBox(
            height: 31.h,
          ),
          Expanded(
              child: GridView.builder(
                itemCount: 4,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: .7),
            itemBuilder: (context, index) {
              return ProductContainer(
                index: index,
              );
            },
          ))
        ],
      ),
    );
  }
}
