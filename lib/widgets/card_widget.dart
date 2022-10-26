import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.name,
    required this.job,
    required this.rate,
    required this.image,
    required this.isFavorite,
    required this.function,
  });

  final String name;
  final String job;
  final double rate;
  final String image;
  final bool isFavorite;
  final Function function;

  @override
  Widget build(BuildContext context) {
    final dSize = MediaQuery.of(context).size;

    return SizedBox(
      width: 170,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        child: Column(
          children: [
            SizedBox(
                height: 100,
                width: double.infinity,
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                )),
            Container(
              padding: EdgeInsets.all(15),
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            IconlyBold.star,
                            size: 17,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('($rate)')
                        ],
                      ),
                      InkWell(
                        onTap: ()=> function(),
                          child: Icon(
                        isFavorite ? IconlyBold.heart : IconlyLight.heart,
                        size: 15,
                        color: isFavorite ? Colors.red : Colors.grey,
                      )),
                    ],
                  ),
                  Text(name),
                  Text(
                    job,
                    style: TextStyle(
                      color: Color(0xFF858d9f),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
