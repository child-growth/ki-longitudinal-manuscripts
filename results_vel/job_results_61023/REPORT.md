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

**Intervention Variable:** fhtcm

**Adjustment Set:**

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid         country     fhtcm           n_cell       n
-------------  --------------  ----------  -------------  -------  ------
0-3 months     COHORTS         GUATEMALA   >=167 cm            25     180
0-3 months     COHORTS         GUATEMALA   <162 cm            106     180
0-3 months     COHORTS         GUATEMALA   [162-167) cm        49     180
0-3 months     Keneba          GAMBIA      >=167 cm           631     965
0-3 months     Keneba          GAMBIA      <162 cm             75     965
0-3 months     Keneba          GAMBIA      [162-167) cm       259     965
0-3 months     PROBIT          BELARUS     >=167 cm         10775   11502
0-3 months     PROBIT          BELARUS     <162 cm            151   11502
0-3 months     PROBIT          BELARUS     [162-167) cm       576   11502
0-3 months     SAS-CompFeed    INDIA       >=167 cm           345     765
0-3 months     SAS-CompFeed    INDIA       <162 cm            196     765
0-3 months     SAS-CompFeed    INDIA       [162-167) cm       224     765
3-6 months     COHORTS         GUATEMALA   >=167 cm            37     261
3-6 months     COHORTS         GUATEMALA   <162 cm            148     261
3-6 months     COHORTS         GUATEMALA   [162-167) cm        76     261
3-6 months     Keneba          GAMBIA      >=167 cm           673    1037
3-6 months     Keneba          GAMBIA      <162 cm             74    1037
3-6 months     Keneba          GAMBIA      [162-167) cm       290    1037
3-6 months     PROBIT          BELARUS     >=167 cm          9472   10103
3-6 months     PROBIT          BELARUS     <162 cm            129   10103
3-6 months     PROBIT          BELARUS     [162-167) cm       502   10103
3-6 months     SAS-CompFeed    INDIA       >=167 cm           308     682
3-6 months     SAS-CompFeed    INDIA       <162 cm            175     682
3-6 months     SAS-CompFeed    INDIA       [162-167) cm       199     682
6-9 months     COHORTS         GUATEMALA   >=167 cm            39     308
6-9 months     COHORTS         GUATEMALA   <162 cm            186     308
6-9 months     COHORTS         GUATEMALA   [162-167) cm        83     308
6-9 months     Keneba          GAMBIA      >=167 cm           442     663
6-9 months     Keneba          GAMBIA      <162 cm             53     663
6-9 months     Keneba          GAMBIA      [162-167) cm       168     663
6-9 months     PROBIT          BELARUS     >=167 cm          8926    9528
6-9 months     PROBIT          BELARUS     <162 cm            126    9528
6-9 months     PROBIT          BELARUS     [162-167) cm       476    9528
6-9 months     SAS-CompFeed    INDIA       >=167 cm           312     683
6-9 months     SAS-CompFeed    INDIA       <162 cm            167     683
6-9 months     SAS-CompFeed    INDIA       [162-167) cm       204     683
6-9 months     SAS-FoodSuppl   INDIA       >=167 cm            89     311
6-9 months     SAS-FoodSuppl   INDIA       <162 cm            124     311
6-9 months     SAS-FoodSuppl   INDIA       [162-167) cm        98     311
9-12 months    COHORTS         GUATEMALA   >=167 cm            51     370
9-12 months    COHORTS         GUATEMALA   <162 cm            224     370
9-12 months    COHORTS         GUATEMALA   [162-167) cm        95     370
9-12 months    Keneba          GAMBIA      >=167 cm           420     653
9-12 months    Keneba          GAMBIA      <162 cm             52     653
9-12 months    Keneba          GAMBIA      [162-167) cm       181     653
9-12 months    PROBIT          BELARUS     >=167 cm          9107    9729
9-12 months    PROBIT          BELARUS     <162 cm            126    9729
9-12 months    PROBIT          BELARUS     [162-167) cm       496    9729
9-12 months    SAS-CompFeed    INDIA       >=167 cm           317     685
9-12 months    SAS-CompFeed    INDIA       <162 cm            167     685
9-12 months    SAS-CompFeed    INDIA       [162-167) cm       201     685
9-12 months    SAS-FoodSuppl   INDIA       >=167 cm            86     308
9-12 months    SAS-FoodSuppl   INDIA       <162 cm            128     308
9-12 months    SAS-FoodSuppl   INDIA       [162-167) cm        94     308
12-15 months   COHORTS         GUATEMALA   >=167 cm            53     387
12-15 months   COHORTS         GUATEMALA   <162 cm            224     387
12-15 months   COHORTS         GUATEMALA   [162-167) cm       110     387
12-15 months   Keneba          GAMBIA      >=167 cm           652    1041
12-15 months   Keneba          GAMBIA      <162 cm             85    1041
12-15 months   Keneba          GAMBIA      [162-167) cm       304    1041
12-15 months   PROBIT          BELARUS     >=167 cm           843     897
12-15 months   PROBIT          BELARUS     <162 cm              9     897
12-15 months   PROBIT          BELARUS     [162-167) cm        45     897
12-15 months   SAS-CompFeed    INDIA       >=167 cm           329     702
12-15 months   SAS-CompFeed    INDIA       <162 cm            169     702
12-15 months   SAS-CompFeed    INDIA       [162-167) cm       204     702
12-15 months   SAS-FoodSuppl   INDIA       >=167 cm            77     302
12-15 months   SAS-FoodSuppl   INDIA       <162 cm            131     302
12-15 months   SAS-FoodSuppl   INDIA       [162-167) cm        94     302
15-18 months   COHORTS         GUATEMALA   >=167 cm            47     347
15-18 months   COHORTS         GUATEMALA   <162 cm            205     347
15-18 months   COHORTS         GUATEMALA   [162-167) cm        95     347
15-18 months   Keneba          GAMBIA      >=167 cm           658    1050
15-18 months   Keneba          GAMBIA      <162 cm             82    1050
15-18 months   Keneba          GAMBIA      [162-167) cm       310    1050
15-18 months   PROBIT          BELARUS     >=167 cm           226     239
15-18 months   PROBIT          BELARUS     <162 cm              1     239
15-18 months   PROBIT          BELARUS     [162-167) cm        12     239
15-18 months   SAS-CompFeed    INDIA       >=167 cm           335     717
15-18 months   SAS-CompFeed    INDIA       <162 cm            169     717
15-18 months   SAS-CompFeed    INDIA       [162-167) cm       213     717
15-18 months   SAS-FoodSuppl   INDIA       >=167 cm            79     290
15-18 months   SAS-FoodSuppl   INDIA       <162 cm            121     290
15-18 months   SAS-FoodSuppl   INDIA       [162-167) cm        90     290
18-21 months   COHORTS         GUATEMALA   >=167 cm            51     369
18-21 months   COHORTS         GUATEMALA   <162 cm            211     369
18-21 months   COHORTS         GUATEMALA   [162-167) cm       107     369
18-21 months   Keneba          GAMBIA      >=167 cm           635    1043
18-21 months   Keneba          GAMBIA      <162 cm             84    1043
18-21 months   Keneba          GAMBIA      [162-167) cm       324    1043
18-21 months   PROBIT          BELARUS     >=167 cm           183     194
18-21 months   PROBIT          BELARUS     <162 cm              2     194
18-21 months   PROBIT          BELARUS     [162-167) cm         9     194
21-24 months   COHORTS         GUATEMALA   >=167 cm            58     417
21-24 months   COHORTS         GUATEMALA   <162 cm            237     417
21-24 months   COHORTS         GUATEMALA   [162-167) cm       122     417
21-24 months   Keneba          GAMBIA      >=167 cm           582     933
21-24 months   Keneba          GAMBIA      <162 cm             72     933
21-24 months   Keneba          GAMBIA      [162-167) cm       279     933
21-24 months   PROBIT          BELARUS     >=167 cm           175     185
21-24 months   PROBIT          BELARUS     <162 cm              4     185
21-24 months   PROBIT          BELARUS     [162-167) cm         6     185


