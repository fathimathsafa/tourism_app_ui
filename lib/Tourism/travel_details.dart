import 'package:flutter/material.dart';
import 'package:tourism_app_ui/Tourism/travel_dummy.dart';


class Travel_Details extends StatelessWidget {
  const Travel_Details({super.key});

  @override
  Widget build(BuildContext context) {
    final resortId = ModalRoute.of(context)?.settings.arguments;
    final resort = resorts.firstWhere((element) => element['id'] == resortId);
    return Scaffold(
      body: Column(
        children: [
         Container(
           height: 350,
           width: 412,
           decoration: BoxDecoration(
             image: DecorationImage(
               image: NetworkImage(resort['image']),fit: BoxFit.cover
             )
           ),
         ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Text(
                resort['name'],
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Text(
                resort['place'],
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                )
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Row(
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.star,size: 23,),
                  Text(
                      resort['rating'],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )
                  ),
                  SizedBox(width:50 ,),
                  Icon(Icons.location_on_rounded,size: 23,),
                  Text(" 1 Km",style: TextStyle(
                    fontWeight: FontWeight.bold,
                      fontSize: 20,color: Colors.black
                  ),),
                  SizedBox(width: 90,),
                  Text("23 Reviews",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)
                ],
              ),
            ],
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(right: 300),
            child: Text("Facility",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child:
                Container(
                  height: 100,
                  width: 100,
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Icon(Icons.bed_outlined,size: 30,),
                      SizedBox(height: 20,),
                      Text(" 2 King bed",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 3,
                        blurRadius: 7,offset: Offset(0, 3)
                      )
                    ],
                    borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 100,
                width: 100,
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Icon(Icons.shower_outlined,size: 30,),
                    SizedBox(height: 20,),
                    Text(" 2 Bathroom",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 3,
                          blurRadius: 7,offset: Offset(0, 3)
                      )
                    ],                    borderRadius: BorderRadius.circular(30)
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 100,
                width: 100,
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Icon(Icons.pool,size: 30,),
                    SizedBox(height: 20,),
                    Text(" Pool",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 3,
                          blurRadius: 7,offset: Offset(0, 3)
                      )
                    ],
                    borderRadius: BorderRadius.circular(30)
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 100,
                width: 70,
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Icon(Icons.outdoor_grill_outlined,size: 30,),
                    SizedBox(height: 20,),
                    Text(" BBQ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 3,
                          blurRadius: 7,offset: Offset(0, 3)
                      )
                    ],
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(30),bottomLeft: Radius.circular(30))
                ),
              )


            ],
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(right: 180),
            child: Text("Location Address",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(right: 80),
            child: Text( resort['place'],style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey),),
          ),
         SizedBox(height: 40,),
         Container(
           height: 50,
           width: 200,
           child: MaterialButton(onPressed: (){},
             shape: StadiumBorder(),
             color: Color(0xFF3F51B5),
           child: Text("Explore Now",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),),
         )
        ],
      ),
    );
  }
}
