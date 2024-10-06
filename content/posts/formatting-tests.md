+++
title = "Some formatting tests"
author = ["Romeo Valentin"]
date = 2024-09-04T14:58:00+02:00
draft = false
+++

<div class="ox-hugo-toc toc">

<div class="heading">Table of Contents</div>

- [Images](#images)
- [Footnotes!](#footnotes)
- [Math](#math)
- [Some](#some)
    - [More](#more)
        - [Subtrees!](#subtrees)
- [Tables](#tables)
- [Tabs](#tabs)
- [Text flow (lipsum)](#text-flow--lipsum)

</div>
<!--endtoc-->


## Images {#images}

We can attach images to the org heading, we just have to make sure

{{< figure src="/ox-hugo/sisl_0_0.png" width="300" >}}

We can even make it textwidth

{{< figure src="/ox-hugo/sisl_0_0.png" width="100%" >}}

Note that we have set `org-export-with-tags` to `nil` to not include the tag in the headline.


## Footnotes! {#footnotes}

Here goes a footnote[^fn:1].
Notice that if we call this heading "Footnotes" there is a problem.


## Math {#math}

Here are some inline equations $ &int;_a^b x dx $ and some block equations:

$$ 5 \times 5 = 25 $$

Note that I had to change the format with which latex is processed in ox-hugo.


## Some {#some}


### More {#more}


#### Subtrees! {#subtrees}

<!--list-separator-->

-  Waauw

    <!--list-separator-->

    -  Weeee


## Tables {#tables}

| Thing    | How much I like it | comment |
|----------|--------------------|---------|
| sandwich | much               |         |
| apple    | not as much        |         |
| vim      | god-tier           |         |

Looks like hlines are not exported, however.


## Tabs {#tabs}

{{< tabs tabTotal="2" >}}
{{< tab tabName="First Tab" >}}
Hello!
{{< /tab >}}

{{< tab tabName="Second Tab" >}}
There
{{< /tab >}}
{{< /tabs >}}


## Text flow (lipsum) {#text-flow--lipsum}

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

[^fn:1]: Here is the footnote!
