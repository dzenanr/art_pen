
import 'dart:html';
import 'dart:isolate';
import 'dart:math';

import 'package:dartling/dartling.dart';
import 'package:dartling/dartling_app.dart';

import 'package:art_pen/art_pen.dart';
import 'package:art_pen/art_pen_app.dart';

showData(ArtRepo repo) {
   var dataView = new View(document, "main");
   dataView.repo = repo;
   new RepoMainSection(dataView);
}

demo(Pen pen) {
  // http://blog.zacharyabel.com/tag/turtle-programs/
  //demo086(pen);
  //demo087(pen);
  //demo088(pen);
  //demo089(pen);
  //demo090(pen);
  demo091(pen);
}

main() {
  var repo = new ArtRepo();
  showData(repo);
  var board = new Board(repo);
  new Commands(board.pen);
  
  //demo(board.pen);
}


