---
sidebar_position: 1
---
# Quickstart
## Run flutter local web server

1. [Install flutter](https://docs.flutter.dev/get-started/install)
`flutter --version`
2. In your terminal, run the following commands:

```bash
git clone https://github.com/atlastcity/flutter-supabase-production-template.git YOUR_APP_NAME
cd YOUR_APP_NAME
```

3. Run the local web server.

```bash
cd flutter
flutter run -d chrome --dart-define-from-file=env.json
```

:::info
The Supabase backend used is the same one as [https://app.atlastcity.com](https://app.atlastcity.com) . See how to [setup your own backend](../supabase/README.md).
:::