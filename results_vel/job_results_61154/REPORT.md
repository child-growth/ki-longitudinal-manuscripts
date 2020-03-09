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

**Outcome Variable:** y_rate_wtkg

## Predictor Variables

**Intervention Variable:** parity

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* single
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                        parity    n_cell       n
-------------  ---------------  -----------------------------  -------  -------  ------
0-3 months     COHORTS          GUATEMALA                      1            103     798
0-3 months     COHORTS          GUATEMALA                      2            114     798
0-3 months     COHORTS          GUATEMALA                      3+           581     798
0-3 months     COHORTS          INDIA                          1            713    4147
0-3 months     COHORTS          INDIA                          2           1045    4147
0-3 months     COHORTS          INDIA                          3+          2389    4147
0-3 months     GMS-Nepal        NEPAL                          1            137     509
0-3 months     GMS-Nepal        NEPAL                          2            130     509
0-3 months     GMS-Nepal        NEPAL                          3+           242     509
0-3 months     JiVitA-3         BANGLADESH                     1           6550   20287
0-3 months     JiVitA-3         BANGLADESH                     2           6981   20287
0-3 months     JiVitA-3         BANGLADESH                     3+          6756   20287
0-3 months     Keneba           GAMBIA                         1            192    1441
0-3 months     Keneba           GAMBIA                         2            149    1441
0-3 months     Keneba           GAMBIA                         3+          1100    1441
0-3 months     PROVIDE          BANGLADESH                     1            242     640
0-3 months     PROVIDE          BANGLADESH                     2            226     640
0-3 months     PROVIDE          BANGLADESH                     3+           172     640
0-3 months     SAS-CompFeed     INDIA                          1            346    1265
0-3 months     SAS-CompFeed     INDIA                          2            300    1265
0-3 months     SAS-CompFeed     INDIA                          3+           619    1265
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            680    1996
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            659    1996
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           657    1996
0-3 months     ZVITAMBO         ZIMBABWE                       1           3175    8171
0-3 months     ZVITAMBO         ZIMBABWE                       2           2534    8171
0-3 months     ZVITAMBO         ZIMBABWE                       3+          2462    8171
3-6 months     COHORTS          GUATEMALA                      1            107     809
3-6 months     COHORTS          GUATEMALA                      2            115     809
3-6 months     COHORTS          GUATEMALA                      3+           587     809
3-6 months     COHORTS          INDIA                          1            718    4194
3-6 months     COHORTS          INDIA                          2           1072    4194
3-6 months     COHORTS          INDIA                          3+          2404    4194
3-6 months     GMS-Nepal        NEPAL                          1            122     469
3-6 months     GMS-Nepal        NEPAL                          2            120     469
3-6 months     GMS-Nepal        NEPAL                          3+           227     469
3-6 months     JiVitA-3         BANGLADESH                     1           4460   12720
3-6 months     JiVitA-3         BANGLADESH                     2           4417   12720
3-6 months     JiVitA-3         BANGLADESH                     3+          3843   12720
3-6 months     Keneba           GAMBIA                         1            146    1131
3-6 months     Keneba           GAMBIA                         2            107    1131
3-6 months     Keneba           GAMBIA                         3+           878    1131
3-6 months     PROVIDE          BANGLADESH                     1            216     601
3-6 months     PROVIDE          BANGLADESH                     2            222     601
3-6 months     PROVIDE          BANGLADESH                     3+           163     601
3-6 months     SAS-CompFeed     INDIA                          1            300    1118
3-6 months     SAS-CompFeed     INDIA                          2            259    1118
3-6 months     SAS-CompFeed     INDIA                          3+           559    1118
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            567    1640
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            536    1640
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           537    1640
3-6 months     ZVITAMBO         ZIMBABWE                       1           2306    6138
3-6 months     ZVITAMBO         ZIMBABWE                       2           1933    6138
3-6 months     ZVITAMBO         ZIMBABWE                       3+          1899    6138
6-9 months     COHORTS          GUATEMALA                      1            112     824
6-9 months     COHORTS          GUATEMALA                      2            118     824
6-9 months     COHORTS          GUATEMALA                      3+           594     824
6-9 months     COHORTS          INDIA                          1            648    3775
6-9 months     COHORTS          INDIA                          2            951    3775
6-9 months     COHORTS          INDIA                          3+          2176    3775
6-9 months     GMS-Nepal        NEPAL                          1            126     477
6-9 months     GMS-Nepal        NEPAL                          2            128     477
6-9 months     GMS-Nepal        NEPAL                          3+           223     477
6-9 months     Keneba           GAMBIA                         1             90     725
6-9 months     Keneba           GAMBIA                         2             67     725
6-9 months     Keneba           GAMBIA                         3+           568     725
6-9 months     PROVIDE          BANGLADESH                     1            207     576
6-9 months     PROVIDE          BANGLADESH                     2            213     576
6-9 months     PROVIDE          BANGLADESH                     3+           156     576
6-9 months     SAS-CompFeed     INDIA                          1            307    1138
6-9 months     SAS-CompFeed     INDIA                          2            264    1138
6-9 months     SAS-CompFeed     INDIA                          3+           567    1138
6-9 months     SAS-FoodSuppl    INDIA                          1              1     309
6-9 months     SAS-FoodSuppl    INDIA                          2             56     309
6-9 months     SAS-FoodSuppl    INDIA                          3+           252     309
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            512    1470
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            474    1470
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           484    1470
6-9 months     ZVITAMBO         ZIMBABWE                       1           2132    5570
6-9 months     ZVITAMBO         ZIMBABWE                       2           1723    5570
6-9 months     ZVITAMBO         ZIMBABWE                       3+          1715    5570
9-12 months    COHORTS          GUATEMALA                      1            129     930
9-12 months    COHORTS          GUATEMALA                      2            134     930
9-12 months    COHORTS          GUATEMALA                      3+           667     930
9-12 months    COHORTS          INDIA                          1            566    3291
9-12 months    COHORTS          INDIA                          2            825    3291
9-12 months    COHORTS          INDIA                          3+          1900    3291
9-12 months    GMS-Nepal        NEPAL                          1            116     454
9-12 months    GMS-Nepal        NEPAL                          2            121     454
9-12 months    GMS-Nepal        NEPAL                          3+           217     454
9-12 months    Keneba           GAMBIA                         1             75     714
9-12 months    Keneba           GAMBIA                         2             65     714
9-12 months    Keneba           GAMBIA                         3+           574     714
9-12 months    PROVIDE          BANGLADESH                     1            209     569
9-12 months    PROVIDE          BANGLADESH                     2            209     569
9-12 months    PROVIDE          BANGLADESH                     3+           151     569
9-12 months    SAS-CompFeed     INDIA                          1            322    1141
9-12 months    SAS-CompFeed     INDIA                          2            258    1141
9-12 months    SAS-CompFeed     INDIA                          3+           561    1141
9-12 months    SAS-FoodSuppl    INDIA                          1              0     298
9-12 months    SAS-FoodSuppl    INDIA                          2             53     298
9-12 months    SAS-FoodSuppl    INDIA                          3+           245     298
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            376    1064
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            339    1064
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           349    1064
9-12 months    ZVITAMBO         ZIMBABWE                       1           1912    5053
9-12 months    ZVITAMBO         ZIMBABWE                       2           1569    5053
9-12 months    ZVITAMBO         ZIMBABWE                       3+          1572    5053
12-15 months   COHORTS          GUATEMALA                      1            133     886
12-15 months   COHORTS          GUATEMALA                      2            120     886
12-15 months   COHORTS          GUATEMALA                      3+           633     886
12-15 months   GMS-Nepal        NEPAL                          1            116     452
12-15 months   GMS-Nepal        NEPAL                          2            120     452
12-15 months   GMS-Nepal        NEPAL                          3+           216     452
12-15 months   Keneba           GAMBIA                         1            104    1104
12-15 months   Keneba           GAMBIA                         2            103    1104
12-15 months   Keneba           GAMBIA                         3+           897    1104
12-15 months   PROVIDE          BANGLADESH                     1            199     537
12-15 months   PROVIDE          BANGLADESH                     2            201     537
12-15 months   PROVIDE          BANGLADESH                     3+           137     537
12-15 months   SAS-CompFeed     INDIA                          1            339    1165
12-15 months   SAS-CompFeed     INDIA                          2            260    1165
12-15 months   SAS-CompFeed     INDIA                          3+           566    1165
12-15 months   SAS-FoodSuppl    INDIA                          1              0     300
12-15 months   SAS-FoodSuppl    INDIA                          2             59     300
12-15 months   SAS-FoodSuppl    INDIA                          3+           241     300
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            266     776
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            256     776
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           254     776
12-15 months   ZVITAMBO         ZIMBABWE                       1            662    1858
12-15 months   ZVITAMBO         ZIMBABWE                       2            566    1858
12-15 months   ZVITAMBO         ZIMBABWE                       3+           630    1858
15-18 months   COHORTS          GUATEMALA                      1            117     797
15-18 months   COHORTS          GUATEMALA                      2            108     797
15-18 months   COHORTS          GUATEMALA                      3+           572     797
15-18 months   GMS-Nepal        NEPAL                          1            125     477
15-18 months   GMS-Nepal        NEPAL                          2            129     477
15-18 months   GMS-Nepal        NEPAL                          3+           223     477
15-18 months   Keneba           GAMBIA                         1            110    1124
15-18 months   Keneba           GAMBIA                         2            101    1124
15-18 months   Keneba           GAMBIA                         3+           913    1124
15-18 months   PROVIDE          BANGLADESH                     1            197     533
15-18 months   PROVIDE          BANGLADESH                     2            199     533
15-18 months   PROVIDE          BANGLADESH                     3+           137     533
15-18 months   SAS-CompFeed     INDIA                          1            343    1171
15-18 months   SAS-CompFeed     INDIA                          2            258    1171
15-18 months   SAS-CompFeed     INDIA                          3+           570    1171
15-18 months   SAS-FoodSuppl    INDIA                          1              0     290
15-18 months   SAS-FoodSuppl    INDIA                          2             53     290
15-18 months   SAS-FoodSuppl    INDIA                          3+           237     290
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            219     649
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            217     649
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           213     649
15-18 months   ZVITAMBO         ZIMBABWE                       1            425    1198
15-18 months   ZVITAMBO         ZIMBABWE                       2            368    1198
15-18 months   ZVITAMBO         ZIMBABWE                       3+           405    1198
18-21 months   COHORTS          GUATEMALA                      1            112     793
18-21 months   COHORTS          GUATEMALA                      2            107     793
18-21 months   COHORTS          GUATEMALA                      3+           574     793
18-21 months   GMS-Nepal        NEPAL                          1            117     447
18-21 months   GMS-Nepal        NEPAL                          2            121     447
18-21 months   GMS-Nepal        NEPAL                          3+           209     447
18-21 months   Keneba           GAMBIA                         1            115    1126
18-21 months   Keneba           GAMBIA                         2            109    1126
18-21 months   Keneba           GAMBIA                         3+           902    1126
18-21 months   PROVIDE          BANGLADESH                     1            200     542
18-21 months   PROVIDE          BANGLADESH                     2            197     542
18-21 months   PROVIDE          BANGLADESH                     3+           145     542
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              3      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              4      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             4      11
18-21 months   ZVITAMBO         ZIMBABWE                       1            244     657
18-21 months   ZVITAMBO         ZIMBABWE                       2            201     657
18-21 months   ZVITAMBO         ZIMBABWE                       3+           212     657
21-24 months   COHORTS          GUATEMALA                      1            129     872
21-24 months   COHORTS          GUATEMALA                      2            117     872
21-24 months   COHORTS          GUATEMALA                      3+           626     872
21-24 months   GMS-Nepal        NEPAL                          1             85     343
21-24 months   GMS-Nepal        NEPAL                          2             95     343
21-24 months   GMS-Nepal        NEPAL                          3+           163     343
21-24 months   Keneba           GAMBIA                         1            102    1004
21-24 months   Keneba           GAMBIA                         2             98    1004
21-24 months   Keneba           GAMBIA                         3+           804    1004
21-24 months   PROVIDE          BANGLADESH                     1            176     485
21-24 months   PROVIDE          BANGLADESH                     2            180     485
21-24 months   PROVIDE          BANGLADESH                     3+           129     485
21-24 months   ZVITAMBO         ZIMBABWE                       1            103     303
21-24 months   ZVITAMBO         ZIMBABWE                       2             91     303
21-24 months   ZVITAMBO         ZIMBABWE                       3+           109     303


