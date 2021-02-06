import 'dart:convert';

List<EarthQuake> earthQuakeFromJson(String str) => List<EarthQuake>.from(json.decode(str).map((x) => EarthQuake.fromJson(x)));

String earthQuakeToJson(List<EarthQuake> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class EarthQuake {
    EarthQuake({
        this.tarih,
        this.saat,
        this.enlem,
        this.boylam,
        this.derinlik,
        this.buyukluk,
        this.yer,
        this.sehir,
    });

    String tarih;
    String saat;
    String enlem;
    String boylam;
    String derinlik;
    String buyukluk;
    String yer;
    String sehir;

    factory EarthQuake.fromJson(Map<String, dynamic> json) => EarthQuake(
        tarih: json['tarih'],
        saat: json['saat'],
        enlem: json['enlem'],
        boylam: json['boylam'],
        derinlik: json['derinlik'],
        buyukluk: json['buyukluk'],
        yer: json['yer'],
        sehir: json['sehir'],
    );

    Map<String, dynamic> toJson() => {
        'tarih': tarih,
        'saat': saat,
        'enlem': enlem,
        'boylam': boylam,
        'derinlik': derinlik,
        'buyukluk': buyukluk,
        'yer': yer,
        'sehir': sehir,
    };
}