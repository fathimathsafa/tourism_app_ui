import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourism_app_ui/Tourism/travel_dummy.dart';


class Travel_ViewAll extends StatelessWidget {
  const Travel_ViewAll({super.key});

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    // final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    // final double itemWidth = size.width / 1.6;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GridView.count(
                shrinkWrap: true,
                primary: false,
                crossAxisCount: 1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,

                childAspectRatio:1/1.1,
                children: resorts
                    .map((resort) => InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'detailpage',
                          arguments: resort['id']);
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  resort['image'],
                                  fit: BoxFit.fill,
                                ),
                              )),
                          Positioned(
                            top: 340,
                            left: 30,
                            child: Container(
                              height: 80,
                              width: 330,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  children: [
                                    Text(
                                      resort['name'],
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      )
                                      ),
                                    Text(
                                      resort['place'],
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      )
                                  ),
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(width: 80,),
                                            Icon(Icons.star,size: 16,),
                                            Text(
                                                resort['rating'],
                                                style: TextStyle(
                                                  fontSize: 13,

                                                  color: Colors.black,
                                                )
                                            ),
                                            SizedBox(width:60 ,),
                                            Icon(Icons.location_on_rounded,size: 16,),
                                            Text(" 1 Km",style: TextStyle(
                                              fontSize: 13,color: Colors.black
                                            ),)
                                          ],
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                              ),
                            ),
                          ),
                          
                          
                          // Positioned(
                          //   bottom: 15,
                          //   left: 10,
                          //   child: Text(
                          //     resort['name'],
                          //     style: const TextStyle(
                          //         fontSize: 13,
                          //         fontWeight: FontWeight.bold,
                          //         color: Colors.white),
                          //   ),
                          // ),

                        ],
                      ),
                    )))
                    .toList()),
          ),
          const SizedBox(height: 20,),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(5))),
              onPressed: () {},
              child: const Text(
                'Explore Now',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 10),
              )),
          const SizedBox(height: 50,)
        ],
      ),
    );
  }
}
