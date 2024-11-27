// // import 'dart:collection';
// // import 'package:flutter_application_1/information.dart';
// // import 'package:image_picker/image_picker.dart';
// // import 'dart:io';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_application_1/Add.dart';
// // import 'package:flutter_application_1/edit.dart';
// // import 'package:flutter_application_1/search.dart';
// // import 'package:flutter/services.dart' show rootBundle;
// // import 'package:path_provider/path_provider.dart';
// // // import 'package:image_picker/image_picker.dart';

// // class home22 extends StatefulWidget {
// //    final String username;
// //   final String email;

// //   const home22({super.key,required this.username, required this.email,});

// //   @override
// //   State<home22> createState() => _home22State();

// // }

// // class _home22State extends State<home22> {
// //   File? _savedPdf;

// //    List element = [
// //   {"name": "altarih", "image": "assets/altarih.jpg", 'pdf' : 'assets/pdf/c.pdf'},
// //   {"name": "Fun", "image": "assets/fun.jpeg", 'pdf' : 'assets/pdf/c.pdf'},
// //   {"name": "kill", "image": "assets/kill.jpeg", 'pdf' : 'assets/pdf/c2.pdf'},

// // ];

// //     TextEditingController info = new TextEditingController();
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: Text("Product"),
// //       // elevation: 50,
// //       // shadowColor: Colors.deepOrangeAccent,
// //       centerTitle: true,
// //       backgroundColor: Color.fromARGB(146, 0, 0, 0),

// //       actions: [

// //         IconButton(onPressed: (){
// //           showSearch(context: context,
// //           delegate: ItemSearchDelegate(element),);
// //         }, icon: Icon(Icons.search)),

// //       ],),

// //       drawer:  Drawer(

// //           child: ListView(
// //             children: <Widget>[

// //               UserAccountsDrawerHeader(
// //                 accountName: Text(widget.username),
// //                 accountEmail: Text(widget.email),
// //                 currentAccountPicture: CircleAvatar(
// //                   backgroundImage: AssetImage(
// //                     "assets/p5.png",
// //                   ),
// //                 ),
// //                 ),
// //                 ListTile(
// //                   title: Text("HOME"),
// //                   leading: Icon(Icons.home),
// //                   onTap: (){Navigator.pop(context);},
// //                 ),
// //                 ListTile(
// //                   title: Text("Login"),
// //                   leading: Icon(Icons.login),
// //                   onTap: (){Navigator.pop(context);},
// //                 ),
// //                 ListTile(
// //                   title: Text("singUP"),
// //                   leading: Icon(Icons.group_add_outlined),
// //                   onTap: (){
// //                     Navigator.pushNamed(context, 'signup');
// //                   },
// //                 )
// //             ],
// //           ),

// //         ),

// //       body: Container(
// //         margin: EdgeInsets.only(top: 20),
// //         // padding: EdgeInsets.only(top: 50),
// //         // color: ,

// //         child: Stack(
// //           children: [

// //                 ListView.builder(

// //                 itemCount: element.length,
// //                 itemBuilder: (context, index) {
// //                 return Card(

// //                   // margin: EdgeInsets.only(top: 10),
// //                   margin: EdgeInsets.symmetric(vertical: 8 , horizontal: 16),

// //                   elevation: 5,

// //                   shape: RoundedRectangleBorder(
// //                     borderRadius: BorderRadius.circular(20)
// //                   ),
// //                   color: Color.fromARGB(186, 162, 185, 29),
// //                   shadowColor: Colors.black,

// //                   child: ListTile(
// //                     onTap: () async {
// //                     //   if (element[index]['pdf'] != null) {

