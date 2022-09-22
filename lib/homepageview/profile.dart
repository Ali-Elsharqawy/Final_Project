import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int index=4;
  final formkey = GlobalKey<FormState>();
  bool agreement=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30,),
          Row(
            children: [
              SizedBox(width: 300,),
              Icon(Icons.close,size: 25,),
            ],
          ),
          Image.asset("assets/images/profilephoto.png"),
          SizedBox(height: 5,),
          Text(
            "Kenneth Gutierrez",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(
            "kenneth_gutierrez@gmail.com",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 20,),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(25),),
                child: Image.asset("assets/images/bell.png")),
              SizedBox(width: 25,),
              Text("Notification  ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              Text("04", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,),),
              SizedBox(width: 115,),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 20,),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent, borderRadius: BorderRadius.circular(25),),
                child: Image.asset("assets/images/plane.png"),),
              SizedBox(width: 25,),
              Text("Tours",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              SizedBox(width: 190,),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 20,),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.purpleAccent, borderRadius: BorderRadius.circular(25),),
                child: Image.asset("assets/images/pin.png")),
              SizedBox(width: 25,),
              Text("Location",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              SizedBox(width: 165,),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 20,),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.blue[800], borderRadius: BorderRadius.circular(25),),
                child: Image.asset("assets/images/global.png")),
              SizedBox(width: 25,),
              Text("Language",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              SizedBox(width: 155,),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 20,),
              Container(
                  height: 40,
                  width: 40,
                decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(25),),
                child: Image.asset("assets/images/invitefriend.png")),
              SizedBox(width: 25,),
              Text("Invite Friend",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              SizedBox(width: 133,),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
          SizedBox(height: 10,),
          Container(
            height: 1,
            color: Colors.grey[400],
            margin: EdgeInsets.only(left: 25,right: 22),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 20,),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.yellow, borderRadius: BorderRadius.circular(25),),
                child: Image.asset("assets/images/headset-with-microphone.png")),
              SizedBox(width: 25,),
              Text("Help Center",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              SizedBox(width: 135,),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 20,),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(25),),
                child: Image.asset("assets/images/settings.png")),
              SizedBox(width: 25,),
              Text("Settings",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              SizedBox(width: 160,),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 20,),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(25),),
                child: Image.asset("assets/images/logout.png")),
              SizedBox(width: 25,),
              Text("Log Out"),
              SizedBox(width: 170,),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ],
      ),
    );
  }
}
