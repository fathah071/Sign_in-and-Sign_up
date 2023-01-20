import 'package:flutter/material.dart';
import 'package:sign_in_and_sign_up/View/sign_in/sign_in_screen.dart';


class Sign_up_screen extends StatefulWidget {
  const Sign_up_screen({Key? key}) : super(key: key);

  @override
  State<Sign_up_screen> createState() => _Sign_up_screenState();
}

class _Sign_up_screenState extends State<Sign_up_screen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Stack(

          children: [




            Align(alignment: Alignment.topCenter,
                child: Image(image: AssetImage("assets/Path.png"))),
            Positioned(
              top:110,
              left: 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [

                  Text("Register",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text("New Account",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: Column(

                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height/2.5,),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(

                        keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(

                            labelText: "Email Address",
                            hintText: "pay@gmail.com",

                            hintStyle: const TextStyle(color: Colors.black12,fontSize: 20),
                            labelStyle: const TextStyle( fontWeight: FontWeight.w300,
                                color: Colors.black,
                                fontSize: 30
                            ),
                            enabledBorder: myinputborder(),
                            focusedBorder: myfocusborder(),
                          )
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                          obscureText: true,

                          decoration: InputDecoration(

                            labelText: "Password",

                            hintText: "************",
                            hintStyle: TextStyle(color: Colors.black12,fontSize: 20),
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                                fontSize: 30
                            ),
                            enabledBorder: myinputborder(),
                            focusedBorder: myfocusborder(),
                          )
                      ),
                    ),SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                          enableSuggestions: false,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(

                            labelText: "Mobile Number",
                            hintText: "123456789",
                            hintStyle: TextStyle(color: Colors.black12,fontSize: 20),
                            labelStyle: TextStyle( fontWeight: FontWeight.w300,
                                color: Colors.black,
                                fontSize: 30
                            ),
                            enabledBorder: myinputborder(),
                            focusedBorder: myfocusborder(),
                          )
                      ),
                    ),

                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 20),
                        child: Align(
                          alignment: Alignment.topLeft,
                            child: Text("Have a Referral code ?",style: TextStyle(color: Color.fromRGBO(255, 17, 0, 1),fontSize: 20,fontWeight: FontWeight.w500))),
                      ),
                    SizedBox(height: 60),
                    Container(height: 50,
                      width:MediaQuery.of(context).size.width/2 ,

                      decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 17, 0, 1),
                          borderRadius: BorderRadius.
                          circular(20)
                      ),
                      child: Center(
                        child: Text("Register account",style: TextStyle(
                            color:Colors.white,fontWeight: FontWeight.bold,fontSize: 20
                        ),),
                      ),),
                    SizedBox(height: 20,),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(
                         context, MaterialPageRoute(builder: (context) => Sign_in_Screen()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("or ",style: TextStyle( color: Colors.black45,fontWeight: FontWeight.w600),),
                          Text("Sign in ",style: TextStyle( color: Colors.black,fontWeight: FontWeight.bold),),
                          Text("with your account",style: TextStyle( color:Colors.black45,fontWeight: FontWeight.w600),)],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  OutlineInputBorder myinputborder(){

    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(
          color:Colors.black,
          width: 1,
        )
    );
  }

  OutlineInputBorder myfocusborder(){
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(
          color:Colors.black,
          width: 1,
        )
    );
  }
}
