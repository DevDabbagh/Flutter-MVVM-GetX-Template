# Clear Flutter MVVM with GetX Template 

## Overview

This project showcases how to build a Flutter application using the MVVM (Model-View-ViewModel) architectural pattern, facilitated by GetX for state management and navigation.

MVVM is an effective architecture that allows for modular, testable and maintainable code. The GetX library simplifies working with MVVM by providing utilities for routing, dependency injection, and state management.

## Features

- **GetX for State Management**
- **MVVM Architecture**
- **Unit Tests**
- **Responsive UI**
- **Localization Support**

## Getting Started

### Prerequisites

- Flutter SDK: >=2.0.0
- Dart: >=2.12.0

### Installation

1. **Clone the repository:**
    ```bash
    git clone https://github.com/DevDabbagh/Flutter-MVVM-GetX-Template.git
    ```
2. **Navigate to the project directory:**
    ```bash
    cd FlutterMVVMWithGetX
    ```
3. **Install dependencies:**
    ```bash
    flutter pub get
    ```
4. **Run the project:**
    ```bash
    flutter run
    ```

## Project Structure

\`\`\`
lib/
├── main.dart
├── app/
│   ├── routes.dart
│   ├── module/
│   │   ├── home_viewmodel.dart
│   │   ├── home_view.dart
│   │   └── ...
│   └── models/
│       ├── user.dart
│       └── ...
├── services/
│   ├── api_service.dart
│   └── ...
└── utils/
    ├── constants.dart
    └── ...
\`\`\`

## How to Contribute

1. **Fork the project.**
2. **Create your feature branch:** `git checkout -b feature/fooBar`.
3. **Commit your changes:** `git commit -am 'Add some fooBar'`.
4. **Push to the branch:** `git push origin feature/fooBar`.
5. **Create a new Pull Request.**

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
