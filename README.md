# 🔐 Global Pre-commit Hook using TruffleHog

This repository sets up a **global Git pre-commit hook** using [TruffleHog](https://github.com/trufflesecurity/trufflehog) to prevent secrets from being accidentally committed to any repository.

It works by scanning the code during every `git commit` or `git push` and blocks the commit if any **verified secrets** are found.

---

## 📦 Requirements

- Python 3.x
- `pip3` installed
- `git` installed
- Works on macOS/Linux (for Windows, WSL is recommended)

---

## ⚙️ Installation


### What This Script Does

- Installs `pre-commit` (if not already installed)
- Installs the latest `trufflehog` binary
- Copies the `pre-commit` script and `.pre-commit-config.yaml` into `~/.git/hooks`
- Makes all hook files executable
- Configures Git globally to use `~/.git/hooks` by setting `core.hooksPath`

## How to Use

1. **Clone this repository** (or copy the script into your repo):

    ```bash
    git clone https://github.com/rakshitks/trufflehog-precommit-hook.git
    cd trufflehog-precommit-hook
    ```

2. **Make the script executable and run it**:

    ```bash
    chmod +x setup-precommit.sh
    ./setup-precommit.sh
    ```

3. **Verify the configuration**:

    ```bash
    git config --global core.hooksPath
    # Output should be: ~/.git/hooks
    ```


## ✅ Testing the Pre-commit Hook

1. **Clone your repository**:

   ```bash
   git clone <your-repo-url>
   cd <your-repo-folder>
2. **Make changes to any file and stage them:**
```
git add .
```
3. **Try committing the changes:**
``` 
git commit -m "My first commit"
```
4. **Expected Result:**
   - If the setup was successful, trufflehog will automatically run during the commit.
   - If any secrets are found, the commit will fail and you’ll see output like:

```
If any secrets are found, the commit will fail and you’ll see output like:

```


## Files Included

- `setup-precommit.sh`: Script to automate the setup
- `pre-commit`: Hook script that invokes `trufflehog`
- `.pre-commit-config.yaml`: Configuration file for the `pre-commit` tool

## Notes

- Ensure Python and Git are installed on your system.
- You may need to re-run this script if you clone a new repository or change environments.
