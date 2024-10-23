#import "lib.typ": *

= Statastic Package Test with Larger Dataset

This document showcases the features of the `statastic` package using a larger dataset.

= Data Preparation

We will use the following dataset:

#let data = (
  (1, 2.5),
  (2, 3.6),
  (3, 5.1),
  (4, 7.4),
  (5, 11.0),
  (6, 15.8),
  (7, 22.5),
  (8, 31.2),
  (9, 41.7),
  (10, 54.0),
  (11, 68.0),
  (12, 84.6),
  (13, 103.8),
  (14, 125.6),
  (15, 150.0),
)

#data

The dataset contains two columns:
- Column 0: Independent variable `x`
- Column 1: Dependent variable `y`

= Statistical Measures

== Average

- Average of `x`: #avg(data, 0)
- Average of `y`: #avg(data, 1)

== Median

- Median of `x`: #median(data, 0)
- Median of `y`: #median(data, 1)

== Variance

- Variance of `x`: #var(data, 0)
- Variance of `y`: #var(data, 1)

== Standard Deviation

- Standard Deviation of `x`: #std(data, 0)
- Standard Deviation of `y`: #std(data, 1)

= Regression Analyses

We will perform different regression analyses on the dataset to find the relationship between `x` and `y`.

== Linear Regression

#let linRegResult = linearRegression(data, 0, 1)

- [*Slope*]: #linRegResult.slope
- [*Intercept*]: #linRegResult.intercept
- [*R-squared*]: #linRegResult.r_squared

== Quadratic Regression

#let quadRegResult = quadraticRegression(data, 0, 1)

The coefficients are:

- [*a*] (quadratic term): #quadRegResult.a
- [*b*] (linear term): #quadRegResult.b
- [*c*] (constant term): #quadRegResult.c
- [*R-squared*]: #quadRegResult.r_squared

== Exponential Regression

#let expRegResult = exponentialRegression(data, 0, 1)

The coefficients are:

- [*a*]: #expRegResult.a
- [*b*]: #expRegResult.b
- [*R-squared*]: #expRegResult.r_squared

== Logarithmic Regression

#let logRegResult = logarithmicRegression(data, 0, 1)

The coefficients are:

- [*a*]: #logRegResult.a
- [*b*]: #logRegResult.b
- [*R-squared*]: #logRegResult.r_squared

== Power Regression

#let powRegResult = powerRegression(data, 0, 1)

The coefficients are:

- [*a*]: #powRegResult.a
- [*b*]: #powRegResult.b
- [*R-squared*]: #powRegResult.r_squared

= Conclusion

This test demonstrates the functionalities provided by the `statastic` package for statistical analysis and various regression models in Typst.
