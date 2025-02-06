import 'package:flutter/material.dart';

import 'category_container.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShadowContainer(
              innerContainerColor: Colors.purple, 
              text: "Dresses", 
              icon: Icons.checkroom,
            ),
            ShadowContainer(
              innerContainerColor: Colors.pink, 
              text: "Halls", 
              icon: Icons.storefront,  
            ),
            ShadowContainer(
              innerContainerColor: Colors.blue, 
              text: "Beauty Center", 
              icon: Icons.spa,  
            ),
            
          ],
        ),
        const SizedBox(
          height: 10,
        ),
       const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShadowContainer(
              innerContainerColor: Colors.purple, 
              text: "Makeup Artists", 
              icon: Icons.brush,  
            ),
            ShadowContainer(
              innerContainerColor: Colors.purple, 
              text: "Doctors", 
              icon: Icons.medical_services,  
            ),
            ShadowContainer(
              innerContainerColor: Colors.pink, 
              text: "Photographers", 
              icon: Icons.camera_alt,  
            ),
            
          ],
        ), 

       const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           const ShadowContainer(
              innerContainerColor: Colors.blue, 
              text: "Cars", 
              icon: Icons.directions_car,  
            ),
           const ShadowContainer(
              innerContainerColor: Colors.purple, 
              text: "Trips", 
              icon: Icons.airplane_ticket,  
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.25,
            )
          ],
        )
        
      ],
    );
  }
}
