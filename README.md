Supplementary materials repository for *A corpus-based study of
constructional equivalence for the Indonesian translation of ROB and
STEAL*
================
*by* [Gede Primahadi Wijaya
Rajeg](https://udayananetworking.unud.ac.id/lecturer/880-gede-primahadi-wijaya-rajeg)
<a itemprop="sameAs" content="https://orcid.org/0000-0002-2047-8621" href="https://orcid.org/0000-0002-2047-8621" target="orcid.widget" rel="noopener noreferrer" style="vertical-align:top;"><img src="https://orcid.org/sites/default/files/images/orcid_16x16.png" style="width:1em;margin-right:.5em;" alt="ORCID iD icon"></a>

<!-- README.md is generated from README.Rmd. Please edit that file -->
<!-- badges: start -->

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a>
[![](https://img.shields.io/badge/doi-10.17605/OSF.IO/PZC8Y-lightblue.svg)](https://doi.org/10.17605/OSF.IO/PZC8Y)
<br />The supplementary materials in this repository are licensed under
a
<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative
Commons Attribution-NonCommercial-ShareAlike 4.0 International
License</a>. <!-- badges: end -->

## Overview

The repository of [RStudio
project](https://r4ds.had.co.nz/workflow-projects.html) ([Wickham &
Grolemund 2017](#ref-wickham_r_2017)) and the supplementary materials
([Rajeg 2021b](#ref-Rajeg_Constructional_equivalence_in_2021)) for a
paper on the topic of constructional equivalence ([Rajeg & Rajeg
2022](#ref-rajeg_corpus_2022)) based on [this research
project](https://udayananetworking.unud.ac.id/lecturer/research/880-gede-primahadi-wijaya-rajeg/a-model-for-translation-study-based-on-english-indonesian-translation-database-and-its-pedagogical-implication-1179)
([Rajeg et al. 2021b](#ref-rajeg_material_2021)). The paper has been
[*published*](https://ejournal.undip.ac.id/index.php/parole/article/view/43717)
\#OpenAccess at [PAROLE: Journal of Linguistics and
Education](https://ejournal.undip.ac.id/index.php/parole):

> Rajeg, Gede Primahadi Wijaya & I Made Rajeg. 2022. A corpus linguistic
> study of constructional equivalence for the Indonesian translation of
> ROB and STEAL based on the OpenSubtitles Parallel Corpus. *PAROLE:
> Journal of Linguistics and Education* 12(2). 28–48.
> <https://ejournal.undip.ac.id/index.php/parole/article/view/43717>

The paper also comes with an accompanying [R](https://www.r-project.org)
package called [*paracorp*](https://gederajeg.github.io/paracorp/) (see
[Rajeg 2021a](#ref-rajeg_paracorp_2021)), which was designed to generate
the parallel keyword in context display from the parallel corpus. A
related paper to this one (written in Indonesian) focuses on the norm of
Indonesian lexical equivalence for ROB and STEAL (see [Rajeg et al.
2021a](#ref-rajeg_pemanfaatan_2021)).

This GitHub repository is linked to the [*Open Science
Framework*](https://osf.io/pzc8y/).

## Materials

1.  The main, annotated parallel-concordance data are available under
    the name
    [`ROB_sample_conc_main.tsv`](https://github.com/gederajeg/constructional-equivalence/blob/main/ROB_sample_conc_main.tsv)
    and
    [`STEAL_sample_conc_main.tsv`](https://github.com/gederajeg/constructional-equivalence/blob/main/STEAL_sample_conc_main.tsv).
    They are tab-separated files that can be open in spreadsheet
    software.

2.  The R data file
    [`freq-THEFT-verbs.rds`](https://github.com/gederajeg/constructional-equivalence/blob/main/freq-THEFT-verbs.rds)
    contain the raw frequency data for the word forms of the lemmas ROB
    and STEAL.

3.  The R codes for the analyses are included in the R Markdown Notebook
    file
    [`gpwrajeg_2021_paper-r-notebook.Rmd`](https://github.com/gederajeg/constructional-equivalence/blob/main/gpwrajeg_2021_paper-r-notebook.Rmd).
    This file also includes the in-line R codes to generate the
    statistics within the body-text of the paper. The following R
    packages are needed to run the R codes in the R Markdown Notebook:

    - the [`tidyverse`](https://www.tidyverse.org) suit of packages
    - the
      [`RColorBrewer`](https://cran.r-project.org/web/packages/RColorBrewer/index.html)
      package
    - the
      [`vcd`](https://cran.r-project.org/web/packages/vcd/index.html)
      package

4.  All figures in the paper are available in the
    [`figs`](https://github.com/gederajeg/constructional-equivalence/tree/main/figs)
    folder.

## R session info

``` r
devtools::session_info()
#> ─ Session info ───────────────────────────────────────────────────────────────
#>  setting  value
#>  version  R version 4.1.3 (2022-03-10)
#>  os       macOS Monterey 12.6
#>  system   aarch64, darwin20
#>  ui       X11
#>  language (EN)
#>  collate  en_US.UTF-8
#>  ctype    en_US.UTF-8
#>  tz       Asia/Makassar
#>  date     2022-12-09
#>  pandoc   2.19.2 @ /Applications/RStudio.app/Contents/MacOS/quarto/bin/tools/ (via rmarkdown)
#> 
#> ─ Packages ───────────────────────────────────────────────────────────────────
#>  package     * version date (UTC) lib source
#>  brio          1.1.3   2021-11-30 [1] CRAN (R 4.1.1)
#>  cachem        1.0.6   2021-08-19 [1] CRAN (R 4.1.1)
#>  callr         3.7.0   2021-04-20 [1] CRAN (R 4.1.0)
#>  cli           3.2.0   2022-02-14 [1] CRAN (R 4.1.1)
#>  crayon        1.5.0   2022-02-14 [1] CRAN (R 4.1.1)
#>  desc          1.4.1   2022-03-06 [1] CRAN (R 4.1.1)
#>  devtools      2.4.3   2021-11-30 [1] CRAN (R 4.1.1)
#>  digest        0.6.29  2021-12-01 [1] CRAN (R 4.1.1)
#>  ellipsis      0.3.2   2021-04-29 [1] CRAN (R 4.1.0)
#>  evaluate      0.15    2022-02-18 [1] CRAN (R 4.1.1)
#>  fastmap       1.1.0   2021-01-25 [1] CRAN (R 4.1.0)
#>  fs            1.5.2   2021-12-08 [1] CRAN (R 4.1.1)
#>  glue          1.6.2   2022-02-24 [1] CRAN (R 4.1.1)
#>  htmltools     0.5.2   2021-08-25 [1] CRAN (R 4.1.1)
#>  knitr         1.37    2021-12-16 [1] CRAN (R 4.1.1)
#>  lifecycle     1.0.1   2021-09-24 [1] CRAN (R 4.1.1)
#>  magrittr      2.0.2   2022-01-26 [1] CRAN (R 4.1.1)
#>  memoise       2.0.1   2021-11-26 [1] CRAN (R 4.1.1)
#>  pkgbuild      1.3.1   2021-12-20 [1] CRAN (R 4.1.1)
#>  pkgload       1.2.4   2021-11-30 [1] CRAN (R 4.1.1)
#>  prettyunits   1.1.1   2020-01-24 [1] CRAN (R 4.1.0)
#>  processx      3.5.2   2021-04-30 [1] CRAN (R 4.1.0)
#>  ps            1.6.0   2021-02-28 [1] CRAN (R 4.1.0)
#>  purrr         0.3.4   2020-04-17 [1] CRAN (R 4.1.0)
#>  R6            2.5.1   2021-08-19 [1] CRAN (R 4.1.1)
#>  remotes       2.4.2   2021-11-30 [1] CRAN (R 4.1.1)
#>  rlang         1.0.2   2022-03-04 [1] CRAN (R 4.1.1)
#>  rmarkdown     2.13    2022-03-10 [1] CRAN (R 4.1.1)
#>  rprojroot     2.0.2   2020-11-15 [1] CRAN (R 4.1.0)
#>  rstudioapi    0.13    2020-11-12 [1] CRAN (R 4.1.0)
#>  sessioninfo   1.2.2   2021-12-06 [1] CRAN (R 4.1.1)
#>  stringi       1.7.6   2021-11-29 [1] CRAN (R 4.1.1)
#>  stringr       1.4.0   2019-02-10 [1] CRAN (R 4.1.1)
#>  testthat      3.1.3   2022-03-29 [1] CRAN (R 4.1.1)
#>  usethis       2.1.5   2021-12-09 [1] CRAN (R 4.1.1)
#>  withr         2.5.0   2022-03-03 [1] CRAN (R 4.1.1)
#>  xfun          0.30    2022-03-02 [1] CRAN (R 4.1.1)
#>  yaml          2.3.5   2022-02-21 [1] CRAN (R 4.1.1)
#> 
#>  [1] /Library/Frameworks/R.framework/Versions/4.1-arm64/Resources/library
#> 
#> ──────────────────────────────────────────────────────────────────────────────
```

## References

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-rajeg_paracorp_2021" class="csl-entry">

Rajeg, Gede Primahadi Wijaya. 2021a. *Paracorp: A concordancer for
parallel, bilingual corpora*. R package v0.0.1. Bali, Indonesia:
Universitas Udayana.
doi:[10.17605/OSF.IO/HV9CU](https://doi.org/10.17605/OSF.IO/HV9CU).
<https://github.com/gederajeg/paracorp>.

</div>

<div id="ref-Rajeg_Constructional_equivalence_in_2021"
class="csl-entry">

Rajeg, Gede Primahadi Wijaya. 2021b. *<span
class="nocase">Constructional equivalence in the Indonesian translations
of ROB and STEAL</span>*.
doi:[10.17605/OSF.IO/PZC8Y](https://doi.org/10.17605/OSF.IO/PZC8Y).
<https://github.com/gederajeg/constructional-equivalence>.

</div>

<div id="ref-rajeg_corpus_2022" class="csl-entry">

Rajeg, Gede Primahadi Wijaya & I Made Rajeg. 2022. A corpus linguistic
study of constructional equivalence for the Indonesian translation of
ROB and STEAL based on the OpenSubtitles Parallel Corpus. *PAROLE:
Journal of Linguistics and Education* 12(2). 28–48.
<https://ejournal.undip.ac.id/index.php/parole/article/view/43717>.

</div>

<div id="ref-rajeg_pemanfaatan_2021" class="csl-entry">

Rajeg, Gede Primahadi Wijaya, I Made Rajeg, Putu Dea Indah Kartini & I
Gede Semara Dharma Putra. 2021a. Pemanfaatan Bank-Data Digital Dwibahasa
dalam Kajian Terjemahan: Studi Kasus Padanan Bahasa Indonesia untuk
Verba Sinonim Bahasa Inggris ROB & STEAL. *Prosiding Seminar Nasional
Sains dan Teknologi (SENASTEK) 2021*, 0831–0835. Bali, Indonesia:
Lembaga Penelitian dan Pengabdian kepada Masyarakat (LPPM) Universitas
Udayana.
doi:[10.6084/m9.figshare.17078369](https://doi.org/10.6084/m9.figshare.17078369).

</div>

<div id="ref-rajeg_material_2021" class="csl-entry">

Rajeg, Gede Primahadi Wijaya, I Made Rajeg, Putu Dea Indah Kartini & I
Gede Semara Dharma Putra. 2021b. Material pendukung untuk *MODEL KAJIAN
TERJEMAHAN BERBASIS BANK DATA TERJEMAHAN DIGITAL INGGRIS-INDONESIA DAN
IMPLIKASI PEDAGOGISNYA*. Open Science Framework.
doi:[10.17605/OSF.IO/Y6ESA](https://doi.org/10.17605/OSF.IO/Y6ESA).
<https://osf.io/y6esa/>.

</div>

<div id="ref-wickham_r_2017" class="csl-entry">

Wickham, Hadley & Garrett Grolemund. 2017. *R for Data Science*. Canada:
O’Reilly. <http://r4ds.had.co.nz/> (7 March, 2017).

</div>

</div>