The following strata were considered:

* agecat: 0-3 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 18-21 months, studyid: COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 15-18 months, studyid: PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: PROBIT, country: BELARUS

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
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/1aba1d1a-dafd-4900-9b2e-ee65aa673185/791b4f53-0228-4e72-ad86-aa6580c75588/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1aba1d1a-dafd-4900-9b2e-ee65aa673185/791b4f53-0228-4e72-ad86-aa6580c75588/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/1aba1d1a-dafd-4900-9b2e-ee65aa673185/791b4f53-0228-4e72-ad86-aa6580c75588/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS         GUATEMALA   >=167 cm             NA                -0.4647342   -0.5998441   -0.3296243
0-3 months     COHORTS         GUATEMALA   <162 cm              NA                -0.4935045   -0.5511305   -0.4358786
0-3 months     COHORTS         GUATEMALA   [162-167) cm         NA                -0.5230372   -0.6005887   -0.4454857
0-3 months     Keneba          GAMBIA      >=167 cm             NA                -0.2800803   -0.3155597   -0.2446009
0-3 months     Keneba          GAMBIA      <162 cm              NA                -0.3213483   -0.4182687   -0.2244280
0-3 months     Keneba          GAMBIA      [162-167) cm         NA                -0.3281148   -0.3754452   -0.2807845
0-3 months     PROBIT          BELARUS     >=167 cm             NA                -0.4313041   -0.4891094   -0.3734988
0-3 months     PROBIT          BELARUS     <162 cm              NA                -0.5053841   -0.5371893   -0.4735788
0-3 months     PROBIT          BELARUS     [162-167) cm         NA                -0.4446895   -0.5137770   -0.3756021
0-3 months     SAS-CompFeed    INDIA       >=167 cm             NA                -0.0876171   -0.1248424   -0.0503917
0-3 months     SAS-CompFeed    INDIA       <162 cm              NA                -0.1628868   -0.2083145   -0.1174592
0-3 months     SAS-CompFeed    INDIA       [162-167) cm         NA                -0.1559179   -0.2039942   -0.1078416
3-6 months     COHORTS         GUATEMALA   >=167 cm             NA                -0.0565652   -0.1337280    0.0205977
3-6 months     COHORTS         GUATEMALA   <162 cm              NA                -0.1008410   -0.1339410   -0.0677411
3-6 months     COHORTS         GUATEMALA   [162-167) cm         NA                -0.0246519   -0.0748714    0.0255675
3-6 months     Keneba          GAMBIA      >=167 cm             NA                -0.0158970   -0.0416139    0.0098200
3-6 months     Keneba          GAMBIA      <162 cm              NA                -0.0538494   -0.1604354    0.0527365
3-6 months     Keneba          GAMBIA      [162-167) cm         NA                -0.0379885   -0.0788142    0.0028372
3-6 months     PROBIT          BELARUS     >=167 cm             NA                 0.0504048    0.0310697    0.0697399
3-6 months     PROBIT          BELARUS     <162 cm              NA                 0.0437938    0.0091167    0.0784709
3-6 months     PROBIT          BELARUS     [162-167) cm         NA                 0.0125658   -0.0255914    0.0507229
3-6 months     SAS-CompFeed    INDIA       >=167 cm             NA                 0.0001537   -0.0318225    0.0321299
3-6 months     SAS-CompFeed    INDIA       <162 cm              NA                -0.0341464   -0.0618738   -0.0064190
3-6 months     SAS-CompFeed    INDIA       [162-167) cm         NA                -0.0282016   -0.0702602    0.0138570
6-9 months     COHORTS         GUATEMALA   >=167 cm             NA                -0.0797199   -0.1393996   -0.0200401
6-9 months     COHORTS         GUATEMALA   <162 cm              NA                -0.1302578   -0.1560979   -0.1044177
6-9 months     COHORTS         GUATEMALA   [162-167) cm         NA                -0.1291425   -0.1647035   -0.0935814
6-9 months     Keneba          GAMBIA      >=167 cm             NA                -0.0172900   -0.0499722    0.0153922
6-9 months     Keneba          GAMBIA      <162 cm              NA                 0.0531652   -0.0618696    0.1682000
6-9 months     Keneba          GAMBIA      [162-167) cm         NA                -0.0468053   -0.0901883   -0.0034223
6-9 months     PROBIT          BELARUS     >=167 cm             NA                 0.0512992    0.0378090    0.0647893
6-9 months     PROBIT          BELARUS     <162 cm              NA                 0.0511486    0.0280823    0.0742149
6-9 months     PROBIT          BELARUS     [162-167) cm         NA                 0.0173690   -0.0187626    0.0535006
6-9 months     SAS-CompFeed    INDIA       >=167 cm             NA                -0.0730213   -0.0976306   -0.0484120
6-9 months     SAS-CompFeed    INDIA       <162 cm              NA                -0.0866927   -0.1182704   -0.0551150
6-9 months     SAS-CompFeed    INDIA       [162-167) cm         NA                -0.0984853   -0.1420812   -0.0548893
6-9 months     SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.1014303   -0.1309424   -0.0719181
6-9 months     SAS-FoodSuppl   INDIA       <162 cm              NA                -0.1056561   -0.1357572   -0.0755550
6-9 months     SAS-FoodSuppl   INDIA       [162-167) cm         NA                -0.1086065   -0.1438399   -0.0733730
9-12 months    COHORTS         GUATEMALA   >=167 cm             NA                -0.0512042   -0.0995094   -0.0028990
9-12 months    COHORTS         GUATEMALA   <162 cm              NA                -0.1005915   -0.1226851   -0.0784979
9-12 months    COHORTS         GUATEMALA   [162-167) cm         NA                -0.0979130   -0.1342914   -0.0615346
9-12 months    Keneba          GAMBIA      >=167 cm             NA                -0.1019653   -0.1264806   -0.0774500
9-12 months    Keneba          GAMBIA      <162 cm              NA                -0.1670469   -0.2679362   -0.0661577
9-12 months    Keneba          GAMBIA      [162-167) cm         NA                -0.0897492   -0.1279911   -0.0515073
9-12 months    PROBIT          BELARUS     >=167 cm             NA                 0.0381334    0.0163258    0.0599410
9-12 months    PROBIT          BELARUS     <162 cm              NA                 0.0238350    0.0005243    0.0471457
9-12 months    PROBIT          BELARUS     [162-167) cm         NA                 0.0242111   -0.0086212    0.0570433
9-12 months    SAS-CompFeed    INDIA       >=167 cm             NA                -0.0919641   -0.1302592   -0.0536691
9-12 months    SAS-CompFeed    INDIA       <162 cm              NA                -0.0823480   -0.1214334   -0.0432626
9-12 months    SAS-CompFeed    INDIA       [162-167) cm         NA                -0.0719906   -0.1031708   -0.0408103
9-12 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.1428338   -0.2584890   -0.0271786
9-12 months    SAS-FoodSuppl   INDIA       <162 cm              NA                -0.2023892   -0.2654138   -0.1393646
9-12 months    SAS-FoodSuppl   INDIA       [162-167) cm         NA                -0.0998887   -0.2148436    0.0150661
12-15 months   COHORTS         GUATEMALA   >=167 cm             NA                -0.1207595   -0.1732571   -0.0682619
12-15 months   COHORTS         GUATEMALA   <162 cm              NA                -0.0910010   -0.1140761   -0.0679259
12-15 months   COHORTS         GUATEMALA   [162-167) cm         NA                -0.0651140   -0.0972016   -0.0330265
12-15 months   Keneba          GAMBIA      >=167 cm             NA                -0.0527648   -0.0706293   -0.0349002
12-15 months   Keneba          GAMBIA      <162 cm              NA                -0.0518087   -0.1407039    0.0370866
12-15 months   Keneba          GAMBIA      [162-167) cm         NA                -0.0608163   -0.0856013   -0.0360314
12-15 months   PROBIT          BELARUS     >=167 cm             NA                 0.0014830   -0.1225548    0.1255207
12-15 months   PROBIT          BELARUS     <162 cm              NA                 0.0805281   -0.0606582    0.2217144
12-15 months   PROBIT          BELARUS     [162-167) cm         NA                 0.0538327   -0.1758370    0.2835023
12-15 months   SAS-CompFeed    INDIA       >=167 cm             NA                -0.0613195   -0.0869132   -0.0357258
12-15 months   SAS-CompFeed    INDIA       <162 cm              NA                -0.1077387   -0.1532924   -0.0621849
12-15 months   SAS-CompFeed    INDIA       [162-167) cm         NA                -0.1045598   -0.1434054   -0.0657141
12-15 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.0514659    0.0016897    0.1012421
12-15 months   SAS-FoodSuppl   INDIA       <162 cm              NA                -0.0227465   -0.0865813    0.0410882
12-15 months   SAS-FoodSuppl   INDIA       [162-167) cm         NA                 0.0239120   -0.0382460    0.0860700
15-18 months   COHORTS         GUATEMALA   >=167 cm             NA                -0.1363114   -0.1925086   -0.0801142
15-18 months   COHORTS         GUATEMALA   <162 cm              NA                -0.0452679   -0.0635403   -0.0269956
15-18 months   COHORTS         GUATEMALA   [162-167) cm         NA                -0.0766499   -0.1164107   -0.0368892
15-18 months   Keneba          GAMBIA      >=167 cm             NA                -0.0404792   -0.0574449   -0.0235136
15-18 months   Keneba          GAMBIA      <162 cm              NA                -0.0343750   -0.0768022    0.0080523
15-18 months   Keneba          GAMBIA      [162-167) cm         NA                -0.0261081   -0.0483927   -0.0038235
15-18 months   SAS-CompFeed    INDIA       >=167 cm             NA                -0.0103354   -0.0289575    0.0082867
15-18 months   SAS-CompFeed    INDIA       <162 cm              NA                -0.0057379   -0.0354739    0.0239982
15-18 months   SAS-CompFeed    INDIA       [162-167) cm         NA                 0.0044209   -0.0464816    0.0553233
15-18 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0412942   -0.0694772   -0.0131112
15-18 months   SAS-FoodSuppl   INDIA       <162 cm              NA                -0.0341629   -0.0534948   -0.0148309
15-18 months   SAS-FoodSuppl   INDIA       [162-167) cm         NA                -0.0368838   -0.0604916   -0.0132760
18-21 months   COHORTS         GUATEMALA   >=167 cm             NA                -0.0117639   -0.0604481    0.0369203
18-21 months   COHORTS         GUATEMALA   <162 cm              NA                -0.0123725   -0.0312480    0.0065031
18-21 months   COHORTS         GUATEMALA   [162-167) cm         NA                -0.0404745   -0.0750341   -0.0059150
18-21 months   Keneba          GAMBIA      >=167 cm             NA                -0.0170080   -0.0338657   -0.0001503
18-21 months   Keneba          GAMBIA      <162 cm              NA                -0.0297665   -0.0625944    0.0030614
18-21 months   Keneba          GAMBIA      [162-167) cm         NA                -0.0197909   -0.0420634    0.0024816
21-24 months   COHORTS         GUATEMALA   >=167 cm             NA                -0.0297938   -0.0665375    0.0069499
21-24 months   COHORTS         GUATEMALA   <162 cm              NA                -0.0101747   -0.0262624    0.0059131
21-24 months   COHORTS         GUATEMALA   [162-167) cm         NA                -0.0070616   -0.0284298    0.0143067
21-24 months   Keneba          GAMBIA      >=167 cm             NA                 0.0214006    0.0042811    0.0385200
21-24 months   Keneba          GAMBIA      <162 cm              NA                 0.0176876   -0.0148852    0.0502605
21-24 months   Keneba          GAMBIA      [162-167) cm         NA                 0.0080779   -0.0146618    0.0308176


