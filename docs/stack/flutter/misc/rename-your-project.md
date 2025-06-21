---
sidebar_position: 1
---
# Rename your Project

By default the project is named `atlastcity`. There are a lot of things to rename (iOS, Android, Web, MacOS, Linux,  Windows) and it's tedious / error prone to rename everything manually. Here are the steps to do so:

1. Install the [rename package](https://pub.dev/packages/rename)

```bash
# Install Rename
dart pub global activate rename
```

2. Run the rename command

```bash
cd flutter
dart pub global run rename setAppName --targets android,ios,web,macos,windows,linux --value YOUR_APP_NAME
```
