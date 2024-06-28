import 'dart:async';

void main() {
  // Set the target date and time for the countdown
  DateTime targetDate = DateTime(2024, 6, 29, 06, 0, 0); // Example: July 1st, 2024, 12:00:00 PM

  // Calculate the duration until the target date
  Duration countdownDuration = targetDate.difference(DateTime.now());

  // Display initial countdown
  printCountdown(countdownDuration);

  // Update countdown every second using Timer.periodic
  Timer.periodic(Duration(seconds: 1), (timer) {
    countdownDuration = targetDate.difference(DateTime.now());
    printCountdown(countdownDuration);

    // Check if countdown has reached zero
    if (countdownDuration.isNegative) {
      timer.cancel(); // Stop the timer when countdown reaches zero
      print('Countdown has ended!');
    }
  });
}

void printCountdown(Duration duration) {
  // Format and print the countdown in hours, minutes, seconds
  int hours = duration.inHours;
  int minutes = duration.inMinutes % 60;
  int seconds = duration.inSeconds % 60;
  print('Countdown: $hours hours $minutes minutes $seconds seconds');
}
