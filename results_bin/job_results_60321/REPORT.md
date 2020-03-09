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

**Outcome Variable:** wasted

## Predictor Variables

**Intervention Variable:** exclfeed6

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
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

agecat      studyid          country                        exclfeed6    wasted   n_cell       n
----------  ---------------  -----------------------------  ----------  -------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1                 0        7       7
Birth       CMC-V-BCS-2002   INDIA                          1                 1        0       7
Birth       CMC-V-BCS-2002   INDIA                          0                 0        0       7
Birth       CMC-V-BCS-2002   INDIA                          0                 1        0       7
Birth       EE               PAKISTAN                       1                 0       20      28
Birth       EE               PAKISTAN                       1                 1        4      28
Birth       EE               PAKISTAN                       0                 0        3      28
Birth       EE               PAKISTAN                       0                 1        1      28
Birth       GMS-Nepal        NEPAL                          1                 0      309     522
Birth       GMS-Nepal        NEPAL                          1                 1       81     522
Birth       GMS-Nepal        NEPAL                          0                 0      111     522
Birth       GMS-Nepal        NEPAL                          0                 1       21     522
Birth       IRC              INDIA                          1                 0        0      12
Birth       IRC              INDIA                          1                 1        0      12
Birth       IRC              INDIA                          0                 0        8      12
Birth       IRC              INDIA                          0                 1        4      12
Birth       JiVitA-3         BANGLADESH                     1                 0     7428   10744
Birth       JiVitA-3         BANGLADESH                     1                 1      953   10744
Birth       JiVitA-3         BANGLADESH                     0                 0     2121   10744
Birth       JiVitA-3         BANGLADESH                     0                 1      242   10744
Birth       JiVitA-4         BANGLADESH                     1                 0     1623    2224
Birth       JiVitA-4         BANGLADESH                     1                 1      176    2224
Birth       JiVitA-4         BANGLADESH                     0                 0      378    2224
Birth       JiVitA-4         BANGLADESH                     0                 1       47    2224
Birth       Keneba           GAMBIA                         1                 0      351    1327
Birth       Keneba           GAMBIA                         1                 1       99    1327
Birth       Keneba           GAMBIA                         0                 0      645    1327
Birth       Keneba           GAMBIA                         0                 1      232    1327
Birth       MAL-ED           BANGLADESH                     1                 0       25     194
Birth       MAL-ED           BANGLADESH                     1                 1        4     194
Birth       MAL-ED           BANGLADESH                     0                 0      135     194
Birth       MAL-ED           BANGLADESH                     0                 1       30     194
Birth       MAL-ED           BRAZIL                         1                 0        1      57
Birth       MAL-ED           BRAZIL                         1                 1        0      57
Birth       MAL-ED           BRAZIL                         0                 0       54      57
Birth       MAL-ED           BRAZIL                         0                 1        2      57
Birth       MAL-ED           INDIA                          1                 0        1      37
Birth       MAL-ED           INDIA                          1                 1        0      37
Birth       MAL-ED           INDIA                          0                 0       31      37
Birth       MAL-ED           INDIA                          0                 1        5      37
Birth       MAL-ED           NEPAL                          1                 0        2      23
Birth       MAL-ED           NEPAL                          1                 1        0      23
Birth       MAL-ED           NEPAL                          0                 0       20      23
Birth       MAL-ED           NEPAL                          0                 1        1      23
Birth       MAL-ED           PERU                           1                 0        2     208
Birth       MAL-ED           PERU                           1                 1        0     208
Birth       MAL-ED           PERU                           0                 0      201     208
Birth       MAL-ED           PERU                           0                 1        5     208
Birth       MAL-ED           SOUTH AFRICA                   1                 0        0      90
Birth       MAL-ED           SOUTH AFRICA                   1                 1        0      90
Birth       MAL-ED           SOUTH AFRICA                   0                 0       81      90
Birth       MAL-ED           SOUTH AFRICA                   0                 1        9      90
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0        0     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        0     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0      104     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1        1     105
Birth       PROVIDE          BANGLADESH                     1                 0      116     532
Birth       PROVIDE          BANGLADESH                     1                 1       39     532
Birth       PROVIDE          BANGLADESH                     0                 0      299     532
Birth       PROVIDE          BANGLADESH                     0                 1       78     532
Birth       SAS-CompFeed     INDIA                          1                 0      283     325
Birth       SAS-CompFeed     INDIA                          1                 1       27     325
Birth       SAS-CompFeed     INDIA                          0                 0       14     325
Birth       SAS-CompFeed     INDIA                          0                 1        1     325
6 months    CMC-V-BCS-2002   INDIA                          1                 0       17      19
6 months    CMC-V-BCS-2002   INDIA                          1                 1        2      19
6 months    CMC-V-BCS-2002   INDIA                          0                 0        0      19
6 months    CMC-V-BCS-2002   INDIA                          0                 1        0      19
6 months    EE               PAKISTAN                       1                 0       39      48
6 months    EE               PAKISTAN                       1                 1        4      48
6 months    EE               PAKISTAN                       0                 0        5      48
6 months    EE               PAKISTAN                       0                 1        0      48
6 months    GMS-Nepal        NEPAL                          1                 0      370     547
6 months    GMS-Nepal        NEPAL                          1                 1       36     547
6 months    GMS-Nepal        NEPAL                          0                 0      127     547
6 months    GMS-Nepal        NEPAL                          0                 1       14     547
6 months    IRC              INDIA                          1                 0        0      14
6 months    IRC              INDIA                          1                 1        0      14
6 months    IRC              INDIA                          0                 0       11      14
6 months    IRC              INDIA                          0                 1        3      14
6 months    JiVitA-3         BANGLADESH                     1                 0     6948    9882
6 months    JiVitA-3         BANGLADESH                     1                 1      662    9882
6 months    JiVitA-3         BANGLADESH                     0                 0     2080    9882
6 months    JiVitA-3         BANGLADESH                     0                 1      192    9882
6 months    JiVitA-4         BANGLADESH                     1                 0     3152    4275
6 months    JiVitA-4         BANGLADESH                     1                 1      163    4275
6 months    JiVitA-4         BANGLADESH                     0                 0      882    4275
6 months    JiVitA-4         BANGLADESH                     0                 1       78    4275
6 months    Keneba           GAMBIA                         1                 0      562    1908
6 months    Keneba           GAMBIA                         1                 1       24    1908
6 months    Keneba           GAMBIA                         0                 0     1232    1908
6 months    Keneba           GAMBIA                         0                 1       90    1908
6 months    LCNI-5           MALAWI                         1                 0       47     272
6 months    LCNI-5           MALAWI                         1                 1        0     272
6 months    LCNI-5           MALAWI                         0                 0      221     272
6 months    LCNI-5           MALAWI                         0                 1        4     272
6 months    MAL-ED           BANGLADESH                     1                 0       31     231
6 months    MAL-ED           BANGLADESH                     1                 1        2     231
6 months    MAL-ED           BANGLADESH                     0                 0      192     231
6 months    MAL-ED           BANGLADESH                     0                 1        6     231
6 months    MAL-ED           BRAZIL                         1                 0       12     209
6 months    MAL-ED           BRAZIL                         1                 1        0     209
6 months    MAL-ED           BRAZIL                         0                 0      196     209
6 months    MAL-ED           BRAZIL                         0                 1        1     209
6 months    MAL-ED           INDIA                          1                 0        2     218
6 months    MAL-ED           INDIA                          1                 1        0     218
6 months    MAL-ED           INDIA                          0                 0      200     218
6 months    MAL-ED           INDIA                          0                 1       16     218
6 months    MAL-ED           NEPAL                          1                 0        5     225
6 months    MAL-ED           NEPAL                          1                 1        0     225
6 months    MAL-ED           NEPAL                          0                 0      216     225
6 months    MAL-ED           NEPAL                          0                 1        4     225
6 months    MAL-ED           PERU                           1                 0        5     271
6 months    MAL-ED           PERU                           1                 1        0     271
6 months    MAL-ED           PERU                           0                 0      266     271
6 months    MAL-ED           PERU                           0                 1        0     271
6 months    MAL-ED           SOUTH AFRICA                   1                 0        0     233
6 months    MAL-ED           SOUTH AFRICA                   1                 1        0     233
6 months    MAL-ED           SOUTH AFRICA                   0                 0      226     233
6 months    MAL-ED           SOUTH AFRICA                   0                 1        7     233
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0        0     232
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        0     232
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0      231     232
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1        1     232
6 months    PROVIDE          BANGLADESH                     1                 0      138     603
6 months    PROVIDE          BANGLADESH                     1                 1        3     603
6 months    PROVIDE          BANGLADESH                     0                 0      440     603
6 months    PROVIDE          BANGLADESH                     0                 1       22     603
6 months    SAS-CompFeed     INDIA                          1                 0      330     395
6 months    SAS-CompFeed     INDIA                          1                 1       46     395
6 months    SAS-CompFeed     INDIA                          0                 0       17     395
6 months    SAS-CompFeed     INDIA                          0                 1        2     395
6 months    SAS-FoodSuppl    INDIA                          1                 0        0     168
6 months    SAS-FoodSuppl    INDIA                          1                 1        0     168
6 months    SAS-FoodSuppl    INDIA                          0                 0      127     168
6 months    SAS-FoodSuppl    INDIA                          0                 1       41     168
24 months   CMC-V-BCS-2002   INDIA                          1                 0       18      19
24 months   CMC-V-BCS-2002   INDIA                          1                 1        1      19
24 months   CMC-V-BCS-2002   INDIA                          0                 0        0      19
24 months   CMC-V-BCS-2002   INDIA                          0                 1        0      19
24 months   EE               PAKISTAN                       1                 0       17      23
24 months   EE               PAKISTAN                       1                 1        3      23
24 months   EE               PAKISTAN                       0                 0        3      23
24 months   EE               PAKISTAN                       0                 1        0      23
24 months   GMS-Nepal        NEPAL                          1                 0      294     469
24 months   GMS-Nepal        NEPAL                          1                 1       61     469
24 months   GMS-Nepal        NEPAL                          0                 0       85     469
24 months   GMS-Nepal        NEPAL                          0                 1       29     469
24 months   IRC              INDIA                          1                 0        0      14
24 months   IRC              INDIA                          1                 1        0      14
24 months   IRC              INDIA                          0                 0       14      14
24 months   IRC              INDIA                          0                 1        0      14
24 months   JiVitA-3         BANGLADESH                     1                 0     3039    5067
24 months   JiVitA-3         BANGLADESH                     1                 1      860    5067
24 months   JiVitA-3         BANGLADESH                     0                 0      916    5067
24 months   JiVitA-3         BANGLADESH                     0                 1      252    5067
24 months   JiVitA-4         BANGLADESH                     1                 0     2653    4184
24 months   JiVitA-4         BANGLADESH                     1                 1      613    4184
24 months   JiVitA-4         BANGLADESH                     0                 0      714    4184
24 months   JiVitA-4         BANGLADESH                     0                 1      204    4184
24 months   Keneba           GAMBIA                         1                 0      463    1514
24 months   Keneba           GAMBIA                         1                 1       51    1514
24 months   Keneba           GAMBIA                         0                 0      891    1514
24 months   Keneba           GAMBIA                         0                 1      109    1514
24 months   LCNI-5           MALAWI                         1                 0       33     184
24 months   LCNI-5           MALAWI                         1                 1        1     184
24 months   LCNI-5           MALAWI                         0                 0      147     184
24 months   LCNI-5           MALAWI                         0                 1        3     184
24 months   MAL-ED           BANGLADESH                     1                 0       27     205
24 months   MAL-ED           BANGLADESH                     1                 1        4     205
24 months   MAL-ED           BANGLADESH                     0                 0      158     205
24 months   MAL-ED           BANGLADESH                     0                 1       16     205
24 months   MAL-ED           BRAZIL                         1                 0       11     169
24 months   MAL-ED           BRAZIL                         1                 1        0     169
24 months   MAL-ED           BRAZIL                         0                 0      155     169
24 months   MAL-ED           BRAZIL                         0                 1        3     169
24 months   MAL-ED           INDIA                          1                 0        2     209
24 months   MAL-ED           INDIA                          1                 1        0     209
24 months   MAL-ED           INDIA                          0                 0      183     209
24 months   MAL-ED           INDIA                          0                 1       24     209
24 months   MAL-ED           NEPAL                          1                 0        5     219
24 months   MAL-ED           NEPAL                          1                 1        0     219
24 months   MAL-ED           NEPAL                          0                 0      209     219
24 months   MAL-ED           NEPAL                          0                 1        5     219
24 months   MAL-ED           PERU                           1                 0        3     201
24 months   MAL-ED           PERU                           1                 1        0     201
24 months   MAL-ED           PERU                           0                 0      194     201
24 months   MAL-ED           PERU                           0                 1        4     201
24 months   MAL-ED           SOUTH AFRICA                   1                 0        0     216
24 months   MAL-ED           SOUTH AFRICA                   1                 1        0     216
24 months   MAL-ED           SOUTH AFRICA                   0                 0      215     216
24 months   MAL-ED           SOUTH AFRICA                   0                 1        1     216
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0        0     202
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        0     202
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0      198     202
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1        4     202
24 months   PROVIDE          BANGLADESH                     1                 0      127     579
24 months   PROVIDE          BANGLADESH                     1                 1       10     579
24 months   PROVIDE          BANGLADESH                     0                 0      390     579
24 months   PROVIDE          BANGLADESH                     0                 1       52     579


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/3cd7d258-02e8-44b1-847c-e8a4cae3c5e6/d88640de-cd19-449b-b7c5-267e5d9d3815/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3cd7d258-02e8-44b1-847c-e8a4cae3c5e6/d88640de-cd19-449b-b7c5-267e5d9d3815/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3cd7d258-02e8-44b1-847c-e8a4cae3c5e6/d88640de-cd19-449b-b7c5-267e5d9d3815/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3cd7d258-02e8-44b1-847c-e8a4cae3c5e6/d88640de-cd19-449b-b7c5-267e5d9d3815/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                0.2059799   0.1656564   0.2463034
Birth       GMS-Nepal   NEPAL        0                    NA                0.1481436   0.0855320   0.2107553
Birth       JiVitA-3    BANGLADESH   1                    NA                0.1112259   0.1048242   0.1176277
Birth       JiVitA-3    BANGLADESH   0                    NA                0.1109863   0.1042266   0.1177459
Birth       JiVitA-4    BANGLADESH   1                    NA                0.0978740   0.0808351   0.1149129
Birth       JiVitA-4    BANGLADESH   0                    NA                0.1104923   0.0736237   0.1473610
Birth       Keneba      GAMBIA       1                    NA                0.2418512   0.2181260   0.2655764
Birth       Keneba      GAMBIA       0                    NA                0.2523392   0.2285142   0.2761642
Birth       PROVIDE     BANGLADESH   1                    NA                0.2375432   0.1690379   0.3060485
Birth       PROVIDE     BANGLADESH   0                    NA                0.2106165   0.1696879   0.2515452
6 months    GMS-Nepal   NEPAL        1                    NA                0.0873908   0.0597070   0.1150746
6 months    GMS-Nepal   NEPAL        0                    NA                0.0925403   0.0421023   0.1429782
6 months    JiVitA-3    BANGLADESH   1                    NA                0.0870648   0.0797724   0.0943572
6 months    JiVitA-3    BANGLADESH   0                    NA                0.0845044   0.0723369   0.0966718
6 months    JiVitA-4    BANGLADESH   1                    NA                0.0495613   0.0394303   0.0596922
6 months    JiVitA-4    BANGLADESH   0                    NA                0.0790137   0.0610158   0.0970115
6 months    Keneba      GAMBIA       1                    NA                0.0421823   0.0262010   0.0581637
6 months    Keneba      GAMBIA       0                    NA                0.0678769   0.0543104   0.0814434
24 months   GMS-Nepal   NEPAL        1                    NA                0.1711003   0.1318269   0.2103738
24 months   GMS-Nepal   NEPAL        0                    NA                0.2631121   0.1823665   0.3438576
24 months   JiVitA-3    BANGLADESH   1                    NA                0.2202341   0.2045972   0.2358710
24 months   JiVitA-3    BANGLADESH   0                    NA                0.2186304   0.1902224   0.2470384
24 months   JiVitA-4    BANGLADESH   1                    NA                0.1908076   0.1752857   0.2063295
24 months   JiVitA-4    BANGLADESH   0                    NA                0.2112947   0.1748479   0.2477414
24 months   Keneba      GAMBIA       1                    NA                0.0966145   0.0708849   0.1223440
24 months   Keneba      GAMBIA       0                    NA                0.1096914   0.0904381   0.1289448
24 months   PROVIDE     BANGLADESH   1                    NA                0.0719054   0.0277631   0.1160477
24 months   PROVIDE     BANGLADESH   0                    NA                0.1173951   0.0872995   0.1474906


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL        NA                   NA                0.1954023   0.1613549   0.2294497
Birth       JiVitA-3    BANGLADESH   NA                   NA                0.1112249   0.1049045   0.1175452
Birth       JiVitA-4    BANGLADESH   NA                   NA                0.1002698   0.0846581   0.1158815
Birth       Keneba      GAMBIA       NA                   NA                0.2494348   0.2261459   0.2727237
Birth       PROVIDE     BANGLADESH   NA                   NA                0.2199248   0.1846953   0.2551543
6 months    GMS-Nepal   NEPAL        NA                   NA                0.0914077   0.0672348   0.1155805
6 months    JiVitA-3    BANGLADESH   NA                   NA                0.0864198   0.0802086   0.0926309
6 months    JiVitA-4    BANGLADESH   NA                   NA                0.0563743   0.0475411   0.0652074
6 months    Keneba      GAMBIA       NA                   NA                0.0597484   0.0491105   0.0703864
24 months   GMS-Nepal   NEPAL        NA                   NA                0.1918977   0.1562203   0.2275751
24 months   JiVitA-3    BANGLADESH   NA                   NA                0.2194592   0.2057462   0.2331723
24 months   JiVitA-4    BANGLADESH   NA                   NA                0.1952677   0.1809764   0.2095589
24 months   Keneba      GAMBIA       NA                   NA                0.1056803   0.0901896   0.1211711
24 months   PROVIDE     BANGLADESH   NA                   NA                0.1070812   0.0818727   0.1322897


