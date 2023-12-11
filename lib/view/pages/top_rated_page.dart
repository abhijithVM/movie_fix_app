import 'package:flutter/material.dart';

class TopRatedPage extends StatelessWidget {
  const TopRatedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .9,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return const ListTile(
                    leading: Icon(Icons.ac_unit),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
