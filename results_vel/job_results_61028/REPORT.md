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

**Outcome Variable:** y_rate_haz

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
0-3 months     COHORTS          GUATEMALA                      1             93     728
0-3 months     COHORTS          GUATEMALA                      2            111     728
0-3 months     COHORTS          GUATEMALA                      3+           524     728
0-3 months     COHORTS          INDIA                          1            671    4021
0-3 months     COHORTS          INDIA                          2           1015    4021
0-3 months     COHORTS          INDIA                          3+          2335    4021
0-3 months     GMS-Nepal        NEPAL                          1            137     509
0-3 months     GMS-Nepal        NEPAL                          2            129     509
0-3 months     GMS-Nepal        NEPAL                          3+           243     509
0-3 months     JiVitA-3         BANGLADESH                     1           6338   19878
0-3 months     JiVitA-3         BANGLADESH                     2           6881   19878
0-3 months     JiVitA-3         BANGLADESH                     3+          6659   19878
0-3 months     Keneba           GAMBIA                         1            130    1145
0-3 months     Keneba           GAMBIA                         2            113    1145
0-3 months     Keneba           GAMBIA                         3+           902    1145
0-3 months     PROVIDE          BANGLADESH                     1            242     640
0-3 months     PROVIDE          BANGLADESH                     2            226     640
0-3 months     PROVIDE          BANGLADESH                     3+           172     640
0-3 months     SAS-CompFeed     INDIA                          1            344    1261
0-3 months     SAS-CompFeed     INDIA                          2            298    1261
0-3 months     SAS-CompFeed     INDIA                          3+           619    1261
0-3 months     ZVITAMBO         ZIMBABWE                       1           3100    7981
0-3 months     ZVITAMBO         ZIMBABWE                       2           2478    7981
0-3 months     ZVITAMBO         ZIMBABWE                       3+          2403    7981
3-6 months     COHORTS          GUATEMALA                      1            107     805
3-6 months     COHORTS          GUATEMALA                      2            114     805
3-6 months     COHORTS          GUATEMALA                      3+           584     805
3-6 months     COHORTS          INDIA                          1            675    4069
3-6 months     COHORTS          INDIA                          2           1042    4069
3-6 months     COHORTS          INDIA                          3+          2352    4069
3-6 months     GMS-Nepal        NEPAL                          1            121     469
3-6 months     GMS-Nepal        NEPAL                          2            120     469
3-6 months     GMS-Nepal        NEPAL                          3+           228     469
3-6 months     JiVitA-3         BANGLADESH                     1           4409   12581
3-6 months     JiVitA-3         BANGLADESH                     2           4359   12581
3-6 months     JiVitA-3         BANGLADESH                     3+          3813   12581
3-6 months     Keneba           GAMBIA                         1            146    1130
3-6 months     Keneba           GAMBIA                         2            107    1130
3-6 months     Keneba           GAMBIA                         3+           877    1130
3-6 months     PROVIDE          BANGLADESH                     1            214     598
3-6 months     PROVIDE          BANGLADESH                     2            221     598
3-6 months     PROVIDE          BANGLADESH                     3+           163     598
3-6 months     SAS-CompFeed     INDIA                          1            299    1124
3-6 months     SAS-CompFeed     INDIA                          2            261    1124
3-6 months     SAS-CompFeed     INDIA                          3+           564    1124
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            566    1637
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            536    1637
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           535    1637
3-6 months     ZVITAMBO         ZIMBABWE                       1           2318    6178
3-6 months     ZVITAMBO         ZIMBABWE                       2           1952    6178
3-6 months     ZVITAMBO         ZIMBABWE                       3+          1908    6178
6-9 months     COHORTS          GUATEMALA                      1            113     822
6-9 months     COHORTS          GUATEMALA                      2            117     822
6-9 months     COHORTS          GUATEMALA                      3+           592     822
6-9 months     COHORTS          INDIA                          1            639    3756
6-9 months     COHORTS          INDIA                          2            940    3756
6-9 months     COHORTS          INDIA                          3+          2177    3756
6-9 months     GMS-Nepal        NEPAL                          1            125     481
6-9 months     GMS-Nepal        NEPAL                          2            130     481
6-9 months     GMS-Nepal        NEPAL                          3+           226     481
6-9 months     Keneba           GAMBIA                         1             90     725
6-9 months     Keneba           GAMBIA                         2             67     725
6-9 months     Keneba           GAMBIA                         3+           568     725
6-9 months     PROVIDE          BANGLADESH                     1            204     565
6-9 months     PROVIDE          BANGLADESH                     2            207     565
6-9 months     PROVIDE          BANGLADESH                     3+           154     565
6-9 months     SAS-CompFeed     INDIA                          1            307    1144
6-9 months     SAS-CompFeed     INDIA                          2            267    1144
6-9 months     SAS-CompFeed     INDIA                          3+           570    1144
6-9 months     SAS-FoodSuppl    INDIA                          1              1     314
6-9 months     SAS-FoodSuppl    INDIA                          2             56     314
6-9 months     SAS-FoodSuppl    INDIA                          3+           257     314
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            513    1462
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            470    1462
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           479    1462
6-9 months     ZVITAMBO         ZIMBABWE                       1           2280    5929
6-9 months     ZVITAMBO         ZIMBABWE                       2           1838    5929
6-9 months     ZVITAMBO         ZIMBABWE                       3+          1811    5929
9-12 months    COHORTS          GUATEMALA                      1            130     929
9-12 months    COHORTS          GUATEMALA                      2            133     929
9-12 months    COHORTS          GUATEMALA                      3+           666     929
9-12 months    COHORTS          INDIA                          1            557    3269
9-12 months    COHORTS          INDIA                          2            814    3269
9-12 months    COHORTS          INDIA                          3+          1898    3269
9-12 months    GMS-Nepal        NEPAL                          1            119     469
9-12 months    GMS-Nepal        NEPAL                          2            126     469
9-12 months    GMS-Nepal        NEPAL                          3+           224     469
9-12 months    Keneba           GAMBIA                         1             75     715
9-12 months    Keneba           GAMBIA                         2             66     715
9-12 months    Keneba           GAMBIA                         3+           574     715
9-12 months    PROVIDE          BANGLADESH                     1            208     566
9-12 months    PROVIDE          BANGLADESH                     2            207     566
9-12 months    PROVIDE          BANGLADESH                     3+           151     566
9-12 months    SAS-CompFeed     INDIA                          1            321    1146
9-12 months    SAS-CompFeed     INDIA                          2            260    1146
9-12 months    SAS-CompFeed     INDIA                          3+           565    1146
9-12 months    SAS-FoodSuppl    INDIA                          1              1     311
9-12 months    SAS-FoodSuppl    INDIA                          2             56     311
9-12 months    SAS-FoodSuppl    INDIA                          3+           254     311
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            375    1062
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            339    1062
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           348    1062
9-12 months    ZVITAMBO         ZIMBABWE                       1           2289    5932
9-12 months    ZVITAMBO         ZIMBABWE                       2           1822    5932
9-12 months    ZVITAMBO         ZIMBABWE                       3+          1821    5932
12-15 months   COHORTS          GUATEMALA                      1            133     880
12-15 months   COHORTS          GUATEMALA                      2            119     880
12-15 months   COHORTS          GUATEMALA                      3+           628     880
12-15 months   GMS-Nepal        NEPAL                          1            120     469
12-15 months   GMS-Nepal        NEPAL                          2            123     469
12-15 months   GMS-Nepal        NEPAL                          3+           226     469
12-15 months   Keneba           GAMBIA                         1            104    1104
12-15 months   Keneba           GAMBIA                         2            103    1104
12-15 months   Keneba           GAMBIA                         3+           897    1104
12-15 months   PROVIDE          BANGLADESH                     1            199     532
12-15 months   PROVIDE          BANGLADESH                     2            198     532
12-15 months   PROVIDE          BANGLADESH                     3+           135     532
12-15 months   SAS-CompFeed     INDIA                          1            338    1168
12-15 months   SAS-CompFeed     INDIA                          2            262    1168
12-15 months   SAS-CompFeed     INDIA                          3+           568    1168
12-15 months   SAS-FoodSuppl    INDIA                          1              0     303
12-15 months   SAS-FoodSuppl    INDIA                          2             60     303
12-15 months   SAS-FoodSuppl    INDIA                          3+           243     303
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            265     776
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            258     776
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           253     776
12-15 months   ZVITAMBO         ZIMBABWE                       1            934    2548
12-15 months   ZVITAMBO         ZIMBABWE                       2            796    2548
12-15 months   ZVITAMBO         ZIMBABWE                       3+           818    2548
15-18 months   COHORTS          GUATEMALA                      1            116     786
15-18 months   COHORTS          GUATEMALA                      2            109     786
15-18 months   COHORTS          GUATEMALA                      3+           561     786
15-18 months   GMS-Nepal        NEPAL                          1            126     480
15-18 months   GMS-Nepal        NEPAL                          2            129     480
15-18 months   GMS-Nepal        NEPAL                          3+           225     480
15-18 months   Keneba           GAMBIA                         1            109    1122
15-18 months   Keneba           GAMBIA                         2            101    1122
15-18 months   Keneba           GAMBIA                         3+           912    1122
15-18 months   PROVIDE          BANGLADESH                     1            197     528
15-18 months   PROVIDE          BANGLADESH                     2            196     528
15-18 months   PROVIDE          BANGLADESH                     3+           135     528
15-18 months   SAS-CompFeed     INDIA                          1            342    1171
15-18 months   SAS-CompFeed     INDIA                          2            258    1171
15-18 months   SAS-CompFeed     INDIA                          3+           571    1171
15-18 months   SAS-FoodSuppl    INDIA                          1              0     291
15-18 months   SAS-FoodSuppl    INDIA                          2             53     291
15-18 months   SAS-FoodSuppl    INDIA                          3+           238     291
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            219     649
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            217     649
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           213     649
15-18 months   ZVITAMBO         ZIMBABWE                       1            753    2036
15-18 months   ZVITAMBO         ZIMBABWE                       2            635    2036
15-18 months   ZVITAMBO         ZIMBABWE                       3+           648    2036
18-21 months   COHORTS          GUATEMALA                      1            111     776
18-21 months   COHORTS          GUATEMALA                      2            107     776
18-21 months   COHORTS          GUATEMALA                      3+           558     776
18-21 months   GMS-Nepal        NEPAL                          1            116     445
18-21 months   GMS-Nepal        NEPAL                          2            121     445
18-21 months   GMS-Nepal        NEPAL                          3+           208     445
18-21 months   Keneba           GAMBIA                         1            115    1125
18-21 months   Keneba           GAMBIA                         2            109    1125
18-21 months   Keneba           GAMBIA                         3+           901    1125
18-21 months   PROVIDE          BANGLADESH                     1            200     541
18-21 months   PROVIDE          BANGLADESH                     2            197     541
18-21 months   PROVIDE          BANGLADESH                     3+           144     541
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              3       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              2       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             4       9
18-21 months   ZVITAMBO         ZIMBABWE                       1            572    1595
18-21 months   ZVITAMBO         ZIMBABWE                       2            502    1595
18-21 months   ZVITAMBO         ZIMBABWE                       3+           521    1595
21-24 months   COHORTS          GUATEMALA                      1            128     858
21-24 months   COHORTS          GUATEMALA                      2            116     858
21-24 months   COHORTS          GUATEMALA                      3+           614     858
21-24 months   GMS-Nepal        NEPAL                          1             84     342
21-24 months   GMS-Nepal        NEPAL                          2             95     342
21-24 months   GMS-Nepal        NEPAL                          3+           163     342
21-24 months   Keneba           GAMBIA                         1            102    1003
21-24 months   Keneba           GAMBIA                         2             98    1003
21-24 months   Keneba           GAMBIA                         3+           803    1003
21-24 months   PROVIDE          BANGLADESH                     1            173     471
21-24 months   PROVIDE          BANGLADESH                     2            175     471
21-24 months   PROVIDE          BANGLADESH                     3+           123     471
21-24 months   ZVITAMBO         ZIMBABWE                       1            428    1169
21-24 months   ZVITAMBO         ZIMBABWE                       2            373    1169
21-24 months   ZVITAMBO         ZIMBABWE                       3+           368    1169