// //                     //   Navigator.push(
// //                     //   context,
// //                     //   MaterialPageRoute(
// //                     //   builder: (context) => PdfViewerPage(pdfPath:  element[index]['pdf']),
// //                     //   ),
// //                     // );
// //                     //  } else {
// //                     //   ScaffoldMessenger.of(context).showSnackBar(
// //                     //   const SnackBar(content: Text("لا يوجد ملف PDF مرتبط بهذا العنصر")),
// //                     //     );
// //                     //   }
// //                     // },
// //                     // leading: Text("$index "),
// // //                     if (element[index]['pdf'] != null) {
// // //     try {
// // //       // انسخ ملف PDF من `assets` إلى ملف مؤقت
// // //       final tempDir = await getTemporaryDirectory();
// // //       final tempFile = File('${tempDir.path}/${element[index]['name']}.pdf');
// // //       final data = await rootBundle.load(element[index]['pdf']);
// // //       await tempFile.writeAsBytes(data.buffer.asUint8List());

// // //       // عرض ملف PDF باستخدام المسار المؤقت
// // //       Navigator.push(
// // //         context,
// // //         MaterialPageRoute(
// // //           builder: (context) => PdfViewerPage(pdfPath: tempFile.path),
// // //         ),
// // //       );
// // //     } catch (e) {
// // //       ScaffoldMessenger.of(context).showSnackBar(
// // //         SnackBar(content: Text("حدث خطأ أثناء تحميل ملف PDF: $e")),
// // //       );
// // //     }
// // //   } else {
// // //     ScaffoldMessenger.of(context).showSnackBar(
// // //       const SnackBar(content: Text("لا يوجد ملف PDF مرتبط بهذا العنصر")),
// // //     );
// // //   }
// // // },

// //                     if (element[index]['pdf'] != null) {
// //     try {
// //       if (element[index]['pdf'].startsWith('assets/pdf/')) {
// //         // إذا كان الملف من `assets`
// //         final tempDir = await getTemporaryDirectory();
// //         final tempFile = File('${tempDir.path}/${element[index]['name']}.pdf');
// //         final data = await rootBundle.load(element[index]['pdf']);
// //         await tempFile.writeAsBytes(data.buffer.asUint8List());

// //         // عرض ملف PDF باستخدام المسار المؤقت
// //         Navigator.push(
// //           context,
// //           MaterialPageRoute(
// //             builder: (context) => PdfViewerPage(pdfPath: tempFile.path),
// //           ),
// //         );
// //       } else {
// //         // إذا كان الملف مسارًا محليًا (من جهاز المستخدم)
// //         if (await File(element[index]['pdf']).exists()) {
// //           Navigator.push(
// //             context,
// //             MaterialPageRoute(
// //               builder: (context) => PdfViewerPage(pdfPath: element[index]['pdf']),
// //             ),
// //           );
// //         } else {
// //           throw Exception("الملف غير موجود في المسار المحلي");
// //         }
// //       }
// //     } catch (e) {
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         SnackBar(content: Text("حدث خطأ أثناء تحميل ملف PDF: $e")),
// //       );
// //     }
// //   } else {
// //     ScaffoldMessenger.of(context).showSnackBar(
// //       const SnackBar(content: Text("لا يوجد ملف PDF مرتبط بهذا العنصر")),
// //     );
// //   }
// // },

// //                     title: Column(
// //                       // mainAxisAlignment:MainAxisAlignment.spaceAround ,
// //                       children: [
// //                       if(element[index]['image'] != null)
// //                       (element[index]['image'].startsWith('assets/')
// //                        ?Image.asset(
// //                         element[index]['image'],
// //                         // image: FileImage(File(element[index]['image'])),
// //                       // File(element[index]['image']),
// //                       width: 200,
// //                       height: 200,
// //                       fit: BoxFit.cover,
// //                       )
// //                       :Image.file(File(element
// //                       [index]['image']),
// //                       width: 200,
// //                       height: 200,
// //                       fit: BoxFit.cover,
// //                       ))
// //                      else Icon(Icons.image,size: 100,),
// //                       SizedBox(width: 10),

