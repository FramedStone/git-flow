# Git-flow with github actions CI/CD

### What's the difference

The `git-flow` workflow is made for _personal-usage_, hence adding CI/CD transform the same branching workflow convention to match with standard Pull Request workflows using github cli.

### Installation

##### git-flow

Windows - [Git for Windows](https://gitforwindows.org/)
MacOS - `brew install git-flow`
Linux - e.g. `sudo apt install git-flow` (based on your package manager)

##### github cli

Windows - e.g. `winget install GitHub.CLI` (based on your package manager)
MacOS - `brew install gh`
Linux - e.g. `sudo apt install github-cli` (based on your package manager)

### Setup

1. Run `git flow init` in your repository and complete the setup
2. Run `gh auth login` and complete the auth
3. Modify/Append [.zshrc](./.zshrc) tailored to your setup (optional)

### How to start using

1. Run `git flow (branch) start (name_of_the_branch)`
   1.5 Do `git checkout -b` for `refactor` branch (optional)
2. **DO NOT** complete with `git flow (branch) finish (name_of_the_branch)`, instead do `gh pr create --base (branch - follow git-flow convention)`
3. Follow the `gh cli` to complete the PR process
4. You should now see the branch getting _merged_ and _deleted_

### Reference

- [git-flow official documentation](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)
- [github actions plan limits](https://docs.github.com/en/actions/reference/limits)
