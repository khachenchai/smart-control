import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool item1Status = false;
  bool item2Status = false;
  bool item3Status = false;
  bool item4Status = false;
  double? wet = 50.0;
  int temp = 26;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page", style: TextStyle(fontSize: 22),),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: <Widget>[
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text("Logo(เตรียมใส่ภาพ)", style: TextStyle(
                //   fontSize: 24,
                //   fontWeight: FontWeight.bold
                // )),
                Column(
                  children: [
                    Image.asset(
                      "assets/img/pkw_no_bg.png",
                      width: 100,
                      height: 100,
                    ),
                    const Text("Smart Control App", style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                    )),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: const Divider(
              thickness: 2,
              // color: Colors.black,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // color: Color.fromARGB(255, 210, 103, 103),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const Text("Item 1", style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    )),
                    Switch(
                      value: item1Status, 
                      onChanged: (value) => setState(() {
                        item1Status = value;
                      })
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("อุณหภูมิ", style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    )),
                    Text("${temp}ºC", style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold
                    )),
                    
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // color: Color.fromARGB(255, 210, 103, 103),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const Text("Item 2", style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    )),
                    Switch(
                      value: item2Status, 
                      onChanged: (value) => setState(() {
                        item2Status = value;
                      })
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const Text("ความชื้น", style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    )),
                    const SizedBox(height: 16),
                    CircularPercentIndicator(
                      radius: 40,
                      lineWidth: 8,
                      percent: double.parse(wet!.toString()) / 100,
                      center: Text('${wet}%', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      circularStrokeCap: CircularStrokeCap.round,
                      // fillColor: Colors.green,
                      backgroundColor: Colors.grey,
                      // arcBackgroundColor: Colors.yellow,
                      // progressColor: if (wet )
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                // color: Color.fromARGB(255, 210, 103, 103),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const Text("Item 3", style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    )),
                    Switch(
                      value: item3Status, 
                      onChanged: (value) => setState(() {
                        item3Status = value;
                      })
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                // color: Color.fromARGB(255, 210, 103, 103),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const Text("Item 4", style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    )),
                    Switch(
                      value: item4Status, 
                      onChanged: (value) => setState(() {
                        item4Status = value;
                      })
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}