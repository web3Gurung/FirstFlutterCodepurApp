import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:open_app/models/catalog.dart';
import 'package:open_app/widgets/home_widgets/catalog_header.dart';
import 'package:open_app/widgets/home_widgets/catalog_list.dart';
import 'package:open_app/widgets/themes.dart';
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodeData = jsonDecode(catalogJson);
    final productsData = decodeData["products"];

    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyTheme.creamColor,
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CatalogHeader(),
                if (CatalogModel.items.isNotEmpty)
                  const CatalogList().py16().expand()
                else
                  const CircularProgressIndicator().centered().py16().expand(),
              ],
            ),
          ),
        ));
  }
}
