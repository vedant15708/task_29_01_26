import 'package:flutter/material.dart';

class MaterialButtonDemo extends StatelessWidget {
  const MaterialButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDisabled = true;
    Color activeColor = Colors.red;
    Color disabledColor = Colors.grey;
    Color currentColor = isDisabled ? disabledColor : activeColor;

    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Material Buttons", style: TextStyle(color: Colors.white)),
      //   backgroundColor: Colors.teal,
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              FillButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(50),
                ),
                title: "Rounded Color fill Material button",
                color: Color(0xfff2866c),
              ),

              SizedBox(height: 18),

              gradientMaterialButtonButton(),

              const SizedBox(height: 10),
              iconBtnFiled(icon: Icons.upload),

              const SizedBox(height: 10),
              textIcon(
                icon: Icons.file_download_outlined,
                title: "Download",
                onPressed: () {},
              ),
              const SizedBox(height: 5),
              iconBtnFiledBorder(icon: Icons.share),
              MaterialButton(
                onPressed: () {},
                child: Icon(Icons.message, size: 30),
              ),
              const SizedBox(height: 10),
              textIcon(title: "Default Material button", onPressed: () {}),
              const SizedBox(height: 10),
              textIcon(
                title: "Material button with icon",
                onPressed: () {},
                icon: Icons.add,
                color: Colors.blue,
              ),
              const SizedBox(height: 10),
              textIcon(title: "Disable Material button", onPressed: null),

              const SizedBox(height: 10),

              textIcon(
                title: "Disable Material button icon",
                onPressed: null,
                icon: Icons.add,
              ),
              const SizedBox(height: 10),

              customBorderStyleButton(
                title: 'Border Material Button',
                color: Colors.black,
                shape: RoundedRectangleBorder(),
              ),
              const SizedBox(height: 10),
              customBorderStyleButton(
                title: "Rounded Material button",
                color: Colors.green,
                radius: 50,
                shape: RoundedRectangleBorder(),
              ),
              const SizedBox(height: 10),
              customBorderStyleButton(
                title: "Customize Rounded Material button",
                color: Colors.red,
                radius: 10,
                shape: RoundedRectangleBorder(),
              ),

              const SizedBox(height: 10),
              customBorderStyleButton(
                title: "Customize Text Style label",
                color: Colors.blue,
                radius: 50,
                fontStyle: FontStyle.italic,
                shape: RoundedRectangleBorder(),
              ),

              const SizedBox(height: 10),
              FillButton(
                title: "Color Fil Material Button",
                color: Color(0xff8998ff),
                shape: RoundedRectangleBorder(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget FillButton({
  required String title,
  required Color color,
  RoundedRectangleBorder? shape,
}) {
  return MaterialButton(
    onPressed: () {},
    color: color,
    minWidth: double.infinity,
    shape: shape,
    child: Text(title, style: TextStyle(fontSize: 15, color: Colors.white)),
  );
}

Widget iconBtnFiled({required IconData icon}) {
  return MaterialButton(
    minWidth: 60,
    height: 60,
    padding: EdgeInsetsGeometry.all(0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadiusGeometry.circular(100),
    ),
    onPressed: () {},
    color: Colors.blue,
    child: Icon(icon, size: 30, color: Colors.white),
  );
}

Widget iconBtnFiledBorder({required IconData icon}) {
  return MaterialButton(
    minWidth: 60,
    height: 60,
    padding: EdgeInsetsGeometry.all(0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadiusGeometry.circular(50),
      side: BorderSide(color: Colors.black, width: 2),
    ),
    onPressed: () {},
    color: Colors.greenAccent,
    child: Icon(icon, size: 30, color: Colors.white),
  );
}

Widget gradientMaterialButtonButton() {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(colors: [Color(0xff869dfb), Color(0xff77d2d7)]),
    ),
    child: MaterialButton(
      onPressed: () {},
      minWidth: double.infinity,
      child: Text(
        "Gradient Material button",
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    ),
  );
}

Widget textIcon({
  IconData? icon,
  String? title,
  VoidCallback? onPressed,
  Color? iconColor,
  Color? color,
}) {
  return MaterialButton(
    onPressed: onPressed,
    minWidth: double.infinity,
    child: Row(
      mainAxisSize: .min,
      spacing: 10,
      mainAxisAlignment: .center,
      children: [
        icon != null ? Icon(icon, size: 25) : SizedBox(width: 0),
        Text(title ?? "", style: TextStyle(fontSize: 18, color: color)),
      ],
    ),
  );
}

Widget customBorderStyleButton({
  required String title,
  required Color color,
  double? radius,
  double? width,
  FontStyle? fontStyle,
  required RoundedRectangleBorder shape,
}) {
  return MaterialButton(
    onPressed: () {},
    minWidth: double.infinity,
    shape: RoundedRectangleBorder(
      side: BorderSide(
        style: BorderStyle.solid,
        color: color,
        width: width ?? 1,
      ),
      borderRadius: BorderRadiusGeometry.circular(radius ?? 0),
    ),
    child: Text(
      title,
      style: TextStyle(fontSize: 15, fontStyle: fontStyle ?? FontStyle.normal),
    ),
  );
}

//Scaffold properties
// appBar: appbar ,
// body:,
// floatingActionButton: ,
// floatingActionButtonLocation: location of FAb ,
// floatingActionButtonAnimator: ontrolling floating action button animations during navigation ,
// persistentFooterButtons: [] display a set of buttons at the bottom of the screen, persistently visible even when the body of the scaffold scrolls. ,
// persistentFooterAlignment: determines how the buttons are aligned horizontally within the footer. ,
// persistentFooterDecoration: boxdecoration and it is footer box ,
// drawer: left menu ,
// onDrawerChanged: Monitors the state of the drawer (open/closed)  ,
// endDrawer: shift drawer to right ,
// onEndDrawerChanged: Monitors the state of the drawer (open/closed) ,
// bottomNavigationBar: bottomnavigation ,
// bottomSheet: silds up from bottom,
// backgroundColor: bgcolor of Scaffold body ,
// resizeToAvoidBottomInset: automatic resizing body of scaffold when onscreen keyboad is open ,
// primary: whether the scaffold is displayed at the top of the screen,
// drawerDragStartBehavior: ,
// extendBody: whether the body should extend to the full height of the screen, behind the bottomNavigationBar or persistentFooterButtons. ,
// drawerBarrierDismissible: determines whether the drawer can be closed by tapping the dark area ,
// extendBodyBehindAppBar: ,
// drawerScrimColor: helps distinguish the drawer from the background,
// bottomSheetScrimBuilder: google map explore bottmsheet change color aftersome porton cover ,
// drawerEdgeDragWidth: defines the width of the area on the edge of the screen where a horizontal swipe gesture will open the drawer. ,
// drawerEnableOpenDragGesture: swipe from the edge of the screen to open the drawer.,
// endDrawerEnableOpenDragGesture: swipe from the edge of the screen to open the drawer.,
// restorationId: restore previous state like registration form not filling from start from where you left  ,
