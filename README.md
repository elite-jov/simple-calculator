# Simple Interest Calculator

A straightforward calculator for estimating **simple interest** and the **total amount payable or accumulated** from a principal, an annual interest rate, and a time period.

## Overview

Simple interest is calculated only on the original principal. Unlike compound interest, previously earned interest does not generate additional interest.

This project demonstrates the core calculation and provides a foundation for implementing it in a web, desktop, mobile, or command-line application.

## Features

- Calculate simple interest using principal, annual interest rate, and duration.
- Determine the total amount (principal plus interest).
- Support fractional annual rates and durations.
- Validate input to prevent invalid or negative values.
- Display results with consistent currency formatting in the application implementation.

> **Note:** The features above describe the intended calculator behavior. Actual availability depends on the project implementation.

## Formula

The simple interest formula is:

**I = P × R × T / 100**

Where:

| Symbol | Description |
| --- | --- |
| `I` | Simple interest |
| `P` | Principal (initial amount) |
| `R` | Annual interest rate expressed as a percentage |
| `T` | Time expressed in years |

The total amount is:

**A = P + I**

### Example

Suppose you invest **₱10,000** at an annual interest rate of **5%** for **3 years**.

```text
Principal (P):       ₱10,000.00
Annual rate (R):     5%
Time (T):            3 years

Interest = 10,000 × 5 × 3 / 100
         = ₱1,500.00

Total amount = 10,000 + 1,500
             = ₱11,500.00
```

If the period is specified in months, convert it into years first:

```text
T = number of months / 12
```

For example, **6 months = 0.5 years**.

## How to Use

1. Enter the principal amount.
2. Enter the annual interest rate as a percentage (for example, `5` for 5%).
3. Enter the time period in years (for example, `1.5` for 18 months).
4. Run the calculation.
5. View the simple interest and total amount.

### Sample Input and Output

**Input**

```text
Principal:  25000
Rate:       6
Time:       2
```

**Expected output**

```text
Simple Interest: ₱3,000.00
Total Amount:    ₱28,000.00
```

## Input Validation

A reliable implementation should enforce these conditions:

- Principal must be a valid number greater than or equal to zero.
- Rate must be a valid number greater than or equal to zero.
- Time must be a valid number greater than or equal to zero.
- Blank inputs, nonnumeric values, `NaN`, and infinite values should be rejected.
- For financial precision, consider decimal arithmetic instead of binary floating-point calculations.

## Project Setup

Setup instructions depend on the programming language and framework used. Add the following once the implementation is available:

- Prerequisites and required versions
- Installation steps
- How to run the calculator
- How to run automated tests
- Build and deployment instructions, if applicable

## Suggested Test Cases

| Principal | Rate | Time (years) | Expected interest | Expected total |
| ---: | ---: | ---: | ---: | ---: |
| ₱10,000 | 5% | 3 | ₱1,500 | ₱11,500 |
| ₱25,000 | 6% | 2 | ₱3,000 | ₱28,000 |
| ₱12,000 | 4% | 0.5 | ₱240 | ₱12,240 |
| ₱5,000 | 0% | 5 | ₱0 | ₱5,000 |
| ₱0 | 5% | 2 | ₱0 | ₱0 |

Also test invalid inputs such as negative amounts, missing values, and text.

## Limitations

- Assumes a **fixed annual rate** throughout the term.
- Does **not** calculate compound interest.
- Does **not** account for fees, taxes, inflation, amortization, or changing rates.
- Uses a year-based time convention; real lending products may use different day-count rules.

## License

No license has been specified. Add a `LICENSE` file if you intend to define permissions for reuse or distribution.
