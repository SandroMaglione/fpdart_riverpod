# `fpdart_riverpod`


<p>
  <a href="https://github.com/SandroMaglione">
    <img alt="GitHub: SandroMaglione" src="https://img.shields.io/github/followers/SandroMaglione?label=Follow&style=social" target="_blank" />
  </a>
  <a href="https://twitter.com/SandroMaglione">
    <img alt="Twitter: SandroMaglione" src="https://img.shields.io/twitter/follow/SandroMaglione.svg?style=social" target="_blank" />
  </a>
</p>

Learn how to use [`fpdart`](https://pub.dev/packages/fpdart) and [`riverpod`](https://pub.dev/packages/riverpod) to implement a **safe**, **maintainable**, and **testable** flutter apps.

This repository contains the source code for the course [**Fpdart & Riverpod - Safe, maintainable, testable Flutter apps**](https://www.sandromaglione.com/course/fpdart-riverpod-develop-flutter-app).

[![fpdart + riverpod flutter app](https://www.sandromaglione.com/_next/image?url=%2Fstatic%2Fimages%2Fcovers%2Ffpdart-riverpod-develop-flutter-app.webp&w=3840&q=75)](https://www.sandromaglione.com/course/fpdart-riverpod-develop-flutter-app)

> **Note**: You can [**subscribe to the newsletter**](https://www.sandromaglione.com/newsletter) to receive live updates, exclusive previews, sneak peaks, and more about this course 

## Getting Started

This project is your usual flutter app (`flutter create`).

The app is built with [`fpdart`](https://pub.dev/packages/fpdart) (functional programming) and [`riverpod`](https://pub.dev/packages/riverpod) (state management).

To get started, you just need to fork the repository and install the packages:

```shell
flutter pub get
```

> **Note**: Make sure to have Flutter installed ([how to install?](https://docs.flutter.dev/get-started/install))

This is an extract of [`pubspec.yaml`](./pubspec.yaml) showing the core dependencies used in the app:

```yaml
environment:
  sdk: ">=3.0.0 <4.0.0"

dependencies:
  equatable: ^2.0.5
  flutter:
    sdk: flutter
  fpdart: ^1.0.0-beta.1
  hooks_riverpod: ^2.3.6
  riverpod_annotation: ^2.1.1

dev_dependencies:
  flutter_test:
    sdk: flutter

  flutter_lints: ^2.0.0
  build_runner: ^2.4.4
  custom_lint: ^0.4.0
  riverpod_lint: ^1.3.2
  riverpod_generator: ^2.2.3
```

You can run the app in every platform (mobile, web, desktop, it's Flutter after all 🎯):

```shell
flutter run
```

The implementation is explained in details in a series of articles: [**Fpdart & Riverpod - Safe, maintainable, testable Flutter apps**](https://www.sandromaglione.com/course/fpdart-riverpod-develop-flutter-app).

> **Note**: The articles are work in progress, come back soon for more updates and added features ([or subscribe to the newsletter for live updates](https://www.sandromaglione.com/newsletter))