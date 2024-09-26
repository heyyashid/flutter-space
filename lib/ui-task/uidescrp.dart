import 'package:flutter/material.dart';

class UiDescription extends StatefulWidget {
  const UiDescription({super.key});

  @override
  State<UiDescription> createState() => _UiDescriptionState();
}

class _UiDescriptionState extends State<UiDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7F9DA),
      body: SingleChildScrollView(
        child: 
         Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Image.network("https://png.pngtree.com/png-clipart/20220829/ourmid/pngtree-indoor-plant-png-image_6129530.png",
            width: 280,height: 280,),
            SizedBox(height: 15,),
            Text("Monstera",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
            SizedBox(height: 15,),
            
            Row(
              children: [
                SizedBox(width: 90,),
                Text("Neque porro quisquam est qui ",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400),),
              ],
            ),
             
            
            Row(
              children: [
                SizedBox(width: 90,),
                Text("dolorem ipsum quia dolor sit ",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400),),
              ],
            ),
             Row(
              children: [
                SizedBox(width: 90,),
                Text("amet, consectetur, adipisci velit ",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400),),
              ],
            ),
            Row(
              children: [
            SizedBox(height: 70,width: 30,),
            
            Text("view more",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),)
              ],
            ),
            
               Row(
                children: [
                  SizedBox(width: 40,),
                      Container(    
            width: 186,
            height: 128,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 5,),
                    Image.network("data:image/jpeg;base64,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",
                    width: 104,height: 114,)
                  ],
                ),
                
                      ),
                      SizedBox(width: 40,),
                      Container( 
                           
            width: 186,
            height: 128,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 5,),
                    Image.network("data:image/jpeg;base64,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",
                    width: 104,height: 114,)
                  ],
                ),
                
                      ),
                ],
            ),
         
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 45,),
            
             SizedBox(
                    width: 180,
                    height: 43,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff92D722),
                        foregroundColor: Colors.white,
                       shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9)
                        )

                      ),
                      
                      onPressed: (){}, child: Text("Buy")),
                  ),
                  SizedBox(width: 40,),
                  SizedBox(
                    width: 180,
                    height: 43,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff92D722),
                        foregroundColor: Colors.white,
                       shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9)
                        )

                      ),
                      
                      onPressed: (){}, child: Text("Cart")),
                  ),

          ],
        ),
          ]
      ) 
      )
    );
  }
}