### Parameter: E(Y)


agecat         studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS         GUATEMALA   NA                   NA                -0.4956734   -0.5391037   -0.4522430
0-3 months     Keneba          GAMBIA      NA                   NA                -0.2925541   -0.3202623   -0.2648459
0-3 months     PROBIT          BELARUS     NA                   NA                -0.4339788   -0.4920905   -0.3758672
0-3 months     SAS-CompFeed    INDIA       NA                   NA                -0.1293116   -0.1570838   -0.1015393
3-6 months     COHORTS         GUATEMALA   NA                   NA                -0.0725836   -0.0990295   -0.0461377
3-6 months     Keneba          GAMBIA      NA                   NA                -0.0243287   -0.0453184   -0.0033389
3-6 months     PROBIT          BELARUS     NA                   NA                 0.0496085    0.0303789    0.0688381
3-6 months     SAS-CompFeed    INDIA       NA                   NA                -0.0172047   -0.0462110    0.0118016
6-9 months     COHORTS         GUATEMALA   NA                   NA                -0.1250180   -0.1444785   -0.1055575
6-9 months     Keneba          GAMBIA      NA                   NA                -0.0162599   -0.0424084    0.0098886
6-9 months     PROBIT          BELARUS     NA                   NA                 0.0501252    0.0364772    0.0637733
6-9 months     SAS-CompFeed    INDIA       NA                   NA                -0.0826792   -0.0976756   -0.0676829
6-9 months     SAS-FoodSuppl   INDIA       NA                   NA                -0.1060840   -0.1243061   -0.0878619
9-12 months    COHORTS         GUATEMALA   NA                   NA                -0.0937525   -0.1108820   -0.0766229
9-12 months    Keneba          GAMBIA      NA                   NA                -0.1043948   -0.1248389   -0.0839507
9-12 months    PROBIT          BELARUS     NA                   NA                 0.0380200    0.0165057    0.0595343
9-12 months    SAS-CompFeed    INDIA       NA                   NA                -0.0844546   -0.1064588   -0.0624505
9-12 months    SAS-FoodSuppl   INDIA       NA                   NA                -0.1543023   -0.2067725   -0.1018321
12-15 months   COHORTS         GUATEMALA   NA                   NA                -0.0795786   -0.0954422   -0.0637150
12-15 months   Keneba          GAMBIA      NA                   NA                -0.0546831   -0.0687903   -0.0405758
12-15 months   PROBIT          BELARUS     NA                   NA                 0.0049023   -0.1173760    0.1271806
12-15 months   SAS-CompFeed    INDIA       NA                   NA                -0.0852063   -0.1134490   -0.0569636
12-15 months   SAS-FoodSuppl   INDIA       NA                   NA                 0.0086211   -0.0272082    0.0444504
15-18 months   COHORTS         GUATEMALA   NA                   NA                -0.0589223   -0.0748896   -0.0429550
15-18 months   Keneba          GAMBIA      NA                   NA                -0.0340694   -0.0467538   -0.0213851
15-18 months   SAS-CompFeed    INDIA       NA                   NA                -0.0056259   -0.0184980    0.0072462
15-18 months   SAS-FoodSuppl   INDIA       NA                   NA                -0.0372612   -0.0503965   -0.0241260
18-21 months   COHORTS         GUATEMALA   NA                   NA                -0.0212869   -0.0355114   -0.0070623
18-21 months   Keneba          GAMBIA      NA                   NA                -0.0200780   -0.0325402   -0.0076159
21-24 months   COHORTS         GUATEMALA   NA                   NA                -0.0126815   -0.0238129   -0.0015501
21-24 months   Keneba          GAMBIA      NA                   NA                 0.0182744    0.0054117    0.0311371


