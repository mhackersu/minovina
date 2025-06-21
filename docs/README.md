# Production MVP Boilerplate

## Getting Started

To get started, choose which frontend you need and go from there:

- [Choose Flutter](./flutter/README.md) if you plan to build or expand into cross-platform apps (e.g. Duolingo, Fitbit, Spotify, Tinder, etc.)
- [Choose NextJS](./nextjs/quickstart.md) if SEO, page load speeds, and web-specific libraries are integral to your app (e.g. Shopify, Medium, Wix, etc.)

:::note
It's also possible to start with one-platform and move onto the next one depending on your needs. For example, start with Next.JS and then move to Flutter when a mobile app is needed
:::

## 👉 [See documentation to get started](https://resources.atlastcity.com/docs) 👈
- [Flutter Demo](https://flutter.atlastcity.com)
- [NextJS Demo](https://nextjs.atlastcity.com)
- Building a startup? [Join the tech founder community](https://discord.gg/6q63Xa6SEB)

## What's Included:

### Mobile / Desktop / Web App ([Flutter](./flutter/README.md))

- State Management ([riverpod](https://pub.dev/packages/riverpod))
- Routing ([go_router](https://pub.dev/packages/go_router))
- Payments with Stripe
- Authentication with Supabase
- 🚧 [Frontend Tests](https://github.com/atlastcity/flutter-supabase-production-template/issues/4) 🚧
- 🚧 [Adjustable Theme](https://github.com/atlastcity/startup-boilerplate/issues/40) 🚧

### Landing Page / Web App ([NextJS](./nextjs/README.md))

- App Router
- Typescript
- Payments with Stripe
- Authentication with Supabase
- 🚧 [Landing Page Template](https://github.com/atlastcity/startup-boilerplate/issues/54) 🚧

### Backend ([Supabase](./supabase/README.md))

-  Authentication
  - Email + PW
  - SSO (Google, Github, etc.)
- Fully configured for local development from day one
- 🚧 [backend tests](https://github.com/atlastcity/flutter-supabase-production-template/issues/16) 🚧
- Test
### Analytics ([Posthog](https://posthog.com/))

- Unified analytics across frontend and backend based on `user_id`
  - Frontend analytics comes pre-installed for iOS, Android, Web, and MacOS
  - Backend analytics installed and linked to frontend analytics
- Basic events captured:
  - `user signs in`
  - `user signs up`
  - `user deletes account`
  - `user starts checkout`
  - `user opens billing portal`
  - `user completes checkout`

### Payments ([Stripe](https://stripe.com/en-ca))

- Stripe fully setup and works with one-time payments and subscriptions
  - `stripe` table to store `stripe_customer_id` and current `active_products`
  - Stripe webhook to sync user subscriptions from stripe to supabase
  - Deno function to retrieve the billing portal url or a checkout session url which works with the `payments_screen`

### Release ([Github Actions](https://github.com/features/actions))

- Script to `bumpversion.sh` following semantic versioning
- Deploys a web preview on Netlify for every PR
- Publishing pipeline to publish to Netlify and to publish supabase functions
- 🚧 [Automated Mobile Publishing](https://github.com/atlastcity/flutter-supabase-production-template/issues/22) 🚧

### Emails ([Postmark](https://postmarkapp.com/))

- Send transactional emails
- DNS setup to avoid spam folder (DKIM, DMARC, SPF in subdomain)
- Simplify email updates by using postmark templates

### 🚧 [Error Monitoring](https://github.com/atlastcity/flutter-supabase-production-template/issues/18) ([Sentry](https://sentry.io/welcome/)) 🚧
