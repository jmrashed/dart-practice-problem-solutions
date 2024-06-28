void main() {
  DateTime now = DateTime.now();
  print(now); // Print current date and time
  
  // Extract specific components if needed
  print('Current year: ${now.year}');
  print('Current month: ${now.month}');
  print('Current day: ${now.day}');
  print('Current hour: ${now.hour}');
  print('Current minute: ${now.minute}');
  print('Current second: ${now.second}');
}
