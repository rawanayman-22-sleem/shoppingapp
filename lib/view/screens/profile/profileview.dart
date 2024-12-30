import 'package:flutter/material.dart';
import '../../../core/custombuttonprofile.dart';
import 'editprofil/editprofile.dart';
import 'orders/orderbody.dart';

class Profileview extends StatelessWidget {
  const Profileview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: SingleChildScrollView(
          child: Card(
            color: Colors.white,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.blue[200],
                    foregroundColor: Colors.white,
                    child: const Icon(
                      Icons.person,
                      size: 50,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'User Name',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'user@example.com',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Divider(color: Colors.grey[300], thickness: 1),
                  const SizedBox(height: 10),
                  CustomButtonProfile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EditProfile()));
                    },
                    color: Colors.blue[400]!,
                    text: 'Edit Profile',
                    icon: Icons.person,
                  ),
                  const SizedBox(height: 15),
                  CustomButtonProfile(
                    color: Colors.blue[400]!,
                    text: 'My Orders',
                    icon: Icons.shopping_cart,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Orderbody()));
                    },
                  ),
                  const SizedBox(height: 15),
                  CustomButtonProfile(
                    color: Colors.red[400]!,
                    text: 'Log Out',
                    icon: Icons.logout,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}





// class Profileview extends StatelessWidget {
//   const Profileview({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return  Card(
//         color: bluelight,
//         margin: EdgeInsets.all(40),
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(
//                 Radius.circular(20)
//             )
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(11.0),
//           child: Column(
//             children: [
//               CircleAvatar(
//                 radius: 60,
//                 backgroundColor: blue,
//                 foregroundColor: Colors.white,
//                 child: Icon(Icons.person, size: 50,),
//               ),
//               SizedBox(height: 10,),
//               Text('User name',
//               style: AppWidget.LightTextFeildStyleF(),),
//               SizedBox(height: 10,),
//               Text('User Email'),
//
//               SizedBox(height: 10,),
//
//               Custombuttonprofile(
//                 onTap: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context)=> EditProfile()));
//                 },
//                 color: blue,
//                 text: 'Edit name',
//                 icon: Icons.arrow_forward_ios,
//                 iconrow: Icons.person,
//
//               ),
//
//               SizedBox(height: 20,),
//
//               Custombuttonprofile(
//                 color: blue,
//                 text: 'My orders',
//                 icon: Icons.arrow_forward_ios,
//                 iconrow: Icons.shopping_cart,
//                 onTap: (){},
//               ),
//
//               SizedBox(height: 20,),
//
//               Custombuttonprofile(
//                 color: blue,
//                 text: 'Log out',
//                 icon: Icons.arrow_forward_ios,
//                 iconrow: Icons.logout,
//                 onTap: (){},
//
//               ),
//                        ],
//           ),
//         ),
//          );
//   }
// }
