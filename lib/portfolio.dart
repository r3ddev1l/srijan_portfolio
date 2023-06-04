import 'package:flutter/material.dart';
import 'package:srijan_portfolio/components/about.dart';
import 'package:srijan_portfolio/components/education.dart';

import 'components/footer.dart';
import 'components/skills.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<Widget> navItems = [];
  bool isMobile = false;
  final GlobalKey skillsKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    navItems = [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: () {}, child: const Text("Education")),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: () {
              Scrollable.ensureVisible(
                skillsKey.currentContext!,
              );
            },
            child: const Text("Skills")),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Srijan Maharjan"),
        actions: isMobile ? null : navItems,
      ),
      drawer: isMobile
          ? Drawer(
              child: ListView(
                children: navItems,
              ),
            )
          : null,
      body: SingleChildScrollView(
        // controller: controller,
        child: Center(
          child: Column(
            children: [
              const Wrap(
                alignment: WrapAlignment.center,
                children: [
                  About(),
                  SizedBox(
                    width: 20,
                  ),
                  Education(),
                ],
              ),
              Skills(
                key: skillsKey,
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
