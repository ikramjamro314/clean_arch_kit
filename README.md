# Clean Arch Kit

A CLI toolkit for quickly generating **Clean Architecture and modular project structures** for Flutter applications.

> Build your Flutter project structure in seconds instead of manually creating dozens of folders and files.

---

## 👨‍💻 About Me

Hi, I'm **Ikram Jamro**, a Mobile Application Developer and Software Engineering student.

I primarily work with **Flutter, Android, Kotlin, Java, Firebase, REST APIs, and modern application architectures**. While developing mobile applications, I found myself repeatedly creating the same Clean Architecture and feature-based folder structures for different projects.

That's why I created **Clean Arch Kit** — a CLI tool designed to automate that repetitive work and provide a consistent, scalable starting structure for Flutter applications.

---

## 📦 About Clean Arch Kit

**Clean Arch Kit** is a command-line tool for generating a clean, modular, and feature-based architecture for Flutter projects.

Instead of manually creating folders such as:

```text
data/
domain/
presentation/
repositories/
models/
entities/
usecases/
screens/
widgets/
viewmodels/
```

you can generate them with a single command.

For example:

```bash
cleanarch create feature auth
```

Clean Arch Kit automatically creates the required architecture and feature structure.

---

## ✨ Features

- 🚀 Quickly generate Clean Architecture structures
- 🧩 Feature-based modular architecture
- 📁 Automatically create required directories
- 📄 Automatically generate feature-specific Dart files
- 🔄 Dynamic feature naming
- 🏗️ Automatically initialize the base architecture when required
- 🧱 Includes a dummy `feature-1` to demonstrate the architecture
- 🧹 Consistent project structure across applications
- ⚡ Simple CLI commands
- 🛠️ Designed to reduce repetitive project setup

---

# 🚀 Installation

## Prerequisites

Before installing Clean Arch Kit, make sure you have:

- Dart SDK
- Flutter SDK

You can verify your Dart installation with:

```bash
dart --version
```

And your Flutter installation with:

```bash
flutter --version
```

---

## Install Clean Arch Kit

Install the CLI globally using:

```bash
dart install clean_arch_kit
```

After installation, verify that the CLI is available:

```bash
cleanarch
```

> **Note:** If your operating system cannot find the `cleanarch` command after installation, make sure your Dart executable installation directory is available in your system `PATH`.

---

# 🖥️ CLI Usage

The basic command structure is:

```text
cleanarch <command>
```

Currently available commands:

```text
cleanarch create
cleanarch create feature <feature_name>
```

---

# 🏗️ Create Project Architecture

To generate the base Clean Architecture structure:

```bash
cleanarch create
```

This creates the base structure inside your Flutter project's `lib` directory.

### Generated Structure

```text
lib/
├── core/
│   ├── constants/
│   ├── errors/
│   ├── local/
│   ├── network/
│   ├── utils/
│   └── widgets/
│
├── app/
│   ├── routes/
│   └── theme/
│
└── features/
    ├── feature-1/
    └── providers/
```

---

# 🧱 Why is `feature-1` Created?

When you run:

```bash
cleanarch create
```

Clean Arch Kit also creates a **dummy feature named `feature-1`**.

The purpose of `feature-1` is to demonstrate how the Clean Architecture structure is organized inside the `features` directory.

It allows you to immediately see an example of how an individual feature is structured.

The generated structure looks like:

```text
lib/
└── features/
    └── feature-1/
        ├── providers/
        │
        ├── data/
        │   ├── models/
        │   ├── repositories/
        │   ├── local/
        │   └── network/
        │
        ├── domain/
        │   ├── entities/
        │   ├── repositories/
        │   └── usecases/
        │
        └── presentation/
            ├── screens/
            ├── widgets/
            └── viewmodels/
```

### `feature-1` is only an example

You **do not have to keep `feature-1`** in your actual application.

You can simply delete it and create your own features:

```bash
cleanarch create feature auth
```

```bash
cleanarch create feature payments
```

```bash
cleanarch create feature profile
```

This gives you a ready-to-use architecture while also providing an example of how features should be organized.

---

# 🧩 Create a Feature

To create a feature:

```bash
cleanarch create feature auth
```

For example:

```bash
cleanarch create feature payments
```

or:

```bash
cleanarch create feature profile
```

Each feature receives its own independent Clean Architecture structure.

---

## Generated Feature Structure

For:

```bash
cleanarch create feature auth
```

the generated structure is:

```text
lib/
└── features/
    └── auth/
        ├── providers/
        │
        ├── data/
        │   ├── models/
        │   ├── repositories/
        │   ├── local/
        │   └── network/
        │
        ├── domain/
        │   ├── entities/
        │   ├── repositories/
        │   └── usecases/
        │
        └── presentation/
            ├── screens/
            ├── widgets/
            └── viewmodels/
```

---

# 📄 Generated Files

Clean Arch Kit also generates feature-specific Dart files.

For example:

```bash
cleanarch create feature auth
```

generates:

