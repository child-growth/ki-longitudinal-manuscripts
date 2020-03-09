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

**Outcome Variable:** wast_rec90d

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
* delta_W_mage
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

agecat        studyid         country     fhtcm           wast_rec90d   n_cell      n
------------  --------------  ----------  -------------  ------------  -------  -----
0-24 months   COHORTS         GUATEMALA   >=167 cm                  0        8    128
0-24 months   COHORTS         GUATEMALA   >=167 cm                  1        4    128
0-24 months   COHORTS         GUATEMALA   <162 cm                   0       62    128
0-24 months   COHORTS         GUATEMALA   <162 cm                   1       16    128
0-24 months   COHORTS         GUATEMALA   [162-167) cm              0       30    128
0-24 months   COHORTS         GUATEMALA   [162-167) cm              1        8    128
0-24 months   Keneba          GAMBIA      >=167 cm                  0      329   1317
0-24 months   Keneba          GAMBIA      >=167 cm                  1      521   1317
0-24 months   Keneba          GAMBIA      <162 cm                   0       40   1317
0-24 months   Keneba          GAMBIA      <162 cm                   1       64   1317
0-24 months   Keneba          GAMBIA      [162-167) cm              0      131   1317
0-24 months   Keneba          GAMBIA      [162-167) cm              1      232   1317
0-24 months   PROBIT          BELARUS     >=167 cm                  0      360   3570
0-24 months   PROBIT          BELARUS     >=167 cm                  1     2983   3570
0-24 months   PROBIT          BELARUS     <162 cm                   0       15   3570
0-24 months   PROBIT          BELARUS     <162 cm                   1       39   3570
0-24 months   PROBIT          BELARUS     [162-167) cm              0       14   3570
0-24 months   PROBIT          BELARUS     [162-167) cm              1      159   3570
0-24 months   SAS-CompFeed    INDIA       >=167 cm                  0      117    463
0-24 months   SAS-CompFeed    INDIA       >=167 cm                  1       84    463
0-24 months   SAS-CompFeed    INDIA       <162 cm                   0       68    463
0-24 months   SAS-CompFeed    INDIA       <162 cm                   1       42    463
0-24 months   SAS-CompFeed    INDIA       [162-167) cm              0       96    463
0-24 months   SAS-CompFeed    INDIA       [162-167) cm              1       56    463
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm                  0       61    223
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm                  1        3    223
0-24 months   SAS-FoodSuppl   INDIA       <162 cm                   0       97    223
0-24 months   SAS-FoodSuppl   INDIA       <162 cm                   1        5    223
0-24 months   SAS-FoodSuppl   INDIA       [162-167) cm              0       52    223
0-24 months   SAS-FoodSuppl   INDIA       [162-167) cm              1        5    223
0-6 months    COHORTS         GUATEMALA   >=167 cm                  0        0     44
0-6 months    COHORTS         GUATEMALA   >=167 cm                  1        4     44
0-6 months    COHORTS         GUATEMALA   <162 cm                   0        9     44
0-6 months    COHORTS         GUATEMALA   <162 cm                   1       16     44
0-6 months    COHORTS         GUATEMALA   [162-167) cm              0        7     44
0-6 months    COHORTS         GUATEMALA   [162-167) cm              1        8     44
0-6 months    Keneba          GAMBIA      >=167 cm                  0       75    526
0-6 months    Keneba          GAMBIA      >=167 cm                  1      267    526
0-6 months    Keneba          GAMBIA      <162 cm                   0       13    526
0-6 months    Keneba          GAMBIA      <162 cm                   1       37    526
0-6 months    Keneba          GAMBIA      [162-167) cm              0       25    526
0-6 months    Keneba          GAMBIA      [162-167) cm              1      109    526
0-6 months    PROBIT          BELARUS     >=167 cm                  0      287   3460
0-6 months    PROBIT          BELARUS     >=167 cm                  1     2953   3460
0-6 months    PROBIT          BELARUS     <162 cm                   0       12   3460
0-6 months    PROBIT          BELARUS     <162 cm                   1       38   3460
0-6 months    PROBIT          BELARUS     [162-167) cm              0       11   3460
0-6 months    PROBIT          BELARUS     [162-167) cm              1      159   3460
0-6 months    SAS-CompFeed    INDIA       >=167 cm                  0       31    173
0-6 months    SAS-CompFeed    INDIA       >=167 cm                  1       41    173
0-6 months    SAS-CompFeed    INDIA       <162 cm                   0       21    173
0-6 months    SAS-CompFeed    INDIA       <162 cm                   1       19    173
0-6 months    SAS-CompFeed    INDIA       [162-167) cm              0       29    173
0-6 months    SAS-CompFeed    INDIA       [162-167) cm              1       32    173
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm                  0       21     72
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm                  1        0     72
0-6 months    SAS-FoodSuppl   INDIA       <162 cm                   0       33     72
0-6 months    SAS-FoodSuppl   INDIA       <162 cm                   1        0     72
0-6 months    SAS-FoodSuppl   INDIA       [162-167) cm              0       18     72
0-6 months    SAS-FoodSuppl   INDIA       [162-167) cm              1        0     72
6-24 months   COHORTS         GUATEMALA   >=167 cm                  0        8     84
6-24 months   COHORTS         GUATEMALA   >=167 cm                  1        0     84
6-24 months   COHORTS         GUATEMALA   <162 cm                   0       53     84
6-24 months   COHORTS         GUATEMALA   <162 cm                   1        0     84
6-24 months   COHORTS         GUATEMALA   [162-167) cm              0       23     84
6-24 months   COHORTS         GUATEMALA   [162-167) cm              1        0     84
6-24 months   Keneba          GAMBIA      >=167 cm                  0      254    791
6-24 months   Keneba          GAMBIA      >=167 cm                  1      254    791
6-24 months   Keneba          GAMBIA      <162 cm                   0       27    791
6-24 months   Keneba          GAMBIA      <162 cm                   1       27    791
6-24 months   Keneba          GAMBIA      [162-167) cm              0      106    791
6-24 months   Keneba          GAMBIA      [162-167) cm              1      123    791
6-24 months   PROBIT          BELARUS     >=167 cm                  0       73    110
6-24 months   PROBIT          BELARUS     >=167 cm                  1       30    110
6-24 months   PROBIT          BELARUS     <162 cm                   0        3    110
6-24 months   PROBIT          BELARUS     <162 cm                   1        1    110
6-24 months   PROBIT          BELARUS     [162-167) cm              0        3    110
6-24 months   PROBIT          BELARUS     [162-167) cm              1        0    110
6-24 months   SAS-CompFeed    INDIA       >=167 cm                  0       86    290
6-24 months   SAS-CompFeed    INDIA       >=167 cm                  1       43    290
6-24 months   SAS-CompFeed    INDIA       <162 cm                   0       47    290
6-24 months   SAS-CompFeed    INDIA       <162 cm                   1       23    290
6-24 months   SAS-CompFeed    INDIA       [162-167) cm              0       67    290
6-24 months   SAS-CompFeed    INDIA       [162-167) cm              1       24    290
6-24 months   SAS-FoodSuppl   INDIA       >=167 cm                  0       40    151
6-24 months   SAS-FoodSuppl   INDIA       >=167 cm                  1        3    151
6-24 months   SAS-FoodSuppl   INDIA       <162 cm                   0       64    151
6-24 months   SAS-FoodSuppl   INDIA       <162 cm                   1        5    151
6-24 months   SAS-FoodSuppl   INDIA       [162-167) cm              0       34    151
6-24 months   SAS-FoodSuppl   INDIA       [162-167) cm              1        5    151


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/9fe249cc-2c18-4376-8d03-c22a1b2d9ec2/783bfa4f-be72-43c5-9052-91c1884e2c64/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9fe249cc-2c18-4376-8d03-c22a1b2d9ec2/783bfa4f-be72-43c5-9052-91c1884e2c64/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9fe249cc-2c18-4376-8d03-c22a1b2d9ec2/783bfa4f-be72-43c5-9052-91c1884e2c64/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9fe249cc-2c18-4376-8d03-c22a1b2d9ec2/783bfa4f-be72-43c5-9052-91c1884e2c64/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid        country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   Keneba         GAMBIA    >=167 cm             NA                0.6061228   0.5711450   0.6411006
0-24 months   Keneba         GAMBIA    <162 cm              NA                0.6286151   0.5298828   0.7273473
0-24 months   Keneba         GAMBIA    [162-167) cm         NA                0.6473873   0.5900288   0.7047459
0-24 months   PROBIT         BELARUS   >=167 cm             NA                0.8933043   0.8828918   0.9037169
0-24 months   PROBIT         BELARUS   <162 cm              NA                0.6675023   0.6092875   0.7257172
0-24 months   PROBIT         BELARUS   [162-167) cm         NA                0.8877674   0.8391901   0.9363446
0-24 months   SAS-CompFeed   INDIA     >=167 cm             NA                0.4122891   0.3416595   0.4829188
0-24 months   SAS-CompFeed   INDIA     <162 cm              NA                0.3766346   0.2725701   0.4806992
0-24 months   SAS-CompFeed   INDIA     [162-167) cm         NA                0.3632533   0.2853720   0.4411346
0-6 months    Keneba         GAMBIA    >=167 cm             NA                0.7773763   0.7333379   0.8214147
0-6 months    Keneba         GAMBIA    <162 cm              NA                0.7652211   0.6646009   0.8658412
0-6 months    Keneba         GAMBIA    [162-167) cm         NA                0.8106245   0.7460147   0.8752342
0-6 months    PROBIT         BELARUS   >=167 cm             NA                0.9124960   0.9026822   0.9223098
0-6 months    PROBIT         BELARUS   <162 cm              NA                0.7258019   0.6695567   0.7820470
0-6 months    PROBIT         BELARUS   [162-167) cm         NA                0.8955375   0.8438492   0.9472259
0-6 months    SAS-CompFeed   INDIA     >=167 cm             NA                0.5557322   0.4383782   0.6730861
0-6 months    SAS-CompFeed   INDIA     <162 cm              NA                0.4620027   0.3003940   0.6236114
0-6 months    SAS-CompFeed   INDIA     [162-167) cm         NA                0.5056188   0.3806901   0.6305475
6-24 months   Keneba         GAMBIA    >=167 cm             NA                0.4970144   0.4503538   0.5436750
6-24 months   Keneba         GAMBIA    <162 cm              NA                0.5459754   0.4044305   0.6875202
6-24 months   Keneba         GAMBIA    [162-167) cm         NA                0.5410377   0.4655410   0.6165343
6-24 months   SAS-CompFeed   INDIA     >=167 cm             NA                0.3368397   0.2534264   0.4202530
6-24 months   SAS-CompFeed   INDIA     <162 cm              NA                0.3321163   0.2126260   0.4516066
6-24 months   SAS-CompFeed   INDIA     [162-167) cm         NA                0.2614502   0.1643464   0.3585540


