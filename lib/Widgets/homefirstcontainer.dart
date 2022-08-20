import 'package:flutter/material.dart';



class HomeFirstContainer extends StatelessWidget {
  const HomeFirstContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: (){
         // Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
        },
        child: Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
            
                Image.asset('images/spaghetti.jpg',
         height: 400,
         width:double.infinity,
        fit: BoxFit.fitWidth,
         // color: Color.fromARGB(255, 15, 147, 59),
      
             ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('FIND YOUR  ' , style: TextStyle(color: Colors.white ,  fontSize: 20),),
                        Text('FAVORITE\nFOOD' , style: TextStyle(color: Colors.white , fontWeight: FontWeight.w500 ,height:1 ,  fontSize:20 )),
 SizedBox(height:3),
 ElevatedButton(
          child: const Text('Sign up',style:TextStyle(color:Colors.black ,fontSize: 12),),
          style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 208, 190, 33), minimumSize: const Size(100, 30),
            
    maximumSize: const Size(100, 30),
          ),
          onPressed: () { 
           
            },
        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
           );
  }
}