// //                       // SizedBox(width:100,),
// //                       Text(element[index]['name'],style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
// //                       MaterialButton(

// //                           onPressed: () async {
// //                           var updatedValue = await Navigator.pushNamed(
// //                             context,
// //                             'Edit',
// //                             arguments: element[index],

// //                           );
// //                           if (updatedValue != null && updatedValue is Map<String, dynamic>){
// //                             setState(() {
// //                               element[index] = updatedValue;
// //                             });
// //                           }
// //                         },
// //                         child: Icon(Icons.edit),),

// //                         IconButton(

// //                           onPressed: (){
// //                           setState(() {
// //                             element.removeAt(index);
// //                           });
// //                         },
// //                         icon: Icon(Icons.delete,color: Color.fromARGB(255, 39, 17, 17),)),

// //                       ]),

// //                     // subtitle: Text("dddddd"),
// //                     // trailing: Wrap(
// //                     //   children: [
// //                     //     // Text(element[index]),
// //                     //     MaterialButton(

// //                     //       onPressed: () async {
// //                     //       var updatedValue = await Navigator.pushNamed(
// //                     //         context,
// //                     //         'Edit',
// //                     //         arguments: element[index],

// //                     //       );
// //                     //       if (updatedValue != null && updatedValue is Map<String, dynamic>){
// //                     //         setState(() {
// //                     //           element[index] = updatedValue;
// //                     //         });
// //                     //       }
// //                     //     },
// //                     //     child: Icon(Icons.edit),),

// //                     //     IconButton(

// //                     //       onPressed: (){
// //                     //       setState(() {
// //                     //         element.removeAt(index);
// //                     //       });
// //                     //     },
// //                     //     icon: Icon(Icons.delete,color: Color.fromARGB(255, 39, 17, 17),)),

// //                     //   ],
// //                     // ),
// //                   ),
// //                 );

// //               },

// //             ),

