import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white30,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: SingleChildScrollView(
        child: Text(
          '2020 Ege Denizi Depremi, 30 Ekim 2020 günü Türkiye '
          'saati ile 14.51\'de, merkez üssü Yunanistan\'ın '
          'Sisam Adası açıklarında Türkiye\'nin İzmir ilinin '
          'Seferihisar ilçesine 23 km mesafede bulunan, yerin '
          '16,5 km altında 6,9 Mw büyüklüğünde meydana gelen '
          've yaklaşık 16 saniye süren depremdir.[1][8] Türkiye '
          've Yunanistan\'da toplam 119 kişinin ölümüne ve '
          '1053 kişinin ise yaralanmasına neden olan deprem, '
          '2020 yılında yeryüzünde meydana gelen depremler '
          'arasında en ölümcül deprem olarak kayıtlara geçti.',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
      height: 300,
      width: 350,
    );
  }
}
