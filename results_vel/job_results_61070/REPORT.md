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

**Outcome Variable:** y_rate_len

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
![](/tmp/e525e941-84d3-45ee-9d50-0dda69ca2f50/326181d8-a4bb-4565-9b06-e7bd4764144b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e525e941-84d3-45ee-9d50-0dda69ca2f50/326181d8-a4bb-4565-9b06-e7bd4764144b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e525e941-84d3-45ee-9d50-0dda69ca2f50/326181d8-a4bb-4565-9b06-e7bd4764144b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     COHORTS          GUATEMALA                      1                    NA                2.6601187    2.5355314   2.7847060
0-3 months     COHORTS          GUATEMALA                      2                    NA                2.5904276    2.4075645   2.7732907
0-3 months     COHORTS          GUATEMALA                      3+                   NA                2.5733922    2.5160579   2.6307265
0-3 months     COHORTS          INDIA                          1                    NA                3.5922209    3.5339161   3.6505258
0-3 months     COHORTS          INDIA                          2                    NA                3.5595259    3.5066810   3.6123708
0-3 months     COHORTS          INDIA                          3+                   NA                3.4583610    3.4320362   3.4846857
0-3 months     GMS-Nepal        NEPAL                          1                    NA                3.4377589    3.1955486   3.6799692
0-3 months     GMS-Nepal        NEPAL                          2                    NA                3.7481520    3.5533595   3.9429445
0-3 months     GMS-Nepal        NEPAL                          3+                   NA                3.5165152    3.4459882   3.5870422
0-3 months     JiVitA-3         BANGLADESH                     1                    NA                3.7348380    3.7111069   3.7585690
0-3 months     JiVitA-3         BANGLADESH                     2                    NA                3.7502455    3.7277605   3.7727304
0-3 months     JiVitA-3         BANGLADESH                     3+                   NA                3.6558407    3.6324218   3.6792597
0-3 months     Keneba           GAMBIA                         1                    NA                2.8853409    2.7554529   3.0152289
0-3 months     Keneba           GAMBIA                         2                    NA                2.7756952    2.4093486   3.1420417
0-3 months     Keneba           GAMBIA                         3+                   NA                3.1284014    3.0602618   3.1965411
0-3 months     PROVIDE          BANGLADESH                     1                    NA                3.2456569    3.1208275   3.3704862
0-3 months     PROVIDE          BANGLADESH                     2                    NA                3.2853197    3.1979729   3.3726666
0-3 months     PROVIDE          BANGLADESH                     3+                   NA                3.2443317    3.1463585   3.3423050
0-3 months     SAS-CompFeed     INDIA                          1                    NA                3.3886732    3.2708491   3.5064973
0-3 months     SAS-CompFeed     INDIA                          2                    NA                3.3257660    3.2491826   3.4023495
0-3 months     SAS-CompFeed     INDIA                          3+                   NA                3.3618454    3.3094806   3.4142102
0-3 months     ZVITAMBO         ZIMBABWE                       1                    NA                3.3638714    3.3071750   3.4205678
0-3 months     ZVITAMBO         ZIMBABWE                       2                    NA                3.4174505    3.3606960   3.4742050
0-3 months     ZVITAMBO         ZIMBABWE                       3+                   NA                3.2994504    3.2486107   3.3502900
3-6 months     COHORTS          GUATEMALA                      1                    NA                2.0115610    1.9010332   2.1220888
3-6 months     COHORTS          GUATEMALA                      2                    NA                1.7784487    1.6453596   1.9115378
3-6 months     COHORTS          GUATEMALA                      3+                   NA                1.7306441    1.6872946   1.7739936
3-6 months     COHORTS          INDIA                          1                    NA                1.9470783    1.8908213   2.0033353
3-6 months     COHORTS          INDIA                          2                    NA                1.8646143    1.8217274   1.9075011
3-6 months     COHORTS          INDIA                          3+                   NA                1.8462990    1.8215630   1.8710351
3-6 months     GMS-Nepal        NEPAL                          1                    NA                1.8315427    1.7407544   1.9223311
3-6 months     GMS-Nepal        NEPAL                          2                    NA                1.7052316    1.5485705   1.8618927
3-6 months     GMS-Nepal        NEPAL                          3+                   NA                1.7043271    1.6527116   1.7559426
3-6 months     JiVitA-3         BANGLADESH                     1                    NA                1.9953046    1.9667696   2.0238396
3-6 months     JiVitA-3         BANGLADESH                     2                    NA                1.9011319    1.8763642   1.9258996
3-6 months     JiVitA-3         BANGLADESH                     3+                   NA                1.8399953    1.8115538   1.8684367
3-6 months     Keneba           GAMBIA                         1                    NA                2.1789942    2.0717516   2.2862368
3-6 months     Keneba           GAMBIA                         2                    NA                2.3185753    2.0445932   2.5925574
3-6 months     Keneba           GAMBIA                         3+                   NA                1.9063514    1.8284110   1.9842918
3-6 months     PROVIDE          BANGLADESH                     1                    NA                1.9673904    1.8889628   2.0458181
3-6 months     PROVIDE          BANGLADESH                     2                    NA                1.9781707    1.8963743   2.0599670
3-6 months     PROVIDE          BANGLADESH                     3+                   NA                2.0566736    1.9801003   2.1332468
3-6 months     SAS-CompFeed     INDIA                          1                    NA                2.1190897    2.0410902   2.1970893
3-6 months     SAS-CompFeed     INDIA                          2                    NA                1.9449823    1.8902961   1.9996685
3-6 months     SAS-CompFeed     INDIA                          3+                   NA                1.8347113    1.7784029   1.8910197
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7802523    1.7113400   1.8491646
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.8041358    1.7078666   1.9004049
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                1.7129735    1.6417367   1.7842103
3-6 months     ZVITAMBO         ZIMBABWE                       1                    NA                2.0027675    1.9590102   2.0465249
3-6 months     ZVITAMBO         ZIMBABWE                       2                    NA                1.9273245    1.8729939   1.9816550
3-6 months     ZVITAMBO         ZIMBABWE                       3+                   NA                1.9213454    1.8698638   1.9728270
6-9 months     COHORTS          GUATEMALA                      1                    NA                1.1280425    1.0541165   1.2019685
6-9 months     COHORTS          GUATEMALA                      2                    NA                1.1356876    1.0068373   1.2645380
6-9 months     COHORTS          GUATEMALA                      3+                   NA                1.0888605    1.0479696   1.1297514
6-9 months     COHORTS          INDIA                          1                    NA                1.2607476    1.2088413   1.3126539
6-9 months     COHORTS          INDIA                          2                    NA                1.1909669    1.1537485   1.2281854
6-9 months     COHORTS          INDIA                          3+                   NA                1.1722222    1.1505064   1.1939380
6-9 months     GMS-Nepal        NEPAL                          1                    NA                1.2643622    1.0988372   1.4298872
6-9 months     GMS-Nepal        NEPAL                          2                    NA                1.3319240    1.2204727   1.4433754
6-9 months     GMS-Nepal        NEPAL                          3+                   NA                1.2956439    1.2425297   1.3487580
6-9 months     Keneba           GAMBIA                         1                    NA                1.7705589    1.6381696   1.9029483
6-9 months     Keneba           GAMBIA                         2                    NA                1.4665049    1.1893706   1.7436391
6-9 months     Keneba           GAMBIA                         3+                   NA                1.3992838    1.3248218   1.4737457
6-9 months     PROVIDE          BANGLADESH                     1                    NA                1.3202606    1.2726418   1.3678793
6-9 months     PROVIDE          BANGLADESH                     2                    NA                1.2981468    1.2388511   1.3574424
6-9 months     PROVIDE          BANGLADESH                     3+                   NA                1.2533387    1.2041194   1.3025580
6-9 months     SAS-CompFeed     INDIA                          1                    NA                1.3097092    1.2246480   1.3947704
6-9 months     SAS-CompFeed     INDIA                          2                    NA                1.1751323    1.0887654   1.2614993
6-9 months     SAS-CompFeed     INDIA                          3+                   NA                1.2230179    1.1745264   1.2715095
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.3574604    1.2882236   1.4266971
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.3176156    1.2284141   1.4068172
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                1.2723726    1.2004185   1.3443268
6-9 months     ZVITAMBO         ZIMBABWE                       1                    NA                1.4047110    1.3603293   1.4490928
6-9 months     ZVITAMBO         ZIMBABWE                       2                    NA                1.3147836    1.2498574   1.3797097
6-9 months     ZVITAMBO         ZIMBABWE                       3+                   NA                1.4024979    1.3535642   1.4514316
9-12 months    COHORTS          GUATEMALA                      1                    NA                1.0525027    0.9747108   1.1302947
9-12 months    COHORTS          GUATEMALA                      2                    NA                0.9290040    0.8022418   1.0557663
9-12 months    COHORTS          GUATEMALA                      3+                   NA                0.9304895    0.8954504   0.9655285
9-12 months    COHORTS          INDIA                          1                    NA                0.9897608    0.9439610   1.0355606
9-12 months    COHORTS          INDIA                          2                    NA                0.9727040    0.9306020   1.0148060
9-12 months    COHORTS          INDIA                          3+                   NA                0.9600152    0.9368545   0.9831759
9-12 months    GMS-Nepal        NEPAL                          1                    NA                1.0493042    0.9511510   1.1474573
9-12 months    GMS-Nepal        NEPAL                          2                    NA                1.0309960    0.9456358   1.1163562
9-12 months    GMS-Nepal        NEPAL                          3+                   NA                0.9652685    0.9193354   1.0112015
9-12 months    Keneba           GAMBIA                         1                    NA                0.9163881    0.7716856   1.0610906
9-12 months    Keneba           GAMBIA                         2                    NA                1.0831121    0.9276528   1.2385713
9-12 months    Keneba           GAMBIA                         3+                   NA                0.9461206    0.8970217   0.9952195
9-12 months    PROVIDE          BANGLADESH                     1                    NA                1.0931316    1.0358211   1.1504422
9-12 months    PROVIDE          BANGLADESH                     2                    NA                1.0480043    0.9705525   1.1254560
9-12 months    PROVIDE          BANGLADESH                     3+                   NA                1.0230764    0.9647976   1.0813552
9-12 months    SAS-CompFeed     INDIA                          1                    NA                1.0686855    0.9647563   1.1726146
9-12 months    SAS-CompFeed     INDIA                          2                    NA                0.9755904    0.8854859   1.0656949
9-12 months    SAS-CompFeed     INDIA                          3+                   NA                0.9837645    0.9276670   1.0398620
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0585022    0.9868799   1.1301245
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.0944554    1.0137136   1.1751972
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                1.0819626    1.0038006   1.1601247
9-12 months    ZVITAMBO         ZIMBABWE                       1                    NA                1.1210843    1.0754741   1.1666945
9-12 months    ZVITAMBO         ZIMBABWE                       2                    NA                1.0946202    1.0319199   1.1573205
9-12 months    ZVITAMBO         ZIMBABWE                       3+                   NA                1.0942230    1.0554127   1.1330332
12-15 months   COHORTS          GUATEMALA                      1                    NA                0.8968249    0.8070305   0.9866193
12-15 months   COHORTS          GUATEMALA                      2                    NA                0.8085167    0.7122715   0.9047619
12-15 months   COHORTS          GUATEMALA                      3+                   NA                0.7688460    0.7342899   0.8034021
12-15 months   GMS-Nepal        NEPAL                          1                    NA                0.9461871    0.8728425   1.0195316
12-15 months   GMS-Nepal        NEPAL                          2                    NA                0.8545892    0.7654712   0.9437071
12-15 months   GMS-Nepal        NEPAL                          3+                   NA                0.8297815    0.7806405   0.8789224
12-15 months   Keneba           GAMBIA                         1                    NA                1.1340264    1.0597972   1.2082555
12-15 months   Keneba           GAMBIA                         2                    NA                0.9168257    0.7624513   1.0712002
12-15 months   Keneba           GAMBIA                         3+                   NA                0.9230657    0.8862627   0.9598686
12-15 months   PROVIDE          BANGLADESH                     1                    NA                0.9655967    0.9122823   1.0189111
12-15 months   PROVIDE          BANGLADESH                     2                    NA                0.9386822    0.8727828   1.0045816
12-15 months   PROVIDE          BANGLADESH                     3+                   NA                0.9528524    0.8985371   1.0071676
12-15 months   SAS-CompFeed     INDIA                          1                    NA                0.8636529    0.7586461   0.9686596
12-15 months   SAS-CompFeed     INDIA                          2                    NA                0.8133322    0.7547340   0.8719304
12-15 months   SAS-CompFeed     INDIA                          3+                   NA                0.7616711    0.6885632   0.8347790
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9198980    0.8470097   0.9927863
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.9181477    0.8399751   0.9963204
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.9694710    0.8993661   1.0395759
12-15 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.9953936    0.9263704   1.0644169
12-15 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.9065222    0.8264609   0.9865836
12-15 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.9640572    0.9082808   1.0198336
15-18 months   COHORTS          GUATEMALA                      1                    NA                0.6921036    0.5869228   0.7972844
15-18 months   COHORTS          GUATEMALA                      2                    NA                0.6338473    0.4912602   0.7764344
15-18 months   COHORTS          GUATEMALA                      3+                   NA                0.7688322    0.7193726   0.8182919
15-18 months   GMS-Nepal        NEPAL                          1                    NA                0.7643294    0.6799819   0.8486769
15-18 months   GMS-Nepal        NEPAL                          2                    NA                0.7376335    0.6292415   0.8460256
15-18 months   GMS-Nepal        NEPAL                          3+                   NA                0.7516272    0.7176883   0.7855661
15-18 months   Keneba           GAMBIA                         1                    NA                1.4750872    1.0636270   1.8865473
15-18 months   Keneba           GAMBIA                         2                    NA                0.8350998    0.7184102   0.9517893
15-18 months   Keneba           GAMBIA                         3+                   NA                0.8848819    0.8389276   0.9308363
15-18 months   PROVIDE          BANGLADESH                     1                    NA                0.8695535    0.8132788   0.9258282
15-18 months   PROVIDE          BANGLADESH                     2                    NA                0.8531302    0.7951629   0.9110974
15-18 months   PROVIDE          BANGLADESH                     3+                   NA                0.8832534    0.8326121   0.9338947
15-18 months   SAS-CompFeed     INDIA                          1                    NA                0.9430388    0.8322733   1.0538043
15-18 months   SAS-CompFeed     INDIA                          2                    NA                0.9169677    0.7846873   1.0492481
15-18 months   SAS-CompFeed     INDIA                          3+                   NA                0.9421320    0.8698965   1.0143675
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9275602    0.8529539   1.0021665
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.8762989    0.7809657   0.9716321
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.9681574    0.8794555   1.0568592
15-18 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.8765278    0.8093072   0.9437484
15-18 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.8086285    0.7326658   0.8845911
15-18 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.8171718    0.7580142   0.8763294
18-21 months   COHORTS          GUATEMALA                      1                    NA                0.7182592    0.6215237   0.8149947
18-21 months   COHORTS          GUATEMALA                      2                    NA                0.7731954    0.6603426   0.8860482
18-21 months   COHORTS          GUATEMALA                      3+                   NA                0.7498083    0.7121354   0.7874812
18-21 months   GMS-Nepal        NEPAL                          1                    NA                0.8988383    0.8219523   0.9757243
18-21 months   GMS-Nepal        NEPAL                          2                    NA                0.9115649    0.8080373   1.0150926
18-21 months   GMS-Nepal        NEPAL                          3+                   NA                0.8547869    0.8102161   0.8993577
18-21 months   Keneba           GAMBIA                         1                    NA                0.0061987   -0.3670282   0.3794257
18-21 months   Keneba           GAMBIA                         2                    NA                0.9968005    0.8235959   1.1700051
18-21 months   Keneba           GAMBIA                         3+                   NA                0.8148836    0.7746434   0.8551237
18-21 months   PROVIDE          BANGLADESH                     1                    NA                0.8445138    0.8043859   0.8846416
18-21 months   PROVIDE          BANGLADESH                     2                    NA                0.8391363    0.7838537   0.8944188
18-21 months   PROVIDE          BANGLADESH                     3+                   NA                0.8307862    0.7791832   0.8823893
18-21 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.6772598    0.6000333   0.7544862
18-21 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.6944245    0.6148269   0.7740222
18-21 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.6116586    0.5315952   0.6917220
21-24 months   COHORTS          GUATEMALA                      1                    NA                0.7508310    0.6750002   0.8266618
21-24 months   COHORTS          GUATEMALA                      2                    NA                0.6582530    0.5686395   0.7478665
21-24 months   COHORTS          GUATEMALA                      3+                   NA                0.6589388    0.6260242   0.6918534
21-24 months   GMS-Nepal        NEPAL                          1                    NA                0.9378746    0.8254038   1.0503453
21-24 months   GMS-Nepal        NEPAL                          2                    NA                0.6636616    0.4586113   0.8687118
21-24 months   GMS-Nepal        NEPAL                          3+                   NA                0.7836364    0.7319843   0.8352885
21-24 months   Keneba           GAMBIA                         1                    NA                0.7857931    0.6311782   0.9404081
21-24 months   Keneba           GAMBIA                         2                    NA                0.6529951    0.3845972   0.9213930
21-24 months   Keneba           GAMBIA                         3+                   NA                0.7355410    0.6908576   0.7802243
21-24 months   PROVIDE          BANGLADESH                     1                    NA                0.8163224    0.7617073   0.8709375
21-24 months   PROVIDE          BANGLADESH                     2                    NA                0.7312167    0.6706593   0.7917740
21-24 months   PROVIDE          BANGLADESH                     3+                   NA                0.7475356    0.6921183   0.8029528
21-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.7259337    0.6188287   0.8330388
21-24 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.6801035    0.6000321   0.7601749
21-24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.5672015    0.4633207   0.6710823


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS          GUATEMALA                      NA                   NA                2.5828382   2.5396287   2.6260477
0-3 months     COHORTS          INDIA                          NA                   NA                3.4951636   3.4771029   3.5132243
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                3.5989683   3.5479067   3.6500300
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                3.7233830   3.7130769   3.7336890
0-3 months     Keneba           GAMBIA                         NA                   NA                3.1106299   3.0607110   3.1605487
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                3.3515606   3.2984055   3.4047158
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                3.3370118   3.3164684   3.3575551
3-6 months     COHORTS          GUATEMALA                      NA                   NA                1.7616932   1.7309393   1.7924472
3-6 months     COHORTS          INDIA                          NA                   NA                1.8562696   1.8412447   1.8712944
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                1.7095685   1.6702436   1.7488934
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                1.9202003   1.9097349   1.9306657
3-6 months     Keneba           GAMBIA                         NA                   NA                1.9715566   1.9280386   2.0150747
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                1.9406419   1.8967379   1.9845458
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7960345   1.7599951   1.8320738
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                1.9753863   1.9557273   1.9950453
6-9 months     COHORTS          GUATEMALA                      NA                   NA                1.1069375   1.0799105   1.1339645
6-9 months     COHORTS          INDIA                          NA                   NA                1.1876267   1.1734988   1.2017547
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                1.3172026   1.2765236   1.3578817
6-9 months     Keneba           GAMBIA                         NA                   NA                1.4249547   1.3698531   1.4800562
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                1.2164378   1.1971945   1.2356811
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3229826   1.2861186   1.3598466
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                1.3469775   1.3279219   1.3660330
9-12 months    COHORTS          GUATEMALA                      NA                   NA                0.9507015   0.9262928   0.9751103
9-12 months    COHORTS          INDIA                          NA                   NA                0.9788325   0.9636749   0.9939901
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                0.9983761   0.9658898   1.0308625
9-12 months    Keneba           GAMBIA                         NA                   NA                0.9677634   0.9232065   1.0123204
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                0.9997324   0.9682232   1.0312416
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0872065   1.0529274   1.1214857
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                1.0812148   1.0633428   1.0990869
12-15 months   COHORTS          GUATEMALA                      NA                   NA                0.7856579   0.7592765   0.8120393
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                0.8797046   0.8507834   0.9086259
12-15 months   Keneba           GAMBIA                         NA                   NA                0.9311532   0.8983800   0.9639264
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                0.8334688   0.7956713   0.8712664
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9308176   0.8938698   0.9677654
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.9205920   0.8936831   0.9475009
15-18 months   COHORTS          GUATEMALA                      NA                   NA                0.7458835   0.7161259   0.7756412
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                0.7549520   0.7202105   0.7896934
15-18 months   Keneba           GAMBIA                         NA                   NA                0.8874581   0.8529191   0.9219971
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                0.9046837   0.8805433   0.9288241
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9386381   0.8958056   0.9814706
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.7994243   0.7694755   0.8293732
18-21 months   COHORTS          GUATEMALA                      NA                   NA                0.7491980   0.7206457   0.7777504
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                0.9038955   0.8699458   0.9378453
18-21 months   Keneba           GAMBIA                         NA                   NA                0.8148545   0.7779341   0.8517749
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.6808824   0.6468583   0.7149065
21-24 months   COHORTS          GUATEMALA                      NA                   NA                0.6777084   0.6544850   0.7009317
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.7990312   0.7536798   0.8443825
21-24 months   Keneba           GAMBIA                         NA                   NA                0.7279143   0.6917604   0.7640682
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.6907415   0.6526782   0.7288047


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      2                    1                 -0.0696911   -0.2913703    0.1519881
0-3 months     COHORTS          GUATEMALA                      3+                   1                 -0.0867266   -0.2236469    0.0501938
0-3 months     COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          2                    1                 -0.0326950   -0.1113666    0.0459765
0-3 months     COHORTS          INDIA                          3+                   1                 -0.1338600   -0.1977866   -0.0699333
0-3 months     GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          2                    1                  0.3103930   -0.0017357    0.6225218
0-3 months     GMS-Nepal        NEPAL                          3+                   1                  0.0787563   -0.1736994    0.3312120
0-3 months     JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     2                    1                  0.0154075   -0.0161887    0.0470037
0-3 months     JiVitA-3         BANGLADESH                     3+                   1                 -0.0789972   -0.1128288   -0.0451657
0-3 months     Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         2                    1                 -0.1096457   -0.4973815    0.2780900
0-3 months     Keneba           GAMBIA                         3+                   1                  0.2430605    0.0970312    0.3890899
0-3 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     2                    1                  0.0396629   -0.1123262    0.1916520
0-3 months     PROVIDE          BANGLADESH                     3+                   1                 -0.0013251   -0.1602769    0.1576266
0-3 months     SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          2                    1                 -0.0629072   -0.1574654    0.0316511
0-3 months     SAS-CompFeed     INDIA                          3+                   1                 -0.0268278   -0.1404186    0.0867630
0-3 months     ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       2                    1                  0.0535791   -0.0265496    0.1337078
0-3 months     ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0644210   -0.1404946    0.0116526
3-6 months     COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      2                    1                 -0.2331122   -0.4062563   -0.0599681
3-6 months     COHORTS          GUATEMALA                      3+                   1                 -0.2809169   -0.3996268   -0.1622070
3-6 months     COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          2                    1                 -0.0824640   -0.1531544   -0.0117736
3-6 months     COHORTS          INDIA                          3+                   1                 -0.1007793   -0.1622329   -0.0393256
3-6 months     GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          2                    1                 -0.1263111   -0.3071781    0.0545559
3-6 months     GMS-Nepal        NEPAL                          3+                   1                 -0.1272156   -0.2320013   -0.0224299
3-6 months     JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     2                    1                 -0.0941727   -0.1305687   -0.0577768
3-6 months     JiVitA-3         BANGLADESH                     3+                   1                 -0.1553093   -0.1967260   -0.1138927
3-6 months     Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         2                    1                  0.1395811   -0.1547596    0.4339219
3-6 months     Keneba           GAMBIA                         3+                   1                 -0.2726428   -0.4054873   -0.1397982
3-6 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     2                    1                  0.0107802   -0.1024940    0.1240545
3-6 months     PROVIDE          BANGLADESH                     3+                   1                  0.0892831   -0.0203776    0.1989439
3-6 months     SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          2                    1                 -0.1741075   -0.2818104   -0.0664045
3-6 months     SAS-CompFeed     INDIA                          3+                   1                 -0.2843784   -0.3937248   -0.1750321
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0238835   -0.0948530    0.1426199
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0672788   -0.1667974    0.0322399
3-6 months     ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       2                    1                 -0.0754431   -0.1452302   -0.0056559
3-6 months     ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0814221   -0.1490130   -0.0138313
6-9 months     COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      2                    1                  0.0076451   -0.1409473    0.1562375
6-9 months     COHORTS          GUATEMALA                      3+                   1                 -0.0391820   -0.1238649    0.0455010
6-9 months     COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          2                    1                 -0.0697807   -0.1336545   -0.0059069
6-9 months     COHORTS          INDIA                          3+                   1                 -0.0885254   -0.1448343   -0.0322166
6-9 months     GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          2                    1                  0.0675618   -0.1321287    0.2672523
6-9 months     GMS-Nepal        NEPAL                          3+                   1                  0.0312816   -0.1426420    0.2052053
6-9 months     Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         2                    1                 -0.3040541   -0.6110012    0.0028930
6-9 months     Keneba           GAMBIA                         3+                   1                 -0.3712752   -0.5231865   -0.2193639
6-9 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     2                    1                 -0.0221138   -0.0980069    0.0537793
6-9 months     PROVIDE          BANGLADESH                     3+                   1                 -0.0669219   -0.1354193    0.0015756
6-9 months     SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          2                    1                 -0.1345768   -0.2881639    0.0190102
6-9 months     SAS-CompFeed     INDIA                          3+                   1                 -0.0866912   -0.2041149    0.0307324
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0398448   -0.1532143    0.0735248
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0850877   -0.1851687    0.0149932
6-9 months     ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       2                    1                 -0.0899275   -0.1686185   -0.0112365
6-9 months     ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0022131   -0.0683532    0.0639270
9-12 months    COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      2                    1                 -0.1234987   -0.2724500    0.0254526
9-12 months    COHORTS          GUATEMALA                      3+                   1                 -0.1220133   -0.2074505   -0.0365760
9-12 months    COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          2                    1                 -0.0170568   -0.0791632    0.0450496
9-12 months    COHORTS          INDIA                          3+                   1                 -0.0297456   -0.0809743    0.0214832
9-12 months    GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          2                    1                 -0.0183082   -0.1484518    0.1118355
9-12 months    GMS-Nepal        NEPAL                          3+                   1                 -0.0840357   -0.1924067    0.0243353
9-12 months    Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         2                    1                  0.1667240   -0.0465588    0.3800067
9-12 months    Keneba           GAMBIA                         3+                   1                  0.0297325   -0.1248299    0.1842950
9-12 months    PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     2                    1                 -0.0451274   -0.1414997    0.0512449
9-12 months    PROVIDE          BANGLADESH                     3+                   1                 -0.0700552   -0.1516546    0.0115441
9-12 months    SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          2                    1                 -0.0930950   -0.2498013    0.0636112
9-12 months    SAS-CompFeed     INDIA                          3+                   1                 -0.0849209   -0.2074190    0.0375771
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0359532   -0.0723047    0.1442111
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0234604   -0.0827368    0.1296576
9-12 months    ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       2                    1                 -0.0264641   -0.1040129    0.0510848
9-12 months    ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0268614   -0.0867699    0.0330472
12-15 months   COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      2                    1                 -0.0883082   -0.2197800    0.0431636
12-15 months   COHORTS          GUATEMALA                      3+                   1                 -0.1279789   -0.2242352   -0.0317226
12-15 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          2                    1                 -0.0915979   -0.2072479    0.0240521
12-15 months   GMS-Nepal        NEPAL                          3+                   1                 -0.1164056   -0.2049860   -0.0278251
12-15 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         2                    1                 -0.2172006   -0.3885651   -0.0458361
12-15 months   Keneba           GAMBIA                         3+                   1                 -0.2109607   -0.2937682   -0.1281531
12-15 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     2                    1                 -0.0269145   -0.1116598    0.0578308
12-15 months   PROVIDE          BANGLADESH                     3+                   1                 -0.0127444   -0.0885961    0.0631073
12-15 months   SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          2                    1                 -0.0503207   -0.1877895    0.0871482
12-15 months   SAS-CompFeed     INDIA                          3+                   1                 -0.1019817   -0.2303965    0.0264330
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0017503   -0.1086622    0.1051616
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0495730   -0.0515751    0.1507211
12-15 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       2                    1                 -0.0888714   -0.1945057    0.0167629
12-15 months   ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0313364   -0.1201289    0.0574561
15-18 months   COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      2                    1                 -0.0582563   -0.2352338    0.1187213
15-18 months   COHORTS          GUATEMALA                      3+                   1                  0.0767286   -0.0396538    0.1931110
15-18 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          2                    1                 -0.0266958   -0.1640165    0.1106248
15-18 months   GMS-Nepal        NEPAL                          3+                   1                 -0.0127022   -0.1038912    0.0784869
15-18 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         2                    1                 -0.6399874   -1.0678553   -0.2121195
15-18 months   Keneba           GAMBIA                         3+                   1                 -0.5902052   -1.0040030   -0.1764075
15-18 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     2                    1                 -0.0164233   -0.0972810    0.0644343
15-18 months   PROVIDE          BANGLADESH                     3+                   1                  0.0136999   -0.0619439    0.0893437
15-18 months   SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          2                    1                 -0.0260711   -0.1883871    0.1362449
15-18 months   SAS-CompFeed     INDIA                          3+                   1                 -0.0009068   -0.1624163    0.1606027
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0512613   -0.1724158    0.0698932
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0405971   -0.0762422    0.1574365
15-18 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       2                    1                 -0.0678993   -0.1693031    0.0335046
15-18 months   ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0593559   -0.1493235    0.0306116
18-21 months   COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      2                    1                  0.0549362   -0.0937821    0.2036545
18-21 months   COHORTS          GUATEMALA                      3+                   1                  0.0315491   -0.0723419    0.1354401
18-21 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          2                    1                  0.0127266   -0.1162773    0.1417306
18-21 months   GMS-Nepal        NEPAL                          3+                   1                 -0.0440514   -0.1331488    0.0450460
18-21 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         2                    1                  0.9906018    0.5799180    1.4012856
18-21 months   Keneba           GAMBIA                         3+                   1                  0.8086848    0.4348241    1.1825456
18-21 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     2                    1                 -0.0053775   -0.0739791    0.0632240
18-21 months   PROVIDE          BANGLADESH                     3+                   1                 -0.0137275   -0.0788780    0.0514229
18-21 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       2                    1                  0.0171648   -0.0945137    0.1288432
18-21 months   ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0656012   -0.1777482    0.0465459
21-24 months   COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      2                    1                 -0.0925780   -0.2100441    0.0248881
21-24 months   COHORTS          GUATEMALA                      3+                   1                 -0.0918922   -0.1744904   -0.0092940
21-24 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          2                    1                 -0.2742130   -0.5094065   -0.0390195
21-24 months   GMS-Nepal        NEPAL                          3+                   1                 -0.1542382   -0.2780736   -0.0304028
21-24 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         2                    1                 -0.1327980   -0.4428094    0.1772133
21-24 months   Keneba           GAMBIA                         3+                   1                 -0.0502522   -0.2115167    0.1110123
21-24 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     2                    1                 -0.0851057   -0.1664755   -0.0037359
21-24 months   PROVIDE          BANGLADESH                     3+                   1                 -0.0687868   -0.1465881    0.0090146
21-24 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       2                    1                 -0.0458302   -0.1800732    0.0884128
21-24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 -0.1587322   -0.3081604   -0.0093041


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      1                    NA                -0.0772805   -0.2003889    0.0458279
0-3 months     COHORTS          INDIA                          1                    NA                -0.0970573   -0.1533987   -0.0407159
0-3 months     GMS-Nepal        NEPAL                          1                    NA                 0.1612094   -0.0695061    0.3919248
0-3 months     JiVitA-3         BANGLADESH                     1                    NA                -0.0114550   -0.0339461    0.0110361
0-3 months     Keneba           GAMBIA                         1                    NA                 0.2252890    0.0958976    0.3546804
0-3 months     PROVIDE          BANGLADESH                     1                    NA                 0.0120242   -0.1020005    0.1260489
0-3 months     SAS-CompFeed     INDIA                          1                    NA                -0.0371126   -0.1286287    0.0544036
0-3 months     ZVITAMBO         ZIMBABWE                       1                    NA                -0.0268597   -0.0800762    0.0263569
3-6 months     COHORTS          GUATEMALA                      1                    NA                -0.2498677   -0.3586203   -0.1411152
3-6 months     COHORTS          INDIA                          1                    NA                -0.0908087   -0.1448574   -0.0367600
3-6 months     GMS-Nepal        NEPAL                          1                    NA                -0.1219742   -0.2099790   -0.0339694
3-6 months     JiVitA-3         BANGLADESH                     1                    NA                -0.0751043   -0.1025195   -0.0476890
3-6 months     Keneba           GAMBIA                         1                    NA                -0.2074376   -0.3134008   -0.1014743
3-6 months     PROVIDE          BANGLADESH                     1                    NA                -0.0016447   -0.0738264    0.0705370
3-6 months     SAS-CompFeed     INDIA                          1                    NA                -0.1784479   -0.2520172   -0.1048785
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0157822   -0.0462458    0.0778102
3-6 months     ZVITAMBO         ZIMBABWE                       1                    NA                -0.0273812   -0.0680240    0.0132616
6-9 months     COHORTS          GUATEMALA                      1                    NA                -0.0211050   -0.0930384    0.0508284
6-9 months     COHORTS          INDIA                          1                    NA                -0.0731209   -0.1232293   -0.0230124
6-9 months     GMS-Nepal        NEPAL                          1                    NA                 0.0528404   -0.1069785    0.2126593
6-9 months     Keneba           GAMBIA                         1                    NA                -0.3456043   -0.4780343   -0.2131742
6-9 months     PROVIDE          BANGLADESH                     1                    NA                -0.0378421   -0.0820259    0.0063417
6-9 months     SAS-CompFeed     INDIA                          1                    NA                -0.0932714   -0.1807037   -0.0058391
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0344778   -0.0971217    0.0281662
6-9 months     ZVITAMBO         ZIMBABWE                       1                    NA                -0.0577336   -0.0988045   -0.0166626
9-12 months    COHORTS          GUATEMALA                      1                    NA                -0.1018012   -0.1786456   -0.0249568
9-12 months    COHORTS          INDIA                          1                    NA                -0.0109283   -0.0550961    0.0332394
9-12 months    GMS-Nepal        NEPAL                          1                    NA                -0.0509281   -0.1470966    0.0452405
9-12 months    Keneba           GAMBIA                         1                    NA                 0.0513753   -0.0956708    0.1984214
9-12 months    PROVIDE          BANGLADESH                     1                    NA                -0.0431567   -0.0940146    0.0077013
9-12 months    SAS-CompFeed     INDIA                          1                    NA                -0.0689530   -0.1642876    0.0263815
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0287043   -0.0344452    0.0918538
9-12 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0398695   -0.0825474    0.0028084
12-15 months   COHORTS          GUATEMALA                      1                    NA                -0.1111670   -0.1982942   -0.0240398
12-15 months   GMS-Nepal        NEPAL                          1                    NA                -0.0664824   -0.1379776    0.0050127
12-15 months   Keneba           GAMBIA                         1                    NA                -0.2028731   -0.2795125   -0.1262338
12-15 months   PROVIDE          BANGLADESH                     1                    NA                -0.0058467   -0.0531708    0.0414774
12-15 months   SAS-CompFeed     INDIA                          1                    NA                -0.0301840   -0.1217644    0.0613963
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0109196   -0.0521158    0.0739550
12-15 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0748016   -0.1381181   -0.0114851
15-18 months   COHORTS          GUATEMALA                      1                    NA                 0.0537799   -0.0484642    0.1560241
15-18 months   GMS-Nepal        NEPAL                          1                    NA                -0.0093774   -0.0926888    0.0739340
15-18 months   Keneba           GAMBIA                         1                    NA                -0.5876291   -0.9894445   -0.1858136
15-18 months   PROVIDE          BANGLADESH                     1                    NA                -0.0134537   -0.0639401    0.0370328
15-18 months   SAS-CompFeed     INDIA                          1                    NA                -0.0383551   -0.1540927    0.0773824
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0110779   -0.0545546    0.0767104
15-18 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0771035   -0.1406465   -0.0135604
18-21 months   COHORTS          GUATEMALA                      1                    NA                 0.0309389   -0.0639997    0.1258774
18-21 months   GMS-Nepal        NEPAL                          1                    NA                 0.0050572   -0.0732776    0.0833920
18-21 months   Keneba           GAMBIA                         1                    NA                 0.8086558    0.4453015    1.1720101
18-21 months   PROVIDE          BANGLADESH                     1                    NA                -0.0051761   -0.0408554    0.0305032
18-21 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0036226   -0.0700736    0.0773188
21-24 months   COHORTS          GUATEMALA                      1                    NA                -0.0731227   -0.1464277    0.0001824
21-24 months   GMS-Nepal        NEPAL                          1                    NA                -0.1388434   -0.2484848   -0.0292019
21-24 months   Keneba           GAMBIA                         1                    NA                -0.0578789   -0.2086600    0.0929023
21-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0531833   -0.1024914   -0.0038752
21-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0351923   -0.1332411    0.0628565
