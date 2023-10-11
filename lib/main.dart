import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
        appBar: _getAppBar(),
        body: SafeArea(child: _getMainBody()),
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      title: Text('اشکان  یارپرور نگارستانی'),
      centerTitle: true,
    );
  }

  Widget _getMainBody() {
    return SingleChildScrollView(
      //child: Center(
      child: Column(
        children: [
          SizedBox(height: 10),
          CircleAvatar(
            backgroundImage: AssetImage('images/profile.png'),
            radius: 80,
          ),
          SizedBox(height: 12),
          Text('من اشکان یارپرور نگارستانی هستم '),
          SizedBox(height: 10),
          Text(
              'من در حال یادگیری و تمرین برنامه نویسی موبایل با فلاتر و دارت هستم'),
          SizedBox(height: 10),
          _getRowIcons(),
          SizedBox(height: 12),
          _getSkillCard(),
          SizedBox(height: 10),
          _getResume(),
          SizedBox(height: 10),
          _getHistoryColumn()
        ],
      ),
    );
  }

  Widget _getRowIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.telegram, color: Colors.grey),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.whatsapp, color: Colors.grey),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.instagram, color: Colors.grey),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.linkedin, color: Colors.grey),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.yahoo, color: Colors.grey),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.phone, color: Colors.grey),
        ),
      ],
    );
  }

  Widget _getSkillCard() {
    var List = ['flutter', 'android', 'dart', 'java', 'kotlin'];

    return Wrap(
      children: [
        for (var skil in List)
          Card(
            elevation: 6,
            shadowColor: Colors.black,
            child: Column(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  child: Image(
                    image: AssetImage('images/$skil.png'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('$skil'),
                ),
              ],
            ),
          )
      ],
    );
  }

  Widget _getResume() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      width: double.infinity,
      color: Colors.grey[200],
      child: Column(
        children: [
          Text(
            'سابقه کاری من',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _getHistoryColumn() {
    var List = [
      'من دارای مدرک کارشناسی ارشد مهندسی مکانیک',
      'لیسانس مهندسی تکنولوژی مکانیک خودرو',
      'چندین سال فروسنده موبال و لوازم جانبی موبایل همچنین نرم افزار موبایل',
      'حسابدار و تنخواه گردان چند شعبه کلینیک زیبایی در تهران'
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          width: double.infinity,
          height: 20,
        ),
        for (var title in List) Text(title, textDirection: TextDirection.rtl),
      ],
    );
  }
}
