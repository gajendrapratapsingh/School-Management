import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? title;
  final bool? menuenabled;
  final bool? notificationenabled;
  final Function? ontap;
  const CommonAppBar({
    super.key,
    this.title,
    this.menuenabled,
    this.notificationenabled,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "${title}",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: menuenabled == true
          ? IconButton(
              color: Colors.black,
              onPressed: (){},
              icon: Icon(
                Icons.menu,
              ),
            )
          : null,
      actions: [
        notificationenabled == true
            ? InkWell(
                onTap: () {},
                child: Image.asset(
                  "assets/notification.png",
                  width: 35,
                ),
              )
            : SizedBox(
                width: 1,
              ),
      ],
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50);
}
