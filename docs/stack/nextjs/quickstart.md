---
sidebar_position: 1
---
# Quickstart
## Run NextJS local web server

1. [Install node](https://nodejs.org/en/download)
2. In your terminal, run the following commands:

```bash
git clone https://github.com/atlastcity/startup-boilerplate.git YOUR_APP_NAME
cd YOUR_APP_NAME
```

3. Use `.env` file from atlastcity

```
cd nextjs
cp .env.example .env
```

4. Install the required libraries
```
npm install
```

Supabase CLI relies on a "postinstall" script, which the latest versions of PNPM do not automatically run unless you set dangerouslyAllowAllBuilds: true in your .npmrc or pnpm-workspace.yaml file. (Note that syntax is a bit different for .npmrc).

Of course, that setting is potentially dangerous. You probably want to set onlyBuiltDependencies: ["supabase"] instead. But note that other dependencies, like esbuild, may also need to be added there.

Using `yarn` to avoid this issue.

5. Run the local development server

```
npm run dev
```
