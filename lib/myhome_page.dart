import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/app_colors.dart';
import 'package:my_portfolio/app_text_style.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        toolbarHeight: 90,
        titleSpacing: 100,
        elevation: 0,
        backgroundColor: AppColors.bgColor,
        title: Row(
          children: [
            Text('Portfolio',style: AppTextStyle.headerTextStyle(),),
            const Spacer(),
            Text('Home',style: AppTextStyle.headerTextStyle(),),
            const SizedBox(width: 30),
            Text('About',style: AppTextStyle.headerTextStyle(),),
            const SizedBox(width: 30,),
            Text('Service',style: AppTextStyle.headerTextStyle(),),
            const SizedBox(width: 30,),
            Text('Portfolio',style: AppTextStyle.headerTextStyle(),),
            const SizedBox(width: 30,),
            Text('Contact',style: AppTextStyle.headerTextStyle(),),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: size.height * 0.3
              ,left: size.width * 0.2,
              right: size.width * 0.2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello , It\'s Me', style: AppTextStyle.monseratStyle(color: Colors.white),),
              const SizedBox(height: 15,),
              Text('Talha Warraich', style: AppTextStyle.headingStyles(),),
              const SizedBox(height: 15,),
              AnimatedTextKit(animatedTexts: [
                TyperAnimatedText('I\'m a Flutter Developer',
                  textStyle: AppTextStyle.monseratStyle(color: Colors.lightBlue),)
              ],
              repeatForever: true,),
              const SizedBox(height: 15,),
              SizedBox(
                width: size.width * 0.5,
                child: Text('Crafting seamless experiences, one widget at a time — as a Flutter developer,'
                    'I build the future of mobile apps with speed, precision, and creativity.'
                  ,style: AppTextStyle.normalStyle(),),
              ),
              const SizedBox(height: 22,),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.theme,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }


}