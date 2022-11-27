import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:material_snackbar/material_snackbar.dart';
import 'package:sampleproject/sports_data.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              showToast('This is toast message !');
              showSnackbar(context, 'This is snackbar message !');
            },
            child: Icon(
              Icons.menu, // add custom icons also
            ),
          ),
          title: Text('Sports App'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: allSports.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () => {bottomSheet(context, allSports[index])},
                          //Sports Item List
                          child: Card(
                            margin: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 5.0),
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
                                        image: allSports[index].sportsIcon,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),

                                  //Sports Detail
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 5.0, right: 0, top: 0, bottom: 0),
                                    child: Column(
                                      children: [
                                        //Sports Title
                                        Text(
                                          textAlign: TextAlign.start,
                                          allSports[index].sportsTitle,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 24),
                                        ),
                                        SizedBox(height: 20),

                                        //Sports Description
                                        Text(
                                          textAlign: TextAlign.center,
                                          allSports[index].sportsNews,
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
                          ),
                        );

                        // return SportsItemList(
                        //   sportsData: allSports[index],
                        // );
                      }),
                )
              ]),
        ));
  }
}

// show snackbar
void showSnackbar(BuildContext context, String _message) {
  MaterialSnackBarMessenger.of(context).showSnackBar(
    alignment: Alignment.bottomCenter,
    padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
    snackbar: MaterialSnackbar(
      content: Text('$_message'),
    ),
  );
}

// show toast
void showToast(String _message) {
  Fluttertoast.showToast(
      msg: '$_message',
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 14.0);
}

//Sport Item Bottom Sheet
void bottomSheet(BuildContext context, SportsData allSports) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return Card(
          margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: Container(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Sports Icon
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: allSports.sportsIcon,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

                //Sports Title
                Text(
                  textAlign: TextAlign.start,
                  allSports.sportsTitle,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                SizedBox(height: 20),

                //Sports Description
                Text(
                  textAlign: TextAlign.center,
                  allSports.sportsNews,
                  maxLines: 1,
                  softWrap: true,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        );
      });
}
