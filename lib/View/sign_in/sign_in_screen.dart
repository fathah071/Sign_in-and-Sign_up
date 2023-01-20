import 'package:flutter/material.dart';
import 'package:sign_in_and_sign_up/View/sign_up/sign_up_screen.dart';
class Sign_in_Screen extends StatefulWidget {
  Sign_in_Screen({Key? key}) : super(key: key);

  @override
  State<Sign_in_Screen> createState() => _Sign_in_ScreenState();
}

class _Sign_in_ScreenState extends State<Sign_in_Screen> {
bool  isCheck =false;
bool  value = true;

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

                  Text("Sign in",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text("Please Login To Using App",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w400),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: Column(

                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height/2.3,),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(

                          decoration: InputDecoration(

                            labelText: "Email Address",
                            hintText: "pay@gmail.com",
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
                    SizedBox(
                      height: 30,
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
                    ),
                    Row(
                      children: [
                       SizedBox(width: 20,) ,Checkbox(
                            value: isCheck,
                            activeColor: Colors.red,
                            onChanged: (value) {
                              setState(() { isCheck = value!;});
                            }),
                        Text("Remember",style: TextStyle(fontSize:15),),SizedBox(width: 70),
                        Text("Forget Password?",style: TextStyle(color: Color.fromRGBO(255, 17, 0, 1),fontSize: 18,fontWeight: FontWeight.w300),)
                      ],
                    ),
                    SizedBox(height: 100,),
                    Container(height: 50,
                    width:MediaQuery.of(context).size.width/2 ,

                    decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 17, 0, 1),
                      borderRadius: BorderRadius.
                        circular(10)
                    ),
                    child: Center(
                      child: Text("Sign in",style: TextStyle(
                        color:Colors.white,fontWeight: FontWeight.bold,fontSize: 20
                      ),),
                    ),),
                   SizedBox(height: 50,),
                   GestureDetector(
                     onTap: (){
                       Navigator.pushReplacement(
                   context, MaterialPageRoute(builder: (context) => Sign_up_screen()));
                     },
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [Text("or ",style: TextStyle( color: Color.fromRGBO(255, 17, 0, 1),fontWeight: FontWeight.w600),),
                       Text("Register a new account",style: TextStyle( color:Colors.black45,fontWeight: FontWeight.w600),)],
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
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color:Colors.black,
          width: 1,
        )
    );
  }

  OutlineInputBorder myfocusborder(){
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color:Colors.black,
          width: 1,
        )
    );
  }
}