### Parameter: E(Y)


agecat        studyid        country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   Keneba         GAMBIA    NA                   NA                0.6203493   0.5920542   0.6486444
0-24 months   PROBIT         BELARUS   NA                   NA                0.8910364   0.8809112   0.9011616
0-24 months   SAS-CompFeed   INDIA     NA                   NA                0.3930886   0.3463071   0.4398700
0-6 months    Keneba         GAMBIA    NA                   NA                0.7851711   0.7510257   0.8193166
0-6 months    PROBIT         BELARUS   NA                   NA                0.9104046   0.9008342   0.9199750
0-6 months    SAS-CompFeed   INDIA     NA                   NA                0.5317919   0.4572362   0.6063476
6-24 months   Keneba         GAMBIA    NA                   NA                0.5107459   0.4734246   0.5480672
6-24 months   SAS-CompFeed   INDIA     NA                   NA                0.3103448   0.2551537   0.3655360


### Parameter: RR


agecat        studyid        country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   Keneba         GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   Keneba         GAMBIA    <162 cm              >=167 cm          1.0371085   0.8776460   1.2255443
0-24 months   Keneba         GAMBIA    [162-167) cm         >=167 cm          1.0680795   0.9610074   1.1870812
0-24 months   PROBIT         BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   PROBIT         BELARUS   <162 cm              >=167 cm          0.7472283   0.6842971   0.8159470
0-24 months   PROBIT         BELARUS   [162-167) cm         >=167 cm          0.9938017   0.9397372   1.0509767
0-24 months   SAS-CompFeed   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed   INDIA     <162 cm              >=167 cm          0.9135207   0.6603384   1.2637764
0-24 months   SAS-CompFeed   INDIA     [162-167) cm         >=167 cm          0.8810645   0.6702018   1.1582702
0-6 months    Keneba         GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-6 months    Keneba         GAMBIA    <162 cm              >=167 cm          0.9843637   0.8530108   1.1359434
0-6 months    Keneba         GAMBIA    [162-167) cm         >=167 cm          1.0427697   0.9460083   1.1494282
0-6 months    PROBIT         BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-6 months    PROBIT         BELARUS   <162 cm              >=167 cm          0.7954027   0.7355578   0.8601166
0-6 months    PROBIT         BELARUS   [162-167) cm         >=167 cm          0.9814153   0.9254617   1.0407518
0-6 months    SAS-CompFeed   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed   INDIA     <162 cm              >=167 cm          0.8313405   0.5519886   1.2520675
0-6 months    SAS-CompFeed   INDIA     [162-167) cm         >=167 cm          0.9098246   0.6575763   1.2588360
6-24 months   Keneba         GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
6-24 months   Keneba         GAMBIA    <162 cm              >=167 cm          1.0985101   0.8342975   1.4463960
6-24 months   Keneba         GAMBIA    [162-167) cm         >=167 cm          1.0885754   0.9203284   1.2875799
6-24 months   SAS-CompFeed   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed   INDIA     <162 cm              >=167 cm          0.9859772   0.6371744   1.5257221
6-24 months   SAS-CompFeed   INDIA     [162-167) cm         >=167 cm          0.7761859   0.4965702   1.2132515


