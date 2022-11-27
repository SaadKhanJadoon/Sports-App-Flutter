import 'package:flutter/material.dart';
import 'package:sampleproject/sports_data.dart';

class SportsItemList extends StatelessWidget {
  final SportsData sportsData;
  SportsItemList({required this.sportsData});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Container(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            // Sports Icon
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: sportsData.sportsIcon,
                  fit: BoxFit.fill,
                ),
              ),
            ),

            //Sports Detail
            Container(
              padding:
                  const EdgeInsets.only(left: 5.0, right: 0, top: 0, bottom: 0),
              child: Column(
                children: [
                  //Sports Title
                  Text(
                    textAlign: TextAlign.start,
                    sportsData.sportsTitle,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  SizedBox(height: 20),

                  //Sports Description
                  Text(
                    textAlign: TextAlign.center,
                    sportsData.sportsNews,
                    maxLines: 1,
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 16,
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
