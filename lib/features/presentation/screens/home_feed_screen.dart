import 'package:ecomerce/core/widgets/titlebar.dart';
import 'package:flutter/material.dart';

class HomeFeedScreen extends StatefulWidget {
  const HomeFeedScreen({super.key});

  @override
  State<HomeFeedScreen> createState() => _HomeFeedScreenState();
}

class _HomeFeedScreenState extends State<HomeFeedScreen> {
  TextEditingController searchcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Form(
            key: _formKey,
            child: Container(
              height: 50,
              margin: EdgeInsets.symmetric(),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextFormField(
                controller: searchcontroller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  label: Text("Search"),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),
          Titlebar(title: "Categories", index: 1),
        ],
      ),
    );
  }
}
