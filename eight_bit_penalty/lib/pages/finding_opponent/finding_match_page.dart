import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../models/match_score_model.dart';
import '../../widgets/my_container.dart';
import '../../widgets/my_scaffold.dart';
import '../match/kicker_match_page.dart';

class FindingMatchPage extends StatefulWidget {
  @override
  _FindingMatchPageState createState() => _FindingMatchPageState();
}

class _FindingMatchPageState extends State<FindingMatchPage> {
  @override
  void initState() {
    super.initState();
    delayToNavigate();
  }

  Future delayToNavigate() async {
    return await Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              // ignore: lines_longer_than_80_chars
              //Implementar regra de quem entrou na sala primeiro ser o chutador.
              builder: (context) => KickerMatchPage(
                    matchScoreModel: MatchScoreModel(),
                  )));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: MyContainer(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              Text('Searching an opponent'),
            ],
          ),
        ),
      ),
    );
  }
}
