import 'package:flutter/material.dart';
import 'package:hasskit/helper/GeneralData.dart';
import 'package:hasskit/helper/ThemeInfo.dart';

class DeviceTypeHeaderEdit extends StatelessWidget {
  final Icon icon;
  final String title;
  const DeviceTypeHeaderEdit({@required this.icon, @required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          InkWell(
            onTap: () {
              FocusScope.of(context).requestFocus(new FocusNode());
              gd.delayCancelEditModeTimer(300);
            },
            child: Container(
              padding: EdgeInsets.all(12),
              color: ThemeInfo.colorBottomSheet.withOpacity(0.2),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 6),
                  icon,
                  SizedBox(width: 8),
                  Text("$title"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DeviceTypeHeaderEditNormal extends StatelessWidget {
  final Icon icon;
  final String title;
  const DeviceTypeHeaderEditNormal({@required this.icon, @required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          InkWell(
            onTap: () {
              FocusScope.of(context).requestFocus(new FocusNode());
            },
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 16,
                  bottom: 7,
                  child: Container(
                    height: 1,
                    width: gd.mediaQueryWidth - 32,
                    padding: icon.icon == Icons.looks_one ||
                            icon.icon == Icons.looks_two ||
                            icon.icon == Icons.looks_3 ||
                            icon.icon == Icons.looks_4
                        ? EdgeInsets.fromLTRB(10, 2, 10, 2)
                        : EdgeInsets.fromLTRB(16, 2, 8, 2),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: [
                            ThemeInfo.colorBottomSheetReverse.withOpacity(0.0),
                            ThemeInfo.colorBottomSheetReverse.withOpacity(0.5),
//                            ThemeInfo.colorBottomSheet.withOpacity(0.7),
//                            ThemeInfo.colorBottomSheet.withOpacity(0.6),
//                            ThemeInfo.colorBottomSheet.withOpacity(0.5),
//                            ThemeInfo.colorBottomSheet.withOpacity(0.4),
//                            ThemeInfo.colorBottomSheet.withOpacity(0.3),
//                            ThemeInfo.colorBottomSheet.withOpacity(0.2),
//                            ThemeInfo.colorBottomSheet.withOpacity(0.1),
                            ThemeInfo.colorBottomSheetReverse.withOpacity(0.0),
                          ]),
                      boxShadow: [
                        new BoxShadow(
                          color: ThemeInfo.colorBottomSheet.withOpacity(0.5),
                          offset: new Offset(0.0, 1.0),
                          blurRadius: 1.0,
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    SizedBox(width: 10),
                    Opacity(opacity: 0.5, child: icon),
                    SizedBox(width: 8),
                    Text("$title"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