// //           ],
// //         ),
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: () async {
// //           {
// //             var newitem = await Navigator.push(
// //               context,
// //                MaterialPageRoute(builder: (context) => AddPage()),
// //             );
// //             if(newitem!=null && newitem is Map<String, dynamic>){
// //               setState(() {
// //                 element.add(newitem);
// //               });
// //             }
// //             else{
// //                ScaffoldMessenger.of(context).showSnackBar(
// //               SnackBar(content: Text("Error: Invalid item returned")),
// //             );
// //             }

// //           }
// //       },
// //       child: Icon(Icons.add),

// //       ),

// //     );
// //   }
// // }

// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart' show rootBundle;
// import 'package:flutter_application_1/welcome.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:flutter_application_1/information.dart';
// import 'package:flutter_application_1/Add.dart';
// import 'package:flutter_application_1/search.dart';

// class HomePage extends StatefulWidget {
//   final String? username;
//   final String? email;

//   const HomePage({
//     super.key,
//     required this.username,
//     required this.email,
//   });

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   List element = [
//     {
//       "name": "altarih",
//       "image": "assets/altarih.jpg",
//       "pdf": "assets/pdf/c.pdf"
//     },
//     {"name": "Fun", "image": "assets/fun.jpeg", "pdf": "assets/pdf/c.pdf"},
//     {"name": "kill", "image": "assets/kill.jpeg", "pdf": "assets/pdf/c2.pdf"},
//   ];

//   Future<void> _navigateToAddPage() async {
//     final newElement = await Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => const AddPage()),
//     );

//     if (newElement != null && newElement is Map<String, dynamic>) {
//       setState(() {
//         element.add(newElement);
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final String displayName = widget.username ?? "Salem";
//     final String displayEmail = widget.email ?? "salem@gmail.com.com";
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Books"),
//         centerTitle: true,
//         backgroundColor: const Color.fromARGB(146, 0, 0, 0),
//         actions: [
//           IconButton(
//               onPressed: () {
//                 showSearch(
//                   context: context,
//                   delegate: ItemSearchDelegate(element),
//                 );
//               },
//               icon: Icon(Icons.search)),
//         ],
//       ),
//       drawer: Drawer(
//         child: ListView(
//           children: <Widget>[
//             UserAccountsDrawerHeader(
//               accountName: Text(displayName),
//               accountEmail: Text(displayEmail),
//               currentAccountPicture: CircleAvatar(
//                 backgroundImage: AssetImage(
//                   "assets/p5.png",
//                 ),
//               ),
//               // accountName: Text(widget.username),
//               // accountEmail: Text(widget.email),
//               // currentAccountPicture: CircleAvatar(
//               //   backgroundImage: AssetImage(
//               //     "assets/p5.png",
//               //   ),
//               // ),
//             ),
//             ListTile(
//               title: Text("Login"),
//               leading: Icon(Icons.login),
//               onTap: () {
//                 Navigator.pushNamed(context, 'login');
//               },
//             ),
//             ListTile(
//               title: Text("singUP"),
//               leading: Icon(Icons.group_add_outlined),
//               onTap: () {
//                 Navigator.pushNamed(context, 'signup');
//               },
//             ),
//             ListTile(
//               title: Text("Logout"),
//               leading: Icon(Icons.logout_outlined),
//               onTap: () {
//                 Navigator.pushReplacement(context,
//                     MaterialPageRoute(builder: (context) => WelcomePage()));
//               },
//             )
//           ],
//         ),
//       ),
//       body: GridView.builder(
//         padding: const EdgeInsets.all(8.0),
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2, // عدد الأعمدة في الشبكة
//           mainAxisSpacing: 8, // المسافة الرأسية
//           crossAxisSpacing: 8, // المسافة الأفقية
//           childAspectRatio: 0.7, // نسبة الطول إلى العرض
//         ),
//         itemCount: element.length,
//         itemBuilder: (context, index) {
//           return Card(
//             elevation: 5,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(15),
//             ),
//             color: const Color.fromARGB(186, 162, 185, 29),
//             child: Column(
//               children: [
//                 Expanded(
//                   child: element[index]['image'] != null
//                       ? (element[index]['image'].startsWith('assets/')
//                           ? Image.asset(
//                               element[index]['image'],
//                               fit: BoxFit.cover,
//                               width: double.infinity,
//                             )
//                           : Image.file(
//                               File(element[index]['image']),
//                               fit: BoxFit.cover,
//                               width: double.infinity,
//                             ))
//                       : const Icon(Icons.image, size: 50),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     element[index]['name'],
//                     style: const TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     IconButton(
//                       onPressed: () async {
//                         var updatedValue = await Navigator.pushNamed(
//                           context,
//                           'Edit',
//                           arguments: element[index],
//                         );
//                         if (updatedValue != null &&
//                             updatedValue is Map<String, dynamic>) {
//                           setState(() {
//                             element[index] = updatedValue;
//                           });
//                         }
//                       },
//                       icon: const Icon(Icons.edit),
//                     ),
//                     IconButton(
//                       onPressed: () {
//                         setState(() {
//                           element.removeAt(index);
//                         });
//                       },
//                       icon: const Icon(Icons.delete, color: Colors.red),
//                     ),
//                   ],
//                 ),
//                 Container(
//                   child: MaterialButton(
//                     onPressed: () async {
//                       print("PDF Path: ${element[index]['pdf']}");

//                       if (element[index]['pdf'] != null) {
//                         final filePath = element[index]['pdf'];

//                         // التحقق إذا كان الملف من الأصول (assets)
//                         if (filePath.startsWith("assets/")) {
//                           try {
//                             // نسخ الملف من الأصول إلى مجلد مؤقت
//                             final tempPath = await copyAssetToTemp(
//                               filePath,
//                               'temp_file_$index.pdf',
//                             );

//                             // التنقل إلى صفحة عرض PDF
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) =>
//                                     PdfViewerPage(pdfPath: tempPath),
//                               ),
//                             );
//                           } catch (e) {
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               SnackBar(content: Text("Error loading PDF: $e")),
//                             );
//                           }
//                         } else {
//                           // إذا كان الملف مرفوعًا من المستخدم
//                           if (await File(filePath).exists()) {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) =>
//                                     PdfViewerPage(pdfPath: filePath),
//                               ),
//                             );
//                           } else {
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               const SnackBar(
//                                   content: Text("PDF file not found.")),
//                             );
//                           }
//                         }
//                       } else {
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           const SnackBar(
//                               content: Text("No PDF file associated.")),
//                         );
//                       }
//                     },
//                     child: const Text("View PDF"),
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _navigateToAddPage,
//         child: const Icon(Icons.add),
//         //  () async {
//         //   var newItem = await Navigator.pushNamed(context, 'ADD');
//         //   if (newItem != null && newItem is Map) {
//         //     setState(() {
//         //       element.add(newItem);
//         //     });
//         //   }
//         // },
//         // child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

// Future<String> copyAssetToTemp(String assetPath, String fileName) async {
//   final byteData = await rootBundle.load(assetPath);

//   final tempDir = await getTemporaryDirectory();
//   final tempFile = File('${tempDir.path}/$fileName');

//   await tempFile.writeAsBytes(byteData.buffer.asUint8List());
//   return tempFile.path;
// }

// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart' show rootBundle;
// import 'package:flutter_application_1/welcome.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:flutter_application_1/information.dart';
// import 'package:flutter_application_1/Add.dart';
// import 'package:flutter_application_1/search.dart';

// class HomePage extends StatefulWidget {
//   final String? username;
//   final String? email;

//   const HomePage({
//     super.key,
//     required this.username,
//     required this.email,
//   });

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   List element = [
//     {
//       "name": "altarih",
//       "image": "assets/altarih.jpg",
//       "pdf": "assets/pdf/c.pdf"
//     },
//     {"name": "Fun", "image": "assets/fun.jpeg", "pdf": "assets/pdf/c.pdf"},
//     {"name": "kill", "image": "assets/kill.jpeg", "pdf": "assets/pdf/c2.pdf"},
//   ];

//   Future<void> _navigateToAddPage() async {
//     final newElement = await Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => const AddPage()),
//     );

//     if (newElement != null && newElement is Map<String, dynamic>) {
//       setState(() {
//         element.add(newElement);
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final String displayName = widget.username ?? "Salem";
//     final String displayEmail = widget.email ?? "salem@gmail.com.com";
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Books",
//           style: TextStyle(color: Colors.white), // لون العنوان أبيض
//         ),
//         centerTitle: true,
//         backgroundColor: const Color.fromARGB(146, 0, 0, 0),
//         actions: [
//           IconButton(
//             onPressed: () {
//               showSearch(
//                 context: context,
//                 delegate: ItemSearchDelegate(element),
//               );
//             },
//             icon: const Icon(Icons.search,
//                 color: Colors.white), // لون الأيقونة أبيض
//           ),
//         ],
//       ),
//       drawer: Drawer(
//         child: ListView(
//           children: <Widget>[
//             UserAccountsDrawerHeader(
//               accountName: Text(displayName),
//               accountEmail: Text(displayEmail),
//               currentAccountPicture: const CircleAvatar(
//                 backgroundImage: AssetImage("assets/p5.png"),
//               ),
//             ),
//             ListTile(
//               title: const Text("Login"),
//               leading: const Icon(Icons.login),
//               onTap: () {
//                 Navigator.pushNamed(context, 'login');
//               },
//             ),
//             ListTile(
//               title: const Text("SignUp"),
//               leading: const Icon(Icons.group_add_outlined),
//               onTap: () {
//                 Navigator.pushNamed(context, 'signup');
//               },
//             ),
//             ListTile(
//               title: const Text("Logout"),
//               leading: const Icon(Icons.logout_outlined),
//               onTap: () {
//                 Navigator.pushReplacement(context,
//                     MaterialPageRoute(builder: (context) => WelcomePage()));
//               },
//             ),
//           ],
//         ),
//       ),
//       body: GridView.builder(
//         padding: const EdgeInsets.all(8.0),
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2, // عدد الأعمدة في الشبكة
//           mainAxisSpacing: 8, // المسافة الرأسية
//           crossAxisSpacing: 8, // المسافة الأفقية
//           childAspectRatio: 0.7, // نسبة الطول إلى العرض
//         ),
//         itemCount: element.length,
//         itemBuilder: (context, index) {
//           return Card(
//             elevation: 5,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(15),
//             ),
//             color: const Color.fromARGB(186, 162, 185, 29),
//             child: Column(
//               children: [
//                 Expanded(
//                   child: element[index]['image'] != null
//                       ? (element[index]['image'].startsWith('assets/')
//                           ? Image.asset(
//                               element[index]['image'],
//                               fit: BoxFit.cover,
//                               width: double.infinity,
//                             )
//                           : Image.file(
//                               File(element[index]['image']),
//                               fit: BoxFit.cover,
//                               width: double.infinity,
//                             ))
//                       : const Icon(Icons.image, size: 50),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     element[index]['name'],
//                     style: const TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     IconButton(
//                       onPressed: () async {
//                         var updatedValue = await Navigator.pushNamed(
//                           context,
//                           'Edit',
//                           arguments: element[index],
//                         );
//                         if (updatedValue != null &&
//                             updatedValue is Map<String, dynamic>) {
//                           setState(() {
//                             element[index] = updatedValue;
//                           });
//                         }
//                       },
//                       icon: const Icon(Icons.edit),
//                     ),
//                     IconButton(
//                       onPressed: () {
//                         setState(() {
//                           element.removeAt(index);
//                         });
//                       },
//                       icon: const Icon(Icons.delete, color: Colors.red),
//                     ),
//                   ],
//                 ),
//                 MaterialButton(
//                   onPressed: () async {
//                     if (element[index]['pdf'] != null) {
//                       final filePath = element[index]['pdf'];

//                       if (filePath.startsWith("assets/")) {
//                         try {
//                           final tempPath = await copyAssetToTemp(
//                             filePath,
//                             'temp_file_$index.pdf',
//                           );

//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) =>
//                                   PdfViewerPage(pdfPath: tempPath),
//                             ),
//                           );
//                         } catch (e) {
//                           ScaffoldMessenger.of(context).showSnackBar(
//                             SnackBar(content: Text("Error loading PDF: $e")),
//                           );
//                         }
//                       } else if (await File(filePath).exists()) {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) =>
//                                 PdfViewerPage(pdfPath: filePath),
//                           ),
//                         );
//                       } else {
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           const SnackBar(content: Text("PDF file not found.")),
//                         );
//                       }
//                     } else {
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         const SnackBar(
//                             content: Text("No PDF file associated.")),
//                       );
//                     }
//                   },
//                   child: const Text("View PDF"),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _navigateToAddPage,
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

// Future<String> copyAssetToTemp(String assetPath, String fileName) async {
//   final byteData = await rootBundle.load(assetPath);

//   final tempDir = await getTemporaryDirectory();
//   final tempFile = File('${tempDir.path}/$fileName');

//   await tempFile.writeAsBytes(byteData.buffer.asUint8List());
//   return tempFile.path;
// }

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_application_1/information.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_application_1/welcome.dart';
import 'package:flutter_application_1/Add.dart';
import 'package:flutter_application_1/search.dart';

class HomePage extends StatefulWidget {
  final String? username;
  final String? email;

  const HomePage({
    super.key,
    required this.username,
    required this.email,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List element = [
    {
      "name": "Altarih",
      "image": "assets/altarih.jpg",
      "pdf": "assets/pdf/c.pdf"
    },
    {"name": "Fun", "image": "assets/fun.jpeg", "pdf": "assets/pdf/c.pdf"},
    {"name": "Kill", "image": "assets/kill.jpeg", "pdf": "assets/pdf/c2.pdf"},
  ];

  Future<void> _navigateToAddPage() async {
    final newElement = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AddPage()),
    );

    if (newElement != null && newElement is Map<String, dynamic>) {
      setState(() {
        element.add(newElement);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final String displayName = widget.username ?? "Salem";
    final String displayEmail = widget.email ?? "salem@gmail.com";
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Books",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFA45963),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: ItemSearchDelegate(element),
              );
            },
            icon: const Icon(Icons.search, color: Colors.white),
          ),
        ],
      ),
      drawer: Drawer(
        shadowColor: Colors.white,
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFFA45963),
              ),
              accountName: Text(
                displayName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(displayEmail),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage("assets/p5.png"),
              ),
            ),
            ListTile(
              title: const Text("Login"),
              leading: const Icon(Icons.login, color: Color(0xFFA45963)),
              onTap: () {
                Navigator.pushNamed(context, 'login');
              },
            ),
            ListTile(
              title: const Text("SignUp"),
              leading: const Icon(Icons.group_add_outlined,
                  color: Color(0xFFA45963)),
              onTap: () {
                Navigator.pushNamed(context, 'signup');
              },
            ),
            ListTile(
              title: const Text("Logout"),
              leading:
                  const Icon(Icons.logout_outlined, color: Color(0xFFA45963)),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => WelcomePage()));
              },
            ),
          ],
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 0.7,
        ),
        itemCount: element.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: element[index]['image'] != null
                        ? (element[index]['image'].startsWith('assets/')
                            ? Image.asset(
                                element[index]['image'],
                                fit: BoxFit.cover,
                                width: double.infinity,
                              )
                            : Image.file(
                                File(element[index]['image']),
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ))
                        : const Icon(Icons.image, size: 50),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    element[index]['name'],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () async {
                        var updatedValue = await Navigator.pushNamed(
                          context,
                          'Edit',
                          arguments: element[index],
                        );
                        if (updatedValue != null &&
                            updatedValue is Map<String, dynamic>) {
                          setState(() {
                            element[index] = updatedValue;
                          });
                        }
                      },
                      icon: const Icon(Icons.edit, color: Color(0xFFA45963)),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          element.removeAt(index);
                        });
                      },
                      icon: const Icon(Icons.delete, color: Colors.red),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(color: Color(0xFFA45963)),
                      ),
                    ),
                    onPressed: () async {
                      if (element[index]['pdf'] != null) {
                        final filePath = element[index]['pdf'];

                        if (filePath.startsWith("assets/")) {
                          try {
                            final tempPath = await copyAssetToTemp(
                              filePath,
                              'temp_file_$index.pdf',
                            );

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    PdfViewerPage(pdfPath: tempPath),
                              ),
                            );
                          } catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Error loading PDF: $e")),
                            );
                          }
                        } else if (await File(filePath).exists()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  PdfViewerPage(pdfPath: filePath),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("PDF file not found.")),
                          );
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("No PDF file associated.")),
                        );
                      }
                    },
                    child: const Text(
                      "View PDF",
                      style: TextStyle(color: Color(0xFFA45963)),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFA45963),
        onPressed: _navigateToAddPage,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}

Future<String> copyAssetToTemp(String assetPath, String fileName) async {
  final byteData = await rootBundle.load(assetPath);

  final tempDir = await getTemporaryDirectory();
  final tempFile = File('${tempDir.path}/$fileName');

  await tempFile.writeAsBytes(byteData.buffer.asUint8List());
  return tempFile.path;
}
