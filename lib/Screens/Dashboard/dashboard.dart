import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('ENSAT Absence'),
            backgroundColor: Color.fromARGB(255, 55, 109, 226),
          ),
          body: Column(
            children: [
              _buildDashboardCard(
                  context, Icons.dashboard, "Dashboard", '/profile'),
              _buildDashboardCard(
                  context, Icons.calendar_month, "Emploi", '/emploi'),
              _buildDashboardCard(
                  context, Icons.calendar_month, "Absence", '/absence'),
              _buildDashboardCard(context, Icons.mail, "Contact", '/contact'),
            ],
          ),
        ));
  }
}

InkWell _buildDashboardCard(
    BuildContext context, var icon, var text, String link) {
  return InkWell(
    onTap: () {
      Navigator.pushNamed(context, link);
    },
    child: SizedBox(
      height: 100,
      child: Card(
          elevation: 1,
          child: Center(
            child: ListTile(
              leading: Icon(icon),
              title: Text(text),
            ),
          )),
    ),
  );
}
