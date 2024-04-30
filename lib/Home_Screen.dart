// state class of the main widget
import 'package:flutter/material.dart';


//main StatefulWidget
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        leading: Icon(Icons.home),
        actions: [Icon(Icons.add)],
      ),
      body: Center(
        child: Text(
          count.toString(),
          style: TextStyle(fontSize: 48),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: (){
            count++;
            print(count);
            setState(() {
            });
          },child: Icon(Icons.add)),

          SizedBox(width: 10,),
          FloatingActionButton(onPressed: (){
            count--;
            setState(() {
            });
          },child: Icon(Icons.remove),)
        ],
      ),
    );
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    print('deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }
}
