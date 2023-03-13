import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_bazar/shared/styles/colors.dart';
import 'package:task_bazar/shared/widgets/size_config.dart';

class InputField extends StatelessWidget {
  const InputField(
      {Key? key,
        this.title,
        required this.hint,
        this.controller,
        this.widget})
      : super(key: key);

  final String? title;
  final String hint;
  final TextEditingController? controller;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(title!,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold,),),
          ),
          Container(
            padding: EdgeInsets.only(left: 15),
            margin: const EdgeInsets.only(top: 13.3),
            width: double.infinity,
            height: 52,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: TextFormField(
                    controller: controller,
                    autofocus: false,
                    readOnly: widget != null ? true : false,
                   // style: subTitleStyle,
                    cursorColor: Colors.grey[700],
                    decoration: InputDecoration(
                      hintText: hint,
                      hintStyle: TextStyle(fontSize: 15),
                      //hintStyle: subTitleStyle,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                           // color: context.theme.backgroundColor,
                            width: 0
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                         // color: context.theme.backgroundColor,
                          width: 0,
                        ),
                      ),
                    ),
                  ),
                ),
                widget ?? Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