### Parameter: ATE


agecat         studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0287703   -0.1762675    0.1187268
0-3 months     COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.0583030   -0.2145978    0.0979918
0-3 months     Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     Keneba          GAMBIA      <162 cm              >=167 cm          -0.0412680   -0.1444321    0.0618961
0-3 months     Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0480345   -0.1072108    0.0111417
0-3 months     PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     PROBIT          BELARUS     <162 cm              >=167 cm          -0.0740800   -0.1230876   -0.0250724
0-3 months     PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.0133855   -0.0463985    0.0196275
0-3 months     SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0752698   -0.1377714   -0.0127682
0-3 months     SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0683009   -0.1176487   -0.0189530
3-6 months     COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0442759   -0.1280542    0.0395024
3-6 months     COHORTS         GUATEMALA   [162-167) cm         >=167 cm           0.0319132   -0.0601327    0.1239591
3-6 months     Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     Keneba          GAMBIA      <162 cm              >=167 cm          -0.0379524   -0.1476265    0.0717217
3-6 months     Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0220915   -0.0705441    0.0263610
3-6 months     PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     PROBIT          BELARUS     <162 cm              >=167 cm          -0.0066110   -0.0412991    0.0280771
3-6 months     PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.0378390   -0.0770748    0.0013968
3-6 months     SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0343001   -0.0622903   -0.0063098
3-6 months     SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0283553   -0.0584458    0.0017352
6-9 months     COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0505380   -0.1156764    0.0146005
6-9 months     COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.0494226   -0.1188030    0.0199578
6-9 months     Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     Keneba          GAMBIA      <162 cm              >=167 cm           0.0704552   -0.0490795    0.1899898
6-9 months     Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0295153   -0.0840319    0.0250012
6-9 months     PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     PROBIT          BELARUS     <162 cm              >=167 cm          -0.0001506   -0.0227323    0.0224312
6-9 months     PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.0339302   -0.0657221   -0.0021382
6-9 months     SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0136714   -0.0633184    0.0359756
6-9 months     SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0254640   -0.0800308    0.0291029
6-9 months     SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.0042259   -0.0464806    0.0380288
6-9 months     SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.0071762   -0.0531602    0.0388078
9-12 months    COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0493873   -0.1025006    0.0037260
9-12 months    COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.0467088   -0.1071272    0.0137095
9-12 months    Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    Keneba          GAMBIA      <162 cm              >=167 cm          -0.0650817   -0.1690025    0.0388392
9-12 months    Keneba          GAMBIA      [162-167) cm         >=167 cm           0.0122161   -0.0331222    0.0575544
9-12 months    PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    PROBIT          BELARUS     <162 cm              >=167 cm          -0.0142984   -0.0424835    0.0138867
9-12 months    PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.0139223   -0.0420827    0.0142380
9-12 months    SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed    INDIA       <162 cm              >=167 cm           0.0096161   -0.0450180    0.0642503
9-12 months    SAS-CompFeed    INDIA       [162-167) cm         >=167 cm           0.0199735   -0.0328777    0.0728248
9-12 months    SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.0595554   -0.1919972    0.0728864
9-12 months    SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0429451   -0.1210334    0.2069237
12-15 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   COHORTS         GUATEMALA   <162 cm              >=167 cm           0.0297585   -0.0276449    0.0871619
12-15 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm           0.0556455   -0.0057055    0.1169964
12-15 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   Keneba          GAMBIA      <162 cm              >=167 cm           0.0009561   -0.0897906    0.0917027
12-15 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0080516   -0.0387320    0.0226288
12-15 months   PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   PROBIT          BELARUS     <162 cm              >=167 cm           0.0790451   -0.0898092    0.2478994
12-15 months   PROBIT          BELARUS     [162-167) cm         >=167 cm           0.0523497   -0.1623274    0.2670268
12-15 months   SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0464191   -0.0878901   -0.0049482
12-15 months   SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0432403   -0.0773301   -0.0091504
12-15 months   SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.0742124   -0.1554092    0.0069843
12-15 months   SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.0275539   -0.1072356    0.0521278
15-18 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   COHORTS         GUATEMALA   <162 cm              >=167 cm           0.0910435    0.0319406    0.1501463
15-18 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm           0.0596615   -0.0091968    0.1285198
15-18 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   Keneba          GAMBIA      <162 cm              >=167 cm           0.0061042   -0.0396337    0.0518422
15-18 months   Keneba          GAMBIA      [162-167) cm         >=167 cm           0.0143711   -0.0136338    0.0423761
15-18 months   SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed    INDIA       <162 cm              >=167 cm           0.0045976   -0.0309522    0.0401473
15-18 months   SAS-CompFeed    INDIA       [162-167) cm         >=167 cm           0.0147563   -0.0451182    0.0746307
15-18 months   SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl   INDIA       <162 cm              >=167 cm           0.0071313   -0.0270815    0.0413442
15-18 months   SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0044104   -0.0323516    0.0411725
18-21 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
18-21 months   COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0006086   -0.0528051    0.0515879
18-21 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.0287107   -0.0883840    0.0309627
18-21 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
18-21 months   Keneba          GAMBIA      <162 cm              >=167 cm          -0.0127585   -0.0496935    0.0241765
18-21 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0027829   -0.0307599    0.0251940
21-24 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
21-24 months   COHORTS         GUATEMALA   <162 cm              >=167 cm           0.0196191   -0.0207682    0.0600064
21-24 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm           0.0227322   -0.0199329    0.0653973
21-24 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
21-24 months   Keneba          GAMBIA      <162 cm              >=167 cm          -0.0037129   -0.0405343    0.0331084
21-24 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0133226   -0.0418763    0.0152310


