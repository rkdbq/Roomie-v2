import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:social_app_ui/util/user.dart';

class CustomGroupButton extends StatefulWidget {
  late final String hintText, surveyMode;
  late final User user;
  CustomGroupButton({
    super.key,
    required this.hintText,
    required this.surveyMode,
    required this.user,
  });

  @override
  State<CustomGroupButton> createState() => _CustomGroupButtonState();
}

class _CustomGroupButtonState extends State<CustomGroupButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Text('${widget.hintText} ${[
            answerList[widget.surveyMode]
                ?[widget.user.survey[widget.surveyMode]]
          ]}'),
        ),
        SizedBox(height: 20.0),
        GroupButton(
          isRadio: true,
          buttons: answerList[widget.surveyMode]!,
          onSelected: (value, index, isSelected) {
            widget.user.survey[widget.surveyMode] = index;
            setState(() {});
          },
        ),
        SizedBox(height: 40.0),
      ],
    );
  }
}