import 'package:flutter/material.dart';
import 'package:the_basics/responsive_builder/responsive_builder.dart';
import 'package:the_basics/styles/text_styles.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation){
      var textAlignment = sizingInformation.deviceScreenType == 
      DeviceScreenType.Desktop? TextAlign.start
                              : TextAlign.center;
      double titleSize = sizingInformation.deviceScreenType == 
      DeviceScreenType.Mobile? 50
                             : 80;
      double descriptionSize = sizingInformation.deviceScreenType ==
      DeviceScreenType.Mobile? 16
                             : 21;
      return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'TEST WEB.\nTHE BASICS',
            style: titleTextStyle(sizingInformation.deviceScreenType),
            textAlign: textAlignment,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
              'In this course we will go over the basics of using Flutter Web for website development. Topics will include Responsive Layout, Deploying, Font Changes, Hover Functionality, Modals and more.',
              style: descriptionTextStyle(sizingInformation.deviceScreenType),
              textAlign: textAlignment,),
        ],
      ),
    );
    },);
    
  }
}
