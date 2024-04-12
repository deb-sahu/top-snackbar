## Features

- Customizable styles including text, background color, leading icons and more
- Responsive layout design, uses Media Queries to adapt on various screen sizes
- Pre-defined methods for various message types with default styles and icons
- Being an overlay, it doesn't disturb the widget tree or get affected by context change

## Screenshots

<div>
    <img src="https://github.com/deb-sahu/top-snackbar/assets/117360930/2bce52a7-0e86-4428-aeac-ae07b0c3c923" alt="Screenshot_1712918019" width="200"/>
    <img src="https://github.com/deb-sahu/top-snackbar/assets/117360930/90823268-5fe2-4a51-81a0-6ab5d1146e44" alt="Screenshot_1712918023" width="200"/>
    <img src="https://github.com/deb-sahu/top-snackbar/assets/117360930/256c18f3-b03a-463a-ac81-44945c600adb" alt="Screenshot_1712918027" width="200"/>
</div>

<div>    
    <img src="https://github.com/deb-sahu/top-snackbar/assets/117360930/fc2da41e-760e-488c-be4d-61496cd0fa44" alt="Screenshot_1712918031" width="200"/>
    <img src="https://github.com/deb-sahu/top-snackbar/assets/117360930/e0e65f7e-e8fc-4a15-ba99-b927ea27448a" alt="Screenshot_1712918034" width="200"/>
</div>

## Usage

### Installation

Add `top_snackbar` to your `pubspec.yaml` file:

```yaml
dependencies:
  top_snackbar: ^0.0.4 # Use the latest version
```

### Import

```dart
import 'package:flutter/material.dart';
import 'package:top_snackbar/top_snackbar.dart';
```

### Custom Top Snackbar Widget

To show a custom top snackbar message, use the `CustomTopSnackbar.show` method:

```dart
CustomTopSnackbar.show(
  context,
  'Your message here',
  // Customize more additional properties as required (optional)
  leadingIcon: Icons.copy,
  backgroundColor: Colors.blue,
);
```

### Pre-defined Message Types

The library provides pre-defined methods for different message types with default styles and icons:

- **Info**: Display an informational message.
```dart
CustomTopSnackbar.showInfo(context, 'Info message');
```

- **Success**: Display a success message.
```dart
CustomTopSnackbar.showSuccess(context, 'Success message');
```

- **Error**: Display an error message.
```dart
CustomTopSnackbar.showError(context, 'Error message');
```

- **Warning**: Display a warning message.
```dart
CustomTopSnackbar.showWarning(context, 'Warning message');
```

