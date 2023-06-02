import 'package:flutter/material.dart';

import '../../../commom_widget/custum_text.dart';
import '../../../screen_constants/screen_constants.dart';
import '../../../themes/common_colors.dart';

class QuickSearch extends StatelessWidget {
  const QuickSearch({
    super.key,
    required ValueNotifier<int> selectedIndex,
    required List<String> quickSearchList,
  }) : _selectedIndex = selectedIndex, _quickSearchList = quickSearchList;

  final ValueNotifier<int> _selectedIndex;
  final List<String> _quickSearchList;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: ScreenConstant.size20),
      height: ScreenConstant.size50,
      child: ValueListenableBuilder(
        valueListenable: _selectedIndex,
        builder: (context, value, _) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _quickSearchList.length,
            itemBuilder : (context, index) => InkWell(
              onTap: () {
                _selectedIndex.value = index;
              },
              child: QuickSearchWidgets(
                isSelected: _selectedIndex.value == index,
                textLable : _quickSearchList[index]
              ),
            ), 
          );
        }
      ),
    );
  }
}

class QuickSearchWidgets extends StatelessWidget {
  const QuickSearchWidgets({
    super.key,
    required this.textLable,
    required this.isSelected
  });
  final String textLable;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(ScreenConstant.size4),
      child: Chip(
        backgroundColor: isSelected  ? AppColors.primarycolor : null,
          label: Padding(
        padding: EdgeInsets.symmetric(
            vertical: ScreenConstant.size5, horizontal: ScreenConstant.size16),
        child: text(
            content: textLable,
            fontSize: FontSize.s12,
            color: AppColors.colorBlack),
      )),
    );
  }
}
