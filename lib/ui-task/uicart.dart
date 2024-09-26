import 'package:flutter/material.dart';

class Uicart extends StatefulWidget {
  const Uicart({super.key});

  @override
  State<Uicart> createState() => _UicartState();
}

class _UicartState extends State<Uicart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7F9DA),
      body: Padding(
        padding: const EdgeInsets.all(19.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            Text("My Cart",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),

            TextField(
            decoration: InputDecoration(
              prefixIcon: Image.network("data:image/jpeg;base64,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",
              height: 60),
              suffixIcon: Icon(Icons.delete),
              hintText: "Monstera",hintStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
                
              )
            ),
            
              
            ),
            SizedBox(height: 20,),
             TextField(
            decoration: InputDecoration(
              prefixIcon: Image.network("data:image/jpeg;base64,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olKkFF/lIZldiDlFUAgkaEnMegOUi88jnuMc98/JnzXPBlqYx3YEJhWy+PkFvFddcouSV2BNjchu5nY4fDogyooUdgANhbp7Ca+HYNaNNaagZV7ADU6k2G2vSSZ7OHDGOOfVpEERE2SREQEREBERAREQEREBERAREQEREBERAREQPGYDeYJWUmwIva/uO47iY4jD5vmdf1WIlTi+DVbhqdU6a2bTm/FcCwPQ6agm5OlqWm0dIGn4l4YQpr02KlbNUGVSGVL2a2moBIPdSw10E4n+0Ks708OzrzqahBAzCogpsPOADmUn66GfQqmM5Sldlona5yWcWGozXXe4trtfS9p8t+I8FTUotGpTc53pksUBsAvg5SoGclHQG97FW7zl4ncV3VGpno8+DODGriDkZApphmUMQMoKk3NtCCUGn7un0X4V4cq3cKgA1GVSOaoAdSxJOVCgvfdnE4v4aphK9RySQ2GKFR0uaHj2N/MFVj+zPp3D0y01BIz7vbYuxLPb0zEyOFxR/vPU1z5pURE7kkREBERAREQEREBERAREQEREBERAREQEREBERATTiicptodr9uxm6asT5YHx/wCJOE8aLPmQOh2qULObEanIbvcGw8vr7cyr42mlRKlCvckBfEoVrmytdiTYXs53uLqB2E+9GaKsxvhi/VaLafBsE3Ec4CUsSgBLAolUAbXAsLW629Z2XAOM8b0FSkGQ63rnwygym29qgubfKxFzpO1xIkF1k0xRXpJ4nU8GrlqYubkaE6nX0JAJHqQL72Enyt4CP0f1/gJZTVUiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICa8R5TNk8cXBECBNFWbSZorGBX4iQnkvENITHWB1XBVtSHqSf4fwk6aMFTy01HYC/v1m+AiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiBX11sxkSvLPEUSdRIFeg/wCE/aBT4kzVgqeeqq9yL+3WS6uCqk6I32t+cncG4S6NnewNtBvv1MC7iIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgf/9k=",
              height: 60),
              suffixIcon: Icon(Icons.delete),
              hintText: "Parlor Palm",hintStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
                
              )
            ),
            
              
            ),

            SizedBox(height: 350,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 40,
                  width: 180,
                  child: ElevatedButton(
                    
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9)
                      ),
                      backgroundColor: Color(0xff92D722),
                    ),
                    onPressed: (){},
                  child: Text("Buy"),),
                ),
                 SizedBox(
                  height: 40,
                  width: 180,
                  child: ElevatedButton(
                  
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9)
                      ),
                      backgroundColor: Color(0xff92D722),
                    ),
                    onPressed: (){},
                  child: Text("Cart"),),
                ),
                
              ],
            )
          ],
        ),
      )
    
    );
    
  }
}