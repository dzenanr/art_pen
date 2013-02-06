part of art_pen_app;

class Commands {

  final Pen pen;

  ButtonElement showButton;
  ButtonElement clearButton;
  ButtonElement drawButton;
  TextAreaElement commandsTextArea;

  Commands(this.pen) {
    showButton = document.query('#show');
    showButton.onClick.listen((MouseEvent e) {
      clear();
      commandsTextArea.value = pen.fromCommands();
      commandsTextArea.select();
    });

    clearButton = document.query('#clear');
    clearButton.onClick.listen((MouseEvent e) {
      clear();
    });

    drawButton = document.query('#draw');
    drawButton.onClick.listen((MouseEvent e) {
      pen.interpret(commandsTextArea.value);
    });

    commandsTextArea = document.query('#commands');
  }

  clear() => commandsTextArea.value = '';
}
