# Contributing

We want to make contributing to this project as easy and transparent as possible, whether it's:

- Reporting a bug
- Discussing the current state of the code
- Submitting a fix
- Proposing new features
- Becoming a maintainer

## Code of Conduct

See [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md)

## I am not a developer

Do not worry, you can still contribute fixing the documentation or just opening the issues and reporting bugs!
Do not underestimate your impact, as the job of tester and bug triager is one of the most valuable in any software project.
What the use of being a developer if you don't know what to fix or implement?

## Development Packages

To make sure you can develop the theme install all the tools you need:

- [neovim-nightly](https://github.com/neovim/neovim/releases/tag/nightly)
- [lua-language-server](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#sumneko_lua) must be setup in neovim
- [StyLua](https://github.com/JohnnyMorganz/StyLua)

## Our Development Process

We use GitHub to sync code to and from our internal repository. We'll use GitHub to track issues and
feature requests, as well as accept pull requests.

## Pull Requests

We actively welcome your pull requests.

1. Fork the repo and create your branch from `main`.
2. If you've added code that should be tested, add tests.
3. If you've changed Look, update the documentation.
4. Make sure your code lints.
5. Issue that pull request!

## Styleguides

### Lua Styleguide

All lua code is linted with StyLua.

- 2 spaces for indentation rather than tabs
- Use Single quotes for string
- Use [EmmyLua Annotations](https://emmylua.github.io/annotation.html)

### Documentation Styleguide

- Use [Markdown](https://daringfireball.net/projects/markdown/).

### Git Commit Message Guidelines

A properly formed git commit subject line should always be able to complete the following sentence

If applied, this commit will <your subject line here>

### Git commit message style

- **Do not use emojis**
- Consider starting the commit message with an applicable abbreviation:

  - `feat:` When improving the format/structure of the code
  - `breaking_change:` When potentially breaking changes made to original functionality
  - `deprecated:` for deprecated feature commit
  - `fix:` When fixing a bug
  - `refactor:` for refactoring production code, e.g. renaming a variable.
  - `chore:` updating grunt tasks etc; no production code change.
    "grunt task" means nothing that an external user would see:
    - implementation (of an existing feature, which doesn't involve a fix),
    - configuration (like the .gitignore or .gitattributes),
    - private internal methods...
  - `perf:` for performance improvements.
  - `style:` for formatting changes, missing semicolons, etc.
  - `test:` for adding missing tests, refactoring tests; no production code change.
  - `docs:` When writing documentation
  - `ci:` for CI GitHub Actions related tasks.

- Separate subject from body with a blank line
- Do not end the subject line with a period
- Capitalize the subject line and each paragraph
- Use the imperative mood in the subject line
- Wrap lines at 72 characters
- Use the body to explain what and why you have done something. In most cases, you can leave out details
  about how a change has been made.

### Information in commit messages

- Describe why a change is being made.
- How does it address the issue?
- What effects does the patch have?
- Do not assume the reviewer understands what the original problem was.
- Do not assume the code is self-evident/self-documenting.
- Read the commit message to see if it hints at improved code structure.
- The first commit line is the most important.
- Describe any limitations of the current code.
- Do not include patch set-specific comments.

Details for each point and good commit message examples can be found on
[wiki.openstack.org](https://wiki.openstack.org/wiki/GitCommitMessages#Information_in_commit_messages)

### References in commit messages

If the commit refers to an issue, add this information to the commit message header or body. e.g. the
GitHub web platform automatically converts issue ids (e.g. #123) to links referring to the related issue.

In header:

`[#123] Refer to GitHub issue…`

In body:

```

…
Fixes #123, #124
```

## Issues

We use GitHub issues to track public bugs. Please ensure your description is clear and has sufficient instructions
to be able to reproduce the issue. If possible please provide a minimal demo of the problem.

## Issue Triage

Here are some tags that we're using to better organize issues in this repo:

- `!` - Bug or issue has be opened for more than a week
- `!!` - Bug or issue has be opened for more than a month
- `assigned` - Under progress.
- `bug` - Something isn't working
- `documentation` - Relating to improving documentation for the project.
- `duplicate` - This issue or pull request already exists
- `enhancement` - New feature or request
- `good first issue` - Good candidates for someone new to the project to contribute.
- `help wanted` - Issues that should be addressed and which we would welcome a PR for but may need significant
  investigation or work
- `question` - Something that is a question specifically for the maintainers.

## Bug reports

Great Bug Reports tend to have:

- A quick summary and/or background
- Steps to reproduce
  - Be specific!
  - Give sample code if you can.
- What you expected would happen
- What actually happens
- Notes (possibly including why you think this might be happening, or stuff you tried that didn't work)

People love thorough bug reports. We're not even kidding.

## License

By contributing, you agree that your contributions will be licensed under its `MIT` License.

## References

- [atom/CONTRIBUTING.md](https://github.com/atom/atom/blob/master/CONTRIBUTING.md)
- [robertpainsi/commit-message-guidelines.md](https://gist.github.com/robertpainsi/b632364184e70900af4ab688decf6f53)
- [draft-js/CONTRIBUTING.md](https://github.com/facebook/draft-js/blob/main/CONTRIBUTING.md)
- [bismuth/CONTRIBUTING.md](https://github.com/Bismuth-Forge/bismuth/blob/master/CONTRIBUTING.md)
