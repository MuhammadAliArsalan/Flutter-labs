/*import "package:flutter/material.dart";

//Muhammad Ali SE-22032
void main() {
  runApp(const labSix());
}
class labSix extends StatelessWidget {
  const labSix({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
      body:Center(
        child:Text("Hello, World!",
        style: TextStyle(fontSize: 24,color: Colors.blue)))  
    ),    
    );   
  }
}*/





import "package:flutter/material.dart";

//Muhammad Ali SE-22032
/*void main(){
  runApp( BottomRightTextWidget());
}
class BottomRightTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        
      backgroundColor: Colors.blue,
      body: Stack(
        
        children: [
          // Positioned container in the bottom-right corner
          Positioned(
            bottom: 16,
            right: 16,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              color: Colors.blue,
              child: Text(
                'Bottom Right',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    )
    );
  }
}
*/

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:Center(
          child:Container(
            width:200,
            height: 100,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              "This is a very long text that will be truncated if it exceeds the container's width",
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
          )
        )
      ),
      )
    );
  }
}