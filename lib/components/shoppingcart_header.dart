
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart/constants.dart';

class ShoppingCartHeader extends StatefulWidget{
  const ShoppingCartHeader({Key? key}) : super(key: key);

  // 이게 퍼블릭api여서 _를 붙이면 오류가 뜨네
  @override
  ShoppingCartHeaderState createState() => ShoppingCartHeaderState();
}

class ShoppingCartHeaderState  extends State<ShoppingCartHeader> {

  int selectedId = 2;

  List<String> selectedPic = [
    "assets/p1.jpeg",
    "assets/p2.jpeg",
    "assets/p3.jpeg",
    "assets/p4.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print("다시그려짐");
    return Column(
      children: [
        _buildHeaderPic(),
        _buildHeaderSelector(),
      ],
    );
  }

  Widget _buildHeaderPic() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: AspectRatio(
        aspectRatio: 5/3,
          child: Image.asset(
            selectedPic[selectedId],
            fit: BoxFit.cover,
          ),
      ),
    );
  }

  Widget _buildHeaderSelector() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildHeaderSelectorButton(0,Icons.directions_bike),
          _buildHeaderSelectorButton(1,Icons.motorcycle),
          _buildHeaderSelectorButton(2, CupertinoIcons.car_detailed),
          _buildHeaderSelectorButton(3, CupertinoIcons.airplane),
        ],
      ),
    );
  }

  Container _buildHeaderSelectorButton(int id, IconData mIcon) {
    return Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: id == selectedId ? kAccentColor : kSecondColor,
          borderRadius: BorderRadius.circular(20),

        ),
        child: IconButton(
          onPressed: () {
            print("id: $id");
            setState(() {
              selectedId = id;
            });
            },
          icon: Icon(
            mIcon,
            color: Colors.black,
            size: 25,
          ),
        ),
      );
  }
}