
# Minovina

We Newspaper. 

## Local Development
```
# Generate .env files
./setup-env.sh

# Supabase
sudo supabase start
sudo supabase functions serve --env-file ./nextjs/.env --import-map supabase/functions/deno.json

# NextJS
cd nextjs
npm run dev
# Infisical Dev
infisical run --env=dev --use-temp-file --command="echo temp file path: {/nextjs}; npm run dev

# Flutter
cd flutter
flutter run -d chrome --dart-define-from-file=env.local.json
# Infisical Dev
infisical run --env=dev --use-temp-file --command="echo temp file path: {/flutter}; flutter run -d chrome --dart-define-from-file={env.local.json}"
```

# Design
- [Domain Driven Design](./docs/design/domain.md)

# Day Zero Ops
Keep up with current progress [here.](./docs/day0.md)

# Who's Who

#### Technical Founder
[GitHub @bfsio](https://github.com/bfsio)

Per our API-first design methodology, the value of API available endpoints for community listings is inheritently recognized by our founders. We intend to develop in this direction, while keeping a lean UI, with well-established bountry tests for edge networking and data. We have chosen the Flutter/NextJS stack carefully and with great consideration and deliberation. We store our data in PostgreSQL and we are using SupaBase for databank and auth.

#### Technical Co-Founder (TCFaaS Provider)
[GitHub @devtodollars](https://github.com/devtodollars)

MiNovina maintains a private repo while in stealth; Post-launch, the MiNovina code base, which was originally forked from the TCFaaS platform provider will be made available publicly and contributions will be welcome.

The design of MiNovina pays tribuite to the design, simplicity, and functionlity of the first Printing Press; Pull Requests will be approved in this spirit; And cloud spend.

MiNovina is a complete multi-platform app with Desktop, iOS, Android, and Web builds provided by Flutter & NextJS.

Prayer room app featuring prayer list, live chat, live audio and video streaming.

## Domain Modeling

- A global prayer chain.
- Many churches, many believers, many prayers.
- Prayers can be marked anonymous, but must be created by a registered account.
- Members can be orphans, can be fostered, and can be adopted.
- Members can sponsor org accounts.
- Org accounts can be a physical church body or an online prayer meeting location.
- Org accounts can be associated with many Members; Members can change org affiliation but are only allowed one affiliation at a time.
- Org accounts can be be sponsored by any user but must be confirmed by the previous sponsor.
- Online prayer rooms can be hosted by any member.
- Any member can join a prayer room; Joins must be confirmed by event host.
- If member is affiliated with a sister church of the host, this will be displayed on the ask to join dialouge.
- Virtual events will be catalogued and listed in the host account page.
