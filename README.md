## Features

- Customizable styles including text, background color, leading icons and more
- Responsive layout design, uses Media Queries to adapt on various screen sizes
- Pre-defined methods for various message types with default styles and icons
- Being an overlay, it doesn't disturb the widget tree or get affected by context change

## Demo


![Screen Recording 2024-04-29 at 9 23 23 PM](https://github.com/deb-sahu/top-snackbar/assets/117360930/0de48885-8669-4e28-8ea6-42dbba35d1d2)


## Usage

### Installation

Add `top_snackbar` to your `pubspec.yaml` file:

```yaml
dependencies:
  top_snackbar: ^0.0.5 # Use the latest version
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

