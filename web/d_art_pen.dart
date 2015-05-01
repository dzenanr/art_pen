
import 'dart:html';

import 'package:dartling_default_app/dartling_default_app.dart';

import 'package:art_pen/art_pen.dart';
import 'package:art_pen/art_pen_app.dart';

void showData(ArtRepo repo) {
   var dataView = new View(document, "main");
   dataView.repo = repo;
   new RepoMainSection(dataView);
}

void main() {
  var repo = new ArtRepo();
  showData(repo);
  var board = new Board(repo);
  new Commands(board.pen);
}


