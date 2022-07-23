import 'package:flutter/material.dart';
import 'package:xgrid_test/Screens/Home/Widgets/container_row_items.dart';
import 'package:xgrid_test/Utils/constant_text.dart';
import 'package:get/get.dart';
import '../../../Utils/style.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.084,
            right: MediaQuery.of(context).size.width * 0.084,
            top: MediaQuery.of(context).size.height * 0.122),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: () {
                        if (Get.isDarkMode) {
                          Get.changeThemeMode(ThemeMode.light);
                        } else {
                          Get.changeThemeMode(ThemeMode.dark);
                        }
                      },
                      child: const Icon(Icons.wb_sunny))
                ],
              ),
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.203,
                  width: MediaQuery.of(context).size.width * 0.420,
                  decoration: Style.circleContainerBoxDecoration,
                  child: Icon(
                    Icons.person_outline,
                    color: Colors.orange,
                    size: MediaQuery.of(context).size.width * 0.168,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.027,
              ),
              Text(
                ConstantText.johnDoeText,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.070,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.021,
              ),
              Text(
                ConstantText.johnDoeEmailText,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.056),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.027,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.068,
                width: MediaQuery.of(context).size.width * 0.532,
                decoration: Style.upgradeToProBoxDecoration,
                child: Center(
                  child: Text(
                    ConstantText.upgradeToProText,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.048),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.041,
              ),
              ContainerWithRowItems(
                icon: Icons.privacy_tip_outlined,
                text: ConstantText.privacyText,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.027,
              ),
              ContainerWithRowItems(
                icon: Icons.settings_backup_restore,
                text: ConstantText.purchaseHistoryText,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.027,
              ),
              ContainerWithRowItems(
                icon: Icons.question_mark_rounded,
                text: ConstantText.helpAndSupportText,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.027,
              ),
              ContainerWithRowItems(
                icon: Icons.settings,
                text: ConstantText.settingText,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.027,
              ),
              ContainerWithRowItems(
                icon: Icons.person_add,
                text: ConstantText.inviteAFriendText,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.027,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.071,
                width: MediaQuery.of(context).size.width,
                decoration: Style.logoutContainerBoxDecoration,
                child: Center(
                  child: Text(
                    ConstantText.logoutText,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.050,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.027,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
