import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tradingapp/constants/appconstants.dart';

class StockFile extends StatelessWidget {
  const StockFile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      children: [
        headingbar(),
        widgetSpacersmall,
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "Your net worth",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        amount(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: depositwidrowbuttons(),
        ),
        ListTile(
          leading: Text(
            "My Portfolio",
            style: TextStyle(color: Colors.grey),
          ),
          trailing: Text(
            "View All",
            style: TextStyle(color: Colors.blue),
          ),
        ),
        horizontalPortfolio(),
        ListTile(
          leading: Text(
            "Trending",
            style: TextStyle(color: Colors.grey),
          ),
          trailing: Text(
            "View Market",
            style: TextStyle(color: Colors.blue),
          ),
        ),
        verticaltreding()
      ],
    );
  }

  Row depositwidrowbuttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Get.isDarkMode ? Colors.white : Colors.black,
                minimumSize: Size(185, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
            onPressed: () {},
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "Deposit",
                  style: TextStyle(
                      color: Get.isDarkMode ? Colors.black : Colors.white,
                      fontSize: 20)),
              // WidgetSpan(
              //   child: Icon(
              //     Icons.download_outlined,
              //     color: Colors.black,
              //   ),
              // ),
            ]))),
        OutlinedButton(
            style: ElevatedButton.styleFrom(
                side: BorderSide(
                    width: 2,
                    color: Get.isDarkMode ? Colors.white : Colors.black),
                backgroundColor: Colors.transparent,
                minimumSize: Size(185, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
            onPressed: () {},
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "Widrow",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Get.isDarkMode ? Colors.white : Colors.black)),
              // WidgetSpan(child: Icon(Icons.upload)
              // ),
            ])))
      ],
    );
  }

  ListTile headingbar() {
    return ListTile(
      leading:
          Image(width: 40, height: 40, image: AssetImage('assets/investo.png')),
      title: Text(
        "Investo",
        style: Get.isDarkMode
            ? textStyle.copyWith(fontSize: 30, color: Colors.grey.shade300)
            : textStyle.copyWith(fontSize: 30, color: Colors.black),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            iconSize: 30,
          )
        ],
      ),
    );
  }
}

class verticaltreding extends StatelessWidget {
  const verticaltreding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.separated(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                  child: ListTile(
                leading: Image(image: AssetImage('assets/nike.png')),
                title: Text("Nike"),
                subtitle: Text("Nike Inc"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image(image: AssetImage('assets/applegraph.png')),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(text: '\$ 192.144 \n'),
                      WidgetSpan(child: Icon(Icons.trending_up)),
                      TextSpan(
                          text: '192.144',
                          style: TextStyle(color: Colors.green))
                    ]))
                  ],
                ),
              ));
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 20,
              );
            },
            itemCount: 10));
  }
}

class horizontalPortfolio extends StatelessWidget {
  const horizontalPortfolio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.separated(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return horizontalbuilderContainer(
              iconString: 'assets/google.png',
              title: 'Google',
              subtitle: 'Alphabet inc',
              graph: 'assets/googlegraph.png',
              priceindol: "234.45",
              pricetrending: "345.45",
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 20,
            );
          },
          itemCount: 10),
    );
  }
}

class horizontalbuilderContainer extends StatelessWidget {
  const horizontalbuilderContainer(
      {super.key,
      required this.iconString,
      required this.title,
      required this.graph,
      required this.priceindol,
      required this.pricetrending,
      required this.subtitle});
  final iconString;
  final title;
  final subtitle;
  final graph;
  final priceindol;
  final pricetrending;
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green,
      width: 200,

      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),

      child: Column(
        children: [
          ListTile(
            leading: Container(
              width: 40,
              height: 40,
              child: Image(
                image: AssetImage(iconString),
              ),
            ),
            title: Text(title),
            subtitle: Text(
              subtitle,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Image(image: AssetImage(graph)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$ ${priceindol}"),
                RichText(
                    text: TextSpan(children: [
                  WidgetSpan(
                      child: Icon(
                    Icons.trending_up,
                    color: Colors.green,
                  )),
                  TextSpan(
                      text: pricetrending,
                      style: TextStyle(color: Colors.green))
                ])),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class amount extends StatelessWidget {
  const amount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "\$", style: TextStyle(color: Colors.grey, fontSize: 20)),
            TextSpan(
                text: "15,901",
                style: Get.isDarkMode
                    ? TextStyle(fontSize: 30)
                    : TextStyle(fontSize: 30, color: Colors.black)),
            TextSpan(
                text: ".91", style: TextStyle(fontSize: 30, color: Colors.grey))
          ])),
          RichText(
              text: TextSpan(children: [
            WidgetSpan(
              child: Icon(Icons.trending_up, color: Colors.green, size: 14),
            ),
            TextSpan(text: " 0.42 % ", style: TextStyle(color: Colors.green)),
            TextSpan(text: "\n \$ 66.25", style: TextStyle(color: Colors.grey))
          ]))
        ],
      ),
    );
  }
}
