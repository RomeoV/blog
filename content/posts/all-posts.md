+++
author = ["Romeo Valentin"]
draft = false
+++

## <span class="org-todo todo TODO">TODO</span> Why not a flywheel? {#why-not-a-flywheel}


### Motivation {#motivation}

-   Energy storage is becoming increasingly important.
-   Current solutions include
    -   batteries
    -   water storage
    -   connected grid
    -   fuel?


### Why not a flywheel? {#why-not-a-flywheel}

A flywheel can also be used for energy storage.

Essentially, take a wheel and start spinning it when energy is cheap.
When you need the energy again, use a generator, i.e., electric motor, to get energy back.


### How large would a flywheel need to be? {#how-large-would-a-flywheel-need-to-be}

Let us imagine a world where each household has a flywheel in the basement[^fn:1] that aims to provide one full day of energy.
I will consider Switzerland, where I currently live. A government study has found that
a typical swiss 2 person household in a detached house requires about 3'550 kWh per year, or about 10 kWh per day.

Let us compute what that would mean for our flywheel.


#### Kinetic energy of a flywheel {#kinetic-energy-of-a-flywheel}

The kinetic energy of a rotary solid cylinder is
\\[ \frac{1}{2} I \omega^2 \\]
with \\(I\_{zz} = \frac{1}{2} m r^2\\).
Let's say we have a flywheel that is \\(2m\\) long and has a radius of \\(0.5m\\), made out of steel.
With a density of steel \\(\rho\_{\rm steel} = 8000 kg / m^3\\) and a volume of \\(\pi r^2 h \approx 1.57m^3\\)
that makes a mass of \\(m \approx 12'000 kg\\).
Then
\\[ \begin{aligned}
& \frac{1}{2} \omega^2 m r^2 = 10 kWh \\\\
& \Rightarrow \omega^2 = (2 \cdot 10 \cdot 1000 {kg} m^2/s^3 3600s) / (12'560kg \* 0.5m^2) \\\\
& \Rightarrow \omega \approx 151.43 rad/s \\\\
& \Rightarrow \omega \approx 24 (2\pi {rad})/s
\end{aligned} \\]
so about 20 revolutions per second.


#### How fast can we spin a flywheel? {#how-fast-can-we-spin-a-flywheel}

There are two limiting factors to consider:

-   radial (centrifugal) force putting strain on the material
-   friction losses at the bearings and surface

The radial force is what limits our maximum angular velocity, as a function of the material chosen.
Let us consider two materials with high tensile strength: steel, and carbon fiber composite materials.

For the surface friction, we consider the speed at the outer diameter: \\(2\pi r \cdot \omega = \pi 20 m/s \approx 63m/s \approx 226km/h\\)

For a rotating disc, the maximum stress occurs at the center and is given by:
\\[ \sigma\_{\rm max} = \rho \* r^2 \* \omega^2 \* ((3+\nu)/4) \\]
We can rearrange this to solve for \\(\omega\\):
\\[ \omega = \sqrt{\sigma\_{\rm max} / (\rho r^2 ((3+\nu)/4))} \\]
Equating this to our power consumption equation from earlier:
\\[ \begin{aligned}
\omega &= \sqrt{2 P\_{\rm req} / I}  \\\\
&= \sqrt{2 P\_{\rm req} / (\frac{1}{2} m r^2)}  \\\\
\end{aligned}
\\]
we have
\\[ \begin{aligned}
\sqrt{\sigma\_{\rm max} / (\rho r^2 ((3+\nu)/4))} &= \sqrt{2 P\_{\rm req} / (\frac{1}{2} m r^2)} \\\\
\Rightarrow
{\sigma\_{\rm max} / (\rho ((3+\nu)/4))} &= {2 P\_{\rm req} / (\frac{1}{2} m )} \\\\
\Rightarrow
{\sigma\_{\rm max} / (\rho ((3+\nu)))} &= P\_{\rm req} / m \\\\
\Rightarrow
m &= P\_{\rm req} \rho (3+\nu) / \sigma\_{\rm max}
\end{aligned} \\]
And thus, finally
\\[
\mathit{cost} = \mathit{p}\_{\rm kg} P\_{\rm req} \rho (3+\nu) / \sigma\_{\rm max}
\\]
So (drum roll 🥁) it is actually _irrelevant_ how we choose the radius and height, as long as they give the required mass.
Further, our costs are directly proportional with the required power \\(P\_{\rm req}\\) and the inverse maximal tensile strength \\(1 / \sigma\_{\rm max}\\).


### Reducing losses {#reducing-losses}

To reduce our losses, we need to do three things:


#### Surface friction losses {#surface-friction-losses}

-   run the flywheel in a vacuum
-   use low-friction coating on flywheel surface
-   use low-density gas before pulling vaccum


#### bearing loss {#bearing-loss}

-   electromagnetic bearing?


#### axis of rotation {#axis-of-rotation}

One additional loss to consider is the following.
Recall that a rotating body takes force to change the axis of rotation. However, since the earth is rotating, typically we will be required to exert the force necessary to "follow" the earth rotation. This can be counteracted, however, by aligning the flywheel with the earth's axis of rotation.


### Cost of construction {#cost-of-construction}

flywheel material
: \\(12'000 kg \* 700 USD / (1000 kg) = 8'400 USD\\)


### Other approaches {#other-approaches}


#### Lifting heavy masses {#lifting-heavy-masses}

-   potential energy (against gravity) instead of kinetic energy

Basic equation:
\\(m h g = 10kWh = 3600 kWs\\)
\\(h 1000kg 9.81m/s^2 = 3600 kWs\\)
\\(h 1000kg 10m/s^2 = 3600 1000 kg m^2 / s^2\\)
$h 1000 10 = 3600 1000 m $
$h  = 360 m $

So at 100% efficiency, we need to lift one cubic meter of water about 360m high (world trade center top floor is 375m, Eiffel tower top floor is 275m).

Efficiency of pumped water storage is 70-80% (!)


#### Battery {#battery}


#### Chemical {#chemical}


### claude conversation {#claude-conversation}


#### Great. Now I want to know the maximum angular velocity that steel can take before it breaks from the radial force. Can you help me with that? {#great-dot-now-i-want-to-know-the-maximum-angular-velocity-that-steel-can-take-before-it-breaks-from-the-radial-force-dot-can-you-help-me-with-that}

For a rotating disc, the maximum stress occurs at the center and is given by:

σmax = ρ \* r^2 \* ω^2 \* ((3+ν)/4)

Where:
σmax = maximum stress
ρ = density of steel (8000 kg/m^3)
r = radius (0.5 m)
ω = angular velocity (what we're solving for)
ν = Poisson's ratio for steel (approximately 0.3)

We'll set σmax to the ultimate tensile strength of steel. For high-strength steel, let's use 1000 MPa (1e9 N/m^2).

Rearranging the equation to solve for ω:

ω = √(σmax / (ρ \* r^2 \* ((3+ν)/4)))

Plugging in the values:

ω = √(1e9 / (8000 \* 0.5^2 \* ((3+0.3)/4)))
ω = √(1e9 / (1000 \* 0.825))
ω ≈ 1101 rad/s

Converting to revolutions per second:
f = ω / (2π) ≈ 175 rps

Therefore, the maximum angular velocity before the steel would theoretically break is about 1101 rad/s or 175 revolutions per second.


## <span class="org-todo done DONE">DONE</span> Hi, I'm Romeo {#about}

Currently, I am working on certification protocols for machine learning systems in safety-critical domains; first in aerospace, but with future plans for medical, finance, and public policy. I have been fortunate to join the Stanford Intelligent Systems Lab. If you’re around Stanford and are interested in talking to me, let’s have a coffee!

My background is in computational mathematics, both theory and implementation, and mathematical optimization, which I applied to process systems optimization during my time at CMU. I have also worked in robotics, including embedded control, motion planning and autonomous navigation.

Prior to moving to Palo Alto I have lived in Aachen, Pittsburgh, Stuttgart, Zürich, and in my hometown Holtum. I love traveling and have traversed Vietnam and Peru by motorcycle (highly recommended), and backpacked through parts of Mexico (come for the party, stay for the nature and food). I am also an avid ballroom dancer and current vice-president of Stanford’s competitive ballroom team, currently dabbling in Brazilian Jiu-Jitsu, and was fencing state-champion in Westphalia (NRW) during my teens.

📥 Check out my [CV](https://codeberg.org/romeov/cv-romeo-valentin/src/branch/master/cv_tabular.pdf).

My interests include:

-   ML certification for safety-critical systems
-   Probabilistic ML, Uncertainty quantification, Causality &amp; Disentanglement
-   Decision making under uncertainty
-   Efficient algorithms for combinatorial optimization
-   Contributions to open science and open source software
-   ~~Meeting Donald Knuth~~ ✔️


## <span class="org-todo done DONE">DONE</span> My first org post {#my-first-org-post}

This is my post body


### This is my first subheading. {#this-is-my-first-subheading-dot}

Have you ever tried to create a subheading? Because I have!


## <span class="org-todo done DONE">DONE</span> Commute times in Zürich {#commute-times-in-zurich}

A [recent article](https://www.nzz.ch/schweiz/welche-stadt-den-schnellsten-oev-der-schweiz-hat-und-wieso-man-mit-dem-velo-trotzdem-schneller-ist-ld.1843690) in the "Neue Züricher Zeitung" claims that Zürich public transport is "only" about twice the walking speed, and slower than biking.

To make up my own mind, I have evaluated some of my common trips for all three modes of transportation, using google maps.
Note that some trips start with "bike", which is me biking to the train station, which saves about 6 minutes. I have recorded it as I typically travel -- e.g. I don't bike to the train station when I go to the airport.

<div class="ox-hugo-table sane-table">
<div class="table-caption">
  <span class="table-number">Table 1:</span>
  My commute times.
</div>

| Trip from home to... | ÖV (mins) | bike (mins) | foot (mins) | ÖV Comment                 | ÖV / bike | ÖV / foot |
|----------------------|-----------|-------------|-------------|----------------------------|-----------|-----------|
| friend               | 25        | 31          | 99          | bike &amp; train           | 0.81      | 0.25      |
| another friend       | 30        | 38          | 109         | bike &amp; train &amp;tram | 0.79      | 0.28      |
| main station         | 13        | 21          | 65          | bike &amp; train           | 0.62      | 0.20      |
| nice coffe shop      | 19        | 17          | 48          | foot &amp; tram            | 1.12      | 0.40      |
| Chinawiese           | 48        | 32          | 105         | foot &amp; 2x tram         | 1.50      | 0.46      |
| ETH Zentrum          | 25        | 23          | 70          | bike &amp; tram            | 1.09      | 0.36      |
| ETH Höng             | 17        | 21          | 50          | foot &amp; bus             | 0.81      | 0.34      |
| UZH Irchel           | 25        | 18          | 45          | foot &amp; tram            | 1.39      | 0.56      |
| Airport              | 25        | 24          | 81          | foot &amp; train           | 1.04      | 0.31      |
|                      |           |             |             | **Median ratio:**          | 1.04      | 0.34      |

</div>

Note that I have not omitted any trips to doctor the data. So for my day-to-day life I can conclude that taking public transport or the bike is about the same, and consistently about 3x as fast as walking.


## <span class="org-todo done DONE">DONE</span> Some formatting tests {#formatting-tests}


### Images {#images}

We can attach images to the org heading, we just have to make sure

{{< figure src="/ox-hugo/sisl_0_0.png" width="300" >}}

We can even make it textwidth

{{< figure src="/ox-hugo/sisl_0_0.png" width="100%" >}}

Note that we have set `org-export-with-tags` to `nil` to not include the tag in the headline.


### Footnotes! {#footnotes}

Here goes a footnote[^fn:2].
Notice that if we call this heading "Footnotes" there is a problem.


### Math {#math}

Here are some inline equations $ &int;_a^b x dx $ and some block equations:

\\[ 5 \times 5 = 25 \\]

Note that I had to change the format with which latex is processed in ox-hugo.


### Some {#some}


#### More {#more}

<!--list-separator-->

-  Subtrees!

    <!--list-separator-->

    -  Waauw

        <!--list-separator-->

        -  Weeee


### Tables {#tables}

| Thing    | How much I like it | comment |
|----------|--------------------|---------|
| sandwich | much               |         |
| apple    | not as much        |         |
| vim      | god-tier           |         |

Looks like hlines are not exported, however.


### Tabs {#tabs}

{{< tabs tabTotal="2" >}}
{{< tab tabName="First Tab" >}}
Hello!
{{< /tab >}}

{{< tab tabName="Second Tab" >}}
There
{{< /tab >}}
{{< /tabs >}}


### Text flow (lipsum) {#text-flow--lipsum}

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.


## <span class="org-todo done DONE">DONE</span> Car make reliability comparison {#car-make-reliability}

Like many other countries, Finland mandates annual car inspections, and _unlike_ other countries, also [publishes this data](https://tieto.traficom.fi/en/statistics/statistics-inspections).
It aggregates inspection failure data per (make+model, year) and reports average and median odometer reading (i.e. distance driven).

We can therefore plot this data and try to draw our own conclusion. We plot cars produced since 2014 (ten years ago), where each dot represents a different (model, year) tuple, and
additionally fit a linear regression line.

{{< figure src="/ox-hugo/plot.svg" caption="<span class=\"figure-number\">Figure 1: </span>Car inspection failure probability by make and odometer reading." >}}


### Some results {#some-results}

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


### Do brands differ within the same mother company? {#do-brands-differ-within-the-same-mother-company}

We can see that results line up quite closely per-mother company.
For instance, under the Hyundai corporation, Kia and Hyundai have very similar regression lines (left plot).
Similarly the Stellantis brands Opel, Peugot, and Citroen, line up relatively closely, and so do the Volkswagen brands, although Audi seems to be the "best" of those.
For RNM, we find Mitsubishi outperforming the others, namely Nissan, Dacia, and Renault.
Finally, both Toyota and its sub-brand Lexus have among the best results.


### Some caveats {#some-caveats}

-   Cars are bought for different purposes and thus may receive different levels of care. For instance, a car typically bought for recreational driving may receive a different level of care by its owner as compared to cars bought for work purposes.
-   Factors of car strain, such as temperature, snowfall, road surface, may be different in Finland compared to other countries.
-   One might expect electric car manufacturers to have lower inspection failures due to the relatively lower number of components. However, I can't find such a relation in the data, and notably, Tesla stands out with the highest rate of failures.

[^fn:1]: ...or underground, as we will later discuss
[^fn:2]: Here is the footnote!