### Parameter: PAR


agecat         studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS         GUATEMALA   >=167 cm             NA                -0.0309392   -0.1542216    0.0923432
0-3 months     Keneba          GAMBIA      >=167 cm             NA                -0.0124738   -0.0325448    0.0075972
0-3 months     PROBIT          BELARUS     >=167 cm             NA                -0.0026748   -0.0049051   -0.0004444
0-3 months     SAS-CompFeed    INDIA       >=167 cm             NA                -0.0416945   -0.0668117   -0.0165773
3-6 months     COHORTS         GUATEMALA   >=167 cm             NA                -0.0160184   -0.0867078    0.0546709
3-6 months     Keneba          GAMBIA      >=167 cm             NA                -0.0084317   -0.0247428    0.0078794
3-6 months     PROBIT          BELARUS     >=167 cm             NA                -0.0007963   -0.0028931    0.0013006
3-6 months     SAS-CompFeed    INDIA       >=167 cm             NA                -0.0173584   -0.0307074   -0.0040094
6-9 months     COHORTS         GUATEMALA   >=167 cm             NA                -0.0452981   -0.1009748    0.0103786
6-9 months     Keneba          GAMBIA      >=167 cm             NA                 0.0010300   -0.0174118    0.0194718
6-9 months     PROBIT          BELARUS     >=167 cm             NA                -0.0011739   -0.0027179    0.0003700
6-9 months     SAS-CompFeed    INDIA       >=167 cm             NA                -0.0096579   -0.0326132    0.0132974
6-9 months     SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0046537   -0.0315322    0.0222247
9-12 months    COHORTS         GUATEMALA   >=167 cm             NA                -0.0425483   -0.0877268    0.0026303
9-12 months    Keneba          GAMBIA      >=167 cm             NA                -0.0024295   -0.0186152    0.0137562
9-12 months    PROBIT          BELARUS     >=167 cm             NA                -0.0001134   -0.0015566    0.0013298
9-12 months    SAS-CompFeed    INDIA       >=167 cm             NA                 0.0075095   -0.0179949    0.0330139
9-12 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0114685   -0.1071088    0.0841719
12-15 months   COHORTS         GUATEMALA   >=167 cm             NA                 0.0411809   -0.0093061    0.0916679
12-15 months   Keneba          GAMBIA      >=167 cm             NA                -0.0019183   -0.0134756    0.0096389
12-15 months   PROBIT          BELARUS     >=167 cm             NA                 0.0034193   -0.0078446    0.0146833
12-15 months   SAS-CompFeed    INDIA       >=167 cm             NA                -0.0238868   -0.0409334   -0.0068401
12-15 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0428448   -0.0932108    0.0075211
15-18 months   COHORTS         GUATEMALA   >=167 cm             NA                 0.0773891    0.0238166    0.1309616
15-18 months   Keneba          GAMBIA      >=167 cm             NA                 0.0064098   -0.0047954    0.0176150
15-18 months   SAS-CompFeed    INDIA       >=167 cm             NA                 0.0047095   -0.0151819    0.0246009
15-18 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.0040330   -0.0196252    0.0276912
18-21 months   COHORTS         GUATEMALA   >=167 cm             NA                -0.0095230   -0.0553834    0.0363374
18-21 months   Keneba          GAMBIA      >=167 cm             NA                -0.0030701   -0.0132523    0.0071121
21-24 months   COHORTS         GUATEMALA   >=167 cm             NA                 0.0171123   -0.0170963    0.0513208
21-24 months   Keneba          GAMBIA      >=167 cm             NA                -0.0031262   -0.0129396    0.0066873