### Parameter: RR


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       GMS-Nepal   NEPAL        0                    1                 0.7192141   0.4510044   1.146927
Birth       JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3    BANGLADESH   0                    1                 0.9978452   0.9666066   1.030093
Birth       JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-4    BANGLADESH   0                    1                 1.1289244   0.7775073   1.639175
Birth       Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
Birth       Keneba      GAMBIA       0                    1                 1.0433654   0.9994978   1.089158
Birth       PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       PROVIDE     BANGLADESH   0                    1                 0.8866451   0.6276358   1.252541
6 months    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    GMS-Nepal   NEPAL        0                    1                 1.0589243   0.5635989   1.989572
6 months    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3    BANGLADESH   0                    1                 0.9705913   0.8201601   1.148614
6 months    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-4    BANGLADESH   0                    1                 1.5942629   1.1734829   2.165923
6 months    Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    Keneba      GAMBIA       0                    1                 1.6091306   1.0484749   2.469588
24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   GMS-Nepal   NEPAL        0                    1                 1.5377648   1.0483427   2.255675
24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3    BANGLADESH   0                    1                 0.9927181   0.8560808   1.151164
24 months   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-4    BANGLADESH   0                    1                 1.1073702   0.9184501   1.335150
24 months   Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
24 months   Keneba      GAMBIA       0                    1                 1.1353524   0.8262384   1.560113
24 months   PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   PROVIDE     BANGLADESH   0                    1                 1.6326329   0.8394944   3.175114


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                -0.0105776   -0.0296807   0.0085255
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.0000011   -0.0007782   0.0007761
Birth       JiVitA-4    BANGLADESH   1                    NA                 0.0023958   -0.0053132   0.0101048
Birth       Keneba      GAMBIA       1                    NA                 0.0075836    0.0003682   0.0147990
Birth       PROVIDE     BANGLADESH   1                    NA                -0.0176184   -0.0742463   0.0390095
6 months    GMS-Nepal   NEPAL        1                    NA                 0.0040169   -0.0106799   0.0187136
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0006451   -0.0039446   0.0026545
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.0068130    0.0021388   0.0114872
6 months    Keneba      GAMBIA       1                    NA                 0.0175661    0.0030417   0.0320905
24 months   GMS-Nepal   NEPAL        1                    NA                 0.0207973   -0.0010674   0.0426621
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0007748   -0.0082625   0.0067128
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0044601   -0.0034847   0.0124048
24 months   Keneba      GAMBIA       1                    NA                 0.0090659   -0.0121550   0.0302867
24 months   PROVIDE     BANGLADESH   1                    NA                 0.0351758   -0.0057742   0.0761258


### Parameter: PAF


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                -0.0541323   -0.1562607   0.0389755
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.0000095   -0.0070208   0.0069530
Birth       JiVitA-4    BANGLADESH   1                    NA                 0.0238934   -0.0559812   0.0977263
Birth       Keneba      GAMBIA       1                    NA                 0.0304031    0.0011717   0.0587790
Birth       PROVIDE     BANGLADESH   1                    NA                -0.0801111   -0.3702859   0.1486157
6 months    GMS-Nepal   NEPAL        1                    NA                 0.0439445   -0.1309884   0.1918201
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0074644   -0.0463313   0.0299588
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.1208532    0.0308759   0.2024766
6 months    Keneba      GAMBIA       1                    NA                 0.2940008    0.0123541   0.4953305
24 months   GMS-Nepal   NEPAL        1                    NA                 0.1083772   -0.0121234   0.2145313
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0035307   -0.0382364   0.0300148
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0228408   -0.0185373   0.0625380
24 months   Keneba      GAMBIA       1                    NA                 0.0857858   -0.1385933   0.2659471
24 months   PROVIDE     BANGLADESH   1                    NA                 0.3284966   -0.1765018   0.6167309
