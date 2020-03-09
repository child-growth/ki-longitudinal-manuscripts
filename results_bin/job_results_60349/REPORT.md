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

**Intervention Variable:** hfoodsec

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* vagbrth
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_vagbrth
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid      country        hfoodsec                swasted   n_cell       n
----------  -----------  -------------  ---------------------  --------  -------  ------
Birth       GMS-Nepal    NEPAL          Food Secure                   0      423     620
Birth       GMS-Nepal    NEPAL          Food Secure                   1       19     620
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure          0       98     620
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure          1        2     620
Birth       GMS-Nepal    NEPAL          Food Insecure                 0       74     620
Birth       GMS-Nepal    NEPAL          Food Insecure                 1        4     620
Birth       JiVitA-3     BANGLADESH     Food Secure                   0     5713   11763
Birth       JiVitA-3     BANGLADESH     Food Secure                   1       84   11763
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure          0     3876   11763
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure          1       71   11763
Birth       JiVitA-3     BANGLADESH     Food Insecure                 0     1984   11763
Birth       JiVitA-3     BANGLADESH     Food Insecure                 1       35   11763
Birth       JiVitA-4     BANGLADESH     Food Secure                   0     1190    2383
Birth       JiVitA-4     BANGLADESH     Food Secure                   1       15    2383
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure          0      858    2383
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure          1       12    2383
Birth       JiVitA-4     BANGLADESH     Food Insecure                 0      304    2383
Birth       JiVitA-4     BANGLADESH     Food Insecure                 1        4    2383
Birth       MAL-ED       BANGLADESH     Food Secure                   0      133     162
Birth       MAL-ED       BANGLADESH     Food Secure                   1        5     162
Birth       MAL-ED       BANGLADESH     Mildly Food Insecure          0        3     162
Birth       MAL-ED       BANGLADESH     Mildly Food Insecure          1        0     162
Birth       MAL-ED       BANGLADESH     Food Insecure                 0       19     162
Birth       MAL-ED       BANGLADESH     Food Insecure                 1        2     162
Birth       MAL-ED       BRAZIL         Food Secure                   0        0      26
Birth       MAL-ED       BRAZIL         Food Secure                   1        0      26
Birth       MAL-ED       BRAZIL         Mildly Food Insecure          0        4      26
Birth       MAL-ED       BRAZIL         Mildly Food Insecure          1        0      26
Birth       MAL-ED       BRAZIL         Food Insecure                 0       22      26
Birth       MAL-ED       BRAZIL         Food Insecure                 1        0      26
Birth       MAL-ED       INDIA          Food Secure                   0       32      35
Birth       MAL-ED       INDIA          Food Secure                   1        0      35
Birth       MAL-ED       INDIA          Mildly Food Insecure          0        1      35
Birth       MAL-ED       INDIA          Mildly Food Insecure          1        0      35
Birth       MAL-ED       INDIA          Food Insecure                 0        2      35
Birth       MAL-ED       INDIA          Food Insecure                 1        0      35
Birth       MAL-ED       NEPAL          Food Secure                   0       10      14
Birth       MAL-ED       NEPAL          Food Secure                   1        0      14
Birth       MAL-ED       NEPAL          Mildly Food Insecure          0        1      14
Birth       MAL-ED       NEPAL          Mildly Food Insecure          1        0      14
Birth       MAL-ED       NEPAL          Food Insecure                 0        2      14
Birth       MAL-ED       NEPAL          Food Insecure                 1        1      14
Birth       MAL-ED       PERU           Food Secure                   0       23      89
Birth       MAL-ED       PERU           Food Secure                   1        0      89
Birth       MAL-ED       PERU           Mildly Food Insecure          0       22      89
Birth       MAL-ED       PERU           Mildly Food Insecure          1        0      89
Birth       MAL-ED       PERU           Food Insecure                 0       44      89
Birth       MAL-ED       PERU           Food Insecure                 1        0      89
Birth       MAL-ED       SOUTH AFRICA   Food Secure                   0       45      87
Birth       MAL-ED       SOUTH AFRICA   Food Secure                   1        0      87
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0        9      87
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0      87
Birth       MAL-ED       SOUTH AFRICA   Food Insecure                 0       33      87
Birth       MAL-ED       SOUTH AFRICA   Food Insecure                 1        0      87
Birth       NIH-Birth    BANGLADESH     Food Secure                   0       80     575
Birth       NIH-Birth    BANGLADESH     Food Secure                   1        6     575
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure          0      424     575
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure          1       29     575
Birth       NIH-Birth    BANGLADESH     Food Insecure                 0       33     575
Birth       NIH-Birth    BANGLADESH     Food Insecure                 1        3     575
Birth       NIH-Crypto   BANGLADESH     Food Secure                   0      395     707
Birth       NIH-Crypto   BANGLADESH     Food Secure                   1       34     707
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      189     707
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure          1       10     707
Birth       NIH-Crypto   BANGLADESH     Food Insecure                 0       76     707
Birth       NIH-Crypto   BANGLADESH     Food Insecure                 1        3     707
6 months    GMS-Nepal    NEPAL          Food Secure                   0      390     546
6 months    GMS-Nepal    NEPAL          Food Secure                   1        6     546
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure          0       76     546
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure          1        0     546
6 months    GMS-Nepal    NEPAL          Food Insecure                 0       73     546
6 months    GMS-Nepal    NEPAL          Food Insecure                 1        1     546
6 months    JiVitA-3     BANGLADESH     Food Secure                   0     8282   16764
6 months    JiVitA-3     BANGLADESH     Food Secure                   1      114   16764
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure          0     5515   16764
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure          1       75   16764
6 months    JiVitA-3     BANGLADESH     Food Insecure                 0     2737   16764
6 months    JiVitA-3     BANGLADESH     Food Insecure                 1       41   16764
6 months    JiVitA-4     BANGLADESH     Food Secure                   0     2429    4795
6 months    JiVitA-4     BANGLADESH     Food Secure                   1       16    4795
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure          0     1713    4795
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure          1       15    4795
6 months    JiVitA-4     BANGLADESH     Food Insecure                 0      620    4795
6 months    JiVitA-4     BANGLADESH     Food Insecure                 1        2    4795
6 months    MAL-ED       BANGLADESH     Food Secure                   0      158     193
6 months    MAL-ED       BANGLADESH     Food Secure                   1        2     193
6 months    MAL-ED       BANGLADESH     Mildly Food Insecure          0        4     193
6 months    MAL-ED       BANGLADESH     Mildly Food Insecure          1        0     193
6 months    MAL-ED       BANGLADESH     Food Insecure                 0       29     193
6 months    MAL-ED       BANGLADESH     Food Insecure                 1        0     193
6 months    MAL-ED       BRAZIL         Food Secure                   0        3     129
6 months    MAL-ED       BRAZIL         Food Secure                   1        0     129
6 months    MAL-ED       BRAZIL         Mildly Food Insecure          0       11     129
6 months    MAL-ED       BRAZIL         Mildly Food Insecure          1        0     129
6 months    MAL-ED       BRAZIL         Food Insecure                 0      115     129
6 months    MAL-ED       BRAZIL         Food Insecure                 1        0     129
6 months    MAL-ED       INDIA          Food Secure                   0      185     212
6 months    MAL-ED       INDIA          Food Secure                   1        5     212
6 months    MAL-ED       INDIA          Mildly Food Insecure          0        5     212
6 months    MAL-ED       INDIA          Mildly Food Insecure          1        0     212
6 months    MAL-ED       INDIA          Food Insecure                 0       16     212
6 months    MAL-ED       INDIA          Food Insecure                 1        1     212
6 months    MAL-ED       NEPAL          Food Secure                   0       94     128
6 months    MAL-ED       NEPAL          Food Secure                   1        0     128
6 months    MAL-ED       NEPAL          Mildly Food Insecure          0       15     128
6 months    MAL-ED       NEPAL          Mildly Food Insecure          1        0     128
6 months    MAL-ED       NEPAL          Food Insecure                 0       19     128
6 months    MAL-ED       NEPAL          Food Insecure                 1        0     128
6 months    MAL-ED       PERU           Food Secure                   0       27     111
6 months    MAL-ED       PERU           Food Secure                   1        0     111
6 months    MAL-ED       PERU           Mildly Food Insecure          0       28     111
6 months    MAL-ED       PERU           Mildly Food Insecure          1        0     111
6 months    MAL-ED       PERU           Food Insecure                 0       56     111
6 months    MAL-ED       PERU           Food Insecure                 1        0     111
6 months    MAL-ED       SOUTH AFRICA   Food Secure                   0      128     228
6 months    MAL-ED       SOUTH AFRICA   Food Secure                   1        1     228
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       18     228
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0     228
6 months    MAL-ED       SOUTH AFRICA   Food Insecure                 0       79     228
6 months    MAL-ED       SOUTH AFRICA   Food Insecure                 1        2     228
6 months    NIH-Birth    BANGLADESH     Food Secure                   0       80     537
6 months    NIH-Birth    BANGLADESH     Food Secure                   1        0     537
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure          0      412     537
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure          1        5     537
6 months    NIH-Birth    BANGLADESH     Food Insecure                 0       39     537
6 months    NIH-Birth    BANGLADESH     Food Insecure                 1        1     537
6 months    NIH-Crypto   BANGLADESH     Food Secure                   0      427     715
6 months    NIH-Crypto   BANGLADESH     Food Secure                   1        0     715
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      204     715
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure          1        0     715
6 months    NIH-Crypto   BANGLADESH     Food Insecure                 0       84     715
6 months    NIH-Crypto   BANGLADESH     Food Insecure                 1        0     715
24 months   GMS-Nepal    NEPAL          Food Secure                   0      331     477
24 months   GMS-Nepal    NEPAL          Food Secure                   1       10     477
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure          0       65     477
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure          1        2     477
24 months   GMS-Nepal    NEPAL          Food Insecure                 0       67     477
24 months   GMS-Nepal    NEPAL          Food Insecure                 1        2     477
24 months   JiVitA-3     BANGLADESH     Food Secure                   0     3699    8190
24 months   JiVitA-3     BANGLADESH     Food Secure                   1      158    8190
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure          0     2657    8190
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure          1       96    8190
24 months   JiVitA-3     BANGLADESH     Food Insecure                 0     1512    8190
24 months   JiVitA-3     BANGLADESH     Food Insecure                 1       68    8190
24 months   JiVitA-4     BANGLADESH     Food Secure                   0     2319    4696
24 months   JiVitA-4     BANGLADESH     Food Secure                   1       70    4696
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure          0     1659    4696
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure          1       40    4696
24 months   JiVitA-4     BANGLADESH     Food Insecure                 0      589    4696
24 months   JiVitA-4     BANGLADESH     Food Insecure                 1       19    4696
24 months   MAL-ED       BANGLADESH     Food Secure                   0      161     194
24 months   MAL-ED       BANGLADESH     Food Secure                   1        0     194
24 months   MAL-ED       BANGLADESH     Mildly Food Insecure          0        4     194
24 months   MAL-ED       BANGLADESH     Mildly Food Insecure          1        0     194
24 months   MAL-ED       BANGLADESH     Food Insecure                 0       29     194
24 months   MAL-ED       BANGLADESH     Food Insecure                 1        0     194
24 months   MAL-ED       BRAZIL         Food Secure                   0        3     129
24 months   MAL-ED       BRAZIL         Food Secure                   1        0     129
24 months   MAL-ED       BRAZIL         Mildly Food Insecure          0       11     129
24 months   MAL-ED       BRAZIL         Mildly Food Insecure          1        0     129
24 months   MAL-ED       BRAZIL         Food Insecure                 0      115     129
24 months   MAL-ED       BRAZIL         Food Insecure                 1        0     129
24 months   MAL-ED       INDIA          Food Secure                   0      190     212
24 months   MAL-ED       INDIA          Food Secure                   1        0     212
24 months   MAL-ED       INDIA          Mildly Food Insecure          0        3     212
24 months   MAL-ED       INDIA          Mildly Food Insecure          1        2     212
24 months   MAL-ED       INDIA          Food Insecure                 0       17     212
24 months   MAL-ED       INDIA          Food Insecure                 1        0     212
24 months   MAL-ED       NEPAL          Food Secure                   0       94     128
24 months   MAL-ED       NEPAL          Food Secure                   1        0     128
24 months   MAL-ED       NEPAL          Mildly Food Insecure          0       15     128
24 months   MAL-ED       NEPAL          Mildly Food Insecure          1        0     128
24 months   MAL-ED       NEPAL          Food Insecure                 0       19     128
24 months   MAL-ED       NEPAL          Food Insecure                 1        0     128
24 months   MAL-ED       PERU           Food Secure                   0       26     107
24 months   MAL-ED       PERU           Food Secure                   1        0     107
24 months   MAL-ED       PERU           Mildly Food Insecure          0       27     107
24 months   MAL-ED       PERU           Mildly Food Insecure          1        0     107
24 months   MAL-ED       PERU           Food Insecure                 0       53     107
24 months   MAL-ED       PERU           Food Insecure                 1        1     107
24 months   MAL-ED       SOUTH AFRICA   Food Secure                   0      129     228
24 months   MAL-ED       SOUTH AFRICA   Food Secure                   1        0     228
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       18     228
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0     228
24 months   MAL-ED       SOUTH AFRICA   Food Insecure                 0       81     228
24 months   MAL-ED       SOUTH AFRICA   Food Insecure                 1        0     228
24 months   NIH-Birth    BANGLADESH     Food Secure                   0       67     428
24 months   NIH-Birth    BANGLADESH     Food Secure                   1        1     428
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure          0      319     428
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure          1        8     428
24 months   NIH-Birth    BANGLADESH     Food Insecure                 0       32     428
24 months   NIH-Birth    BANGLADESH     Food Insecure                 1        1     428
24 months   NIH-Crypto   BANGLADESH     Food Secure                   0      330     514
24 months   NIH-Crypto   BANGLADESH     Food Secure                   1        4     514
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      124     514
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure          1        0     514
24 months   NIH-Crypto   BANGLADESH     Food Insecure                 0       56     514
24 months   NIH-Crypto   BANGLADESH     Food Insecure                 1        0     514


