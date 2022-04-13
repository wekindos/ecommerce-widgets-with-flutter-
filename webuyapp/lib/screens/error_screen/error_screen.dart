import 'package:flutter/material.dart';
import 'package:webuyapp/config/theme.dart';
import 'package:webuyapp/screens/home/home_screen.dart';

class Error_screen extends StatefulWidget {
  const Error_screen({Key? key}) : super(key: key);

  @override
  State<Error_screen> createState() => _Error_screenState();
}

class _Error_screenState extends State<Error_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 250,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 30,
                ),
              ),
              Center(
                child: Text('Something Went Wrong...!',
                    style: Theme.of(context).textTheme.headline5),
              ),
              Center(
                child: Icon(Icons.bug_report, size: 50,color: Colors.red,),
              ),
              Center(
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    icon: Icon(Icons.arrow_back_ios_new),
                    label: Text('Home')),
              )
            ],
          )
        ],
      ),
    );
  }
}
