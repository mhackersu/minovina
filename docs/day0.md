# Day 0

- Does the software architecture change at all?
- Do we need new infrastructure or changes to existing infrastructure?
- Do we need new hardware to make the changes?
- Is there a need for new tooling in the pipeline?
- Does the change affect databases? When do we back up or restore them?
- Is there anything new we need to monitor?
- Do we have any hard limits around finances? Can we afford how much this will cost, or do we need to scale back our ambitions?

# Chores

- [x] Fork
- [x] Domain Modeling
- [x] Dart
```bash
# Choose stable or dev as needed:
wget https://storage.googleapis.com/dart-archive/channels/stable/release/latest/linux_x64/dartsdk-linux-x64-release.zip

unzip dartsdk-linux-x64-release.zip -d ~/dart-sdk
export PATH="$HOME/dart-sdk/dart-sdk/bin:$PATH"

dart --version
Dart SDK version: 3.8.1 (stable) (Wed May 28 00:47:25 2025 -0700) on "linux_x64"
```
- [x] VS Code [Flutter Easy Button]
```bash
# VS Code
Ctl + Alt + X
Install Flutter Extension
Ctl + Alt + P
Flutter: Run Flutter Doctor
```
- [x] Android Studio via Jet Brains Toolbox
```
yay jetbrains-toolbox
```
- [x] [Rename](./flutter/misc/rename-your-project.md)
- [x] Supabase CLI
- [x] [Docker Desktop](https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository)
- [x] NodeJS `sudo apt install nodejs`
- [x] Secrets Management `infisical login`
