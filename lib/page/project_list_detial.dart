import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pp/models/project.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProjectDetailsPage extends StatelessWidget {
  final Project p;
  const ProjectDetailsPage({super.key, required this.p});

  @override
  Widget build(BuildContext context) {
    var percent = (p.receiveAmount / p.targetAmount * 100).toStringAsFixed(0);
    var percent_int = int.tryParse(percent);
    return Scaffold(
      appBar: AppBar(title: Text('${p.title}')),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: 550,
                    height: 500,
                    color: Color.fromARGB(255, 251, 225, 165),
                    // color: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${p.title}',
                            style: TextStyle(fontSize: 20),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Center(
                            child: Image.asset(
                              p.imageUrl,
                              // fit: BoxFit.cover,
                              height: 200,
                              width: 200,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text('${p.description}'),
                          const SizedBox(
                            height: 10,
                          ),
                          Text('ระยะเวลาโครงการ: ${p.dutation_project}'),
                          const SizedBox(
                            height: 10,
                          ),
                          Text('พื้นที่ดำเนินโครงงาน: ${p.Area}'),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 550,
                    height: 330,
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color.fromARGB(115, 131, 130, 130))),
                        color: Color.fromARGB(255, 249, 249, 249)),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('ยอดบริจาคขณะนี้'),
                            Text(
                              '${gen_comma(p.receiveAmount)}',
                              style: TextStyle(
                                  color: Colors.amber[600],
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('เป้าหมาย'),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '${gen_comma(p.targetAmount)}',
                                      style: const TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '\n$percent%',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex: percent_int!,
                                  child: Container(
                                    height: 10.0,
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 5.0, horizontal: 0.0),
                                    color: Colors.orange,
                                  ),
                                ),
                                Expanded(
                                  flex: 100 - percent_int!,
                                  child: Container(
                                    height: 10.0,
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 5.0, horizontal: 0.0),
                                    color: const Color.fromARGB(
                                        255, 214, 214, 214),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${p.duration} วัน',
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.person_outline_rounded,
                                      size: 13.0,
                                    ),
                                    Text(
                                      '${p.donateCount}',
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Column(children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    height: 50, //height of button
                                    width: 700,
                                    child: ElevatedButton.icon(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.health_and_safety_sharp,
                                        size: 24.0,
                                      ),
                                      label: Text('ร่วมบริจาค'), // <-- Text
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    height: 50, //height of button
                                    width: 700,
                                    child: ElevatedButton.icon(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.add_shopping_cart_rounded,
                                        size: 24.0,
                                      ),
                                      label: Text('หยิบใส่ตระกร้า'), // <-- Text
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 550,
                    child: Column(children: [
                      Text('แชร์ให้เพื่อน'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                                icon: FaIcon(FontAwesomeIcons.line,
                                    color: Colors.green),
                                onPressed: () {
                                  print("Pressed");
                                }),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                                icon: FaIcon(FontAwesomeIcons.facebook,
                                    color: Colors.blue),
                                onPressed: () {
                                  print("Pressed");
                                }),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                                icon: FaIcon(FontAwesomeIcons.twitter,
                                    color: Color.fromARGB(255, 87, 162, 241)),
                                onPressed: () {
                                  print("Pressed");
                                }),
                          )
                        ],
                      )
                    ]),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

String gen_comma(var number) {
  var formatter = NumberFormat('#,###,000');
  var target = formatter.format(number);
  return target;
}
