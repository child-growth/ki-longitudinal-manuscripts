---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
      A: ['parity_cat']
      Y: ['haz']
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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** fage

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_fhtcm
* single
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_fhtcm
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        fage       n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38           65     140
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32            25     140
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)        50     140
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38           25      65
Birth       ki0047075b-MAL-ED          BRAZIL                         <32            16      65
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)        24      65
Birth       ki0047075b-MAL-ED          INDIA                          >=38           26     128
Birth       ki0047075b-MAL-ED          INDIA                          <32            43     128
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)        59     128
Birth       ki0047075b-MAL-ED          NEPAL                          >=38           13      59
Birth       ki0047075b-MAL-ED          NEPAL                          <32             9      59
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)        37      59
Birth       ki0047075b-MAL-ED          PERU                           >=38           27      78
Birth       ki0047075b-MAL-ED          PERU                           <32            26      78
Birth       ki0047075b-MAL-ED          PERU                           [32-38)        25      78
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           52      75
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32             8      75
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        15      75
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           20      44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             6      44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        18      44
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38            3     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32           135     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)        28     166
Birth       ki1119695-PROBIT           BELARUS                        >=38          606   13333
Birth       ki1119695-PROBIT           BELARUS                        <32         10676   13333
Birth       ki1119695-PROBIT           BELARUS                        [32-38)      2051   13333
Birth       ki1135781-COHORTS          GUATEMALA                      >=38          222     735
Birth       ki1135781-COHORTS          GUATEMALA                      <32           337     735
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)       176     735
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38          303    2797
Birth       ki1135781-COHORTS          PHILIPPINES                    <32          1981    2797
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)       513    2797
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38           69     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32            30     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)        51     150
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38           30      79
6 months    ki0047075b-MAL-ED          BRAZIL                         <32            18      79
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79
6 months    ki0047075b-MAL-ED          INDIA                          >=38           36     161
6 months    ki0047075b-MAL-ED          INDIA                          <32            53     161
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)        72     161
6 months    ki0047075b-MAL-ED          NEPAL                          >=38           17      79
6 months    ki0047075b-MAL-ED          NEPAL                          <32            15      79
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)        47      79
6 months    ki0047075b-MAL-ED          PERU                           >=38           27      83
6 months    ki0047075b-MAL-ED          PERU                           <32            28      83
6 months    ki0047075b-MAL-ED          PERU                           [32-38)        28      83
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           64      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32             9      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16      89
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38           44    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32          1122    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)       165    1331
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38           40     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32           264     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        76     380
6 months    ki1119695-PROBIT           BELARUS                        >=38          701   15179
6 months    ki1119695-PROBIT           BELARUS                        <32         12174   15179
6 months    ki1119695-PROBIT           BELARUS                        [32-38)      2304   15179
6 months    ki1135781-COHORTS          GUATEMALA                      >=38          276     930
6 months    ki1135781-COHORTS          GUATEMALA                      <32           421     930
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)       233     930
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38          299    2622
6 months    ki1135781-COHORTS          PHILIPPINES                    <32          1828    2622
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)       495    2622
6 months    ki1148112-LCNI-5           MALAWI                         >=38           26     106
6 months    ki1148112-LCNI-5           MALAWI                         <32            56     106
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)        24     106
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38           69     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32            30     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)        52     151
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38           30      79
24 months   ki0047075b-MAL-ED          BRAZIL                         <32            18      79
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79
24 months   ki0047075b-MAL-ED          INDIA                          >=38           36     161
24 months   ki0047075b-MAL-ED          INDIA                          <32            53     161
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)        72     161
24 months   ki0047075b-MAL-ED          NEPAL                          >=38           17      79
24 months   ki0047075b-MAL-ED          NEPAL                          <32            15      79
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)        47      79
24 months   ki0047075b-MAL-ED          PERU                           >=38           26      79
24 months   ki0047075b-MAL-ED          PERU                           <32            27      79
24 months   ki0047075b-MAL-ED          PERU                           [32-38)        26      79
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           65      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32             8      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16      89
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100
24 months   ki1119695-PROBIT           BELARUS                        >=38          176    3848
24 months   ki1119695-PROBIT           BELARUS                        <32          3094    3848
24 months   ki1119695-PROBIT           BELARUS                        [32-38)       578    3848
24 months   ki1135781-COHORTS          GUATEMALA                      >=38          287    1032
24 months   ki1135781-COHORTS          GUATEMALA                      <32           495    1032
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)       250    1032
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38          271    2376
24 months   ki1135781-COHORTS          PHILIPPINES                    <32          1670    2376
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)       435    2376
24 months   ki1148112-LCNI-5           MALAWI                         >=38           21      74
24 months   ki1148112-LCNI-5           MALAWI                         <32            37      74
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)        16      74


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/da8a2f63-b8e0-48dc-bce2-2d135f68d8a9/25ec315b-9df6-4804-95af-e74f9ae704f8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9896351   -1.3790682   -0.6002019
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.6995072    0.3103560    1.0886584
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9210395   -1.4311183   -0.4109607
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.7252692   -1.0390629   -0.4114755
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.2467515   -0.0402391    0.5337422
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2314968   -0.0463098    0.5093034
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.7353026    0.1548671    1.3157380
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.9456121   -1.1035456   -0.7876785
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.3169779   -1.5370960   -1.0968599
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.9219033   -1.1051914   -0.7386152
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.2251271   -0.0326044    0.4828586
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.5940331    0.0972218    1.0908444
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7664057   -1.2332655   -0.2995459
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0661085   -0.5672124    0.6994294
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.2773447    0.7984126    1.7562767
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.3247121   -0.4351287    1.0845530
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4997620    0.0664995    0.9330246
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.7077075   -0.9908767   -0.4245383
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.4613496   -1.7149267   -1.2077725
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.6592680    0.5921766    0.7263595
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.3878315    0.2421975    0.5334655
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3681684   -0.5129925   -0.2233442
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.3372868    0.0828986    0.5916749
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9547540   -1.3070156   -0.6024924
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3522835   -0.3230894    1.0276563
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6634783   -1.0539640   -0.2729925
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1192555   -0.2371892    0.4757003
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0100167   -0.3193319    0.2992986
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0277054   -0.5408379    0.5962488
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3151008    0.0477392    0.5824623
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.8456065    0.7168636    0.9743494
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1744702   -0.2859169   -0.0630235
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6138579   -0.7272693   -0.5004465
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.1428417   -0.3461978    0.6318813


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0282143   -1.1991720   -0.8572566
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4923077    0.1981785    0.7864369
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.1116406   -1.2776411   -0.9456401
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7467797   -0.9945570   -0.4990023
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0162821   -0.2170871    0.1845230
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.1318667   -0.1289649    0.3926982
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7968182    0.4398380    1.1537983
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1410673   -1.3516550   -0.9304795
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0580408   -1.1607065   -0.9553751
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7309760   -0.7780724   -0.6838797
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1977833   -0.3606366   -0.0349301
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9393882    0.6572880    1.2214884
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7206832   -0.8692329   -0.5721336
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1778270   -0.0614697    0.4171237
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0140361    0.7785203    1.2495520
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5153558    0.2512666    0.7794450
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5034500    0.2959923    0.7109077
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6641059   -0.8040033   -0.5242086
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5783069    0.5185614    0.6380524
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1925914    0.1205037    0.2646791
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2878032   -0.3296319   -0.2459745
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.5058491    0.3128980    0.6988001
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8861589   -1.0281048   -0.7442131
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.5441139    0.2074310    0.8807969
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.8977019   -1.0295625   -0.7658412
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.2838608   -0.4798646   -0.0878569
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1203797   -0.0839887    0.3247482
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4538202    0.2465091    0.6611314
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0766500   -0.1115307    0.2648307
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6846323    0.5733690    0.7958955
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2760853   -0.3311930   -0.2209775
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6087584   -0.6459824   -0.5715345
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.1982432   -0.4246666    0.0281801


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0385792   -0.3585673    0.2814088
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.2071995   -0.5810784    0.1666794
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1906011   -0.6628844    0.2816822
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0215105   -0.2280286    0.1850076
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2630336   -0.5283563    0.0022891
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0996301   -0.2986476    0.0993873
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0615156   -0.5651809    0.6882122
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1954552   -0.2987012   -0.0922092
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2589371    0.0593034    0.4585708
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.1909272    0.0119538    0.3699007
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.4229104   -0.6801270   -0.1656939
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3453551   -0.0640062    0.7547164
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0457225   -0.3653406    0.4567856
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1117185   -0.4232018    0.6466388
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2633085   -0.6352877    0.1086706
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1906437   -0.4516497    0.8329371
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0036880   -0.4099546    0.4173306
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0436016   -0.1504717    0.2376749
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed           0.4491917    0.2190244    0.6793589
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0809611   -0.1356511   -0.0262712
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1952401   -0.3301801   -0.0603001
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0803652   -0.0606103    0.2213406
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.1685623   -0.0747532    0.4118777
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0685950   -0.2452642    0.3824543
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1918305   -0.4193627    0.8030236
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2342236   -0.6068502    0.1384030
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4031163   -0.7142913   -0.0919413
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.1303964   -0.1561559    0.4169487
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4261148   -0.1087214    0.9609510
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2384508   -0.4400692   -0.0368324
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1609742   -0.2811312   -0.0408172
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1016151   -0.2038322    0.0006021
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0050995   -0.1016917    0.1118907
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.3410850   -0.7513287    0.0691588