The following strata were considered:

* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/da5522a1-70f6-403a-a2ba-ea5ed1d40a06/164c58f4-7471-4453-9484-d9318d9d48ec/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/da5522a1-70f6-403a-a2ba-ea5ed1d40a06/164c58f4-7471-4453-9484-d9318d9d48ec/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/da5522a1-70f6-403a-a2ba-ea5ed1d40a06/164c58f4-7471-4453-9484-d9318d9d48ec/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/da5522a1-70f6-403a-a2ba-ea5ed1d40a06/164c58f4-7471-4453-9484-d9318d9d48ec/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid    country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
----------  ---------  -----------  ---------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3   BANGLADESH   Food Secure            NA                0.0139883   0.0104245   0.0175522
Birth       JiVitA-3   BANGLADESH   Mildly Food Insecure   NA                0.0175255   0.0127707   0.0222803
Birth       JiVitA-3   BANGLADESH   Food Insecure          NA                0.0158895   0.0104979   0.0212811
6 months    JiVitA-3   BANGLADESH   Food Secure            NA                0.0140479   0.0109685   0.0171273
6 months    JiVitA-3   BANGLADESH   Mildly Food Insecure   NA                0.0131734   0.0099811   0.0163657
6 months    JiVitA-3   BANGLADESH   Food Insecure          NA                0.0138884   0.0093407   0.0184361
24 months   JiVitA-3   BANGLADESH   Food Secure            NA                0.0438374   0.0360653   0.0516095
24 months   JiVitA-3   BANGLADESH   Mildly Food Insecure   NA                0.0322311   0.0244592   0.0400030
24 months   JiVitA-3   BANGLADESH   Food Insecure          NA                0.0324864   0.0238958   0.0410769
24 months   JiVitA-4   BANGLADESH   Food Secure            NA                0.0292821   0.0215801   0.0369840
24 months   JiVitA-4   BANGLADESH   Mildly Food Insecure   NA                0.0234608   0.0149046   0.0320170
24 months   JiVitA-4   BANGLADESH   Food Insecure          NA                0.0316599   0.0185102   0.0448096


