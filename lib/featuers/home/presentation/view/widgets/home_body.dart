import 'package:flutter/material.dart';
import 'package:quiz_app/featuers/home/presentation/view/widgets/items_home_body.dart';


class HomeBody extends StatefulWidget {
   HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return ItemsHomeBody();
  }
}
