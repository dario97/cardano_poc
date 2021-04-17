import 'package:flutter/material.dart';

class FundsSummarySection extends StatelessWidget {
  final String sectionTitle;
  final String availableFunds;
  const FundsSummarySection({Key key, this.sectionTitle, this.availableFunds})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(this.sectionTitle, style: TextStyle(fontSize: 20)),
          SizedBox(
            height: 5,
          ),
          Card(
              margin: EdgeInsets.all(0),
              child: Column(
                children: [_availableFunds()],
              )),
        ],
      ),
    );
  }

  ListTile _availableFunds() {
    return ListTile(
      title: Text(
        'Available funds:',
      ),
      subtitle: Text(
        this.availableFunds,
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18),
      ),
      trailing: TextButton(
        onPressed: null,
        child: Text(
          'Send',
          style: TextStyle(color: Colors.white),
        ),
        style: TextButton.styleFrom(
            elevation: 3,
            backgroundColor: Colors.blue,
            minimumSize: Size(80, 38)),
      ),
    );
  }
}
