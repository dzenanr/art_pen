
import 'dart:html';

import 'package:dartling/dartling.dart';
import 'package:dartling_default_app/dartling_default_app.dart';

import 'package:art_pen/art_pen.dart';
import 'package:art_pen/art_pen_app.dart';

showData(ArtRepo repo) {
   var dataView = new View(document, "main");
   dataView.repo = repo;
   new RepoMainSection(dataView);
}

main() {
  var repo = new ArtRepo();
  showData(repo);
  var board = new Board(repo);
  new Commands(board.pen);
}


