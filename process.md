# Update process summary

1. Create a release in the project repo (so far, `gloss-word`).

2. Copy the link of the `tar.gz` bundle of source code. Also get the sha256
   checksum of that file. Hint: `curl -sL URL | shasum -a 256`.

3. In the formula code, remove the `bottle do` section. This will be generated
   anew by the workflows. (I'm not certain removing it is necessary.)

4. Update the link and checksum in the formula code.

5. Commit these changes in a new branch, and push to GitHub.

6. The `tests` workflow will start automatically. If/when all of those checks
   pass, add the `pr-pull` label.

7. The `publish` workflow will take over. This will result in the original PR
   being closed, but it's ok: the workflow makes some additional changes (I
   guess by adding the `bottle do` section?) and pushes to the main branch.
