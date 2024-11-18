import 'package:bitaqwa_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:intl/intl.dart';

class HomeZakat extends StatefulWidget {
  HomeZakat({super.key});

  @override
  State<HomeZakat> createState() => _HomeZakatState();
}

class _HomeZakatState extends State<HomeZakat> {
  // controller angka
  final MoneyMaskedTextController moneyController = MoneyMaskedTextController(
      thousandSeparator: '.', 
      decimalSeparator: '', 
      precision: 0,
    );

  // jumlah harta
  double totalHarta = 0;

  double zakatDikeluarkan = 0;

  double minimumHarta = 85000000;

  // format dari variable
  String formatedHarta = "";

  String formatedZakatDikeluarkan = "";

  // function menghitung zakat
  void HitungZakat(){
    // input dari form
    String cleanValue = moneyController.text.replaceAll(".", "");
    // string ke double
    double inputValue = double.tryParse(cleanValue) ?? 0;
    // pengkondisian
    if (inputValue >= minimumHarta) {
      setState(() {
        totalHarta = inputValue;
        zakatDikeluarkan = (inputValue * 2.5) / 100;
        // formating rupiah
        formatedHarta = NumberFormat.currency(locale: 'id_ID', symbol: '').format(totalHarta);
        formatedZakatDikeluarkan = NumberFormat.currency(locale: 'id_ID', symbol: '').format(zakatDikeluarkan);
      });
    } else {
      // kurang dari 80 juta
      showDialog(context: context, builder: (context) => AlertDialog(
        title: Text("Peringatan!"),
        content: Text("Harta anda tidak mencapai Rp. 85.000.000"),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close)
          )
        ],
      ),);
    }
  }

  @override
  Widget build(BuildContext context) {

    Widget CardHarta (){
      return Container(
        margin: const EdgeInsets.all(24),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ColorApp.grey,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Total Harta",
              style: TextStyle(
                fontFamily: "poppinsMedium",
                color: ColorApp.primary,
              ),
            ),
            const SizedBox(height: 16,),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: moneyController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: ColorApp.primary)
                ),
                label: const Text("Masukkan Total Harta!"),
                labelStyle: const TextStyle(color: ColorApp.text),
                prefix: const Text("Rp. "),
                fillColor: ColorApp.white,
                filled: true,
              ),
            ),

            const SizedBox(height: 16,),

            ElevatedButton(
              onPressed: () {HitungZakat();},
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorApp.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                minimumSize: Size(double.infinity, 0),
                padding: EdgeInsets.all(16)
              ),
              child: const Text(
                "Ok",
                style: TextStyle(
                  color: ColorApp.white
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget CardResult (){
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.red[300]!,

            ),
            child: Column(
              children: [
                const Text(
                  "Total uang",
                  style: TextStyle(
                    color: ColorApp.white,
                  ),
                ),

                const SizedBox(height: 32,),

                Text(
                  "Rp. ${formatedHarta}",
                  style: const TextStyle(
                    color: ColorApp.white,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(width: 32,),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.purple[300]!,

            ),
            child: Column(
              children: [
                const Text(
                  "Zakat Dikeluarkan",
                  style: TextStyle(
                    color: ColorApp.white,
                  ),
                ),

                const SizedBox(height: 32,),

                Text(
                  "Rp. ${formatedZakatDikeluarkan}",
                  style: const TextStyle(
                    color: ColorApp.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(

      appBar: AppBar(
        backgroundColor: ColorApp.primary,
        title: const Text(
          "Zakat",
          style: TextStyle(
            fontFamily: "PoppinsMedium",
            color: ColorApp.white
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined,),
          color: ColorApp.white,
        ),
      ),

      body: ListView(
        children: [
          Image.asset("assets/images/bg_header_zakat.png", fit: BoxFit.cover,),
          CardHarta(),
          CardResult(),
        ],
      ),
    );
  }
}