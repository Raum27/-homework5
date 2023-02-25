import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pp/models/project.dart';
import 'package:pp/page/project_list_detial.dart';

class project_list_pages extends StatefulWidget {
  const project_list_pages({super.key});

  @override
  State<project_list_pages> createState() => _project_list_pagesState();
}

class _project_list_pagesState extends State<project_list_pages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('เทใจ')),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 500,
              child: Expanded(
                child: ListView.builder(
                  itemCount: getdata().length,
                  itemBuilder: (BuildContext context, int index) {
                    return Genarate_widget(getdata()[index], context);
                  },
                ),
              ),
            )
          ],
        ));
  }
}

List<Project> getdata() {
  List<String> title = [
    'อิ่มท้องน้องพิเศษ',
    'I\'m ABLE โอกาสจากพี่ ช่วยหนูได้เรียนร่วม',
    'พาพญาแร้งที่สูญพันธุ์จากธรรมชาติกลับคืนป่าเมืองไทย'
  ];
  List<String> description = [
    'ชวนมอบมื้ออาหารกลางวันให้เด็กพิเศษ 240 คนในมูลนิธิบ้านครูบุญชูเพื่อเด็กพิเศษ ที่ต้องเผชิญค่าใช้จ่ายด้านชวนมอบมื้ออาหารกลางวันให้เด็กพิเศษ 240 คนในมูลนิธิบ้านครูบุญชูเพื่อเด็กพิเศษ ที่ต้องเผชิญค่าใช้จ่ายด้านอาหารกลางวันหลักแสนต่อเดือน เงินจำนวน 3,500 บาทสามารถเลี้ยงอาหารทุกคนได้ 1 มื้อ',
    'ระดมทุนการศึกษา 1 ปีให้กับเด็กนักเรียนพิการจำนวน 150 คนๆ ละ 4,000 บาท ให้กับเด็กนักเรียนพิการที่กำลังศึกษาอยู่ในระดับชั้นประถมศึกษาถึงมัธยมศึกษาในจังหวัดต่างๆของภาคตะวันออกเฉียงเหนือ ภาคตะวันตกและภาคใต้ที่มีความพิการทางร่างกายหรือพัฒนาการช้าแต่สามารถสื่อสารและเรียนหนังสือได้ เพื่อส่งเสริมเด็กนักเรียนพิการเหล่านั้นได้เรียนร่วมในโรงเรียนปกติกับนักเรียนทั่วไป เสริมสร้างพัฒนาการทางร่างกาย สติปัญญา ส่งเสริมการเรียนรู้การเข้าสังคมและช่วยเหลือตนเองในสถานการณ์ต่างๆโดยไม่รู้สึกว่าตนเองเป็นภาระของครูและเพื่อนๆในโรงเรียน',
    'เกือบ 30 ปี ที่พญาแร้งหายไปจากป่าเมืองไทย ในวันนี้พวกเราพยายามวางแผนเพาะพันธุ์พญาแร้งที่เหลืออยู่ในกรงเลี้ยงจำนวน 6 ตัว เพื่อหวังว่าสักวันในผืนป่าประเทศไทยจะมีพญาแร้งโผบินอีกครั้ง แต่โจทย์นี้ไม่ง่าย เพราะการจะทำให้สัตว์ที่สูญพันธุ์จากธรรมชาติกลับคืนมา ยากกว่าการทำให้มันหายไป '
  ];
  List<int> targetAmount = [119350, 825000, 299200];
  List<int> duration = [12, 128, 312];
  List<int> receiveAmount = [40975, 10409, 13225];
  List<int> donateCount = [30, 21, 51];
  List<String> imageUrl = [
    'assets/images/d1.jpg',
    'assets/images/d2.jpg',
    'assets/images/d3.jpg'
  ];
  List<String> dutation_project = [
    '06 ก.พ. 2566 ถึง 06 มี.ค. 2566',
    '01 ก.พ. 2566 ถึง 30 มิ.ย. 2566',
    '01 ก.พ. 2566 ถึง 31 ม.ค. 2567',
  ];
  List<String> Area = [
    'ตำบลพลูตาหลวง อำเภอสัตหีบ จังหวัดชลบุรี (มูลนิธิบ้านครูบุญชูเพื่อเด็กพิเศษ)',
    'ภาคตะวันออกเฉียงเหนือ ภาคตะวันตกและภาคใต้ของประเทศไทย',
    'ตำบลลานสัก อำเภอลานสัก จังหวัดอุทัยธานี (เขตรักษาพันธุ์สัตว์ป่าห้วยขาแข้งและพื้นที่โดยรอบ), ตำบลไชยมงคล อำเภอเมืองนครราชสีมา จังหวัดนครราชสีมา (สวนสัตว์นครราชสีมา)'
  ];
  List<Project> projects = [
    for (var i = 0; i < title.length; i++)
      Project(
          title: title[i],
          description: description[i],
          targetAmount: targetAmount[i],
          duration: duration[i],
          receiveAmount: receiveAmount[i],
          donateCount: donateCount[i],
          imageUrl: imageUrl[i],
          dutation_project: dutation_project[i],
          Area: Area[i])
  ];
  return projects;
}

Widget Genarate_widget(Project p, BuildContext context) {
  var style_1 = const TextStyle(fontSize: 12, color: Colors.black54);
  var percent = (p.receiveAmount / p.targetAmount * 100).toStringAsFixed(0);
  var percent_int = int.tryParse(percent);
  return Card(
    child: InkWell(
      onTap: () {
        // print(p.Area);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ProjectDetailsPage(p: p)));
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          Row(
            children: [
              Image.asset(
                p.imageUrl,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${p.title}'),
                      Text(
                        '${p.description}',
                        overflow: TextOverflow.ellipsis,
                        style: style_1,
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('เป้าหมาย', style: style_1),
                  const SizedBox(
                    height: 8,
                  ),
                  Text('${gen_comma(p.targetAmount)} บาท'),
                ],
              ),
              Text(
                '$percent%',
                style: style_1,
              )
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
                  color: Color.fromARGB(255, 214, 214, 214),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${p.duration} วัน',
                style: style_1,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.person_outline_rounded,
                    size: 13.0,
                  ),
                  Text(
                    '${p.donateCount}',
                    style: style_1,
                  ),
                ],
              )
            ],
          )
        ]),
      ),
    ),
  );
}
