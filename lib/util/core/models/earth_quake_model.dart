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
        this.siddet,
        this.yer,
        this.tip,
    });

    String tarih;
    String saat;
    String enlem;
    String boylam;
    String derinlik;
    String siddet;
    String yer;
    String tip;

    factory EarthQuake.fromJson(Map<String, dynamic> json) => EarthQuake(
        tarih: json['tarih'],
        saat: json['saat'],
        enlem: json['enlem'],
        boylam: json['boylam'],
        derinlik: json['derinlik'],
        siddet: json['siddet'],
        yer: json['yer'],
        tip: json['tip'],
    );

    Map<String, dynamic> toJson() => {
        'tarih': tarih,
        'saat': saat,
        'enlem': enlem,
        'boylam': boylam,
        'derinlik': derinlik,
        'siddet': siddet,
        'yer': yer,
        'tip': tip,
    };
}