The following strata were considered:

* agecat: 0-3 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: COHORTS, country: INDIA
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: SAS-CompFeed, country: INDIA
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
![](/tmp/0a863ebd-ba18-4fac-862e-828bfa16f443/e1ea8de4-1c6c-4654-8d05-77aa8b6b1244/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0a863ebd-ba18-4fac-862e-828bfa16f443/e1ea8de4-1c6c-4654-8d05-77aa8b6b1244/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0a863ebd-ba18-4fac-862e-828bfa16f443/e1ea8de4-1c6c-4654-8d05-77aa8b6b1244/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      1                    NA                -0.4603043   -0.5293511   -0.3912576
0-3 months     COHORTS          GUATEMALA                      2                    NA                -0.5255060   -0.6023912   -0.4486208
0-3 months     COHORTS          GUATEMALA                      3+                   NA                -0.5509915   -0.5800002   -0.5219828
0-3 months     COHORTS          INDIA                          1                    NA                -0.0206252   -0.0487197    0.0074693
0-3 months     COHORTS          INDIA                          2                    NA                -0.0455879   -0.0722753   -0.0189004
0-3 months     COHORTS          INDIA                          3+                   NA                -0.0846688   -0.0980140   -0.0713236
0-3 months     GMS-Nepal        NEPAL                          1                    NA                -0.1382292   -0.2644802   -0.0119783
0-3 months     GMS-Nepal        NEPAL                          2                    NA                 0.0125334   -0.0918219    0.1168888
0-3 months     GMS-Nepal        NEPAL                          3+                   NA                -0.0569111   -0.0964969   -0.0173254
0-3 months     JiVitA-3         BANGLADESH                     1                    NA                 0.0935946    0.0821053    0.1050840
0-3 months     JiVitA-3         BANGLADESH                     2                    NA                 0.0859631    0.0752083    0.0967179
0-3 months     JiVitA-3         BANGLADESH                     3+                   NA                 0.0440454    0.0327534    0.0553373
0-3 months     Keneba           GAMBIA                         1                    NA                -0.3601136   -0.4127969   -0.3074303
0-3 months     Keneba           GAMBIA                         2                    NA                -0.4029456   -0.5541133   -0.2517779
0-3 months     Keneba           GAMBIA                         3+                   NA                -0.2817945   -0.3218333   -0.2417557
0-3 months     PROVIDE          BANGLADESH                     1                    NA                -0.1830037   -0.2277956   -0.1382118
0-3 months     PROVIDE          BANGLADESH                     2                    NA                -0.1598731   -0.2001991   -0.1195470
0-3 months     PROVIDE          BANGLADESH                     3+                   NA                -0.2149368   -0.2597333   -0.1701403
0-3 months     SAS-CompFeed     INDIA                          1                    NA                -0.1105925   -0.1697200   -0.0514650
0-3 months     SAS-CompFeed     INDIA                          2                    NA                -0.1417653   -0.1830005   -0.1005301
0-3 months     SAS-CompFeed     INDIA                          3+                   NA                -0.1248953   -0.1523849   -0.0974057
0-3 months     ZVITAMBO         ZIMBABWE                       1                    NA                -0.1218265   -0.1508017   -0.0928513
0-3 months     ZVITAMBO         ZIMBABWE                       2                    NA                -0.0982707   -0.1244455   -0.0720959
0-3 months     ZVITAMBO         ZIMBABWE                       3+                   NA                -0.1577906   -0.1842897   -0.1312915
3-6 months     COHORTS          GUATEMALA                      1                    NA                 0.0200501   -0.0312706    0.0713707
3-6 months     COHORTS          GUATEMALA                      2                    NA                -0.0875965   -0.1441860   -0.0310070
3-6 months     COHORTS          GUATEMALA                      3+                   NA                -0.1078373   -0.1288430   -0.0868316
3-6 months     COHORTS          INDIA                          1                    NA                -0.0153032   -0.0419037    0.0112973
3-6 months     COHORTS          INDIA                          2                    NA                -0.0656987   -0.0847471   -0.0466503
3-6 months     COHORTS          INDIA                          3+                   NA                -0.0680635   -0.0794290   -0.0566980
3-6 months     GMS-Nepal        NEPAL                          1                    NA                -0.0989237   -0.1478977   -0.0499496
3-6 months     GMS-Nepal        NEPAL                          2                    NA                -0.1807800   -0.2450794   -0.1164806
3-6 months     GMS-Nepal        NEPAL                          3+                   NA                -0.1594543   -0.1879324   -0.1309762
3-6 months     JiVitA-3         BANGLADESH                     1                    NA                 0.0345985    0.0218652    0.0473318
3-6 months     JiVitA-3         BANGLADESH                     2                    NA                -0.0114281   -0.0226182   -0.0002380
3-6 months     JiVitA-3         BANGLADESH                     3+                   NA                -0.0383459   -0.0519707   -0.0247212
3-6 months     Keneba           GAMBIA                         1                    NA                 0.0863006    0.0379026    0.1346986
3-6 months     Keneba           GAMBIA                         2                    NA                 0.0818199   -0.0453770    0.2090168
3-6 months     Keneba           GAMBIA                         3+                   NA                -0.0640786   -0.0999721   -0.0281852
3-6 months     PROVIDE          BANGLADESH                     1                    NA                -0.0495644   -0.0912864   -0.0078423
3-6 months     PROVIDE          BANGLADESH                     2                    NA                -0.0249451   -0.0644605    0.0145703
3-6 months     PROVIDE          BANGLADESH                     3+                   NA                 0.0164773   -0.0198981    0.0528527
3-6 months     SAS-CompFeed     INDIA                          1                    NA                 0.0629277    0.0212872    0.1045682
3-6 months     SAS-CompFeed     INDIA                          2                    NA                -0.0161781   -0.0342655    0.0019092
3-6 months     SAS-CompFeed     INDIA                          3+                   NA                -0.0675616   -0.0955062   -0.0396169
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0913806   -0.1237744   -0.0589868
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0823708   -0.1239259   -0.0408156
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.1201579   -0.1533865   -0.0869292
3-6 months     ZVITAMBO         ZIMBABWE                       1                    NA                 0.0145193   -0.0070997    0.0361384
3-6 months     ZVITAMBO         ZIMBABWE                       2                    NA                -0.0240063   -0.0500093    0.0019968
3-6 months     ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0236589   -0.0458142   -0.0015035
6-9 months     COHORTS          GUATEMALA                      1                    NA                -0.1018242   -0.1408522   -0.0627962
6-9 months     COHORTS          GUATEMALA                      2                    NA                -0.0982549   -0.1547534   -0.0417564
6-9 months     COHORTS          GUATEMALA                      3+                   NA                -0.1270719   -0.1456842   -0.1084595
6-9 months     COHORTS          INDIA                          1                    NA                -0.0654072   -0.0852792   -0.0455351
6-9 months     COHORTS          INDIA                          2                    NA                -0.0996507   -0.1166714   -0.0826301
6-9 months     COHORTS          INDIA                          3+                   NA                -0.1029080   -0.1126308   -0.0931852
6-9 months     GMS-Nepal        NEPAL                          1                    NA                -0.0729128   -0.1447938   -0.0010317
6-9 months     GMS-Nepal        NEPAL                          2                    NA                -0.0317627   -0.0953565    0.0318312
6-9 months     GMS-Nepal        NEPAL                          3+                   NA                -0.0492481   -0.0730715   -0.0254246
6-9 months     Keneba           GAMBIA                         1                    NA                 0.1543574    0.1084946    0.2002202
6-9 months     Keneba           GAMBIA                         2                    NA                 0.0020427   -0.0778711    0.0819566
6-9 months     Keneba           GAMBIA                         3+                   NA                -0.0156740   -0.0483656    0.0170175
6-9 months     PROVIDE          BANGLADESH                     1                    NA                -0.0392020   -0.0607276   -0.0176765
6-9 months     PROVIDE          BANGLADESH                     2                    NA                -0.0533417   -0.0785201   -0.0281634
6-9 months     PROVIDE          BANGLADESH                     3+                   NA                -0.0690392   -0.0943111   -0.0437674
6-9 months     SAS-CompFeed     INDIA                          1                    NA                -0.0438045   -0.0848352   -0.0027739
6-9 months     SAS-CompFeed     INDIA                          2                    NA                -0.0989383   -0.1423562   -0.0555204
6-9 months     SAS-CompFeed     INDIA                          3+                   NA                -0.0750383   -0.0962197   -0.0538569
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0298343   -0.0615115    0.0018429
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0526695   -0.0917255   -0.0136135
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.0821354   -0.1168733   -0.0473975
6-9 months     ZVITAMBO         ZIMBABWE                       1                    NA                -0.0087659   -0.0290675    0.0115358
6-9 months     ZVITAMBO         ZIMBABWE                       2                    NA                -0.0422610   -0.0695647   -0.0149572
6-9 months     ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0024876   -0.0258494    0.0208742
9-12 months    COHORTS          GUATEMALA                      1                    NA                -0.0575003   -0.0875683   -0.0274323
9-12 months    COHORTS          GUATEMALA                      2                    NA                -0.1082396   -0.1612444   -0.0552348
9-12 months    COHORTS          GUATEMALA                      3+                   NA                -0.0967525   -0.1100457   -0.0834594
9-12 months    COHORTS          INDIA                          1                    NA                -0.0952343   -0.1126647   -0.0778038
9-12 months    COHORTS          INDIA                          2                    NA                -0.0932890   -0.1103304   -0.0762476
9-12 months    COHORTS          INDIA                          3+                   NA                -0.0981218   -0.1076682   -0.0885754
9-12 months    GMS-Nepal        NEPAL                          1                    NA                -0.0573855   -0.0963736   -0.0183974
9-12 months    GMS-Nepal        NEPAL                          2                    NA                -0.0684965   -0.1084281   -0.0285650
9-12 months    GMS-Nepal        NEPAL                          3+                   NA                -0.0935014   -0.1141471   -0.0728557
9-12 months    Keneba           GAMBIA                         1                    NA                -0.1463032   -0.2147596   -0.0778467
9-12 months    Keneba           GAMBIA                         2                    NA                -0.0464019   -0.1040321    0.0112283
9-12 months    Keneba           GAMBIA                         3+                   NA                -0.1149203   -0.1354536   -0.0943871
9-12 months    PROVIDE          BANGLADESH                     1                    NA                -0.0429729   -0.0671455   -0.0188003
9-12 months    PROVIDE          BANGLADESH                     2                    NA                -0.0657115   -0.0979984   -0.0334246
9-12 months    PROVIDE          BANGLADESH                     3+                   NA                -0.0807855   -0.1037859   -0.0577850
9-12 months    SAS-CompFeed     INDIA                          1                    NA                -0.0591174   -0.1040833   -0.0141515
9-12 months    SAS-CompFeed     INDIA                          2                    NA                -0.0923666   -0.1321204   -0.0526129
9-12 months    SAS-CompFeed     INDIA                          3+                   NA                -0.0849876   -0.1100069   -0.0599683
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0887278   -0.1193578   -0.0580978
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0693948   -0.1021305   -0.0366591
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.0647142   -0.0971493   -0.0322791
9-12 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0526670   -0.0741529   -0.0311811
9-12 months    ZVITAMBO         ZIMBABWE                       2                    NA                -0.0524932   -0.0817344   -0.0232520
9-12 months    ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0531436   -0.0707998   -0.0354873
12-15 months   COHORTS          GUATEMALA                      1                    NA                -0.0738419   -0.1207324   -0.0269514
12-15 months   COHORTS          GUATEMALA                      2                    NA                -0.0786490   -0.1216011   -0.0356970
12-15 months   COHORTS          GUATEMALA                      3+                   NA                -0.0907277   -0.1046072   -0.0768481
12-15 months   GMS-Nepal        NEPAL                          1                    NA                -0.0412956   -0.0677268   -0.0148643
12-15 months   GMS-Nepal        NEPAL                          2                    NA                -0.0806892   -0.1176688   -0.0437095
12-15 months   GMS-Nepal        NEPAL                          3+                   NA                -0.0870635   -0.1045169   -0.0696101
12-15 months   Keneba           GAMBIA                         1                    NA                 0.0193824   -0.0088937    0.0476585
12-15 months   Keneba           GAMBIA                         2                    NA                -0.0773167   -0.1341881   -0.0204454
12-15 months   Keneba           GAMBIA                         3+                   NA                -0.0585770   -0.0729312   -0.0442227
12-15 months   PROVIDE          BANGLADESH                     1                    NA                -0.0383737   -0.0591639   -0.0175836
12-15 months   PROVIDE          BANGLADESH                     2                    NA                -0.0524043   -0.0754253   -0.0293832
12-15 months   PROVIDE          BANGLADESH                     3+                   NA                -0.0462934   -0.0688327   -0.0237541
12-15 months   SAS-CompFeed     INDIA                          1                    NA                -0.0751596   -0.1273855   -0.0229337
12-15 months   SAS-CompFeed     INDIA                          2                    NA                -0.1005860   -0.1267701   -0.0744018
12-15 months   SAS-CompFeed     INDIA                          3+                   NA                -0.1129456   -0.1411826   -0.0847085
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0713868   -0.0991526   -0.0436209
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0658617   -0.0967029   -0.0350205
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.0491003   -0.0744304   -0.0237702
12-15 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0416281   -0.0683791   -0.0148772
12-15 months   ZVITAMBO         ZIMBABWE                       2                    NA                -0.0691215   -0.1022822   -0.0359609
12-15 months   ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0689192   -0.0906801   -0.0471584
15-18 months   COHORTS          GUATEMALA                      1                    NA                -0.0872873   -0.1262577   -0.0483170
15-18 months   COHORTS          GUATEMALA                      2                    NA                -0.1094528   -0.1600132   -0.0588923
15-18 months   COHORTS          GUATEMALA                      3+                   NA                -0.0489462   -0.0638011   -0.0340913
15-18 months   GMS-Nepal        NEPAL                          1                    NA                -0.0729856   -0.0996681   -0.0463030
15-18 months   GMS-Nepal        NEPAL                          2                    NA                -0.0798132   -0.1186206   -0.0410057
15-18 months   GMS-Nepal        NEPAL                          3+                   NA                -0.0752168   -0.0883780   -0.0620556
15-18 months   Keneba           GAMBIA                         1                    NA                 0.2061373    0.0523934    0.3598811
15-18 months   Keneba           GAMBIA                         2                    NA                -0.0485697   -0.0923770   -0.0047625
15-18 months   Keneba           GAMBIA                         3+                   NA                -0.0303599   -0.0477041   -0.0130157
15-18 months   PROVIDE          BANGLADESH                     1                    NA                -0.0357998   -0.0536656   -0.0179339
15-18 months   PROVIDE          BANGLADESH                     2                    NA                -0.0405562   -0.0604643   -0.0206481
15-18 months   PROVIDE          BANGLADESH                     3+                   NA                -0.0315229   -0.0503456   -0.0127001
15-18 months   SAS-CompFeed     INDIA                          1                    NA                -0.0077190   -0.0476617    0.0322236
15-18 months   SAS-CompFeed     INDIA                          2                    NA                -0.0041857   -0.0540822    0.0457108
15-18 months   SAS-CompFeed     INDIA                          3+                   NA                 0.0043553   -0.0239043    0.0326150
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0266112   -0.0544860    0.0012635
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0428034   -0.0756517   -0.0099550
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                 0.0020563   -0.0302838    0.0343964
15-18 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0412767   -0.0642075   -0.0183459
15-18 months   ZVITAMBO         ZIMBABWE                       2                    NA                -0.0745808   -0.1055918   -0.0435697
15-18 months   ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0606020   -0.0818369   -0.0393670
18-21 months   COHORTS          GUATEMALA                      1                    NA                -0.0460934   -0.0806945   -0.0114923
18-21 months   COHORTS          GUATEMALA                      2                    NA                -0.0118735   -0.0585394    0.0347924
18-21 months   COHORTS          GUATEMALA                      3+                   NA                -0.0180525   -0.0307578   -0.0053473
18-21 months   GMS-Nepal        NEPAL                          1                    NA                 0.0153572   -0.0095185    0.0402330
18-21 months   GMS-Nepal        NEPAL                          2                    NA                 0.0241413   -0.0095901    0.0578727
18-21 months   GMS-Nepal        NEPAL                          3+                   NA                 0.0037460   -0.0131116    0.0206036
18-21 months   Keneba           GAMBIA                         1                    NA                -0.3115277   -0.4440557   -0.1789997
18-21 months   Keneba           GAMBIA                         2                    NA                 0.0396861   -0.0219791    0.1013513
18-21 months   Keneba           GAMBIA                         3+                   NA                -0.0220016   -0.0360906   -0.0079126
18-21 months   PROVIDE          BANGLADESH                     1                    NA                -0.0030549   -0.0163400    0.0102303
18-21 months   PROVIDE          BANGLADESH                     2                    NA                -0.0111334   -0.0291022    0.0068355
18-21 months   PROVIDE          BANGLADESH                     3+                   NA                -0.0156042   -0.0326192    0.0014109
18-21 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0849119   -0.1103087   -0.0595151
18-21 months   ZVITAMBO         ZIMBABWE                       2                    NA                -0.0623845   -0.0890476   -0.0357215
18-21 months   ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0865415   -0.1138050   -0.0592780
21-24 months   COHORTS          GUATEMALA                      1                    NA                 0.0098235   -0.0146385    0.0342854
21-24 months   COHORTS          GUATEMALA                      2                    NA                -0.0158233   -0.0477480    0.0161014
21-24 months   COHORTS          GUATEMALA                      3+                   NA                -0.0124719   -0.0222728   -0.0026711
21-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0951827    0.0557461    0.1346192
21-24 months   GMS-Nepal        NEPAL                          2                    NA                 0.0095720   -0.0550914    0.0742353
21-24 months   GMS-Nepal        NEPAL                          3+                   NA                 0.0324667    0.0085138    0.0564196
21-24 months   Keneba           GAMBIA                         1                    NA                 0.0259758   -0.0416718    0.0936235
21-24 months   Keneba           GAMBIA                         2                    NA                -0.0148186   -0.1141029    0.0844658
21-24 months   Keneba           GAMBIA                         3+                   NA                 0.0202016    0.0048447    0.0355586
21-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0589966    0.0390659    0.0789273
21-24 months   PROVIDE          BANGLADESH                     2                    NA                 0.0342990    0.0129171    0.0556808
21-24 months   PROVIDE          BANGLADESH                     3+                   NA                 0.0425002    0.0211405    0.0638599
21-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0244487   -0.0120982    0.0609955
21-24 months   ZVITAMBO         ZIMBABWE                       2                    NA                 0.0036520   -0.0200352    0.0273393
21-24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0481209   -0.0781022   -0.0181397


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      NA                   NA                -0.5371921   -0.5589495   -0.5154346
0-3 months     COHORTS          INDIA                          NA                   NA                -0.0677269   -0.0765502   -0.0589035
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                -0.0317680   -0.0569509   -0.0065852
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                 0.0740557    0.0691191    0.0789922
0-3 months     Keneba           GAMBIA                         NA                   NA                -0.2821028   -0.3073160   -0.2568895
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                -0.1273566   -0.1543372   -0.1003761
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1402688   -0.1504985   -0.1300391
3-6 months     COHORTS          GUATEMALA                      NA                   NA                -0.0963382   -0.1109683   -0.0817082
3-6 months     COHORTS          INDIA                          NA                   NA                -0.0633737   -0.0703095   -0.0564379
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                -0.1613977   -0.1800128   -0.1427826
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                -0.0034426   -0.0083086    0.0014234
3-6 months     Keneba           GAMBIA                         NA                   NA                -0.0278645   -0.0482582   -0.0074707
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                -0.0166348   -0.0360336    0.0027639
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0841486   -0.1008599   -0.0674373
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0012924   -0.0104920    0.0079073
6-9 months     COHORTS          GUATEMALA                      NA                   NA                -0.1207546   -0.1326448   -0.1088643
6-9 months     COHORTS          INDIA                          NA                   NA                -0.0985796   -0.1048064   -0.0923527
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                -0.0438931   -0.0614010   -0.0263853
6-9 months     Keneba           GAMBIA                         NA                   NA                -0.0045762   -0.0287122    0.0195598
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                -0.0823482   -0.0898643   -0.0748321
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0525285   -0.0687206   -0.0363364
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0315646   -0.0399465   -0.0231828
9-12 months    COHORTS          GUATEMALA                      NA                   NA                -0.0887143   -0.0986894   -0.0787393
9-12 months    COHORTS          INDIA                          NA                   NA                -0.0933036   -0.0995020   -0.0871051
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                -0.0798239   -0.0934194   -0.0662284
9-12 months    Keneba           GAMBIA                         NA                   NA                -0.1061496   -0.1248815   -0.0874176
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                -0.0811963   -0.0946758   -0.0677169
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0652640   -0.0796167   -0.0509113
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0590759   -0.0665312   -0.0516205
12-15 months   COHORTS          GUATEMALA                      NA                   NA                -0.0875200   -0.0977014   -0.0773386
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                -0.0667249   -0.0775841   -0.0558657
12-15 months   Keneba           GAMBIA                         NA                   NA                -0.0554331   -0.0683830   -0.0424832
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                -0.0847390   -0.0988912   -0.0705868
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0649105   -0.0794330   -0.0503881
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0622748   -0.0728257   -0.0517239
15-18 months   COHORTS          GUATEMALA                      NA                   NA                -0.0545580   -0.0655035   -0.0436124
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                -0.0689576   -0.0815283   -0.0563869
15-18 months   Keneba           GAMBIA                         NA                   NA                -0.0289062   -0.0415733   -0.0162391
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                -0.0117156   -0.0214328   -0.0019983
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0189489   -0.0345324   -0.0033654
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0623481   -0.0733140   -0.0513822
18-21 months   COHORTS          GUATEMALA                      NA                   NA                -0.0194829   -0.0293542   -0.0096117
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                 0.0155926    0.0038526    0.0273327
18-21 months   Keneba           GAMBIA                         NA                   NA                -0.0220748   -0.0349179   -0.0092317
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0689095   -0.0806852   -0.0571338
21-24 months   COHORTS          GUATEMALA                      NA                   NA                -0.0058090   -0.0136683    0.0020502
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                 0.0481269    0.0325947    0.0636591
21-24 months   Keneba           GAMBIA                         NA                   NA                 0.0194181    0.0072915    0.0315446
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                 0.0172279    0.0047469    0.0297089


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      2                    1                 -0.0652017   -0.1685876    0.0381841
0-3 months     COHORTS          GUATEMALA                      3+                   1                 -0.0906872   -0.1653176   -0.0160568
0-3 months     COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          2                    1                 -0.0249626   -0.0637121    0.0137868
0-3 months     COHORTS          INDIA                          3+                   1                 -0.0640436   -0.0951231   -0.0329640
0-3 months     GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          2                    1                  0.1507627   -0.0140106    0.3155360
0-3 months     GMS-Nepal        NEPAL                          3+                   1                  0.0813181   -0.0507977    0.2134340
0-3 months     JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     2                    1                 -0.0076316   -0.0226807    0.0074176
0-3 months     JiVitA-3         BANGLADESH                     3+                   1                 -0.0495493   -0.0657692   -0.0333293
0-3 months     Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         2                    1                 -0.0428320   -0.2025983    0.1169342
0-3 months     Keneba           GAMBIA                         3+                   1                  0.0783191    0.0123081    0.1443301
0-3 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     2                    1                  0.0231306   -0.0373391    0.0836004
0-3 months     PROVIDE          BANGLADESH                     3+                   1                 -0.0319331   -0.0954203    0.0315540
0-3 months     SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          2                    1                 -0.0311728   -0.0765652    0.0142196
0-3 months     SAS-CompFeed     INDIA                          3+                   1                 -0.0143028   -0.0756047    0.0469990
0-3 months     ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       2                    1                  0.0235558   -0.0154314    0.0625430
0-3 months     ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0359641   -0.0751892    0.0032610
3-6 months     COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      2                    1                 -0.1076466   -0.1840254   -0.0312678
3-6 months     COHORTS          GUATEMALA                      3+                   1                 -0.1278874   -0.1833536   -0.0724211
3-6 months     COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          2                    1                 -0.0503955   -0.0830924   -0.0176987
3-6 months     COHORTS          INDIA                          3+                   1                 -0.0527603   -0.0817000   -0.0238206
3-6 months     GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          2                    1                 -0.0818564   -0.1623210   -0.0013917
3-6 months     GMS-Nepal        NEPAL                          3+                   1                 -0.0605306   -0.1172504   -0.0038108
3-6 months     JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     2                    1                 -0.0460266   -0.0621781   -0.0298751
3-6 months     JiVitA-3         BANGLADESH                     3+                   1                 -0.0729444   -0.0920308   -0.0538581
3-6 months     Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         2                    1                 -0.0044807   -0.1405112    0.1315497
3-6 months     Keneba           GAMBIA                         3+                   1                 -0.1503792   -0.2107050   -0.0900535
3-6 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     2                    1                  0.0246193   -0.0331329    0.0823715
3-6 months     PROVIDE          BANGLADESH                     3+                   1                  0.0660417    0.0104523    0.1216311
3-6 months     SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          2                    1                 -0.0791058   -0.1304342   -0.0277775
3-6 months     SAS-CompFeed     INDIA                          3+                   1                 -0.1304893   -0.1890946   -0.0718840
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0090098   -0.0438167    0.0618364
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0287773   -0.0754253    0.0178707
3-6 months     ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       2                    1                 -0.0385256   -0.0723548   -0.0046964
3-6 months     ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0381782   -0.0691402   -0.0072163
6-9 months     COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      2                    1                  0.0035693   -0.0650771    0.0722157
6-9 months     COHORTS          GUATEMALA                      3+                   1                 -0.0252477   -0.0684612    0.0179658
6-9 months     COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          2                    1                 -0.0342435   -0.0604263   -0.0080608
6-9 months     COHORTS          INDIA                          3+                   1                 -0.0375008   -0.0596416   -0.0153600
6-9 months     GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          2                    1                  0.0411501   -0.0549042    0.1372044
6-9 months     GMS-Nepal        NEPAL                          3+                   1                  0.0236647   -0.0520214    0.0993509
6-9 months     Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         2                    1                 -0.1523146   -0.2442457   -0.0603835
6-9 months     Keneba           GAMBIA                         3+                   1                 -0.1700314   -0.2262121   -0.1138507
6-9 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     2                    1                 -0.0141397   -0.0472599    0.0189805
6-9 months     PROVIDE          BANGLADESH                     3+                   1                 -0.0298372   -0.0631434    0.0034690
6-9 months     SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          2                    1                 -0.0551338   -0.1346285    0.0243609
6-9 months     SAS-CompFeed     INDIA                          3+                   1                 -0.0312338   -0.0872494    0.0247819
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0228352   -0.0736079    0.0279376
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0523011   -0.0997309   -0.0048712
6-9 months     ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       2                    1                 -0.0334951   -0.0675276    0.0005374
6-9 months     ZVITAMBO         ZIMBABWE                       3+                   1                  0.0062783   -0.0246986    0.0372551
9-12 months    COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      2                    1                 -0.0507393   -0.1117728    0.0102942
9-12 months    COHORTS          GUATEMALA                      3+                   1                 -0.0392523   -0.0721986   -0.0063060
9-12 months    COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          2                    1                  0.0019453   -0.0224081    0.0262986
9-12 months    COHORTS          INDIA                          3+                   1                 -0.0028875   -0.0227374    0.0169624
9-12 months    GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          2                    1                 -0.0111110   -0.0669394    0.0447174
9-12 months    GMS-Nepal        NEPAL                          3+                   1                 -0.0361159   -0.0802805    0.0080488
9-12 months    Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         2                    1                  0.0999013    0.0099677    0.1898348
9-12 months    Keneba           GAMBIA                         3+                   1                  0.0313828   -0.0409099    0.1036755
9-12 months    PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     2                    1                 -0.0227386   -0.0630626    0.0175853
9-12 months    PROVIDE          BANGLADESH                     3+                   1                 -0.0378125   -0.0711804   -0.0044447
9-12 months    SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          2                    1                 -0.0332492   -0.0954704    0.0289720
9-12 months    SAS-CompFeed     INDIA                          3+                   1                 -0.0258702   -0.0792864    0.0275461
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0193330   -0.0255180    0.0641840
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0240136   -0.0205473    0.0685745
9-12 months    ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       2                    1                  0.0001738   -0.0361149    0.0364624
9-12 months    ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0004766   -0.0282901    0.0273369
12-15 months   COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      2                    1                 -0.0048072   -0.0684674    0.0588530
12-15 months   COHORTS          GUATEMALA                      3+                   1                 -0.0168858   -0.0658224    0.0320508
12-15 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          2                    1                 -0.0393936   -0.0850366    0.0062494
12-15 months   GMS-Nepal        NEPAL                          3+                   1                 -0.0457679   -0.0775546   -0.0139812
12-15 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         2                    1                 -0.0966991   -0.1601879   -0.0332104
12-15 months   Keneba           GAMBIA                         3+                   1                 -0.0779594   -0.1096492   -0.0462695
12-15 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     2                    1                 -0.0140305   -0.0450705    0.0170094
12-15 months   PROVIDE          BANGLADESH                     3+                   1                 -0.0079197   -0.0385881    0.0227487
12-15 months   SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          2                    1                 -0.0254264   -0.0942955    0.0434428
12-15 months   SAS-CompFeed     INDIA                          3+                   1                 -0.0377860   -0.1009497    0.0253777
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0055250   -0.0360006    0.0470506
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0222864   -0.0153106    0.0598834
12-15 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       2                    1                 -0.0274934   -0.0701235    0.0151367
12-15 months   ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0272911   -0.0618197    0.0072376
15-18 months   COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      2                    1                 -0.0221654   -0.0858789    0.0415480
15-18 months   COHORTS          GUATEMALA                      3+                   1                  0.0383411   -0.0033790    0.0800613
15-18 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          2                    1                 -0.0068276   -0.0539307    0.0402756
15-18 months   GMS-Nepal        NEPAL                          3+                   1                 -0.0022312   -0.0321334    0.0276711
15-18 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         2                    1                 -0.2547070   -0.4145950   -0.0948191
15-18 months   Keneba           GAMBIA                         3+                   1                 -0.2364972   -0.3911709   -0.0818236
15-18 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     2                    1                 -0.0047565   -0.0315397    0.0220268
15-18 months   PROVIDE          BANGLADESH                     3+                   1                  0.0042769   -0.0216667    0.0302205
15-18 months   SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          2                    1                  0.0035333   -0.0602289    0.0672955
15-18 months   SAS-CompFeed     INDIA                          3+                   1                  0.0120744   -0.0470448    0.0711936
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0161921   -0.0595707    0.0271865
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0286676   -0.0144326    0.0717677
15-18 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       2                    1                 -0.0333041   -0.0719024    0.0052943
15-18 months   ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0193253   -0.0507264    0.0120758
18-21 months   COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      2                    1                  0.0342199   -0.0238975    0.0923373
18-21 months   COHORTS          GUATEMALA                      3+                   1                  0.0280408   -0.0089680    0.0650497
18-21 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          2                    1                  0.0087841   -0.0331479    0.0507161
18-21 months   GMS-Nepal        NEPAL                          3+                   1                 -0.0116113   -0.0417527    0.0185302
18-21 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         2                    1                  0.3512138    0.2054871    0.4969405
18-21 months   Keneba           GAMBIA                         3+                   1                  0.2895261    0.1569142    0.4221379
18-21 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     2                    1                 -0.0080785   -0.0304227    0.0142657
18-21 months   PROVIDE          BANGLADESH                     3+                   1                 -0.0125493   -0.0340749    0.0089764
18-21 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       2                    1                  0.0225273   -0.0143751    0.0594298
18-21 months   ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0016296   -0.0389837    0.0357245
21-24 months   COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      2                    1                 -0.0256468   -0.0659577    0.0146642
21-24 months   COHORTS          GUATEMALA                      3+                   1                 -0.0222954   -0.0485972    0.0040064
21-24 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          2                    1                 -0.0856107   -0.1618391   -0.0093822
21-24 months   GMS-Nepal        NEPAL                          3+                   1                 -0.0627160   -0.1088152   -0.0166168
21-24 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         2                    1                 -0.0407944   -0.1610421    0.0794533
21-24 months   Keneba           GAMBIA                         3+                   1                 -0.0057742   -0.0752268    0.0636784
21-24 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     2                    1                 -0.0246976   -0.0539472    0.0045520
21-24 months   PROVIDE          BANGLADESH                     3+                   1                 -0.0164964   -0.0457878    0.0127951
21-24 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       2                    1                 -0.0207966   -0.0644198    0.0228266
21-24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0725696   -0.1199695   -0.0251696


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      1                    NA                -0.0768878   -0.1445047   -0.0092709
0-3 months     COHORTS          INDIA                          1                    NA                -0.0471016   -0.0742448   -0.0199585
0-3 months     GMS-Nepal        NEPAL                          1                    NA                 0.1064612   -0.0145533    0.2274757
0-3 months     JiVitA-3         BANGLADESH                     1                    NA                -0.0195390   -0.0302134   -0.0088646
0-3 months     Keneba           GAMBIA                         1                    NA                 0.0780108    0.0237331    0.1322885
0-3 months     PROVIDE          BANGLADESH                     1                    NA                -0.0050365   -0.0454639    0.0353908
0-3 months     SAS-CompFeed     INDIA                          1                    NA                -0.0167641   -0.0664200    0.0328918
0-3 months     ZVITAMBO         ZIMBABWE                       1                    NA                -0.0184423   -0.0456501    0.0087655
3-6 months     COHORTS          GUATEMALA                      1                    NA                -0.1163883   -0.1670067   -0.0657700
3-6 months     COHORTS          INDIA                          1                    NA                -0.0480705   -0.0735760   -0.0225649
3-6 months     GMS-Nepal        NEPAL                          1                    NA                -0.0624740   -0.1100138   -0.0149342
3-6 months     JiVitA-3         BANGLADESH                     1                    NA                -0.0380411   -0.0502934   -0.0257888
3-6 months     Keneba           GAMBIA                         1                    NA                -0.1141651   -0.1621048   -0.0662254
3-6 months     PROVIDE          BANGLADESH                     1                    NA                 0.0226019   -0.0161079    0.0613117
3-6 months     SAS-CompFeed     INDIA                          1                    NA                -0.0795625   -0.1179218   -0.0412033
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0072320   -0.0218014    0.0362654
3-6 months     ZVITAMBO         ZIMBABWE                       1                    NA                -0.0158117   -0.0359850    0.0043616
6-9 months     COHORTS          GUATEMALA                      1                    NA                -0.0189304   -0.0568073    0.0189464
6-9 months     COHORTS          INDIA                          1                    NA                -0.0331724   -0.0522954   -0.0140494
6-9 months     GMS-Nepal        NEPAL                          1                    NA                 0.0290196   -0.0399980    0.0980372
6-9 months     Keneba           GAMBIA                         1                    NA                -0.1589335   -0.2062242   -0.1116428
6-9 months     PROVIDE          BANGLADESH                     1                    NA                -0.0222244   -0.0422855   -0.0021633
6-9 months     SAS-CompFeed     INDIA                          1                    NA                -0.0385437   -0.0806746    0.0035872
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0226942   -0.0515855    0.0061971
6-9 months     ZVITAMBO         ZIMBABWE                       1                    NA                -0.0227988   -0.0416607   -0.0039369
9-12 months    COHORTS          GUATEMALA                      1                    NA                -0.0312141   -0.0608670   -0.0015611
9-12 months    COHORTS          INDIA                          1                    NA                 0.0019307   -0.0148476    0.0187090
9-12 months    GMS-Nepal        NEPAL                          1                    NA                -0.0224384   -0.0605263    0.0156496
9-12 months    Keneba           GAMBIA                         1                    NA                 0.0401536   -0.0289563    0.1092635
9-12 months    PROVIDE          BANGLADESH                     1                    NA                -0.0200741   -0.0417620    0.0016138
9-12 months    SAS-CompFeed     INDIA                          1                    NA                -0.0220789   -0.0636379    0.0194801
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0234638   -0.0036265    0.0505541
9-12 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0064089   -0.0266177    0.0137999
12-15 months   COHORTS          GUATEMALA                      1                    NA                -0.0136781   -0.0591127    0.0317564
12-15 months   GMS-Nepal        NEPAL                          1                    NA                -0.0254294   -0.0511197    0.0002610
12-15 months   Keneba           GAMBIA                         1                    NA                -0.0748155   -0.1040365   -0.0455946
12-15 months   PROVIDE          BANGLADESH                     1                    NA                -0.0025370   -0.0210016    0.0159276
12-15 months   SAS-CompFeed     INDIA                          1                    NA                -0.0095794   -0.0573585    0.0381997
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0064762   -0.0176350    0.0305875
12-15 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0206467   -0.0451940    0.0039007
15-18 months   COHORTS          GUATEMALA                      1                    NA                 0.0327294   -0.0051333    0.0705921
15-18 months   GMS-Nepal        NEPAL                          1                    NA                 0.0040280   -0.0225307    0.0305867
15-18 months   Keneba           GAMBIA                         1                    NA                -0.2350435   -0.3852115   -0.0848755
15-18 months   PROVIDE          BANGLADESH                     1                    NA                -0.0018440   -0.0176300    0.0139420
15-18 months   SAS-CompFeed     INDIA                          1                    NA                -0.0039965   -0.0458212    0.0378282
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0076623   -0.0169096    0.0322342
15-18 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0210714   -0.0426720    0.0005292
18-21 months   COHORTS          GUATEMALA                      1                    NA                 0.0266105   -0.0072746    0.0604955
18-21 months   GMS-Nepal        NEPAL                          1                    NA                 0.0002354   -0.0253041    0.0257749
18-21 months   Keneba           GAMBIA                         1                    NA                 0.2894529    0.1605629    0.4183429
18-21 months   PROVIDE          BANGLADESH                     1                    NA                -0.0078850   -0.0195012    0.0037312
18-21 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0160024   -0.0079417    0.0399465
21-24 months   COHORTS          GUATEMALA                      1                    NA                -0.0156325   -0.0394236    0.0081586
21-24 months   GMS-Nepal        NEPAL                          1                    NA                -0.0470557   -0.0855196   -0.0085919
21-24 months   Keneba           GAMBIA                         1                    NA                -0.0065578   -0.0729262    0.0598106
21-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0127624   -0.0309898    0.0054650
21-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0072207   -0.0406785    0.0262370
