class Project {
  final String title; // ชื่อโครงการขอรับบริจาค
  final String description; //คำอธิบายเกี่ยวกับโครงการ
  final int targetAmount; // ยอดเงินขอรับบริจาคที่ต้องการ
  final int duration; // ระยะเวลาถอยหลัง
  final int receiveAmount; //จำนวนเงินที่ได้รับ
  final int donateCount; // ผู้บริจาค
  final String imageUrl; // รูป
  final String dutation_project; //ระยะเวลา
  final String Area; //rnhomuj
  Project({
    required this.title,
    required this.description,
    required this.targetAmount,
    required this.duration,
    required this.receiveAmount,
    required this.donateCount,
    required this.imageUrl,
    required this.dutation_project,
    required this.Area,
  });
}
