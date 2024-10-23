#import "@preview/tidy:0.3.0"

= Statastical

`Statastic` is a Typst library designed to provide various statistical functions for numerical data. It offers functionalities like extracting specific columns from datasets, converting array elements to different data types, and computing various statistical measures such as average, median, mode, variance, standard deviation, and percentiles.

= All functions

#{
    let module = tidy.parse-module(read("lib.typ"),
    )
    tidy.show-module(module,
      style: tidy.styles.default,
      sort-functions: none,
      show-outline: false,
    )
}