The following strata were considered:

* agecat: 0-3 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: COHORTS, country: INDIA
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 18-21 months, studyid: COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: COHORTS, country: INDIA
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: COHORTS, country: INDIA
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: COHORTS, country: INDIA
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/e252cb4e-b355-420c-bb43-639c2b9074d4/1c2d41b7-a369-4a98-9d90-9e08f637a6c1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e252cb4e-b355-420c-bb43-639c2b9074d4/1c2d41b7-a369-4a98-9d90-9e08f637a6c1/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e252cb4e-b355-420c-bb43-639c2b9074d4/1c2d41b7-a369-4a98-9d90-9e08f637a6c1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS          GUATEMALA                      1                    NA                0.8324752   0.7479527   0.9169977
0-3 months     COHORTS          GUATEMALA                      2                    NA                0.8696771   0.8035939   0.9357604
0-3 months     COHORTS          GUATEMALA                      3+                   NA                0.7906042   0.7672232   0.8139851
0-3 months     COHORTS          INDIA                          1                    NA                0.8385250   0.8201878   0.8568621
0-3 months     COHORTS          INDIA                          2                    NA                0.8340666   0.8172518   0.8508814
0-3 months     COHORTS          INDIA                          3+                   NA                0.7949636   0.7859916   0.8039357
0-3 months     GMS-Nepal        NEPAL                          1                    NA                0.8169638   0.7506751   0.8832525
0-3 months     GMS-Nepal        NEPAL                          2                    NA                0.8796023   0.8216397   0.9375650
0-3 months     GMS-Nepal        NEPAL                          3+                   NA                0.8122910   0.7847541   0.8398279
0-3 months     JiVitA-3         BANGLADESH                     1                    NA                0.8747542   0.8660628   0.8834457
0-3 months     JiVitA-3         BANGLADESH                     2                    NA                0.8825727   0.8752864   0.8898590
0-3 months     JiVitA-3         BANGLADESH                     3+                   NA                0.8568595   0.8498287   0.8638903
0-3 months     Keneba           GAMBIA                         1                    NA                0.9845128   0.9477163   1.0213092
0-3 months     Keneba           GAMBIA                         2                    NA                0.9828364   0.9284521   1.0372208
0-3 months     Keneba           GAMBIA                         3+                   NA                0.9275085   0.9069811   0.9480360
0-3 months     PROVIDE          BANGLADESH                     1                    NA                0.9132547   0.8779877   0.9485218
0-3 months     PROVIDE          BANGLADESH                     2                    NA                0.9166689   0.8783817   0.9549561
0-3 months     PROVIDE          BANGLADESH                     3+                   NA                0.9041687   0.8652869   0.9430504
0-3 months     SAS-CompFeed     INDIA                          1                    NA                0.8246377   0.7829670   0.8663084
0-3 months     SAS-CompFeed     INDIA                          2                    NA                0.7974409   0.7739219   0.8209600
0-3 months     SAS-CompFeed     INDIA                          3+                   NA                0.7771966   0.7550925   0.7993007
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9240728   0.9014279   0.9467178
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.9277153   0.9040050   0.9514255
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.8989321   0.8765940   0.9212702
0-3 months     ZVITAMBO         ZIMBABWE                       1                    NA                0.9562547   0.9427019   0.9698074
0-3 months     ZVITAMBO         ZIMBABWE                       2                    NA                0.9594255   0.9450935   0.9737575
0-3 months     ZVITAMBO         ZIMBABWE                       3+                   NA                0.9284187   0.9141423   0.9426951
3-6 months     COHORTS          GUATEMALA                      1                    NA                0.5314053   0.4774725   0.5853380
3-6 months     COHORTS          GUATEMALA                      2                    NA                0.4316308   0.3921526   0.4711091
3-6 months     COHORTS          GUATEMALA                      3+                   NA                0.4635623   0.4497060   0.4774186
3-6 months     COHORTS          INDIA                          1                    NA                0.5178122   0.5030182   0.5326063
3-6 months     COHORTS          INDIA                          2                    NA                0.4818087   0.4663937   0.4972238
3-6 months     COHORTS          INDIA                          3+                   NA                0.4599925   0.4529778   0.4670072
3-6 months     GMS-Nepal        NEPAL                          1                    NA                0.5910054   0.5308315   0.6511793
3-6 months     GMS-Nepal        NEPAL                          2                    NA                0.4756550   0.4209133   0.5303966
3-6 months     GMS-Nepal        NEPAL                          3+                   NA                0.4701178   0.4441570   0.4960786
3-6 months     JiVitA-3         BANGLADESH                     1                    NA                0.4599658   0.4530249   0.4669067
3-6 months     JiVitA-3         BANGLADESH                     2                    NA                0.4351131   0.4279979   0.4422283
3-6 months     JiVitA-3         BANGLADESH                     3+                   NA                0.4321012   0.4235775   0.4406249
3-6 months     Keneba           GAMBIA                         1                    NA                0.4674301   0.4347949   0.5000652
3-6 months     Keneba           GAMBIA                         2                    NA                0.4824254   0.4326731   0.5321777
3-6 months     Keneba           GAMBIA                         3+                   NA                0.4508791   0.4365146   0.4652436
3-6 months     PROVIDE          BANGLADESH                     1                    NA                0.4973711   0.4719587   0.5227836
3-6 months     PROVIDE          BANGLADESH                     2                    NA                0.4840967   0.4574498   0.5107436
3-6 months     PROVIDE          BANGLADESH                     3+                   NA                0.4962170   0.4589327   0.5335013
3-6 months     SAS-CompFeed     INDIA                          1                    NA                0.4977819   0.4835617   0.5120021
3-6 months     SAS-CompFeed     INDIA                          2                    NA                0.4324133   0.4066788   0.4581478
3-6 months     SAS-CompFeed     INDIA                          3+                   NA                0.4327242   0.4120692   0.4533791
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4336754   0.4134217   0.4539292
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.4067273   0.3850875   0.4283670
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.3924834   0.3731760   0.4117909
3-6 months     ZVITAMBO         ZIMBABWE                       1                    NA                0.5050047   0.4880096   0.5219997
3-6 months     ZVITAMBO         ZIMBABWE                       2                    NA                0.4682573   0.4551804   0.4813342
3-6 months     ZVITAMBO         ZIMBABWE                       3+                   NA                0.4860174   0.4728311   0.4992036
6-9 months     COHORTS          GUATEMALA                      1                    NA                0.2188081   0.1947144   0.2429019
6-9 months     COHORTS          GUATEMALA                      2                    NA                0.2389787   0.2040157   0.2739418
6-9 months     COHORTS          GUATEMALA                      3+                   NA                0.2039795   0.1898357   0.2181232
6-9 months     COHORTS          INDIA                          1                    NA                0.2987837   0.2833514   0.3142160
6-9 months     COHORTS          INDIA                          2                    NA                0.2695824   0.2541677   0.2849971
6-9 months     COHORTS          INDIA                          3+                   NA                0.2605791   0.2531462   0.2680120
6-9 months     GMS-Nepal        NEPAL                          1                    NA                0.2151491   0.1759688   0.2543295
6-9 months     GMS-Nepal        NEPAL                          2                    NA                0.1908121   0.1527902   0.2288340
6-9 months     GMS-Nepal        NEPAL                          3+                   NA                0.2028598   0.1891840   0.2165356
6-9 months     Keneba           GAMBIA                         1                    NA                0.2356263   0.2099625   0.2612901
6-9 months     Keneba           GAMBIA                         2                    NA                0.2352933   0.1438052   0.3267814
6-9 months     Keneba           GAMBIA                         3+                   NA                0.2051183   0.1882909   0.2219456
6-9 months     PROVIDE          BANGLADESH                     1                    NA                0.2635225   0.2388954   0.2881497
6-9 months     PROVIDE          BANGLADESH                     2                    NA                0.2573197   0.2353808   0.2792586
6-9 months     PROVIDE          BANGLADESH                     3+                   NA                0.1856865   0.1092238   0.2621492
6-9 months     SAS-CompFeed     INDIA                          1                    NA                0.2372196   0.2239633   0.2504760
6-9 months     SAS-CompFeed     INDIA                          2                    NA                0.2108183   0.1609959   0.2606406
6-9 months     SAS-CompFeed     INDIA                          3+                   NA                0.2079061   0.1881612   0.2276510
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2613130   0.2445331   0.2780929
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2455653   0.2239028   0.2672278
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.2615779   0.2450640   0.2780918
6-9 months     ZVITAMBO         ZIMBABWE                       1                    NA                0.2711232   0.2549510   0.2872954
6-9 months     ZVITAMBO         ZIMBABWE                       2                    NA                0.2529439   0.2345615   0.2713264
6-9 months     ZVITAMBO         ZIMBABWE                       3+                   NA                0.2545729   0.2421863   0.2669594
9-12 months    COHORTS          GUATEMALA                      1                    NA                0.1608798   0.1289299   0.1928297
9-12 months    COHORTS          GUATEMALA                      2                    NA                0.1374102   0.1005044   0.1743160
9-12 months    COHORTS          GUATEMALA                      3+                   NA                0.1521954   0.1397625   0.1646284
9-12 months    COHORTS          INDIA                          1                    NA                0.2342725   0.2150806   0.2534644
9-12 months    COHORTS          INDIA                          2                    NA                0.2099898   0.1962426   0.2237371
9-12 months    COHORTS          INDIA                          3+                   NA                0.2046548   0.1967712   0.2125384
9-12 months    GMS-Nepal        NEPAL                          1                    NA                0.1351716   0.1035379   0.1668054
9-12 months    GMS-Nepal        NEPAL                          2                    NA                0.1681159   0.1378868   0.1983450
9-12 months    GMS-Nepal        NEPAL                          3+                   NA                0.0988515   0.0789799   0.1187230
9-12 months    Keneba           GAMBIA                         1                    NA                0.2431967   0.2117360   0.2746573
9-12 months    Keneba           GAMBIA                         2                    NA                0.2104797   0.1604712   0.2604882
9-12 months    Keneba           GAMBIA                         3+                   NA                0.1622688   0.1473646   0.1771729
9-12 months    PROVIDE          BANGLADESH                     1                    NA                0.1795499   0.1593320   0.1997677
9-12 months    PROVIDE          BANGLADESH                     2                    NA                0.1860133   0.1650716   0.2069551
9-12 months    PROVIDE          BANGLADESH                     3+                   NA                0.1752314   0.1533245   0.1971383
9-12 months    SAS-CompFeed     INDIA                          1                    NA                0.2070428   0.1864293   0.2276564
9-12 months    SAS-CompFeed     INDIA                          2                    NA                0.1860174   0.1658910   0.2061439
9-12 months    SAS-CompFeed     INDIA                          3+                   NA                0.1814385   0.1649512   0.1979259
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2121070   0.1898661   0.2343480
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1938056   0.1705615   0.2170496
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.2225861   0.2019381   0.2432341
9-12 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.1958635   0.1813178   0.2104091
9-12 months    ZVITAMBO         ZIMBABWE                       2                    NA                0.1748811   0.1548109   0.1949514
9-12 months    ZVITAMBO         ZIMBABWE                       3+                   NA                0.1573243   0.1465399   0.1681086
12-15 months   COHORTS          GUATEMALA                      1                    NA                0.1754857   0.1395783   0.2113931
12-15 months   COHORTS          GUATEMALA                      2                    NA                0.1488326   0.1127490   0.1849161
12-15 months   COHORTS          GUATEMALA                      3+                   NA                0.1604240   0.1475844   0.1732636
12-15 months   GMS-Nepal        NEPAL                          1                    NA                0.1562998   0.1201129   0.1924868
12-15 months   GMS-Nepal        NEPAL                          2                    NA                0.1551560   0.1243225   0.1859895
12-15 months   GMS-Nepal        NEPAL                          3+                   NA                0.1808075   0.1619910   0.1996240
12-15 months   Keneba           GAMBIA                         1                    NA                0.2134808   0.1812542   0.2457073
12-15 months   Keneba           GAMBIA                         2                    NA                0.1859712   0.1289154   0.2430271
12-15 months   Keneba           GAMBIA                         3+                   NA                0.1804562   0.1643743   0.1965380
12-15 months   PROVIDE          BANGLADESH                     1                    NA                0.1870296   0.1590554   0.2150037
12-15 months   PROVIDE          BANGLADESH                     2                    NA                0.1573469   0.1332977   0.1813961
12-15 months   PROVIDE          BANGLADESH                     3+                   NA                0.2126269   0.1800179   0.2452359
12-15 months   SAS-CompFeed     INDIA                          1                    NA                0.1903984   0.1549209   0.2258758
12-15 months   SAS-CompFeed     INDIA                          2                    NA                0.1901123   0.1523042   0.2279203
12-15 months   SAS-CompFeed     INDIA                          3+                   NA                0.1692596   0.1577069   0.1808124
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1963078   0.1748362   0.2177793
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1685712   0.1437704   0.1933720
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1631702   0.1433151   0.1830253
12-15 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.1491163   0.1240010   0.1742317
12-15 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.1359284   0.1081955   0.1636612
12-15 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.1490255   0.1238550   0.1741960
15-18 months   COHORTS          GUATEMALA                      1                    NA                0.1303680   0.0951066   0.1656295
15-18 months   COHORTS          GUATEMALA                      2                    NA                0.0839025   0.0436675   0.1241374
15-18 months   COHORTS          GUATEMALA                      3+                   NA                0.1504517   0.1341500   0.1667534
15-18 months   GMS-Nepal        NEPAL                          1                    NA                0.2712419   0.2259638   0.3165200
15-18 months   GMS-Nepal        NEPAL                          2                    NA                0.2728778   0.2113280   0.3344276
15-18 months   GMS-Nepal        NEPAL                          3+                   NA                0.2306833   0.2042223   0.2571442
15-18 months   Keneba           GAMBIA                         1                    NA                0.1476216   0.1240556   0.1711875
15-18 months   Keneba           GAMBIA                         2                    NA                0.2092396   0.1666588   0.2518205
15-18 months   Keneba           GAMBIA                         3+                   NA                0.1592633   0.1438330   0.1746937
15-18 months   PROVIDE          BANGLADESH                     1                    NA                0.1662257   0.1369100   0.1955414
15-18 months   PROVIDE          BANGLADESH                     2                    NA                0.1587586   0.1353319   0.1821853
15-18 months   PROVIDE          BANGLADESH                     3+                   NA                0.1343136   0.1070377   0.1615895
15-18 months   SAS-CompFeed     INDIA                          1                    NA                0.1811364   0.1456764   0.2165964
15-18 months   SAS-CompFeed     INDIA                          2                    NA                0.1791298   0.1462919   0.2119676
15-18 months   SAS-CompFeed     INDIA                          3+                   NA                0.1834630   0.1594472   0.2074788
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1476866   0.1197320   0.1756413
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1831643   0.1480444   0.2182843
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1659133   0.1388638   0.1929627
15-18 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.1333965   0.1085901   0.1582029
15-18 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.1469521   0.1065654   0.1873388
15-18 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.1425685   0.1085975   0.1765396
18-21 months   COHORTS          GUATEMALA                      1                    NA                0.1082348   0.0820718   0.1343979
18-21 months   COHORTS          GUATEMALA                      2                    NA                0.1654757   0.1075545   0.2233969
18-21 months   COHORTS          GUATEMALA                      3+                   NA                0.1603483   0.1460255   0.1746712
18-21 months   GMS-Nepal        NEPAL                          1                    NA                0.1474218   0.1083160   0.1865276
18-21 months   GMS-Nepal        NEPAL                          2                    NA                0.1065509   0.0542235   0.1588783
18-21 months   GMS-Nepal        NEPAL                          3+                   NA                0.1682956   0.1379423   0.1986490
18-21 months   Keneba           GAMBIA                         1                    NA                0.1080131   0.0641515   0.1518748
18-21 months   Keneba           GAMBIA                         2                    NA                0.1214997   0.0710742   0.1719253
18-21 months   Keneba           GAMBIA                         3+                   NA                0.1566164   0.1419106   0.1713222
18-21 months   PROVIDE          BANGLADESH                     1                    NA                0.1356974   0.1180883   0.1533065
18-21 months   PROVIDE          BANGLADESH                     2                    NA                0.1182214   0.0905188   0.1459241
18-21 months   PROVIDE          BANGLADESH                     3+                   NA                0.1559090   0.1251044   0.1867137
18-21 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.1187690   0.0761917   0.1613463
18-21 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.1314539   0.0551707   0.2077371
18-21 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.1153656   0.0892230   0.1415081
21-24 months   COHORTS          GUATEMALA                      1                    NA                0.2180135   0.1772101   0.2588169
21-24 months   COHORTS          GUATEMALA                      2                    NA                0.1806145   0.1387024   0.2225265
21-24 months   COHORTS          GUATEMALA                      3+                   NA                0.1760519   0.1630085   0.1890952
21-24 months   GMS-Nepal        NEPAL                          1                    NA                0.1381532   0.0833574   0.1929489
21-24 months   GMS-Nepal        NEPAL                          2                    NA                0.1980443   0.1308880   0.2652005
21-24 months   GMS-Nepal        NEPAL                          3+                   NA                0.1437084   0.0931900   0.1942267
21-24 months   Keneba           GAMBIA                         1                    NA                0.1013843   0.0364913   0.1662774
21-24 months   Keneba           GAMBIA                         2                    NA                0.1393336   0.0635805   0.2150866
21-24 months   Keneba           GAMBIA                         3+                   NA                0.1766803   0.1615562   0.1918044
21-24 months   PROVIDE          BANGLADESH                     1                    NA                0.1314043   0.1060267   0.1567820
21-24 months   PROVIDE          BANGLADESH                     2                    NA                0.1545136   0.1249279   0.1840992
21-24 months   PROVIDE          BANGLADESH                     3+                   NA                0.1331312   0.1149724   0.1512900
21-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.1691971   0.1244811   0.2139130
21-24 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.1209082   0.0543804   0.1874359
21-24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.0807405   0.0165165   0.1449645


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS          GUATEMALA                      NA                   NA                0.7980090   0.7812054   0.8148126
0-3 months     COHORTS          INDIA                          NA                   NA                0.8079112   0.8020259   0.8137966
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                0.8270122   0.8100415   0.8439828
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                0.8710463   0.8679643   0.8741282
0-3 months     Keneba           GAMBIA                         NA                   NA                0.9250728   0.9133367   0.9368088
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                0.7908355   0.7705160   0.8111550
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9222782   0.9120605   0.9324960
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                0.9497140   0.9445866   0.9548414
3-6 months     COHORTS          GUATEMALA                      NA                   NA                0.4605000   0.4496523   0.4713476
3-6 months     COHORTS          INDIA                          NA                   NA                0.4724963   0.4676809   0.4773116
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                0.4976117   0.4838029   0.5114205
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                0.4413738   0.4384031   0.4443445
3-6 months     Keneba           GAMBIA                         NA                   NA                0.4451759   0.4348013   0.4555506
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                0.4502075   0.4368094   0.4636057
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4202993   0.4115402   0.4290585
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                0.4783450   0.4738196   0.4828705
6-9 months     COHORTS          GUATEMALA                      NA                   NA                0.2137898   0.2041068   0.2234728
6-9 months     COHORTS          INDIA                          NA                   NA                0.2666046   0.2615353   0.2716740
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                0.1874500   0.1753777   0.1995223
6-9 months     Keneba           GAMBIA                         NA                   NA                0.2054643   0.1921119   0.2188168
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                0.2097690   0.1949147   0.2246234
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2555255   0.2465533   0.2644978
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                0.2583530   0.2538536   0.2628524
9-12 months    COHORTS          GUATEMALA                      NA                   NA                0.1559960   0.1474406   0.1645514
9-12 months    COHORTS          INDIA                          NA                   NA                0.2135824   0.2082338   0.2189309
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                0.1439907   0.1312935   0.1566879
9-12 months    Keneba           GAMBIA                         NA                   NA                0.1627974   0.1505170   0.1750777
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                0.1943224   0.1874198   0.2012249
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2048196   0.1946367   0.2150025
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1800863   0.1755557   0.1846170
12-15 months   COHORTS          GUATEMALA                      NA                   NA                0.1508808   0.1417226   0.1600389
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                0.1721075   0.1589812   0.1852337
12-15 months   Keneba           GAMBIA                         NA                   NA                0.1824116   0.1716763   0.1931470
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                0.1851225   0.1777268   0.1925183
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1741189   0.1626692   0.1855686
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1499254   0.1419751   0.1578757
15-18 months   COHORTS          GUATEMALA                      NA                   NA                0.1402124   0.1291753   0.1512496
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                0.2347736   0.2195239   0.2500233
15-18 months   Keneba           GAMBIA                         NA                   NA                0.1607263   0.1498189   0.1716337
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                0.1775870   0.1644275   0.1907466
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1694110   0.1549701   0.1838520
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1337260   0.1231139   0.1443380
18-21 months   COHORTS          GUATEMALA                      NA                   NA                0.1633163   0.1526500   0.1739826
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                0.1423948   0.1268654   0.1579242
18-21 months   Keneba           GAMBIA                         NA                   NA                0.1560829   0.1446249   0.1675408
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1209531   0.1039197   0.1379866
21-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1840047   0.1740929   0.1939165
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1768175   0.1523979   0.2012370
21-24 months   Keneba           GAMBIA                         NA                   NA                0.1676062   0.1561278   0.1790846
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1090935   0.0811882   0.1369987


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      2                    1                  0.0372019   -0.0701274    0.1445312
0-3 months     COHORTS          GUATEMALA                      3+                   1                 -0.0418710   -0.1296257    0.0458837
0-3 months     COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          2                    1                 -0.0044584   -0.0293293    0.0204125
0-3 months     COHORTS          INDIA                          3+                   1                 -0.0435613   -0.0639832   -0.0231394
0-3 months     GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          2                    1                  0.0626385   -0.0256400    0.1509170
0-3 months     GMS-Nepal        NEPAL                          3+                   1                 -0.0046728   -0.0764383    0.0670927
0-3 months     JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     2                    1                  0.0078185   -0.0037825    0.0194195
0-3 months     JiVitA-3         BANGLADESH                     3+                   1                 -0.0178947   -0.0292145   -0.0065750
0-3 months     Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         2                    1                 -0.0016763   -0.0673915    0.0640389
0-3 months     Keneba           GAMBIA                         3+                   1                 -0.0570043   -0.0991557   -0.0148528
0-3 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     2                    1                  0.0034141   -0.0487140    0.0555423
0-3 months     PROVIDE          BANGLADESH                     3+                   1                 -0.0090861   -0.0616241    0.0434520
0-3 months     SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          2                    1                 -0.0271968   -0.0668296    0.0124360
0-3 months     SAS-CompFeed     INDIA                          3+                   1                 -0.0474411   -0.0843163   -0.0105659
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0036424   -0.0292571    0.0365420
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0251408   -0.0570708    0.0067893
0-3 months     ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       2                    1                  0.0031709   -0.0165395    0.0228812
0-3 months     ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0278360   -0.0475021   -0.0081699
3-6 months     COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      2                    1                 -0.0997744   -0.1666021   -0.0329467
3-6 months     COHORTS          GUATEMALA                      3+                   1                 -0.0678429   -0.1235386   -0.0121473
3-6 months     COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          2                    1                 -0.0360035   -0.0573179   -0.0146892
3-6 months     COHORTS          INDIA                          3+                   1                 -0.0578198   -0.0741720   -0.0414675
3-6 months     GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          2                    1                 -0.1153505   -0.1969077   -0.0337932
3-6 months     GMS-Nepal        NEPAL                          3+                   1                 -0.1208876   -0.1863813   -0.0553940
3-6 months     JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     2                    1                 -0.0248526   -0.0347132   -0.0149920
3-6 months     JiVitA-3         BANGLADESH                     3+                   1                 -0.0278646   -0.0386782   -0.0170509
3-6 months     Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         2                    1                  0.0149953   -0.0445544    0.0745451
3-6 months     Keneba           GAMBIA                         3+                   1                 -0.0165510   -0.0522106    0.0191087
3-6 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     2                    1                 -0.0132744   -0.0501917    0.0236428
3-6 months     PROVIDE          BANGLADESH                     3+                   1                 -0.0011541   -0.0462505    0.0439422
3-6 months     SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          2                    1                 -0.0653686   -0.0968458   -0.0338914
3-6 months     SAS-CompFeed     INDIA                          3+                   1                 -0.0650577   -0.0893042   -0.0408113
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0269481   -0.0569256    0.0030293
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0411920   -0.0695916   -0.0127924
3-6 months     ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       2                    1                 -0.0367473   -0.0581910   -0.0153037
3-6 months     ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0189873   -0.0405010    0.0025265
6-9 months     COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      2                    1                  0.0201706   -0.0223323    0.0626735
6-9 months     COHORTS          GUATEMALA                      3+                   1                 -0.0148287   -0.0427333    0.0130759
6-9 months     COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          2                    1                 -0.0292013   -0.0509885   -0.0074141
6-9 months     COHORTS          INDIA                          3+                   1                 -0.0382046   -0.0553015   -0.0211078
6-9 months     GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          2                    1                 -0.0243370   -0.0788121    0.0301380
6-9 months     GMS-Nepal        NEPAL                          3+                   1                 -0.0122893   -0.0539661    0.0293874
6-9 months     Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         2                    1                 -0.0003330   -0.0953738    0.0947078
6-9 months     Keneba           GAMBIA                         3+                   1                 -0.0305080   -0.0612183    0.0002023
6-9 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     2                    1                 -0.0062029   -0.0392353    0.0268296
6-9 months     PROVIDE          BANGLADESH                     3+                   1                 -0.0778361   -0.1580885    0.0024164
6-9 months     SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          2                    1                 -0.0264014   -0.0837190    0.0309163
6-9 months     SAS-CompFeed     INDIA                          3+                   1                 -0.0293136   -0.0528176   -0.0058095
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0157477   -0.0432580    0.0117626
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0002649   -0.0233631    0.0238929
6-9 months     ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       2                    1                 -0.0181792   -0.0426659    0.0063074
6-9 months     ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0165503   -0.0369186    0.0038180
9-12 months    COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      2                    1                 -0.0234696   -0.0722516    0.0253124
9-12 months    COHORTS          GUATEMALA                      3+                   1                 -0.0086844   -0.0429849    0.0256161
9-12 months    COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          2                    1                 -0.0242827   -0.0478691   -0.0006962
9-12 months    COHORTS          INDIA                          3+                   1                 -0.0296177   -0.0503528   -0.0088827
9-12 months    GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          2                    1                  0.0329443   -0.0107810    0.0766695
9-12 months    GMS-Nepal        NEPAL                          3+                   1                 -0.0363202   -0.0738167    0.0011764
9-12 months    Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         2                    1                 -0.0327170   -0.0918288    0.0263948
9-12 months    Keneba           GAMBIA                         3+                   1                 -0.0809279   -0.1158323   -0.0460236
9-12 months    PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     2                    1                  0.0064635   -0.0227074    0.0356343
9-12 months    PROVIDE          BANGLADESH                     3+                   1                 -0.0043184   -0.0341153    0.0254784
9-12 months    SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          2                    1                 -0.0210254   -0.0583321    0.0162814
9-12 months    SAS-CompFeed     INDIA                          3+                   1                 -0.0256043   -0.0469269   -0.0042817
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0183015   -0.0504849    0.0138820
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0104790   -0.0198877    0.0408457
9-12 months    ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       2                    1                 -0.0209823   -0.0457651    0.0038004
9-12 months    ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0385392   -0.0566469   -0.0204315
12-15 months   COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      2                    1                 -0.0266531   -0.0776992    0.0243929
12-15 months   COHORTS          GUATEMALA                      3+                   1                 -0.0150617   -0.0533038    0.0231805
12-15 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          2                    1                 -0.0011438   -0.0488564    0.0465687
12-15 months   GMS-Nepal        NEPAL                          3+                   1                  0.0245077   -0.0164305    0.0654458
12-15 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         2                    1                 -0.0275095   -0.0931114    0.0380923
12-15 months   Keneba           GAMBIA                         3+                   1                 -0.0330246   -0.0690899    0.0030406
12-15 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     2                    1                 -0.0296827   -0.0665888    0.0072235
12-15 months   PROVIDE          BANGLADESH                     3+                   1                  0.0255974   -0.0174913    0.0686860
12-15 months   SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          2                    1                 -0.0002861   -0.0626746    0.0621023
12-15 months   SAS-CompFeed     INDIA                          3+                   1                 -0.0211387   -0.0557293    0.0134518
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0277366   -0.0605472    0.0050740
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0331376   -0.0623416   -0.0039335
12-15 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       2                    1                 -0.0131879   -0.0506273    0.0242515
12-15 months   ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0000909   -0.0356763    0.0354946
15-18 months   COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      2                    1                 -0.0464656   -0.0999749    0.0070438
15-18 months   COHORTS          GUATEMALA                      3+                   1                  0.0200837   -0.0187809    0.0589483
15-18 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          2                    1                  0.0016359   -0.0745548    0.0778266
15-18 months   GMS-Nepal        NEPAL                          3+                   1                 -0.0405586   -0.0932684    0.0121512
15-18 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         2                    1                  0.0616180    0.0129332    0.1103029
15-18 months   Keneba           GAMBIA                         3+                   1                  0.0116418   -0.0165360    0.0398195
15-18 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     2                    1                 -0.0074671   -0.0451014    0.0301672
15-18 months   PROVIDE          BANGLADESH                     3+                   1                 -0.0319121   -0.0719908    0.0081665
15-18 months   SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          2                    1                 -0.0020067   -0.0576174    0.0536041
15-18 months   SAS-CompFeed     INDIA                          3+                   1                  0.0023266   -0.0423328    0.0469860
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0354777   -0.0094375    0.0803930
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0182267   -0.0206934    0.0571468
15-18 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       2                    1                  0.0135556   -0.0338275    0.0609387
15-18 months   ZVITAMBO         ZIMBABWE                       3+                   1                  0.0091720   -0.0329432    0.0512872
18-21 months   COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      2                    1                  0.0572408   -0.0063568    0.1208385
18-21 months   COHORTS          GUATEMALA                      3+                   1                  0.0521135    0.0222377    0.0819893
18-21 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          2                    1                 -0.0408709   -0.1062519    0.0245101
18-21 months   GMS-Nepal        NEPAL                          3+                   1                  0.0208738   -0.0287683    0.0705159
18-21 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         2                    1                  0.0134866   -0.0534126    0.0803858
18-21 months   Keneba           GAMBIA                         3+                   1                  0.0486033    0.0021745    0.0950321
18-21 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     2                    1                 -0.0174760   -0.0503028    0.0153509
18-21 months   PROVIDE          BANGLADESH                     3+                   1                  0.0202116   -0.0153275    0.0557508
18-21 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       2                    1                  0.0126849   -0.0747741    0.1001439
18-21 months   ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0034034   -0.0535000    0.0466931
21-24 months   COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      2                    1                 -0.0373990   -0.0959346    0.0211365
21-24 months   COHORTS          GUATEMALA                      3+                   1                 -0.0419616   -0.0847433    0.0008200
21-24 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          2                    1                  0.0598911   -0.0268947    0.1466768
21-24 months   GMS-Nepal        NEPAL                          3+                   1                  0.0055552   -0.0694169    0.0805273
21-24 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         2                    1                  0.0379492   -0.0620677    0.1379662
21-24 months   Keneba           GAMBIA                         3+                   1                  0.0752960    0.0086933    0.1418987
21-24 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     2                    1                  0.0231092   -0.0159603    0.0621788
21-24 months   PROVIDE          BANGLADESH                     3+                   1                  0.0017269   -0.0294384    0.0328921
21-24 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       2                    1                 -0.0482889   -0.1276404    0.0310626
21-24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0884565   -0.1664833   -0.0104298


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      1                    NA                -0.0344662   -0.1169881    0.0480557
0-3 months     COHORTS          INDIA                          1                    NA                -0.0306137   -0.0483307   -0.0128968
0-3 months     GMS-Nepal        NEPAL                          1                    NA                 0.0100484   -0.0526956    0.0727923
0-3 months     JiVitA-3         BANGLADESH                     1                    NA                -0.0037080   -0.0121371    0.0047211
0-3 months     Keneba           GAMBIA                         1                    NA                -0.0594400   -0.0957493   -0.0231307
0-3 months     PROVIDE          BANGLADESH                     1                    NA                -0.0116076   -0.0433167    0.0201016
0-3 months     SAS-CompFeed     INDIA                          1                    NA                -0.0338022   -0.0610704   -0.0065341
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0017946   -0.0223351    0.0187459
0-3 months     ZVITAMBO         ZIMBABWE                       1                    NA                -0.0065406   -0.0192744    0.0061931
3-6 months     COHORTS          GUATEMALA                      1                    NA                -0.0709053   -0.1236281   -0.0181825
3-6 months     COHORTS          INDIA                          1                    NA                -0.0453160   -0.0594046   -0.0312274
3-6 months     GMS-Nepal        NEPAL                          1                    NA                -0.0933937   -0.1511703   -0.0356172
3-6 months     JiVitA-3         BANGLADESH                     1                    NA                -0.0185920   -0.0250096   -0.0121744
3-6 months     Keneba           GAMBIA                         1                    NA                -0.0222541   -0.0544725    0.0099642
3-6 months     PROVIDE          BANGLADESH                     1                    NA                -0.0083100   -0.0317209    0.0151009
3-6 months     SAS-CompFeed     INDIA                          1                    NA                -0.0475744   -0.0644590   -0.0306898
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0133761   -0.0317185    0.0049663
3-6 months     ZVITAMBO         ZIMBABWE                       1                    NA                -0.0266596   -0.0429228   -0.0103965
6-9 months     COHORTS          GUATEMALA                      1                    NA                -0.0050184   -0.0286464    0.0186097
6-9 months     COHORTS          INDIA                          1                    NA                -0.0321791   -0.0470854   -0.0172728
6-9 months     GMS-Nepal        NEPAL                          1                    NA                -0.0276991   -0.0656520    0.0102538
6-9 months     Keneba           GAMBIA                         1                    NA                -0.0301619   -0.0573025   -0.0030214
6-9 months     PROVIDE          BANGLADESH                     1                    NA                -0.0143572   -0.0374017    0.0086872
6-9 months     SAS-CompFeed     INDIA                          1                    NA                -0.0274506   -0.0478943   -0.0070068
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0057874   -0.0207466    0.0091717
6-9 months     ZVITAMBO         ZIMBABWE                       1                    NA                -0.0127702   -0.0281392    0.0025989
9-12 months    COHORTS          GUATEMALA                      1                    NA                -0.0048838   -0.0360870    0.0263194
9-12 months    COHORTS          INDIA                          1                    NA                -0.0206902   -0.0390312   -0.0023491
9-12 months    GMS-Nepal        NEPAL                          1                    NA                 0.0088191   -0.0222309    0.0398691
9-12 months    Keneba           GAMBIA                         1                    NA                -0.0803993   -0.1127405   -0.0480581
9-12 months    PROVIDE          BANGLADESH                     1                    NA                -0.0020183   -0.0197496    0.0157131
9-12 months    SAS-CompFeed     INDIA                          1                    NA                -0.0127205   -0.0358524    0.0104114
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0072874   -0.0272371    0.0126622
9-12 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0157772   -0.0293704   -0.0021840
12-15 months   COHORTS          GUATEMALA                      1                    NA                -0.0246049   -0.0595455    0.0103356
12-15 months   GMS-Nepal        NEPAL                          1                    NA                 0.0158076   -0.0189666    0.0505818
12-15 months   Keneba           GAMBIA                         1                    NA                -0.0310692   -0.0632913    0.0011530
12-15 months   PROVIDE          BANGLADESH                     1                    NA                -0.0069972   -0.0315725    0.0175781
12-15 months   SAS-CompFeed     INDIA                          1                    NA                -0.0052759   -0.0429915    0.0324398
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0221889   -0.0403874   -0.0039903
12-15 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0008091   -0.0226420    0.0242602
15-18 months   COHORTS          GUATEMALA                      1                    NA                 0.0098444   -0.0246748    0.0443636
15-18 months   GMS-Nepal        NEPAL                          1                    NA                -0.0364683   -0.0802037    0.0072671
15-18 months   Keneba           GAMBIA                         1                    NA                 0.0131047   -0.0114565    0.0376659
15-18 months   PROVIDE          BANGLADESH                     1                    NA                -0.0098743   -0.0348310    0.0150824
15-18 months   SAS-CompFeed     INDIA                          1                    NA                -0.0035494   -0.0372112    0.0301124
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0217244   -0.0024065    0.0458553
15-18 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0003294   -0.0222052    0.0228641
18-21 months   COHORTS          GUATEMALA                      1                    NA                 0.0550815    0.0287791    0.0813839
18-21 months   GMS-Nepal        NEPAL                          1                    NA                -0.0050270   -0.0430301    0.0329760
18-21 months   Keneba           GAMBIA                         1                    NA                 0.0480698    0.0043749    0.0917646
18-21 months   PROVIDE          BANGLADESH                     1                    NA                -0.0032092   -0.0192509    0.0128325
18-21 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0021841   -0.0356381    0.0400064
21-24 months   COHORTS          GUATEMALA                      1                    NA                -0.0340088   -0.0733476    0.0053300
21-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0386643   -0.0141335    0.0914621
21-24 months   Keneba           GAMBIA                         1                    NA                 0.0662219    0.0027294    0.1297144
21-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0105661   -0.0123508    0.0334831
21-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0601036   -0.0999101   -0.0202972