```text
auth/
├── providers/
│   └── auth_providers.dart
│
├── data/
│   ├── local/
│   │   └── auth_local_datasource.dart
│   │
│   ├── models/
│   │   └── auth_model.dart
│   │
│   ├── network/
│   │   └── auth_api_service.dart
│   │
│   └── repositories/
│       └── auth_repository_impl.dart
│
├── domain/
│   ├── entities/
│   │   └── auth_entity.dart
│   │
│   ├── repositories/
│   │   └── auth_repository.dart
│   │
│   └── usecases/
│       └── auth_usecase.dart
│
└── presentation/
    ├── screens/
    │   └── auth_screen.dart
    │
    ├── viewmodels/
    │   └── auth_viewmodel.dart
    │
    └── widgets/
        └── auth_widget.dart
```

The feature name is automatically used when generating filenames.

For example:

```text
auth_model.dart
auth_repository.dart
auth_usecase.dart
auth_screen.dart
auth_viewmodel.dart
```

If you create:

```bash
cleanarch create feature payments
```

the generated files become:

```text
payments_model.dart
payments_repository.dart
payments_usecase.dart
payments_screen.dart
payments_viewmodel.dart
```

---

# 🔄 Automatic Architecture Initialization

You don't necessarily have to manually create the base architecture first.

If you run:

```bash
cleanarch create feature auth
```

and the required Clean Architecture structure doesn't exist, Clean Arch Kit automatically initializes the base architecture before creating the feature.

### Example

Starting with a normal Flutter project:

```text
my_app/
├── android/
├── ios/
├── lib/
├── test/
└── pubspec.yaml
```

Run:

```bash
cleanarch create feature auth
```

Clean Arch Kit detects that the architecture doesn't exist and creates:

```text
lib/
├── core/
├── app/
├── features/
│   ├── feature-1/
│   └── auth/
│       ├── data/
│       ├── domain/
│       └── presentation/
```

The dummy `feature-1` is created as part of the initial architecture setup. You can delete it whenever you are ready to use your own application features.

---

# 🔁 Multiple Features

You can generate as many features as your application requires.

For example:

```bash
cleanarch create feature auth
cleanarch create feature payments
cleanarch create feature profile
cleanarch create feature notifications
```

Result:

```text
lib/
└── features/
    ├── feature-1/
    ├── auth/
    ├── payments/
    ├── profile/
    └── notifications/
```

Each feature remains independently organized.

---

# 🏛️ Architecture Overview

Clean Arch Kit follows a feature-based Clean Architecture approach.

Each feature is divided into three major layers:

```text
Feature
│
├── Data
├── Domain
└── Presentation
```

---

## Data Layer

The data layer handles implementation details such as:

- API communication
- Local data sources
- Models
- Repository implementations

Structure:

```text
data/
├── models/
├── repositories/
├── local/
└── network/
```

---

## Domain Layer

The domain layer contains the application's core business logic.

Structure:

```text
domain/
├── entities/
├── repositories/
└── usecases/
```

The domain layer is intended to remain independent from external implementation details.

---

## Presentation Layer

The presentation layer contains UI-related components and state-management logic.

Structure:

```text
presentation/
├── screens/
├── widgets/
└── viewmodels/
```

---

# 📁 Core Layer

The `core` directory contains functionality shared across multiple features.

```text
core/
├── constants/
├── errors/
├── local/
├── network/
├── utils/
└── widgets/
```

Typical examples include:

- Application constants
- Error handling
- Local storage utilities
- Network configuration
- Common utility functions
- Shared widgets

---

# 📱 App Layer

The `app` directory contains application-level configuration.

```text
app/
├── routes/
└── theme/
```

Typical responsibilities include:

- Application navigation
- Route configuration
- Theme configuration
- Application-level settings

---

# 🎯 Why Feature-Based Architecture?

As applications grow, putting everything into generic folders can become difficult to maintain.

For example:

```text
lib/
├── screens/
├── models/
├── repositories/
├── services/
└── widgets/
```

can eventually become difficult to navigate when an application contains dozens of features.

Clean Arch Kit instead organizes code around features:

```text
lib/
└── features/
    ├── auth/
    ├── payments/
    ├── profile/
    └── notifications/
```

Each feature owns its:

```text
data/
domain/
presentation/
```

This makes the project easier to navigate, maintain, and scale.

---

# 💡 Philosophy

Clean Arch Kit is designed around a simple idea:

> **Developers should spend their time building application features, not repeatedly creating the same project structure.**

The goal is not to dictate how every Flutter application must be built.

Instead, Clean Arch Kit provides a consistent starting structure that can be extended and customized as the project grows.

---

# ⭐ Support the Project

If Clean Arch Kit helps you build Flutter applications faster, consider giving the project a ⭐ on GitHub.

Feedback, suggestions, and contributions are always welcome.

---

## 👨‍💻 Author

**Ikram Jamro**

Mobile Application Developer
Software Engineering Student

Focused on:

- Flutter
- Android
- Kotlin
- Java
- Firebase
- REST APIs
- Clean Architecture
- Modular Application Development

---

# 🚀 Quick Start

For developers who just want to get started:

### 1. Install

```bash
dart install clean_arch_kit
```

### 2. Create the architecture

```bash
cleanarch create
```

This creates the base architecture and a dummy `feature-1` to demonstrate the structure.

### 3. Delete the dummy feature

Once you understand the structure, you can remove:

```text
lib/features/feature-1/
```

### 4. Create your own features

```bash
cleanarch create feature auth
```

```bash
cleanarch create feature payments
```

```bash
cleanarch create feature profile
```

That's it.

**Build features. Let Clean Arch Kit handle the repetitive structure.**
