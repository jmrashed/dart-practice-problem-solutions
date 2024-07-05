import 'dart:html';

void main() {
  // Get references to the HTML elements
  final InputElement num1Input = querySelector('#num1') as InputElement;
  final InputElement num2Input = querySelector('#num2') as InputElement;
  final ButtonElement sumButton = querySelector('#sumButton') as ButtonElement;
  final ParagraphElement result = querySelector('#result') as ParagraphElement;

  // Add event listener to the button
  sumButton.onClick.listen((event) {
    // Get the values from the input fields
    final num1 = num.parse(num1Input.value ?? '0');
    final num2 = num.parse(num2Input.value ?? '0');

    // Calculate the sum
    final sum = num1 + num2;

    // Display the result
    result.text = 'Sum: $sum';
  });
}
