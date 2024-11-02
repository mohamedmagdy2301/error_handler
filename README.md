# Custom Error Widget Example for Flutter

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

## Screenshots

Add screenshots of the error page and home page here.

## License

This project is licensed under the MIT License.
