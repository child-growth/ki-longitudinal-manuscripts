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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** parity

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* vagbrth
* W_nrooms
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_vagbrth
* delta_W_nrooms
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        parity    n_cell       n
----------  -------------------------  -----------------------------  -------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1             41     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          2             44     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+            81     166
Birth       ki1101329-Keneba           GAMBIA                         1            142    1292
Birth       ki1101329-Keneba           GAMBIA                         2            133    1292
Birth       ki1101329-Keneba           GAMBIA                         3+          1017    1292
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1           5561   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2           3882   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+          3472   12915
Birth       ki1135781-COHORTS          GUATEMALA                      1             94     756
Birth       ki1135781-COHORTS          GUATEMALA                      2            118     756
Birth       ki1135781-COHORTS          GUATEMALA                      3+           544     756
Birth       ki1135781-COHORTS          INDIA                          1            641    3855
Birth       ki1135781-COHORTS          INDIA                          2            982    3855
Birth       ki1135781-COHORTS          INDIA                          3+          2232    3855
Birth       ki1135781-COHORTS          PHILIPPINES                    1            640    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    2            657    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    3+          1602    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           4604   15692
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2           5539   15692
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+          5549   15692
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            392    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2            302    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+           640    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             72     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2             84     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+           217     373
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            211     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     2            212     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+           159     582
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            679    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            657    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           658    1994
6 months    ki1101329-Keneba           GAMBIA                         1            195    1623
6 months    ki1101329-Keneba           GAMBIA                         2            164    1623
6 months    ki1101329-Keneba           GAMBIA                         3+          1264    1623
6 months    ki1113344-GMS-Nepal        NEPAL                          1            153     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2            149     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3+           261     563
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1           3285    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2           2514    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+          2464    8263
6 months    ki1135781-COHORTS          GUATEMALA                      1            132     963
6 months    ki1135781-COHORTS          GUATEMALA                      2            139     963
6 months    ki1135781-COHORTS          GUATEMALA                      3+           692     963
6 months    ki1135781-COHORTS          INDIA                          1            741    4285
6 months    ki1135781-COHORTS          INDIA                          2           1093    4285
6 months    ki1135781-COHORTS          INDIA                          3+          2451    4285
6 months    ki1135781-COHORTS          PHILIPPINES                    1            574    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    2            607    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    3+          1525    2706
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           6390   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2           5685   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+          4701   16776
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            211     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2            213     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+           154     578
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             4       6
24 months   ki1101329-Keneba           GAMBIA                         1            137    1376
24 months   ki1101329-Keneba           GAMBIA                         2            139    1376
24 months   ki1101329-Keneba           GAMBIA                         3+          1100    1376
24 months   ki1113344-GMS-Nepal        NEPAL                          1            136     498
24 months   ki1113344-GMS-Nepal        NEPAL                          2            130     498
24 months   ki1113344-GMS-Nepal        NEPAL                          3+           232     498
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            160     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            121     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           141     422
24 months   ki1135781-COHORTS          GUATEMALA                      1            167    1076
24 months   ki1135781-COHORTS          GUATEMALA                      2            151    1076
24 months   ki1135781-COHORTS          GUATEMALA                      3+           758    1076
24 months   ki1135781-COHORTS          INDIA                          1            561    3354
24 months   ki1135781-COHORTS          INDIA                          2            837    3354
24 months   ki1135781-COHORTS          INDIA                          3+          1956    3354
24 months   ki1135781-COHORTS          PHILIPPINES                    1            523    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    2            544    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    3+          1382    2449
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           3158    8595
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           2909    8595
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+          2528    8595


The following strata were considered:

* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/f4261423-aabf-426b-9269-6d458ac833c7/b2947000-ac2a-4580-9660-67eb46109c98/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f4261423-aabf-426b-9269-6d458ac833c7/b2947000-ac2a-4580-9660-67eb46109c98/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f4261423-aabf-426b-9269-6d458ac833c7/b2947000-ac2a-4580-9660-67eb46109c98/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.5255776   -0.7158682   -0.3352869
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.2089960   -0.7523617    0.3343696
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -0.2349449   -0.6802631    0.2103732
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                 1.1597179    0.7632766    1.5561592
Birth       ki1101329-Keneba           GAMBIA                         2                    NA                 1.4427745    1.0702173    1.8153318
Birth       ki1101329-Keneba           GAMBIA                         3+                   NA                 1.7132683    1.5909491    1.8355875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.7223571   -0.7865111   -0.6582032
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.4126715   -0.4879044   -0.3374386
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.3403790   -0.4146855   -0.2660725
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -1.6610174   -2.0545041   -1.2675307
Birth       ki1135781-COHORTS          GUATEMALA                      2                    NA                -1.1893668   -1.5726500   -0.8060837
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   NA                -1.0607042   -1.2029272   -0.9184813
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -1.1518725   -1.2666499   -1.0370951
Birth       ki1135781-COHORTS          INDIA                          2                    NA                -0.9788114   -1.0726125   -0.8850102
Birth       ki1135781-COHORTS          INDIA                          3+                   NA                -0.8988593   -0.9526334   -0.8450852
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -1.1875367   -1.3256028   -1.0494707
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    NA                -0.8549044   -1.0140053   -0.6958036
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -0.5989802   -0.6731405   -0.5248199
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.8766976   -0.9314893   -0.8219059
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.6764324   -0.7246319   -0.6282328
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -0.6461401   -0.6888123   -0.6034678
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.5769001   -0.6620224   -0.4917779
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.7470500   -0.9321324   -0.5619677
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -0.6619800   -0.8319908   -0.4919691
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.6184516   -0.8810703   -0.3558329
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                -1.1569840   -1.4998640   -0.8141039
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                -1.0374886   -1.2006045   -0.8743727
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0995789   -0.2990167    0.0998589
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.1893913   -0.3593111   -0.0194714
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.4597049   -0.6096016   -0.3098082
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0065886   -0.1203024    0.1334795
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.0404974   -0.0793988    0.1603936
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                 0.0646606   -0.0571464    0.1864675
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0667068   -0.2072197    0.0738061
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                -0.0024632   -0.2778042    0.2728777
6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                -0.1331764   -0.2123607   -0.0539921
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2433053   -0.4942685    0.0076579
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.6020070   -1.0915310   -0.1124830
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -0.7344026   -0.8917611   -0.5770441
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.3651814    0.3083167    0.4220461
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                 0.2859743    0.2176494    0.3542992
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                 0.2937178    0.2053393    0.3820964
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.1621961   -0.0891966    0.4135888
6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                 0.2668562   -0.0250645    0.5587769
6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                 0.1910083    0.0935965    0.2884201
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.5894155   -0.6937671   -0.4850638
6 months    ki1135781-COHORTS          INDIA                          2                    NA                -0.6047949   -0.6909418   -0.5186480
6 months    ki1135781-COHORTS          INDIA                          3+                   NA                -0.8103139   -0.8625716   -0.7580563
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.2466430   -0.3615402   -0.1317457
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                -0.2327099   -0.3542461   -0.1111736
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -0.3421208   -0.4288715   -0.2553700
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.5739777   -0.6269323   -0.5210231
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.5716045   -0.6129691   -0.5302399
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -0.5801790   -0.6258444   -0.5345136
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.8286845   -1.0170976   -0.6402714
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.8378507   -1.0334900   -0.6422114
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -1.0463321   -1.2365309   -0.8561333
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.7634819   -0.9326274   -0.5943365
24 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.7095422   -0.9598055   -0.4592789
24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                -0.7543046   -0.8244149   -0.6841943
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.0793998   -1.4093806   -0.7494190
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.0127595   -1.3681371   -0.6573818
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -0.9670169   -1.0958248   -0.8382090
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.9548886   -1.1089439   -0.8008333
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -1.0268523   -1.2257271   -0.8279776
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -1.3679639   -1.6202626   -1.1156653
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.3107628   -0.5154808   -0.1060448
24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                -0.2515877   -0.5326784    0.0295029
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                -0.2802901   -0.3579976   -0.2025826
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.5103737   -0.6202996   -0.4004477
24 months   ki1135781-COHORTS          INDIA                          2                    NA                -0.5121154   -0.6024175   -0.4218132
24 months   ki1135781-COHORTS          INDIA                          3+                   NA                -0.7422043   -0.7923940   -0.6920147
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.4013563   -0.5301830   -0.2725297
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                -0.6035118   -0.7324888   -0.4745348
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -0.6921060   -0.7587600   -0.6254520
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.2341399   -1.2949135   -1.1733662
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.3246884   -1.3850605   -1.2643163
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -1.2789502   -1.3509068   -1.2069937


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.2697590   -0.5399211    0.0004030
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 1.7138545    1.6262621    1.8014469
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5152877   -0.5411394   -0.4894359
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9498080   -0.9874148   -0.9122013
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7238886   -0.7437224   -0.7040548
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6657084   -0.8024377   -0.5289791
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.9946381   -1.1114079   -0.8778682
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.2083706   -0.2927992   -0.1239419
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0797179    0.0266621    0.1327737
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1874118   -0.2456850   -0.1291387
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.6047987   -0.6909649   -0.5186325
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3048076    0.2787350    0.3308802
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1940810    0.1226351    0.2655269
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.7068611   -0.7417800   -0.6719423
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5932502   -0.6127743   -0.5737261
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8879412   -0.9708680   -0.8050144
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.7834078   -0.8357743   -0.7310414
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1315863   -1.2192240   -1.0439487
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1802133   -1.2803837   -1.0800428
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2813755   -0.3354674   -0.2272835
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.6564729   -0.6914450   -0.6215007
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2971774   -1.3204904   -1.2738644


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.3165816   -0.3368058    0.9699690
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+                   1                  0.2906326   -0.2461349    0.8274002
Birth       ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         2                    1                  0.2830566   -0.2599867    0.8261000
Birth       ki1101329-Keneba           GAMBIA                         3+                   1                  0.5535504    0.1388355    0.9682654
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.3096857    0.2108363    0.4085350
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                  0.3819781    0.2838195    0.4801368
Birth       ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      2                    1                  0.4716505   -0.0771053    1.0204064
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.6003131    0.1815205    1.0191057
Birth       ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          2                    1                  0.1730611    0.0247077    0.3214145
Birth       ki1135781-COHORTS          INDIA                          3+                   1                  0.2530132    0.1261861    0.3798403
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    1                  0.3326323    0.1220164    0.5432482
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   1                  0.5885565    0.4316278    0.7454852
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.2002653    0.1278475    0.2726830
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                  0.2305576    0.1623027    0.2988125
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.1701499   -0.3370001   -0.0032997
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0850798   -0.2461597    0.0760000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 -0.5385324   -0.9698255   -0.1072392
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 -0.4190370   -0.7290023   -0.1090717
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0898124   -0.3521151    0.1724903
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.3601261   -0.6091092   -0.1111429
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0339088   -0.1404297    0.2082474
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0580720   -0.1182676    0.2344116
6 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                  0.0642436   -0.2449670    0.3734542
6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 -0.0664695   -0.2270191    0.0940800
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.3587017   -0.9099162    0.1925129
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.4910973   -0.7864622   -0.1957324
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0792071   -0.1681457    0.0097315
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0714636   -0.1765837    0.0336565
6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                  0.1046601   -0.2804706    0.4897908
6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.0288122   -0.2404815    0.2981058
6 months    ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          2                    1                 -0.0153794   -0.1506397    0.1198808
6 months    ki1135781-COHORTS          INDIA                          3+                   1                 -0.2208985   -0.3375575   -0.1042395
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                  0.0139331   -0.1532901    0.1811563
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 -0.0954778   -0.2393853    0.0484296
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0023732   -0.0637354    0.0684817
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0062013   -0.0734123    0.0610098
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0091662   -0.2813720    0.2630397
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.2176475   -0.4856448    0.0503497
24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.0539397   -0.2482255    0.3561049
24 months   ki1101329-Keneba           GAMBIA                         3+                   1                  0.0091773   -0.1741060    0.1924607
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0666404   -0.4186646    0.5519453
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                  0.1123829   -0.2435712    0.4683371
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0719638   -0.3215165    0.1775889
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.4130754   -0.7079367   -0.1182140
24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                  0.0591751   -0.2886224    0.4069726
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.0304727   -0.1885199    0.2494653
24 months   ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          2                    1                 -0.0017417   -0.1438056    0.1403222
24 months   ki1135781-COHORTS          INDIA                          3+                   1                 -0.2318307   -0.3526090   -0.1110523
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 -0.2021555   -0.3843293   -0.0199817
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 -0.2907497   -0.4356248   -0.1458745
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0905486   -0.1748544   -0.0062427
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0448104   -0.1373256    0.0477048


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.2558185   -0.1160584    0.6276955
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                 0.5541366    0.1647311    0.9435421
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.2070695    0.1480725    0.2660665
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.5988745    0.2126392    0.9851098
Birth       ki1135781-COHORTS          INDIA                          1                    NA                 0.2020644    0.0928464    0.3112825
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.4448117    0.3120287    0.5775946
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1528090    0.0998429    0.2057752
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0888083   -0.1943133    0.0166967
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.3761865   -0.6403397   -0.1120332
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1087917   -0.2842867    0.0667033
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0731293   -0.0402461    0.1865048
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.1207050   -0.2630502    0.0216402
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.3614934   -0.6035217   -0.1194651
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0603738   -0.1127530   -0.0079947
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0318849   -0.2138576    0.2776274
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.1174457   -0.2172583   -0.0176330
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0472003   -0.1574994    0.0630987
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0192725   -0.0676117    0.0290667
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0592566   -0.2297429    0.1112296
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0199259   -0.1890273    0.1491755
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0521865   -0.3686936    0.2643206
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.2253247   -0.3633070   -0.0873424
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0293873   -0.1695958    0.2283705
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.1460992   -0.2511638   -0.0410346
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.2086028   -0.3321460   -0.0850597
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0630376   -0.1201870   -0.0058882
