import 'package:cardano_poc/components/funds_summary_section.dart';
import 'package:flutter/material.dart';

class WalletDashboard extends StatefulWidget {
  // final String walletName = 'Your Wallet';
  WalletDashboard({Key key}) : super(key: key);

  @override
  _WalletDashboardState createState() => _WalletDashboardState();
}

class _WalletDashboardState extends State<WalletDashboard> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Wallet'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        width: mediaQueryData.size.width,
        child: ListView(
          children: [
            FundsSummarySection(
              sectionTitle: 'Your Funds',
              availableFunds: '620.333444',
            ),
          ],
        ),
      ),
    );
  }
}
