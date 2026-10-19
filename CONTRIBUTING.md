# Contributing to Simple Calculator

Thank you for your interest in contributing to **Simple Calculator**. Contributions that improve functionality, reliability, usability, accessibility, tests, or documentation are welcome.

## Code of Conduct

Please read and follow our [Code of Conduct](CODE_OF_CONDUCT.md) when participating in this project.

## Ways to Contribute

- Report bugs with clear steps to reproduce them.
- Suggest enhancements or usability improvements.
- Improve documentation and examples.
- Add or improve automated tests.
- Fix issues or implement agreed-upon features.

## Before You Start

1. Check existing GitHub Issues and Pull Requests to avoid duplicate work.
2. For significant changes, open an Issue first to discuss the approach.
3. Keep each contribution focused on a single issue or improvement.

## Getting Started

1. **Fork** the repository on GitHub.
2. **Clone** your fork:

   ```bash
   git clone https://github.com/<your-username>/simple-calculator.git
   cd simple-calculator
   ```

3. Review [README.md](README.md) for the project's current setup and run instructions.
4. Create a branch from the latest `main`:

   ```bash
   git checkout main
   git pull origin main
   git checkout -b feature/short-description
   ```

   Use `fix/short-description` for a bug fix or `docs/short-description` for documentation.

> **Note:** This repository's programming language and runtime commands are not specified in this guide. Follow the actual project configuration and README rather than assuming a framework or package manager.

## Development Guidelines

- Prefer clear, small, maintainable changes.
- Use descriptive names and consistent formatting with the existing codebase.
- Avoid introducing dependencies unless they provide a clear benefit.
- Add comments when they clarify *why* a non-obvious decision was made.
- Update documentation when behavior or usage changes.
- Do not commit secrets, access tokens, credentials, or generated build artifacts.

### Calculator Behavior

When changing calculation logic, preserve correct simple-interest behavior:

\[
I = P \times r \times t
\]

Where:

- `I` is the simple interest.
- `P` is the principal amount.
- `r` is the interest rate expressed as a decimal **per year**.
- `t` is the time in **years**.

For percentage input, convert `ratePercent` to a decimal (`ratePercent / 100`). Total amount is `A = P + I`.

Specify how the application handles negative values, empty input, nonnumeric values, zero rates, and precision or rounding. Keep calculation behavior and documentation consistent.

## Testing

Before submitting a Pull Request:

1. Run the project's existing tests and any relevant checks described in the README.
2. Test the change manually if automated coverage is unavailable.
3. Add regression tests for fixed defects whenever practicable.
4. Verify at least these scenarios when changing interest calculations:

   | Principal | Annual rate | Time | Expected interest | Expected total |
   | ---: | ---: | ---: | ---: | ---: |
   | 1,000 | 5% | 2 years | 100 | 1,100 |
   | 2,500 | 0% | 3 years | 0 | 2,500 |
   | 5,000 | 4% | 0 years | 0 | 5,000 |

   Also test invalid and boundary inputs according to the application's stated validation rules.

## Commit Messages

Use concise, descriptive commit messages. Conventional Commits are encouraged:

```text
feat: add total amount calculation
fix: correct percentage rate conversion
test: cover zero interest rate
docs: clarify calculation examples
```

## Submitting a Pull Request

1. Commit your changes and push your branch:

   ```bash
   git add .
   git commit -m "feat: describe your change"
   git push -u origin feature/short-description
   ```

2. Open a Pull Request against the repository's `main` branch.
3. Include:
   - A short summary of what changed and why.
   - A linked Issue, if one exists (for example, `Closes #12`).
   - How you tested the change, including results.
   - Screenshots for visible interface changes, if applicable.
4. Respond constructively to review feedback. Maintainers may request changes before merging.

## Reporting Bugs

Open a GitHub Issue and include:

- A clear description of the problem.
- Steps to reproduce it.
- Expected behavior versus actual behavior.
- Relevant input values, error messages, or screenshots.
- Environment details (such as browser, OS, and application version), when relevant.

Do **not** post sensitive data in public Issues.

## Suggesting Features

Explain the problem or use case, your proposed behavior, and any alternatives considered. Simple Calculator is intended to remain straightforward, so smaller improvements are generally easier to review and maintain.

## License

By contributing, you agree that your contributions will be licensed under the project's [Apache License 2.0](LICENSE), to the extent permitted by applicable law.

Thank you for helping improve Simple Calculator.
