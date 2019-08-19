---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
params:
  roles:
    value:
      - exclude
      - strata
      - id
      - W
      - A
      - Y
  data: 
    value: 
      type: 'web'
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.rdata'
  nodes:
    value:
      strata: ['study_id', 'mrace']
      id: ['subjid']
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
  script_params:
    value:
      parallelize:
        input: checkbox
        value: FALSE
      count_A:
        input: checkbox
        value: TRUE
      count_Y:
        input: checkbox
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** swasted

## Predictor Variables

**Intervention Variable:** nhh

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* cleanck
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country      nhh          swasted   n_cell     n
----------  -------------------------  -----------  ----------  --------  -------  ----
Birth       ki1000108-IRC              INDIA        3 or less          0       41   343
Birth       ki1000108-IRC              INDIA        3 or less          1       11   343
Birth       ki1000108-IRC              INDIA        4-5                0      111   343
Birth       ki1000108-IRC              INDIA        4-5                1       20   343
Birth       ki1000108-IRC              INDIA        6-7                0       72   343
Birth       ki1000108-IRC              INDIA        6-7                1       12   343
Birth       ki1000108-IRC              INDIA        8+                 0       65   343
Birth       ki1000108-IRC              INDIA        8+                 1       11   343
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less          0        6    28
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less          1        1    28
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5                0       11    28
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5                1        0    28
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7                0        6    28
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7                1        1    28
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                 0        3    28
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                 1        0    28
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less          0        7    23
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less          1        1    23
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5                0        7    23
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5                1        0    23
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7                0        5    23
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7                1        0    23
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                 0        3    23
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                 1        0    23
6 months    ki1000108-IRC              INDIA        3 or less          0       52   408
6 months    ki1000108-IRC              INDIA        3 or less          1        5   408
6 months    ki1000108-IRC              INDIA        4-5                0      149   408
6 months    ki1000108-IRC              INDIA        4-5                1        8   408
6 months    ki1000108-IRC              INDIA        6-7                0      104   408
6 months    ki1000108-IRC              INDIA        6-7                1        3   408
6 months    ki1000108-IRC              INDIA        8+                 0       81   408
6 months    ki1000108-IRC              INDIA        8+                 1        6   408
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less          0       33   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less          1        0   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                0      159   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                1        7   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                0      107   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                1        8   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                 0       62   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                 1        4   380
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less          0       95   536
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less          1        0   536
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                0      224   536
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                1        3   536
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                0      126   536
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                1        1   536
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                 0       86   536
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                 1        1   536
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less          0      100   582
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less          1        2   582
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                0      277   582
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                1        0   582
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                0      125   582
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                1        1   582
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                 0       75   582
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                 1        2   582
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less          0      104   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less          1        0   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                0      326   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                1        0   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                0      170   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                1        0   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                 0      115   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                 1        0   715
6 months    ki1148112-LCNI-5           MALAWI       3 or less          0      224   816
6 months    ki1148112-LCNI-5           MALAWI       3 or less          1        0   816
6 months    ki1148112-LCNI-5           MALAWI       4-5                0      340   816
6 months    ki1148112-LCNI-5           MALAWI       4-5                1        0   816
6 months    ki1148112-LCNI-5           MALAWI       6-7                0      182   816
6 months    ki1148112-LCNI-5           MALAWI       6-7                1        0   816
6 months    ki1148112-LCNI-5           MALAWI       8+                 0       70   816
6 months    ki1148112-LCNI-5           MALAWI       8+                 1        0   816
24 months   ki1000108-IRC              INDIA        3 or less          0       57   409
24 months   ki1000108-IRC              INDIA        3 or less          1        1   409
24 months   ki1000108-IRC              INDIA        4-5                0      155   409
24 months   ki1000108-IRC              INDIA        4-5                1        3   409
24 months   ki1000108-IRC              INDIA        6-7                0      107   409
24 months   ki1000108-IRC              INDIA        6-7                1        0   409
24 months   ki1000108-IRC              INDIA        8+                 0       85   409
24 months   ki1000108-IRC              INDIA        8+                 1        1   409
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less          0       72   428
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less          1        2   428
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                0      179   428
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                1        5   428
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                0       99   428
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                1        1   428
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                 0       68   428
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                 1        2   428
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less          0      104   578
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less          1        1   578
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                0      269   578
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                1        4   578
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                0      113   578
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                1        4   578
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                 0       83   578
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                 1        0   578
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less          0       69   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less          1        0   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                0      229   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                1        3   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                0      130   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                1        0   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                 0       82   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                 1        1   514
24 months   ki1148112-LCNI-5           MALAWI       3 or less          0      156   558
24 months   ki1148112-LCNI-5           MALAWI       3 or less          1        1   558
24 months   ki1148112-LCNI-5           MALAWI       4-5                0      230   558
24 months   ki1148112-LCNI-5           MALAWI       4-5                1        0   558
24 months   ki1148112-LCNI-5           MALAWI       6-7                0      123   558
24 months   ki1148112-LCNI-5           MALAWI       6-7                1        0   558
24 months   ki1148112-LCNI-5           MALAWI       8+                 0       48   558
24 months   ki1148112-LCNI-5           MALAWI       8+                 1        0   558


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/4299f12a-331d-4cc1-80c2-9798b8234c6a/cbf6686b-fc14-4039-9366-75ce0cd3f55d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4299f12a-331d-4cc1-80c2-9798b8234c6a/cbf6686b-fc14-4039-9366-75ce0cd3f55d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4299f12a-331d-4cc1-80c2-9798b8234c6a/cbf6686b-fc14-4039-9366-75ce0cd3f55d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4299f12a-331d-4cc1-80c2-9798b8234c6a/cbf6686b-fc14-4039-9366-75ce0cd3f55d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat   studyid         country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  --------------  --------  -------------------  ---------------  ----------  ----------  ----------
Birth    ki1000108-IRC   INDIA     3 or less            NA                0.2061006   0.0930631   0.3191381
Birth    ki1000108-IRC   INDIA     4-5                  NA                0.1526608   0.0908420   0.2144796
Birth    ki1000108-IRC   INDIA     6-7                  NA                0.1373890   0.0621292   0.2126489
Birth    ki1000108-IRC   INDIA     8+                   NA                0.1552693   0.0752745   0.2352641