### Parameter: E(Y)


agecat      studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3   BANGLADESH   NA                   NA                0.0161523   0.0134079   0.0188967
6 months    JiVitA-3   BANGLADESH   NA                   NA                0.0137199   0.0116432   0.0157966
24 months   JiVitA-3   BANGLADESH   NA                   NA                0.0393162   0.0348276   0.0438049
24 months   JiVitA-4   BANGLADESH   NA                   NA                0.0274702   0.0222302   0.0327101


### Parameter: RR


agecat      studyid    country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
----------  ---------  -----------  ---------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
Birth       JiVitA-3   BANGLADESH   Mildly Food Insecure   Food Secure       1.2528642   0.8752548   1.7933849
Birth       JiVitA-3   BANGLADESH   Food Insecure          Food Secure       1.1359089   0.7411901   1.7408340
6 months    JiVitA-3   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6 months    JiVitA-3   BANGLADESH   Mildly Food Insecure   Food Secure       0.9377485   0.6853143   1.2831662
6 months    JiVitA-3   BANGLADESH   Food Insecure          Food Secure       0.9886502   0.6712402   1.4561542
24 months   JiVitA-3   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
24 months   JiVitA-3   BANGLADESH   Mildly Food Insecure   Food Secure       0.7352428   0.5445912   0.9926379
24 months   JiVitA-3   BANGLADESH   Food Insecure          Food Secure       0.7410652   0.5367503   1.0231530
24 months   JiVitA-4   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
24 months   JiVitA-4   BANGLADESH   Mildly Food Insecure   Food Secure       0.8011990   0.5056553   1.2694810
24 months   JiVitA-4   BANGLADESH   Food Insecure          Food Secure       1.0812038   0.6726374   1.7379375


### Parameter: PAR


agecat      studyid    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3   BANGLADESH   Food Secure          NA                 0.0021640   -0.0004366   0.0047646
6 months    JiVitA-3   BANGLADESH   Food Secure          NA                -0.0003280   -0.0023507   0.0016947
24 months   JiVitA-3   BANGLADESH   Food Secure          NA                -0.0045212   -0.0104136   0.0013713
24 months   JiVitA-4   BANGLADESH   Food Secure          NA                -0.0018119   -0.0070029   0.0033792


### Parameter: PAF


agecat      studyid    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3   BANGLADESH   Food Secure          NA                 0.1339741   -0.0418431   0.2801211
6 months    JiVitA-3   BANGLADESH   Food Secure          NA                -0.0239065   -0.1819946   0.1130378
24 months   JiVitA-3   BANGLADESH   Food Secure          NA                -0.1149946   -0.2744909   0.0245414
24 months   JiVitA-4   BANGLADESH   Food Secure          NA                -0.0659579   -0.2718546   0.1066068
