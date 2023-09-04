import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pie_chart/pie_chart.dart';

class Holdings extends StatelessWidget {
  Holdings({super.key});
  final dataMap = <String, double>{
    "unused": 12,
    "Google": 5,
    "Apple": 3,
    "Nike": 2,
    "Meta": 2,
  };
  final colorList = <Color>[
    Color.fromARGB(0, 0, 0, 0),
    const Color(0xff0984e3),
    const Color(0xfffd79a8),
    const Color(0xffe17055),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      // height: 500,
      child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: ScrollPhysics(),
          children: [
            SizedBox(
              height: 100,
            ),
            Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 200,
                    height: 200,
                    child: PieChart(
                      centerText: "",
                      chartLegendSpacing: 50,
                      chartType: ChartType.ring,
                      ringStrokeWidth: 32,
                      colorList: colorList,
                      dataMap: dataMap,

                      legendOptions: LegendOptions(
                        showLegendsInRow: false,
                        legendPosition: LegendPosition.bottom,
                        showLegends: false,
                        legendShape: BoxShape.circle,
                        legendTextStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      chartValuesOptions: ChartValuesOptions(
                        showChartValueBackground: false,
                        showChartValues: false,
                        showChartValuesInPercentage: true,
                        showChartValuesOutside: true,
                      ),
                      // Rotate the chart to make it semicircular
                    ),
                  ),
                ),
                Positioned(
                  bottom: 100,
                  left: 150,
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          "\$ 15,901.24",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        RichText(
                            text: TextSpan(children: [
                          WidgetSpan(
                              child: Icon(
                            Icons.trending_up,
                            color: Colors.green,
                          )),
                          TextSpan(
                              text: "0.42%(\$ 6.23)",
                              style: TextStyle(color: Colors.green)),
                        ]))
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 340,
                color: Colors.grey.shade900,
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Container(
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.orange,
                          ),
                          title: Text("Google"),
                          subtitle: Text("Alphabet Inc"),
                          trailing: Text("41%\n \$ 6,537"),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        thickness: 15,
                        color: Colors.white,
                      );
                    },
                    itemCount: 4),
              ),
            )
          ]),
    );
  }
}
