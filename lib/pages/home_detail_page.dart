import 'package:flutter/material.dart';
import 'package:open_app/models/catalog.dart';
import 'package:open_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({super.key, required this.catalog});

  final Item catalog;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("More details on ${catalog.name}"),
        centerTitle: true,
      ),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl2.make(),
            ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(MyTheme.darkBluishColor),
                        shape:
                            MaterialStateProperty.all(const StadiumBorder())),
                    child: "Add to cart".text.bold.make())
                .wh(120, 40)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image))
                .h32(context),
            Expanded(
                child: VxArc(
              height: 30.0,
              edge: VxEdge.top,
              arcType: VxArcType.convey,
              child: Container(
                color: Colors.white,
                width: context.screenWidth,
                child: Column(children: [
                  catalog.name.text.xl4
                      .color(MyTheme.darkBluishColor)
                      .bold
                      .make(),
                  catalog.desc.text.xl.caption(context).make(),
                  5.heightBox,
                  "Elitr rebum vero accusam ea et diam est dolores lorem, eos consetetur ut consetetur et ut dolores, clita et ut kasd at sadipscing dolores dolor aliquyam, diam dolore amet lorem dolor eos duo rebum invidunt. Ipsum sit lorem et sea accusam stet sit sit tempor. Et sanctus amet dolor et."
                      .text
                      .caption(context)
                      .make()
                      .p16()
                ]).py64(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
