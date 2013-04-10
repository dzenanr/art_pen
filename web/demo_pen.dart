
import 'package:dartling/dartling.dart';
import 'package:dartling_default_app/dartling_default_app.dart';

import 'package:art_pen/art_pen.dart';
import 'package:art_pen/art_pen_app.dart';

main() {
  final repo = new ArtRepo();
  final board = new Board(repo);

  var pen = board.pen;
  pen.example(randomInt(pen.examples.length - 1));
}
