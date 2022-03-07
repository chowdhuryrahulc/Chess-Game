// ignore_for_file: avoid_print, prefer_const_literals_to_create_immutables
// ignore: todo
import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';

class ChessGame extends StatefulWidget {
  const ChessGame({Key? key}) : super(key: key);

  @override
  State<ChessGame> createState() => _ChessGameState();
}

class _ChessGameState extends State<ChessGame> {
  ChessBoardController chessBoardController = ChessBoardController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ChessBoard(
              controller: chessBoardController,
              size: MediaQuery.of(context).size.width,
              enableUserMoves: true, // for MUltiplayer
              boardColor: BoardColor.green,
              )
            ],
        ),
      ),
    );
  }
}
