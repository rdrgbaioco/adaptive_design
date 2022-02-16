import 'package:adaptive_design/palette/colors.dart';
import 'package:flutter/material.dart';

class MyMobileBody extends StatelessWidget {
  hexColor(String hexcolorcode) {
    String newColor = '0xFF' + hexcolorcode;
    newColor = newColor.replaceAll('#', '');
    int colorint = int.parse(newColor);
    return colorint;
  }

  const MyMobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tamanhotela = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: SizedBox(
          width: tamanhotela.width * 0.25,
          child: Image.asset('assets/logo.png'),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.purpleAccent, Colors.tealAccent],
          )),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AspectRatio(
                aspectRatio: tamanhotela.aspectRatio * 4,
                child: Material(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.deepPurple[400],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: cores.length,
                itemBuilder: (context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(hexColor(cores[index].hex)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Color(hexColor(cores[index].hex)),
                          height: 120,
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
