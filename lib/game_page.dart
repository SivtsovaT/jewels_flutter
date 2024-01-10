import 'package:flutter/material.dart';
import 'package:reorderable_grid/reorderable_grid.dart';

class GamePage extends StatefulWidget {
  const GamePage({
    Key? key,
  }) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  List items = [
    [1, 1],
    [2, 3],
    [3, 1],
    [4, 2],
    [5, 1],
    [6, 4],
    [7, 3],
    [8, 1],
    [9, 2],
    [10, 4],
    [11, 3],
    [12, 4],
    [13, 3],
    [14, 2],
    [15, 4],
    [16, 2]
  ];

  String resultDeclaration = '';
  int score = 0;
  bool isMatched = false;
  int round = 1;

  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      final item = items.removeAt(oldIndex);
      items.insert(newIndex, item);
    });
    _checkWinner();
  }

  void _checkWinner() {
    //check 1 row
    if (items[0][1] == items[1][1] && items[0][1] == items[2][1]) {
      setState(() {
        resultDeclaration = 'You won! 3 elements matched!';
        score = score + 10;
        items[0][1] = 5;
        items[1][1] = 5;
        items[2][1] = 5;
      });
      Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          items[0][1] = 1;
          items[1][1] = 3;
          items[2][1] = 1;
        });
      });
      Future.delayed(const Duration(milliseconds: 1500), () {
        _startNewRound();
        setState(() {
          round++;
        });
      });
    }
    if (items[1][1] == items[2][1] && items[1][1] == items[3][1]) {
      setState(() {
        resultDeclaration = 'You won! 3 elements matched!';
        score = score + 10;
        items[1][1] = 5;
        items[2][1] = 5;
        items[3][1] = 5;
      });
      Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          items[1][1] = 3;
          items[2][1] = 1;
          items[3][1] = 2;
        });
      });
      Future.delayed(const Duration(milliseconds: 1500), () {
        _startNewRound();
        setState(() {
          round++;
        });
      });
    }

    //check 2 row
    if (items[4][1] == items[5][1] && items[4][1] == items[6][1]) {
      setState(() {
        resultDeclaration = 'You won!!!';
        score = score + 10;
        items[4][1] = 5;
        items[5][1] = 5;
        items[6][1] = 5;
      });
      Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          items[4][1] = 2;
          items[5][1] = 1;
          items[6][1] = 4;
        });
      });
      Future.delayed(const Duration(milliseconds: 1500), () {
        _startNewRound();
        setState(() {
          round++;
        });
      });
    }
    if (items[5][1] == items[6][1] && items[5][1] == items[7][1]) {
      setState(() {
        resultDeclaration = 'You won!!!';
        score = score + 10;
        items[5][1] = 5;
        items[6][1] = 5;
        items[7][1] = 5;
      });
      Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          items[5][1] = 1;
          items[6][1] = 4;
          items[7][1] = 3;
        });
      });
      Future.delayed(const Duration(milliseconds: 1500), () {
        _startNewRound();
        setState(() {
          round++;
        });
      });
    }

    //check 3 row
    if (items[8][1] == items[9][1] && items[8][1] == items[10][1]) {
      setState(() {
        resultDeclaration = 'You won!!!';
        score = score + 10;
        items[8][1] = 5;
        items[9][1] = 5;
        items[10][1] = 5;
      });
      Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          items[8][1] = 3;
          items[9][1] = 1;
          items[10][1] = 2;
        });
      });
      Future.delayed(const Duration(milliseconds: 1500), () {
        _startNewRound();
        setState(() {
          round++;
        });
      });
    }
    if (items[9][1] == items[10][1] && items[9][1] == items[11][1]) {
      setState(() {
        resultDeclaration = 'You won!!!';
        score = score + 10;
        items[9][1] = 5;
        items[10][1] = 5;
        items[11][1] = 5;
      });
      Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          items[9][1] = 1;
          items[10][1] = 2;
          items[11][1] = 4;
        });
      });
      Future.delayed(const Duration(milliseconds: 1500), () {
        _startNewRound();
        setState(() {
          round++;
        });
      });
    }

    //check 4 row
    if (items[12][1] == items[13][1] && items[12][1] == items[14][1]) {
      setState(() {
        resultDeclaration = 'You won!!!';
        score = score + 10;
        items[12][1] = 5;
        items[13][1] = 5;
        items[14][1] = 5;
      });
      Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          items[12][1] = 4;
          items[13][1] = 3;
          items[14][1] = 4;
        });
      });
      Future.delayed(const Duration(milliseconds: 1500), () {
        _startNewRound();
        setState(() {
          round++;
        });
      });
    }
    if (items[13][1] == items[14][1] && items[13][1] == items[15][1]) {
      setState(() {
        resultDeclaration = 'You won!!!';
        score = score + 10;
        items[13][1] = 5;
        items[14][1] = 5;
        items[15][1] = 5;
      });
      Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          items[13][1] = 3;
          items[14][1] = 4;
          items[15][1] = 3;
        });
      });
      Future.delayed(const Duration(milliseconds: 1500), () {
        _startNewRound();
        setState(() {
          round++;
        });
      });
    }

    //check 1 column
    if (items[0][1] == items[4][1] && items[0][1] == items[8][1]) {
      setState(() {
        resultDeclaration = 'You won!!!';
        score = score + 10;
        items[0][1] = 5;
        items[4][1] = 5;
        items[8][1] = 5;
      });
      Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          items[0][1] = 1;
          items[4][1] = 1;
          items[8][1] = 2;
        });
      });
      Future.delayed(const Duration(milliseconds: 1500), () {
        _startNewRound();
        setState(() {
          round++;
        });
      });
    }
    if (items[4][1] == items[8][1] && items[4][1] == items[12][1]) {
      setState(() {
        resultDeclaration = 'You won!!!';
        score = score + 10;
        items[4][1] = 5;
        items[8][1] = 5;
        items[12][1] = 5;
      });
      Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          items[4][1] = 1;
          items[8][1] = 2;
          items[12][1] = 3;
        });
      });
      Future.delayed(const Duration(milliseconds: 1500), () {
        _startNewRound();
        setState(() {
          round++;
        });
      });
    }

    //check 2 column
    if (items[1][1] == items[5][1] && items[1][1] == items[9][1]) {
      setState(() {
        resultDeclaration = 'You won!!!';
        items[1][1] = 5;
        items[5][1] = 5;
        items[9][1] = 5;
      });
      Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          items[1][1] = 3;
          items[5][1] = 4;
          items[9][1] = 4;
        });
      });
      Future.delayed(const Duration(milliseconds: 1500), () {
        _startNewRound();
        setState(() {
          round++;
        });
      });
    }
    if (items[5][1] == items[9][1] && items[5][1] == items[13][1]) {
      setState(() {
        resultDeclaration = 'You won!!!';
        items[5][1] = 5;
        items[9][1] = 5;
        items[13][1] = 5;
      });
      Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          items[5][1] = 4;
          items[9][1] = 4;
          items[13][1] = 3;
        });
      });
      Future.delayed(const Duration(milliseconds: 1500), () {
        _startNewRound();
        setState(() {
          round++;
        });
      });
    }

    //check 3 column
    if (items[2][1] == items[6][1] && items[2][1] == items[10][1]) {
      setState(() {
        resultDeclaration = 'You won!!!';
        score = score + 10;
        items[2][1] = 5;
        items[6][1] = 5;
        items[10][1] = 5;
      });
      Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          items[2][1] = 1;
          items[6][1] = 3;
          items[10][1] = 3;
        });
      });
      Future.delayed(const Duration(milliseconds: 1500), () {
        _startNewRound();
        setState(() {
          round++;
        });
      });
    }

    if (items[6][1] == items[10][1] && items[6][1] == items[14][1]) {
      setState(() {
        resultDeclaration = 'You won!!!';
        score = score + 10;
        items[6][1] = 5;
        items[10][1] = 5;
        items[14][1] = 5;
      });
      Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          items[6][1] = 3;
          items[10][1] = 3;
          items[14][1] = 4;
        });
      });
      Future.delayed(const Duration(milliseconds: 1500), () {
        _startNewRound();
        setState(() {
          round++;
        });
      });
    }

    //check 4 column
    if (items[3][1] == items[7][1] && items[3][1] == items[11][1]) {
      setState(() {
        resultDeclaration = 'You won!!!';
        score = score + 10;
        items[3][1] = 5;
        items[7][1] = 5;
        items[11][1] = 5;
      });
      Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          items[3][1] = 2;
          items[7][1] = 1;
          items[11][1] = 4;
        });
      });
      Future.delayed(const Duration(milliseconds: 1500), () {
        _startNewRound();
        setState(() {
          round++;
        });
      });
    }

    if (items[7][1] == items[11][1] && items[7][1] == items[15][1]) {
      setState(() {
        resultDeclaration = 'You won!!!';
        score = score + 10;
        items[7][1] = 5;
        items[11][1] = 5;
        items[15][1] = 5;
      });
      Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          items[7][1] = 1;
          items[11][1] = 4;
          items[15][1] = 2;
        });
      });
      Future.delayed(const Duration(milliseconds: 1500), () {
        _startNewRound();
        setState(() {
          round++;
        });
      });
    }
  }

  void _startNewRound() {
    setState(() {
      if (round.isEven) {
        items = items;
      } else {
        items = items.reversed.toList();
      }

      resultDeclaration = '';
    });
  }

  @override
  void initState() {
    _checkWinner();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            Text(
              resultDeclaration,
              style: const TextStyle(
                color: Colors.purpleAccent,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Round: $round',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Total score: $score',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            SizedBox(
              height: 200,
              width: 200,
              child: ReorderableGridView.extent(
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                maxCrossAxisExtent: 50,
                onReorder: _onReorder,
                childAspectRatio: 1,
                children: items.map((item) {
                  return Container(
                    decoration: BoxDecoration(
                      color: item[1].toString() == '1'
                          ? Colors.red
                          : item[1].toString() == '2'
                              ? Colors.green
                              : item[1].toString() == '3'
                                  ? Colors.yellow
                                  : item[1].toString() == '4'
                                      ? Colors.blue
                                      : Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    key: ValueKey(item),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 50),
            OutlinedButton(
              onPressed: () {
                _startNewRound();
                setState(() {
                  score = 0;
                  round = 1;
                });
              },
              child: const Text('Clear all'),
            ),
          ],
        ),
      ),
    );
  }
}
