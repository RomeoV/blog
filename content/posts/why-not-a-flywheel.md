+++
title = "Why not a flywheel?"
author = ["Romeo Valentin"]
draft = true
+++

## Motivation {#motivation}

-   Energy storage is becoming increasingly important.
-   Current solutions include
    -   batteries
    -   water storage
    -   connected grid
    -   fuel?


## Why not a flywheel? {#why-not-a-flywheel}

A flywheel can also be used for energy storage.

Essentially, take a wheel and start spinning it when energy is cheap.
When you need the energy again, use a generator, i.e., electric motor, to get energy back.


## How large would a flywheel need to be? {#how-large-would-a-flywheel-need-to-be}

Let us imagine a world where each household has a flywheel in the basement[^fn:1] that aims to provide one full day of energy.
I will consider Switzerland, where I currently live. A government study has found that
a typical swiss 2 person household in a detached house requires about 3'550 kWh per year, or about 10 kWh per day.

Let us compute what that would mean for our flywheel.


### Kinetic energy of a flywheel {#kinetic-energy-of-a-flywheel}

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


### How fast can we spin a flywheel? {#how-fast-can-we-spin-a-flywheel}

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


## Reducing losses {#reducing-losses}

To reduce our losses, we need to do three things:


### Surface friction losses {#surface-friction-losses}

-   run the flywheel in a vacuum
-   use low-friction coating on flywheel surface
-   use low-density gas before pulling vaccum


### bearing loss {#bearing-loss}

-   electromagnetic bearing?


### axis of rotation {#axis-of-rotation}

One additional loss to consider is the following.
Recall that a rotating body takes force to change the axis of rotation. However, since the earth is rotating, typically we will be required to exert the force necessary to "follow" the earth rotation. This can be counteracted, however, by aligning the flywheel with the earth's axis of rotation.


## Cost of construction {#cost-of-construction}

flywheel material
: \\(12'000 kg \* 700 USD / (1000 kg) = 8'400 USD\\)


## Other approaches {#other-approaches}


### Lifting heavy masses {#lifting-heavy-masses}

-   potential energy (against gravity) instead of kinetic energy

Basic equation:
\\(m h g = 10kWh = 3600 kWs\\)
\\(h 1000kg 9.81m/s^2 = 3600 kWs\\)
\\(h 1000kg 10m/s^2 = 3600 1000 kg m^2 / s^2\\)
$h 1000 10 = 3600 1000 m $
$h  = 360 m $

So at 100% efficiency, we need to lift one cubic meter of water about 360m high (world trade center top floor is 375m, Eiffel tower top floor is 275m).

Efficiency of pumped water storage is 70-80% (!)


### Battery {#battery}


### Chemical {#chemical}


## claude conversation {#claude-conversation}


### Great. Now I want to know the maximum angular velocity that steel can take before it breaks from the radial force. Can you help me with that? {#great-dot-now-i-want-to-know-the-maximum-angular-velocity-that-steel-can-take-before-it-breaks-from-the-radial-force-dot-can-you-help-me-with-that}

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

[^fn:1]: ...or underground, as we will later discuss