### Parameter: E(Y)


agecat   studyid         country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  --------------  --------  -------------------  ---------------  ----------  ----------  ----------
Birth    ki1000108-IRC   INDIA     NA                   NA                0.1574344   0.1188345   0.1960344


### Parameter: RR


agecat   studyid         country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
-------  --------------  --------  -------------------  ---------------  ----------  ----------  ---------
Birth    ki1000108-IRC   INDIA     3 or less            3 or less         1.0000000   1.0000000   1.000000
Birth    ki1000108-IRC   INDIA     4-5                  3 or less         0.7407102   0.3747181   1.464172
Birth    ki1000108-IRC   INDIA     6-7                  3 or less         0.6666114   0.3074773   1.445215
Birth    ki1000108-IRC   INDIA     8+                   3 or less         0.7533665   0.3553665   1.597115


### Parameter: PAR


agecat   studyid         country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------  --------------  --------  -------------------  ---------------  -----------  -----------  ----------
Birth    ki1000108-IRC   INDIA     3 or less            NA                -0.0486662   -0.1508555   0.0535231


### Parameter: PAF


agecat   studyid         country   intervention_level   baseline_level      estimate    ci_lower    ci_upper
-------  --------------  --------  -------------------  ---------------  -----------  ----------  ----------
Birth    ki1000108-IRC   INDIA     3 or less            NA                -0.3091206   -1.143306   0.2003958
