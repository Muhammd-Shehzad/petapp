import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petapp/View/AllAnimals/all_animal_provider.dart';
import 'package:provider/provider.dart';

class AllAnimal extends StatefulWidget {
  final int index;
  AllAnimal({super.key, required this.index});

  @override
  State<AllAnimal> createState() => _AllAnimalState();
}

class _AllAnimalState extends State<AllAnimal> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AllAnimalProvider(),
      child: Consumer<AllAnimalProvider>(
        builder:
            (context, model, child) => Scaffold(
              body: Stack(
                children: [
                  Positioned(
                    top: 100.h, // distance from top
                    left: 3,
                    right: 3,
                    bottom: 3,
                    child: Container(
                      height: double.infinity.h,
                      width: double.infinity.w,
                      child: Column(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.w),
                              child: GridView.builder(
                                itemCount: model.slider.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      mainAxisSpacing: 5,
                                      crossAxisSpacing: 5,
                                      childAspectRatio: 2 / 1.4,
                                      mainAxisExtent: 200,
                                    ),
                                itemBuilder: (context, index) {
                                  return SizedBox(
                                    height: 150.h,
                                    width: 150.w,
                                    child: Image.asset(model.slider[index]),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -70,
                    left: -90,
                    child: Image.asset('assets/ra3.png'),
                  ),
                ],
              ),
            ),
      ),
    );
  }
}


// Expanded(
//         child: GridView.builder(
//           itemCount: 5,
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//           ),
//           itemBuilder: (context, index) {
//             return Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 height: 100.h,
//                 width: 200.w,
//                 color: Colors.amber,
//               ),
//             );
//           },
//         ),
//       ),