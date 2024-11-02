<br clear="both">
<a href="https://git.io/typing-svg"><img src="https://readme-typing-svg.demolab.com?font=Protest+Guerrilla&weight=900&size=45&pause=1000&color=F78918&width=835&height=100&lines=Custom+Error+Widget+%F0%9F%98%8A%E2%9C%8C%EF%B8%8F" alt="Typing SVG" /></a>
<br clear="both">

[![Flutter Version](https://img.shields.io/badge/Flutter-v3.0-blue.svg)](https://flutter.dev/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A Flutter example that demonstrates a custom error widget to handle application errors gracefully. This project shows how to create a simple error handler and display a custom error screen when the app encounters unexpected issues.

## Features

- **Error Handling**: Captures Flutter errors and displays a custom error widget.
- **Custom Error Screen**: Shows a user-friendly error screen with an error message and instructions.
- **Easy Integration**: Provides a reusable `ErrorHandler` class for managing Flutter errors.

## Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/custom-error-widget.git
   ```
2. **Navigate to the project folder**:
   ```bash
   cd custom-error-widget
   ```
3. **Install dependencies**:
   ```bash
   flutter pub get
   ```

## Usage

1. **Import Packages**:
   Ensure you have the necessary imports:
   ```dart
   import 'package:error_handler/error_handler.dart';
   import 'package:flutter/material.dart';
   ```

2. **Set Up Main App**:
   Initialize the error handler in your `main.dart` file:
   ```dart
   void main() {
     FlutterError.onError = ErrorHandler.handleFlutterError;
     runApp(const MyApp());
   }
   ```

3. **Run the App**:
   ```bash
   flutter run
   ```

## Code Overview

### Main Application

In `main.dart`, `ErrorHandler` is set as the global error handler. When an error occurs, the app will display a custom error widget.

```dart
void main() {
  FlutterError.onError = ErrorHandler.handleFlutterError;
  runApp(const MyApp());
}
```

### ErrorHandler Class

The `ErrorHandler` class handles Flutter errors and launches a custom error screen when an error is caught.

```dart
class ErrorHandler {
  static void handleFlutterError(FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
    runApp(ErrorWidgetApp(errorDetails: details));
  }
}
```

### CustomErrorWidget

The `CustomErrorWidget` shows an error message, an icon, and instructions for the user.

```dart
class CustomErrorWidget extends StatelessWidget {
  final String errorMessage;

  const CustomErrorWidget({required this.errorMessage, super.key});
  
  // ... Widget layout ...
}
```

## Example Error

An intentional error is created by pressing the "Generate Error" button on the home page, demonstrating the custom error handling.

```dart
ElevatedButton(
  onPressed: () {
    throw Exception("This is a test error!");
  },
  child: const Text("Generate Error"),
),
```

## Contributing

Contributions are highly encouraged! If you would like to contribute to `News App`, please follow these steps:

1. **Fork the Repository**.
2. **Create a New Branch**:
   ```bash
   git checkout -b feature/YourFeature
   ```
3. **Commit Your Changes**:
   ```bash
   git commit -m "Add your message"
   ```
4. **Push to the Branch**:
   ```bash
   git push origin feature/YourFeature
   ```
5. **Open a Pull Request**.

## Congratulations

If you found this guide helpful, don’t forget to ⭐ star this repository on GitHub to show your support!

Thank you for reading!
## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For any questions or inquiries, feel free to reach out:

- **GitHub:** [mohamedmagdy2301](https://github.com/mohamedmagdy2301)
- **Email:** [mohammedmego15@gmail.com](mohammedmego15@gmail.com)

