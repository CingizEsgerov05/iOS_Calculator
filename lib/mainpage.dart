import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ios_calculator/easter_egg.dart';
import 'package:ios_calculator/screen_info.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _HomePageState();
}

class _HomePageState extends State<MainPage> {
  dynamic text = '0';
  ScreenInfo screen = ScreenInfo();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screen.screenWidth / 300),
        child: Padding(
          padding: EdgeInsets.only(bottom: screen.screenHeight / 150),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    bottom: screen.screenHeight / 200,
                    right: screen.screenWidth / 200),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '$text',
                    style: const TextStyle(color: Colors.white, fontSize: 100),
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(
                    txt: 'AC',
                    btncolor: Color.fromARGB(255, 212, 212, 210),
                    txtcolor: Colors.black,
                  ),
                  CalcButton(
                    txt: '%',
                    btncolor: Color.fromARGB(255, 212, 212, 210),
                    txtcolor: Colors.black,
                  ),
                  CalcButton(
                    txt: '+/-',
                    btncolor: Color.fromARGB(255, 212, 212, 210),
                    txtcolor: Colors.black,
                  ),
                  CalcButton(
                    txt: '/',
                    btncolor: Color.fromARGB(255, 255, 149, 0),
                    txtcolor: Colors.white,
                  )
                ],
              ),
              SizedBox(
                height: screen.screenHeight / 200,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(
                    txt: '7',
                    btncolor: Color.fromARGB(255, 80, 80, 80),
                    txtcolor: Colors.white,
                  ),
                  CalcButton(
                    txt: '8',
                    btncolor: Color.fromARGB(255, 80, 80, 80),
                    txtcolor: Colors.white,
                  ),
                  CalcButton(
                    txt: '9',
                    btncolor: Color.fromARGB(255, 80, 80, 80),
                    txtcolor: Colors.white,
                  ),
                  CalcButton(
                    txt: 'x',
                    btncolor: Color.fromARGB(255, 255, 149, 0),
                    txtcolor: Colors.white,
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(
                    txt: '5',
                    btncolor: Color.fromARGB(255, 80, 80, 80),
                    txtcolor: Colors.white,
                  ),
                  CalcButton(
                    txt: '6',
                    btncolor: Color.fromARGB(255, 80, 80, 80),
                    txtcolor: Colors.white,
                  ),
                  CalcButton(
                    txt: '7',
                    btncolor: Color.fromARGB(255, 80, 80, 80),
                    txtcolor: Colors.white,
                  ),
                  CalcButton(
                    txt: '-',
                    btncolor: Color.fromARGB(255, 255, 149, 0),
                    txtcolor: Colors.white,
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(
                    txt: '1',
                    btncolor: Color.fromARGB(255, 80, 80, 80),
                    txtcolor: Colors.white,
                  ),
                  CalcButton(
                    txt: '2',
                    btncolor: Color.fromARGB(255, 80, 80, 80),
                    txtcolor: Colors.white,
                  ),
                  CalcButton(
                    txt: '3',
                    btncolor: Color.fromARGB(255, 80, 80, 80),
                    txtcolor: Colors.white,
                  ),
                  CalcButton(
                    txt: '+',
                    btncolor: Color.fromARGB(255, 255, 149, 0),
                    txtcolor: Colors.white,
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EasterEgg()));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      fixedSize: const Size(190, 90),
                      backgroundColor: const Color.fromARGB(255, 80, 80, 80),
                    ),
                    child: const Text('0',
                        style: TextStyle(color: Colors.white, fontSize: 31)),
                  ),
                  const CalcButton(
                    txt: ',',
                    btncolor: Color.fromARGB(255, 80, 80, 80),
                    txtcolor: Colors.white,
                  ),
                  const CalcButton(
                    txt: '=',
                    btncolor: Color.fromARGB(255, 255, 149, 0),
                    txtcolor: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CalcButton extends StatelessWidget {
  const CalcButton(
      {super.key,
      required this.txt,
      required this.btncolor,
      required this.txtcolor});

  final String txt;
  final Color btncolor;
  final Color txtcolor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          fixedSize: const Size(90, 90),
          backgroundColor: btncolor),
      child: Text(
        txt,
        style: TextStyle(color: txtcolor, fontSize: 31),
      ),
    );
  }
}
