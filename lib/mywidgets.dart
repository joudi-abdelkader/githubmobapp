import 'package:flutter/material.dart';
import 'clothing.dart';
class myRadioButton extends StatefulWidget {
  Clothing clothe;
  final Function (int) Updateclothe ;
  myRadioButton({super.key, required this.clothe, required this.Updateclothe});

  @override
  State<myRadioButton> createState() => _myRadioButtonState();
}

class _myRadioButtonState extends State<myRadioButton> {

  //1 for adult and 2 for youth
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Radio<int>(value: 1,
          groupValue:widget.clothe.ageGroup,
          onChanged: (val){
            if (val != null) {
              setState(() {
                widget.Updateclothe(val);
              });
            }


          },
          activeColor: Colors.brown[900],
          hoverColor: Colors.brown[300],
          focusColor: Colors.brown[500],
        ),
        Text('Adult',style: TextStyle(color: Colors.brown[900],fontSize: 24,fontWeight: FontWeight.bold)),
        Radio(value: 2,
          groupValue:widget.clothe.ageGroup,
          onChanged: (val){
            if (val != null) {
              setState(() {
                widget.Updateclothe(val);
              });
            }

          },
          activeColor: Colors.brown[900],
          hoverColor: Colors.brown[300],
          focusColor: Colors.brown[500],
        ),
        Text('Youth',style: TextStyle(color: Colors.brown[900],fontSize: 24,fontWeight: FontWeight.bold)),
      ],

    );
  }
}
//dropdownmenue
class myDropDownMenue extends StatefulWidget {
  final Function (Clothing) Update;
  const myDropDownMenue({super.key, required this.Update});

  @override
  State<myDropDownMenue> createState() => _myDropDownMenueState();
}

class _myDropDownMenueState extends State<myDropDownMenue> {
  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      width: 275,

      dropdownMenuEntries: clothe.map((clothe)=>
          DropdownMenuEntry(value: clothe, label: clothe.occasion,)) .toList(),
      initialSelection: clothe[0],
      onSelected: (clothe){
        widget.Update(clothe as Clothing);

      },
      textStyle: TextStyle(fontSize: 24, color:Colors.brown[900],fontWeight: FontWeight.bold ),
      menuStyle: MenuStyle(backgroundColor:MaterialStateProperty.all(Colors.brown[50]),
        shadowColor: MaterialStateProperty.all(Colors.brown),
        elevation: MaterialStateProperty.all(6),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Rounded corners
            side: BorderSide(color: Colors.brown, width: 2), // Border color and width
          ),
        ),



      ),





    );
  }
}
//Second Radio Button

class mySecondRadioButton extends StatefulWidget {
  Clothing clothe;
  final Function(String) updateGender;
  mySecondRadioButton({super.key,required this.clothe , required this.updateGender});

  @override
  State<mySecondRadioButton> createState() => _mySecondRadioButtonState();
}

class _mySecondRadioButtonState extends State<mySecondRadioButton> {
  @override
  Widget build(BuildContext context) {

    return

      Row(mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Radio<String>(value: 'Male',
            groupValue: widget.clothe.sex,
            onChanged: (val) {
              if (val != null) {
                setState(() {
                  widget.updateGender(val);
                });
              }

            },
            activeColor: Colors.brown[900],
            hoverColor: Colors.brown[300],
            focusColor: Colors.brown[500],
          ),
          Text('Male',style: TextStyle(color: Colors.brown[900],fontSize: 24,fontWeight: FontWeight.bold)),

          Radio(value: 'Female',
            groupValue: widget.clothe.sex,
            onChanged: (val) {
              if (val != null) {
                setState(() {
                  widget.updateGender(val);
                });
              }


            },
            activeColor: Colors.brown[900],
            hoverColor: Colors.brown[300],
            focusColor: Colors.brown[500],
          ),
          Text('Female',style: TextStyle(color: Colors.brown[900],fontSize: 24,fontWeight: FontWeight.bold)),

        ],


      );

  }
}


