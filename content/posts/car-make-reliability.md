+++
title = "Car make reliability comparison"
author = ["Romeo Valentin"]
date = 2024-09-05T16:55:00-07:00
draft = false
+++

Like many other countries, Finland mandates annual car inspections, and _unlike_ other countries, also [publishes this data](https://tieto.traficom.fi/en/statistics/statistics-inspections).
It aggregates inspection failure data per (make+model, year) and reports average and median odometer reading (i.e. distance driven).

We can therefore plot this data and try to draw our own conclusion. We plot cars produced since 2014 (ten years ago), where each dot represents a different (model, year) tuple, and
additionally fit a linear regression line.

{{< figure src="/ox-hugo/plot.svg" caption="<span class=\"figure-number\">Figure 1: </span>Car inspection failure probability by make and odometer reading." >}}


## Some results {#some-results}

For the results, I will additionally include the mother company (if applicable).
The best results in this analysis seem to be for

-   Honda
-   Lexus (Toyota)
-   Suzuki
-   Toyota

However, none of their models exceed a median odometer reading of 150 thousand km.

Next up we have a big bulk of manufacturers with similar results, including

-   Audi (VW)
-   BMW
-   Ford
-   Mazda
-   Mini (BMW)
-   Mitsubishi (RNM)
-   Porsche (VW)
-   Skoda (VW)
-   Subaru
-   Volkswagen
-   Volvo

Then we see some "high-risers", which start of with a low intercept, but rise to high failure rates quickly:

-   Hyundai
-   Jaguar (Tata Motors)
-   Kia (Hyundai)
-   Mercedes-Benz
-   Nissan (RNM)
-   Opel (Stellantis)
-   Peugot (Stellantis)

Finally we have the "top outliers" that start with a high intercept and keep rising steeply.
These include

-   Citroen (Stellantis)
-   Dacia (RNM)
-   Renault (RNM)
-   Tesla

And to close, we find Seat (VW), with a strange downward slope, which I can not explain. (The sample size of all Seats, ~11k, is close to the median sample size across all makes, ~12k).


## Do brands differ within the same mother company? {#do-brands-differ-within-the-same-mother-company}

We can see that results line up quite closely per-mother company.
For instance, under the Hyundai corporation, Kia and Hyundai have very similar regression lines (left plot).
Similarly the Stellantis brands Opel, Peugot, and Citroen, line up relatively closely, and so do the Volkswagen brands, although Audi seems to be the "best" of those.
For RNM, we find Mitsubishi outperforming the others, namely Nissan, Dacia, and Renault.
Finally, both Toyota and its sub-brand Lexus have among the best results.


## Some caveats {#some-caveats}

-   Cars are bought for different purposes and thus may receive different levels of care. For instance, a car typically bought for recreational driving may receive a different level of care by its owner as compared to cars bought for work purposes.
-   Factors of car strain, such as temperature, snowfall, road surface, may be different in Finland compared to other countries.
-   One might expect electric car manufacturers to have lower inspection failures due to the relatively lower number of components. However, I can't find such a relation in the data, and notably, Tesla stands out with the highest rate of failures.