### Parameter: PAR


agecat        studyid        country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   Keneba         GAMBIA    >=167 cm             NA                 0.0142265   -0.0072029   0.0356559
0-24 months   PROBIT         BELARUS   >=167 cm             NA                -0.0022679   -0.0051614   0.0006256
0-24 months   SAS-CompFeed   INDIA     >=167 cm             NA                -0.0192006   -0.0725187   0.0341176
0-6 months    Keneba         GAMBIA    >=167 cm             NA                 0.0077948   -0.0177675   0.0333570
0-6 months    PROBIT         BELARUS   >=167 cm             NA                -0.0020914   -0.0048106   0.0006278
0-6 months    SAS-CompFeed   INDIA     >=167 cm             NA                -0.0239403   -0.1130606   0.0651801
6-24 months   Keneba         GAMBIA    >=167 cm             NA                 0.0137315   -0.0150237   0.0424866
6-24 months   SAS-CompFeed   INDIA     >=167 cm             NA                -0.0264949   -0.0887047   0.0357149


### Parameter: PAF


agecat        studyid        country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   Keneba         GAMBIA    >=167 cm             NA                 0.0229331   -0.0122128   0.0568586
0-24 months   PROBIT         BELARUS   >=167 cm             NA                -0.0025452   -0.0057993   0.0006982
0-24 months   SAS-CompFeed   INDIA     >=167 cm             NA                -0.0488454   -0.1938441   0.0785425
0-6 months    Keneba         GAMBIA    >=167 cm             NA                 0.0099275   -0.0232036   0.0419858
0-6 months    PROBIT         BELARUS   >=167 cm             NA                -0.0022972   -0.0052899   0.0006865
0-6 months    SAS-CompFeed   INDIA     >=167 cm             NA                -0.0450181   -0.2267770   0.1098114
6-24 months   Keneba         GAMBIA    >=167 cm             NA                 0.0268851   -0.0310708   0.0815834
6-24 months   SAS-CompFeed   INDIA     >=167 cm             NA                -0.0853724   -0.3061112   0.0980606
