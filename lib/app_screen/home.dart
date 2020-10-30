import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 10.0, top: 40.0),
        alignment: Alignment.center,
        color: Colors.deepOrangeAccent,
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Expanded(
                    child: Text(
                  "Aagni Air",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 35.0,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                )),
                Expanded(
                  child: Text(
                    "From Chitwan to Jumla",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 25.0,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Text(
                  "Buddha Air",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 35.0,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                )),
                Expanded(
                    child: Text(
                  "From Kathmandu to Pokhara",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 25.0,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                )),
              ],
            ),
            FlightImageAsset(),
            FlightBookButton()
          ],
        ),
      ),
    );
  }
}

class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/plane3.png');
    Image image = Image(
      image: assetImage,
      height: 350.0,
    );
    return Container(child: image);
  }
}

class FlightBookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: 0.0), //space between the image and the button
      width: 250.0,
      height: 50.0,

      child: RaisedButton(
        color: Colors.deepPurpleAccent,
        child: Text(
          "Book your Flight",
          style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontFamily: 'Lato',
              fontWeight: FontWeight.w700),
        ),
        elevation:
            8.0, // button is slighly raised up so that there is a dark light behing the button
        onPressed: () => bookFlight(context),
      ),
    );
  }

  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Flight Booked Successfully"),
      content: Text("Have a  pleasent flight"),
    );

    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }
}
