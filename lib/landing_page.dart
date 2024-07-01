import 'package:flutter/material.dart';
import 'package:pet_app/login_page.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => (LogScreen())));
      },
      child: Scaffold(
        backgroundColor: Color.fromRGBO(129, 135, 248, 1),
        body: GestureDetector(
          onTap: () {
            print('Hogaya 2');
            // Navigator.of(context).pushReplacementNamed(LogScreen.routeName);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
              Container(
                height: 100,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.medical_services_outlined,
                      color: Colors.white,
                    ),
                    Text(
                      ' healthypet',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        shadows: [
                          Shadow(
                            color: Colors.black38,
                            blurRadius: 10.0,
                            offset: Offset(0, 5.0),
                          ),
                        ],
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 300,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 35.0,
                      color: Color.fromARGB(222, 255, 255, 255),
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Helping you to keep ',
                          style: TextStyle(color: Colors.white54)),
                      TextSpan(
                        text: 'your bestie',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: ' stay healthy!',
                        style: TextStyle(color: Colors.white54),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(14),
                      topRight: Radius.circular(14),
                      bottomLeft: Radius.circular(2),
                      bottomRight: Radius.circular(2),
                    ),
                    child: Image.network(
                      'https://th.bing.com/th/id/R.86bebc8ceb313545207c639be56f0651?rik=JOO9Wnj8b0GWTA&riu=http%3a%2f%2fpngimg.com%2fuploads%2fdog%2fdog_PNG50380.png&ehk=othL9M41KKnxNrXWUSnkAmjsQ%2fiWbfeqyhCdWFCEDIQ%3d&risl=1&pid=ImgRaw&r=0',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
