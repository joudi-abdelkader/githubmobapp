import 'package:flutter/material.dart';
import 'mywidgets.dart';
import 'clothing.dart';
Color color1 = Color.fromARGB(255, 235, 227, 215); // Light Beige
Color color2 = Color.fromARGB(255, 245, 238, 227); // Off-White
Color color3 = Color.fromARGB(255, 230, 220, 205); // Light Tan
Color color4 = Color.fromARGB(255, 220, 209, 195); // Medium Beige
Color color5 = Color.fromARGB(255, 235, 227, 215); // Light Beige (Similar to color1)
Color color6 = Color.fromARGB(255, 240, 230, 215); // Cream
Color color7 = Color.fromARGB(255, 215, 200, 180); // Light Brown
Color color8 = Color.fromARGB(255, 225, 215, 200); // Beige

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Clothing currentClothe= clothe[0];
  String text='';
  void updateClothingDetails(String sex, int ageGroup, Clothing occasion) {
    setState(() {
      currentClothe = Clothing(occasion.occasion);
      currentClothe.sex = sex;
      currentClothe.ageGroup = ageGroup;
    });
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color1,
      appBar: AppBar(flexibleSpace:Image.asset('images/logo44.png',height: 300,width: 300,)

        ,
        backgroundColor: Colors.brown[900],


      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text("What To Wear To Every Occasion",style: TextStyle(color:Colors.brown[900],fontSize: 24,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text("Let us help you :)",style: TextStyle(color: Colors.brown[900],fontSize: 24,fontWeight: FontWeight.bold)),
            SizedBox(height: 25,),
            Text('Please choose your sex:',style: TextStyle(color: Colors.brown[900],fontSize: 24,fontWeight: FontWeight.bold)),
            SizedBox(height: 5,),
            mySecondRadioButton(clothe: currentClothe , updateGender:(sex){
              updateClothingDetails(sex, currentClothe.ageGroup, currentClothe);

            })


            ,
            SizedBox(height: 25,),
            Text('Please choose your age group:',style: TextStyle(color: Colors.brown[900],fontSize: 24,fontWeight: FontWeight.bold)),
            SizedBox(height: 5,),
            myRadioButton(clothe: currentClothe,Updateclothe:(ageGroup){
              updateClothingDetails(currentClothe.sex, ageGroup, currentClothe);

            }),
            SizedBox(height: 25,),
            Text("Select your occasion",style: TextStyle(color: Colors.brown[900],fontSize: 24,fontWeight: FontWeight.bold)),
            SizedBox(height: 5,),
            myDropDownMenue(Update: (occasion){
              setState(() {



                updateClothingDetails(currentClothe.sex, currentClothe.ageGroup, occasion);




              });
            }),
            SizedBox(height: 20,)
            ,
            ElevatedButton(onPressed: (){
              setState(() {

                text = currentClothe.toString();



              });

            },

              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.check_circle_outline, color: color1),
                  SizedBox(width: 8.0),
                  Text("Submit", style: TextStyle(fontSize: 24, color:color1,fontWeight: FontWeight.bold)),
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor:Colors.brown[500],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            SizedBox(height: 25,),
            Text(text,style: TextStyle(color: Colors.brown[700],fontSize: 24,fontWeight: FontWeight.bold)),



          ],
        ),
      ),


    );
  }
}
