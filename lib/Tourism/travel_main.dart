import 'package:flutter/material.dart';
import 'package:tourism_app_ui/Tourism/view%20all.dart';


class Travel_Main extends StatefulWidget {
  const Travel_Main({super.key});

  @override
  State<Travel_Main> createState() => _Travel_MainState();
}

class _Travel_MainState extends State<Travel_Main> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 1.6;
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //
      // ),
     // drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(color: Color(0xFF3F51B5)),
                  suffixIcon: Icon(Icons.search_sharp,color: Color(0xFF3F51B5),),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))

                ),

              ),
            ),

            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: MaterialButton(onPressed: (){},
                  child: Text("Resorts",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    shape: StadiumBorder(),
                    color: Color(0xFF3F51B5),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: MaterialButton(onPressed: (){},
                    child: Text("Beach",style: TextStyle(color: Color(0xFF3F51B5),fontWeight: FontWeight.bold),),
                    shape: StadiumBorder(),
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: MaterialButton(onPressed: (){},
                    child: Text("Pools",style: TextStyle(color: Color(0xFF3F51B5),fontWeight: FontWeight.bold),),
                    shape: StadiumBorder(),
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: MaterialButton(onPressed: (){},
                    child: Text("Hotels",style: TextStyle(color:Color(0xFF3F51B5),fontWeight: FontWeight.bold),),
                    shape: StadiumBorder(),
                    color:Colors.white ,
                  ),
                ),
              ],
            ),

            Travel_ViewAll()
          ],
        ),
      ),
    );
  }
}
