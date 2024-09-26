import 'package:flutter/material.dart';

class UiHome extends StatefulWidget {
  const UiHome({super.key});

  @override
  State<UiHome> createState() => _UiHomeState();
}

class _UiHomeState extends State<UiHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xffE7F9DA),
       body: Center(
        child: Column(
          children: [
            SizedBox(height: 35,),
             Image.network("data:image/jpeg;base64,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",
              height: 85,
              width: 105,
             ),
            Column(children: [
              SizedBox(height: 20,),
              Row(
        mainAxisAlignment: MainAxisAlignment.start, // Aligns the container to the left
        children: [
          SizedBox(width: 35,),
          Container(
            
            width: 186,
            height: 250,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 15,),
                    Image.network("data:image/jpeg;base64,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",
                    ),
                    SizedBox(height: 15,),
                    Text("Monstera",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),

                  ],

                ),
          ),
          SizedBox(width: 55,),
          Container(
            
            width: 186,
            height: 250,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 45,),
                    Image.network("data:image/jpeg;base64,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",),
                    
                    SizedBox(height: 15,),
                    Text("Pothos",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),

                  ],

                ),
          ),

        ],
      ),
      SizedBox(height: 25,),

Row(

  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    SizedBox(width: 35,),
    Container(
            
            width: 186,
            height: 250,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 15,),
                    Image.network("data:image/jpeg;base64,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",),
                    
                    SizedBox(height: 15,),
                    Text("Parlor pam",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),

                  ],

                ),
          ),
           SizedBox(width: 55,),
          Container(
            
            width: 186,
            height: 250,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 31,),
                    Image.network("data:image/jpeg;base64,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",),
                    
                    SizedBox(height: 15,),
                    Text("Aloe",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),

                  ],

                ),
          ),

  ],
  
)

              
          ],
        ),
          ],
        ),
       ),
    );
  }
}

//  Container(
            
//             width: 186,
//             height: 295,
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(15),
                  
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     SizedBox(height: 15,),
//                     Image.network("",),
                    
//                     SizedBox(height: 15,),
//                     Text("Monstera",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),

//                   ],

//                 ),
//           ),