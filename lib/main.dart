import 'package:flutter/material.dart';
import 'banner.dart';
import 'custom_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ต่อพรบ.ออนไลน์',
      home: MyHomePage(
        newsList: [
          NewsItem(
            imagePath: 'images/ed01e8c5-69c5-41c3-bdbd-c96d9b79fb7f.jpg',
            topic: 'ป้ายภาษี กับ พ.ร.บ. คืออะไร?',
            customSum:
                'ป้ายภาษีรถยนต์ คืออะไร? ... ป้ายภาษีรถยนต์ หรือ เครื่องหมายแสดงการเสียภาษีประจำปีคืออะไร?',
            detail: [
              'ป้ายภาษี คือ ป้ายสี่เหลี่ยมขนาดเล็ก เท่าฝ่ามือ สีชมพูฟ้า มี (ระบุ) ปี พ.ศ. ตัวใหญ่',
              '',
              'ในการต่อภาษี จะต้องต่อ พ.ร.บ.ก่อนเท่านั้น ถึงจะสามารถต่อภาษีรถยนต์ได้',
              '',
              'พรบ รถยนต์ คือ “ประกันภัยภาคบังคับ” เป็นกระดาษมีขนาดเท่า A4 ที่ออกให้โดยบริษัทประกันภัย',
              '',
              '- รถเก๋ง, กระบะ 4 ประตู 645 บาท',
              '- กระบะ 2 ประตู แคป 967 บาท',
              '- รถตู้ (ส่วนบุคคล) 1,182 บาท',
              '-----------------------------------------',
              'เอกสารที่ใช้ต่อ พ.ร.บ.ออนไลน์',
              '1.) สำเนาหน้าเล่มรถ',
              '2.) วันที่เริ่มคุ้มครอง',
              '3.) เบอร์โทรศัพท์',
              'ลูกค้าจะได้ไฟล์กรมธรรม์ e-policy ภายใน 10นาที สามารถปริ้นนำไปต่อภาษีได้เลย',
            ],
          ),
          NewsItem(
            imagePath: 'images/267ab53c-2b7b-428d-9a75-5cf32994dc44.jpg',
            topic: 'ประกันชั้น 1 ที่คุ้มครองครบถ้วนที่สุด',
            customSum:
                '💥 ประกันชั้น 1 คุ้มครองครบถ้วนที่สุด รถชน ขีดข่วน กระจกแตก รถหาย ไฟไหม้ น้ำท่วม เคลมได้แม้ไม่มีคู่กรณี',
            detail: [
              '💥 ประกันชั้น 1 คุ้มครองครบถ้วนที่สุด รถชน ขีดข่วน กระจกแตก รถหาย ไฟไหม้ น้ำท่วม เคลมได้แม้ไม่มีคู่กรณี',
              '1. วิริยะประกันภัย ขายดีมาก!',
              '2. กรุงเทพประกันภัย ขายดี',
              '3. ธนชาตประกันภัย ขายดี',
              '4. แอกซ่าประกันภัย ขายดี',
              '5. ประกันภัยไทยวิวัฒน์ ขายดี',
              '6. โตเกียวมารีนประกันภัย ขายดี',
              '7. อลิอันซ์อยุธยาประกันภัย ขายดี',
              '✅ ผ่อนเงินสด 0% 10 เดือน',
              '✅ แบ่งจ่ายเท่ากันทุกงวด',
              '✅ คุ้มครองตั้งแต่งวดแรก',
              '✅ รับผ่อนบัตร~ผ่อนเงินสด',
            ],
          ),
        ],
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<NewsItem> newsList;

  MyHomePage({required this.newsList});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SafeArea(
                  child: BannerSlider(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'เลือกบริการ:',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: CustomSmallPageButton(
                            buttonText: 'ต่อภาษี',
                            imagePath:
                                'images/4c5ce204-5311-4622-8549-9cf431b40c4f.jpg',
                          ),
                        ),
                        SizedBox(width: 5), // Add space between buttons
                        Expanded(
                          child: CustomSmallPageButton(
                            buttonText: 'ต่อ.พรบ',
                            imagePath:
                                'images/17f80b44-1768-417b-84d0-7c434a2bfcac.jpg',
                          ),
                        ),
                        SizedBox(width: 5), // Add space between buttons
                        Expanded(
                          child: CustomSmallPageButton(
                            buttonText: 'ต่อประกัน',
                            imagePath:
                                'images/400b53d1-6981-4b5f-91c0-77b367cc79c4.jpg',
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ข่าวสาร:',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: newsList.map((news) {
                      return buildNewsBox(
                        context,
                        imagePath: news.imagePath,
                        topic: news.topic,
                        customSum: news.customSum,
                        detail: news.detail,
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ContactButton(
                    url: 'https://lin.ee/yDLQhKj',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildNewsBox(BuildContext context,
      {required String imagePath,
      required String topic,
      required String customSum,
      required List<String> detail}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => NewsDetailPage(
                  imagePath: imagePath, topic: topic, detail: detail)),
        );
      },
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    topic,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    customSum,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewsItem {
  final String imagePath;
  final String topic;
  final String customSum;
  final List<String> detail;

  NewsItem(
      {required this.imagePath,
      required this.topic,
      required this.customSum,
      required this.detail});
}

class NewsDetailPage extends StatelessWidget {
  final String imagePath;
  final String topic;
  final List<String> detail;

  NewsDetailPage(
      {required this.imagePath, required this.topic, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(topic),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(height: 20),
              Text(
                topic,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: detail.map((point) {
                    return Text(
                      point,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
