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
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                    borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30)
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30)
                ),
              ),

            ],
          )
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20),
          //   child: SizedBox(
          //     height: 80,
          //     child: Row(
          //       children: [
          //         Text(
          //           resort['name'],
          //           style: const TextStyle(
          //               color: Colors.black,
          //               fontWeight: FontWeight.bold,
          //               fontSize: 20),
          //         ),
          //         const SizedBox(
          //           width: 50,
          //         ),
          //         VerticalDivider(
          //           width: 20,
          //           thickness: 4,
          //           indent: 5,
          //           endIndent: 5,
          //           color: Colors.grey.shade300,
          //         ),
          //         const SizedBox(
          //           width: 20,
          //         ),
          //         Expanded(
          //             child: Container(
          //               decoration: BoxDecoration(
          //                   borderRadius: const BorderRadius.all(Radius.circular(8)),
          //                   image: DecorationImage(
          //                       image: NetworkImage(resort['image']),
          //                       fit: BoxFit.cover)),
          //             ))
          //       ],
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20),
          //   child: Row(
          //     children: [
          //       Icon(
          //         Icons.star,
          //         color: Colors.yellow.shade700,
          //         size: 15,
          //       ),
          //       const SizedBox(
          //         width: 2,
          //       ),
          //       Icon(
          //         Icons.star,
          //         color: Colors.yellow.shade700,
          //         size: 15,
          //       ),
          //       const SizedBox(
          //         width: 2,
          //       ),
          //       Icon(
          //         Icons.star,
          //         color: Colors.yellow.shade700,
          //         size: 15,
          //       ),
          //       const SizedBox(
          //         width: 2,
          //       ),
          //       Icon(
          //         Icons.star,
          //         color: Colors.yellow.shade700,
          //         size: 15,
          //       ),
          //       const SizedBox(
          //         width: 2,
          //       ),
          //       Icon(
          //         Icons.star,
          //         color: Colors.yellow.shade700,
          //         size: 15,
          //       ),
          //       const SizedBox(
          //         width: 10,
          //       ),
          //       Text(
          //         '${resort['rating']} Rating',
          //         style: const TextStyle(fontSize: 12, color: Colors.black),
          //       ),
          //     ],
          //   ),
          // ),
          // const SizedBox(
          //   height: 20,
          // ),
          // const Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 20),
          //   child: Row(
          //     children: [
          //       Text(
          //         'About Places',
          //         style: TextStyle(
          //             color: Colors.black,
          //             fontWeight: FontWeight.bold,
          //             fontSize: 25),
          //       ),
          //     ],
          //   ),
          // ),
          // const SizedBox(
          //   height: 10,
          // ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20),
          //   child: Row(
          //     children: [
          //       Text(
          //         resort['description'],
          //         style: const TextStyle(
          //             color: Colors.black,
          //             fontWeight: FontWeight.bold,
          //             fontSize: 12),
          //       ),
          //     ],
          //   ),
          // ),
          // const SizedBox(
          //   height: 20,
          // ),
          // const Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 20),
          //   child: Row(
          //     children: [
          //       Text(
          //         'Special Facilities',
          //         style: TextStyle(
          //             color: Colors.black,
          //             fontWeight: FontWeight.bold,
          //             fontSize: 25),
          //       ),
          //     ],
          //   ),
          // ),
          // const SizedBox(
          //   height: 10,
          // ),
          // const Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 30),
          //   child: Row(
          //     children: [
          //       Icon(
          //         Icons.local_parking,
          //         color: Colors.blue,
          //         size: 15,
          //       ),
          //       SizedBox(
          //         width: 10,
          //       ),
          //       Text(
          //         'Parking',
          //         style: TextStyle(
          //             color: Colors.blue,
          //             fontSize: 15,
          //             fontWeight: FontWeight.bold),
          //       ),
          //       SizedBox(
          //         width: 20,
          //       ),
          //       Icon(
          //         Icons.headset_mic_outlined,
          //         color: Colors.blue,
          //         size: 15,
          //       ),
          //       SizedBox(
          //         width: 10,
          //       ),
          //       Text(
          //         '24x7 Support',
          //         style: TextStyle(
          //             color: Colors.blue,
          //             fontSize: 15,
          //             fontWeight: FontWeight.bold),
          //       ),
          //       SizedBox(
          //         width: 20,
          //       ),
          //       Icon(
          //         Icons.wifi,
          //         color: Colors.blue,
          //         size: 15,
          //       ),
          //       SizedBox(
          //         width: 10,
          //       ),
          //       Text(
          //         'Free Wifi',
          //         style: TextStyle(
          //             color: Colors.blue,
          //             fontSize: 15,
          //             fontWeight: FontWeight.bold),
          //       ),
          //     ],
          //   ),
          // ),
          // const SizedBox(
          //   height: 20,
          // ),
          // Container(
          //   width: 300,
          //   height: 200,
          //   decoration: BoxDecoration(
          //       borderRadius: const BorderRadius.all(Radius.circular(20)),
          //       image: DecorationImage(
          //           image: NetworkImage(resort['image']), fit: BoxFit.cover)),
          // ),
          // const SizedBox(
          //   height: 20,
          // ),
          // const Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 20),
          //   child: Row(
          //     children: [
          //       Text(
          //         'Special Facilities',
          //         style: TextStyle(
          //             color: Colors.black,
          //             fontWeight: FontWeight.bold,
          //             fontSize: 25),
          //       ),
          //     ],
          //   ),
          // ),
          // const SizedBox(
          //   height: 20,
          // ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 40),
          //   child: Row(
          //     children: [
          //       Container(
          //         width: 50,
          //         height: 30,
          //         decoration: BoxDecoration(color: Colors.blue.shade200,borderRadius: const BorderRadius.all(Radius.circular(5))),
          //         child: const Column(
          //           children: [
          //             Text('Adult',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
          //             Text('02',style: TextStyle(fontSize: 10),)
          //           ],
          //         ),
          //       ),
          //       const SizedBox(width: 30,),
          //       Container(
          //         width: 50,
          //         height: 30,
          //         decoration: BoxDecoration(color: Colors.blue.shade200,borderRadius: const BorderRadius.all(Radius.circular(5))),
          //         child: const Column(
          //           children: [
          //             Text('Adult',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
          //             Text('02',style: TextStyle(fontSize: 10),)
          //           ],
          //         ),
          //       ),
          //       const SizedBox(width: 30,),
          //       Container(
          //         width: 50,
          //         height: 30,
          //         decoration: BoxDecoration(color: Colors.blue.shade200,borderRadius: const BorderRadius.all(Radius.circular(5))),
          //         child: const Column(
          //           children: [
          //             Text('Adult',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
          //             Text('02',style: TextStyle(fontSize: 10),)
          //           ],
          //         ),
          //       ),
          //       const SizedBox(width: 30,),
          //       Container(
          //         width: 50,
          //         height: 30,
          //         decoration: BoxDecoration(color: Colors.blue.shade200,borderRadius: const BorderRadius.all(Radius.circular(5))),
          //         child: const Column(
          //           children: [
          //             Text('Adult',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
          //             Text('02',style: TextStyle(fontSize: 10),)
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // const SizedBox(
          //   height: 20,
          // ),
          // ElevatedButton(
          //     style: ElevatedButton.styleFrom(
          //         backgroundColor: Colors.blue,
          //         padding: const EdgeInsets.symmetric(horizontal: 80),
          //         shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(5))),
          //     onPressed: () {},
          //     child: const Text(
          //       'Explore Now',
          //       style: TextStyle(
          //           color: Colors.white,
          //           fontWeight: FontWeight.bold,
          //           fontSize: 10),
          //     )),
        ],
      ),
    );
  }
}
