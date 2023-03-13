import 'package:flutter/cupertino.dart';
import 'package:task_bazar/shared/styles/colors.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Center(
              child: Image.asset("assets/images/right.png",alignment: Alignment.center,),
            ),
            Image.asset("assets/images/points.png"),
            Text("تم تغيير كلمه السر بنجاح",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: colorBlue),),
          ],
        ),
      ],
    );
  }
}
