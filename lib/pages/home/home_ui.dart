import 'package:flutter/material.dart';
import 'package:trabalho2bm/helpers/constants.dart';
import 'package:trabalho2bm/widget/counter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.grey[300]),
            height: 50,
            child: DropdownButton(
              isExpanded: true,
              underline: SizedBox(),
              value: "Junho",
              items: [
                'Junho',
                'Julho',
                'Agosto',
                'Setembro',
                'Outubro',
                'Novembro',
                'Dezembro',
                'Janeiro',
                'Fevereiro',
                'Março',
                'Abril',
                'Maio',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value, style: kSubTextStyle),
                );
              }).toList(),
              onChanged: (value) {},
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Counter(
                  color: kGreenColor,
                  number: 1046,
                  title: "Estoque",
                ),
                Counter(
                  color: kOrangeColor,
                  number: 87,
                  title: "Compra sugerida",
                ),
                Counter(
                  color: kRedColor,
                  number: 46,
                  title: "Disperçados",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.only(left: 40, right: 40, top: 0),
            padding: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0), color: kGreenColor),
            height: 70,
            width: double.infinity,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Adicionar",
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Container(
              margin: EdgeInsets.only(left: 40, right: 40, top: 0),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: kOrangeColor),
              height: 70,
              width: double.infinity,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Vendido",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 40, right: 40, top: 0),
            padding: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0), color: kRedColor),
            height: 70,
            width: double.infinity,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Remover",
                style: TextStyle(color: Colors.white, fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
