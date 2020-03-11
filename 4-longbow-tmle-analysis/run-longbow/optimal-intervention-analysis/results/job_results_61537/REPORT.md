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

**Outcome Variable:** haz

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

agecat      studyid         country                        fage       n_cell       n
----------  --------------  -----------------------------  --------  -------  ------
Birth       COHORTS         GUATEMALA                      >=38          245     823
Birth       COHORTS         GUATEMALA                      <32           380     823
Birth       COHORTS         GUATEMALA                      [32-38)       198     823
Birth       COHORTS         PHILIPPINES                    >=38          328    2944
Birth       COHORTS         PHILIPPINES                    <32          2079    2944
Birth       COHORTS         PHILIPPINES                    [32-38)       537    2944
Birth       MAL-ED          BANGLADESH                     >=38           63     133
Birth       MAL-ED          BANGLADESH                     <32            25     133
Birth       MAL-ED          BANGLADESH                     [32-38)        45     133
Birth       MAL-ED          BRAZIL                         >=38            6      18
Birth       MAL-ED          BRAZIL                         <32             1      18
Birth       MAL-ED          BRAZIL                         [32-38)        11      18
Birth       MAL-ED          INDIA                          >=38            7      27
Birth       MAL-ED          INDIA                          <32             9      27
Birth       MAL-ED          INDIA                          [32-38)        11      27
Birth       MAL-ED          NEPAL                          >=38            2       9
Birth       MAL-ED          NEPAL                          <32             2       9
Birth       MAL-ED          NEPAL                          [32-38)         5       9
Birth       MAL-ED          PERU                           >=38           23      69
Birth       MAL-ED          PERU                           <32            22      69
Birth       MAL-ED          PERU                           [32-38)        24      69
Birth       MAL-ED          SOUTH AFRICA                   >=38           17      31
Birth       MAL-ED          SOUTH AFRICA                   <32             5      31
Birth       MAL-ED          SOUTH AFRICA                   [32-38)         9      31
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           19      46
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             9      46
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        18      46
Birth       PROBIT          BELARUS                        >=38          606   13399
Birth       PROBIT          BELARUS                        <32         10732   13399
Birth       PROBIT          BELARUS                        [32-38)      2061   13399
Birth       SAS-CompFeed    INDIA                          >=38           40    1249
Birth       SAS-CompFeed    INDIA                          <32          1045    1249
Birth       SAS-CompFeed    INDIA                          [32-38)       164    1249
6 months    COHORTS         GUATEMALA                      >=38          275     929
6 months    COHORTS         GUATEMALA                      <32           421     929
6 months    COHORTS         GUATEMALA                      [32-38)       233     929
6 months    COHORTS         PHILIPPINES                    >=38          300    2624
6 months    COHORTS         PHILIPPINES                    <32          1829    2624
6 months    COHORTS         PHILIPPINES                    [32-38)       495    2624
6 months    LCNI-5          MALAWI                         >=38           26     106
6 months    LCNI-5          MALAWI                         <32            56     106
6 months    LCNI-5          MALAWI                         [32-38)        24     106
6 months    MAL-ED          BANGLADESH                     >=38           69     150
6 months    MAL-ED          BANGLADESH                     <32            30     150
6 months    MAL-ED          BANGLADESH                     [32-38)        51     150
6 months    MAL-ED          BRAZIL                         >=38           30      79
6 months    MAL-ED          BRAZIL                         <32            18      79
6 months    MAL-ED          BRAZIL                         [32-38)        31      79
6 months    MAL-ED          INDIA                          >=38           36     161
6 months    MAL-ED          INDIA                          <32            53     161
6 months    MAL-ED          INDIA                          [32-38)        72     161
6 months    MAL-ED          NEPAL                          >=38           17      79
6 months    MAL-ED          NEPAL                          <32            15      79
6 months    MAL-ED          NEPAL                          [32-38)        47      79
6 months    MAL-ED          PERU                           >=38           27      83
6 months    MAL-ED          PERU                           <32            28      83
6 months    MAL-ED          PERU                           [32-38)        28      83
6 months    MAL-ED          SOUTH AFRICA                   >=38           64      89
6 months    MAL-ED          SOUTH AFRICA                   <32             9      89
6 months    MAL-ED          SOUTH AFRICA                   [32-38)        16      89
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100
6 months    PROBIT          BELARUS                        >=38          701   15182
6 months    PROBIT          BELARUS                        <32         12175   15182
6 months    PROBIT          BELARUS                        [32-38)      2306   15182
6 months    SAS-CompFeed    INDIA                          >=38           44    1333
6 months    SAS-CompFeed    INDIA                          <32          1125    1333
6 months    SAS-CompFeed    INDIA                          [32-38)       164    1333
6 months    SAS-FoodSuppl   INDIA                          >=38           39     380
6 months    SAS-FoodSuppl   INDIA                          <32           264     380
6 months    SAS-FoodSuppl   INDIA                          [32-38)        77     380
24 months   COHORTS         GUATEMALA                      >=38          285    1021
24 months   COHORTS         GUATEMALA                      <32           491    1021
24 months   COHORTS         GUATEMALA                      [32-38)       245    1021
24 months   COHORTS         PHILIPPINES                    >=38          270    2371
24 months   COHORTS         PHILIPPINES                    <32          1666    2371
24 months   COHORTS         PHILIPPINES                    [32-38)       435    2371
24 months   LCNI-5          MALAWI                         >=38           21      74
24 months   LCNI-5          MALAWI                         <32            37      74
24 months   LCNI-5          MALAWI                         [32-38)        16      74
24 months   MAL-ED          BANGLADESH                     >=38           69     151
24 months   MAL-ED          BANGLADESH                     <32            30     151
24 months   MAL-ED          BANGLADESH                     [32-38)        52     151
24 months   MAL-ED          BRAZIL                         >=38           30      79
24 months   MAL-ED          BRAZIL                         <32            18      79
24 months   MAL-ED          BRAZIL                         [32-38)        31      79
24 months   MAL-ED          INDIA                          >=38           36     161
24 months   MAL-ED          INDIA                          <32            53     161
24 months   MAL-ED          INDIA                          [32-38)        72     161
24 months   MAL-ED          NEPAL                          >=38           17      79
24 months   MAL-ED          NEPAL                          <32            15      79
24 months   MAL-ED          NEPAL                          [32-38)        47      79
24 months   MAL-ED          PERU                           >=38           26      79
24 months   MAL-ED          PERU                           <32            27      79
24 months   MAL-ED          PERU                           [32-38)        26      79
24 months   MAL-ED          SOUTH AFRICA                   >=38           65      89
24 months   MAL-ED          SOUTH AFRICA                   <32             8      89
24 months   MAL-ED          SOUTH AFRICA                   [32-38)        16      89
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100
24 months   PROBIT          BELARUS                        >=38          178    3909
24 months   PROBIT          BELARUS                        <32          3143    3909
24 months   PROBIT          BELARUS                        [32-38)       588    3909


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Error in self$observed_likelihood$get_likelihood(tmle_task, node, fold_number) : 
##   cached likelihood value is out of sync with updates
## lf_uuid: e397f51e-62b3-11ea-8a31-ac1f6b41467c
## task_uuid: d131320a516c5fb9a4534dfc5d52f6a1
## node: Y fold_number: validation
## cached_step: 0
## update_step: 1
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/5b98d079-0583-4fc8-b4b6-6d7bffd7e8ab/b59e7206-79cf-47ef-a1b7-4af9de5f4437/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA                      optimal              observed           0.2164520    0.0167927    0.4161113
Birth       COHORTS         PHILIPPINES                    optimal              observed          -0.2298292   -0.3443287   -0.1153297
Birth       MAL-ED          BANGLADESH                     optimal              observed          -1.0016765   -1.2796991   -0.7236538
Birth       MAL-ED          INDIA                          optimal              observed          -1.5772441   -2.4995331   -0.6549552
Birth       MAL-ED          PERU                           optimal              observed          -0.5338611   -0.8406513   -0.2270708
Birth       MAL-ED          SOUTH AFRICA                   optimal              observed          -0.7808965   -1.9093280    0.3475350
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.8293335   -1.2083262   -0.4503408
Birth       SAS-CompFeed    INDIA                          optimal              observed          -0.9072663   -1.1739408   -0.6405919
6 months    COHORTS         GUATEMALA                      optimal              observed          -1.8378422   -1.9606949   -1.7149894
6 months    COHORTS         PHILIPPINES                    optimal              observed          -1.1000353   -1.2103202   -0.9897503
6 months    LCNI-5          MALAWI                         optimal              observed          -1.6243145   -1.9183726   -1.3302564
6 months    MAL-ED          BANGLADESH                     optimal              observed          -1.0835036   -1.3246403   -0.8423669
6 months    MAL-ED          BRAZIL                         optimal              observed           0.3361922    0.0215066    0.6508777
6 months    MAL-ED          INDIA                          optimal              observed          -0.9537185   -1.1692622   -0.7381749
6 months    MAL-ED          NEPAL                          optimal              observed          -0.2372424   -0.4736400   -0.0008448
6 months    MAL-ED          PERU                           optimal              observed          -1.0605814   -1.2617695   -0.8593933
6 months    MAL-ED          SOUTH AFRICA                   optimal              observed          -0.8452819   -1.3848713   -0.3056925
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.6204640   -1.8744849   -1.3664432
6 months    PROBIT          BELARUS                        optimal              observed           0.1033202    0.0077779    0.1988626
6 months    SAS-CompFeed    INDIA                          optimal              observed          -1.3814239   -1.5870764   -1.1757713
6 months    SAS-FoodSuppl   INDIA                          optimal              observed          -1.9203631   -2.2261325   -1.6145936
24 months   COHORTS         GUATEMALA                      optimal              observed          -2.8245740   -2.9823596   -2.6667885
24 months   COHORTS         PHILIPPINES                    optimal              observed          -2.4380297   -2.5748695   -2.3011900
24 months   LCNI-5          MALAWI                         optimal              observed          -1.8209077   -2.2965712   -1.3452442
24 months   MAL-ED          BANGLADESH                     optimal              observed          -2.0610166   -2.2434294   -1.8786037
24 months   MAL-ED          BRAZIL                         optimal              observed           0.4215935    0.1431218    0.7000652
24 months   MAL-ED          INDIA                          optimal              observed          -1.8548444   -2.2383964   -1.4712923
24 months   MAL-ED          NEPAL                          optimal              observed          -1.5827602   -2.1015718   -1.0639486
24 months   MAL-ED          PERU                           optimal              observed          -1.6085312   -1.9241188   -1.2929436
24 months   MAL-ED          SOUTH AFRICA                   optimal              observed          -0.8253204   -1.8116409    0.1610001
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.6593785   -2.9202335   -2.3985235
24 months   PROBIT          BELARUS                        optimal              observed          -0.1441645   -0.4927704    0.2044415


### Parameter: E(Y)


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA                      observed             observed           0.1377035    0.0520086    0.2233984
Birth       COHORTS         PHILIPPINES                    observed             observed          -0.2468988   -0.2865742   -0.2072233
Birth       MAL-ED          BANGLADESH                     observed             observed          -1.0100752   -1.1744939   -0.8456565
Birth       MAL-ED          INDIA                          observed             observed          -1.3522222   -1.7800602   -0.9243843
Birth       MAL-ED          PERU                           observed             observed          -0.9334783   -1.1468995   -0.7200571
Birth       MAL-ED          SOUTH AFRICA                   observed             observed          -0.7345161   -1.1414567   -0.3275756
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.0947826   -1.3988341   -0.7907311
Birth       SAS-CompFeed    INDIA                          observed             observed          -1.4300160   -1.5090211   -1.3510109
6 months    COHORTS         GUATEMALA                      observed             observed          -1.8068353   -1.8758487   -1.7378219
6 months    COHORTS         PHILIPPINES                    observed             observed          -1.1421265   -1.1845116   -1.0997415
6 months    LCNI-5          MALAWI                         observed             observed          -1.6211321   -1.8052501   -1.4370141
6 months    MAL-ED          BANGLADESH                     observed             observed          -1.1980333   -1.3314438   -1.0646229
6 months    MAL-ED          BRAZIL                         observed             observed           0.0543249   -0.1697391    0.2783889
6 months    MAL-ED          INDIA                          observed             observed          -1.1778882   -1.3228601   -1.0329163
6 months    MAL-ED          NEPAL                          observed             observed          -0.7277004   -0.9122329   -0.5431679
6 months    MAL-ED          PERU                           observed             observed          -1.3317470   -1.5395361   -1.1239579
6 months    MAL-ED          SOUTH AFRICA                   observed             observed          -0.9078464   -1.1231179   -0.6925750
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.4744833   -1.6639782   -1.2849884
6 months    PROBIT          BELARUS                        observed             observed           0.1066722    0.0154121    0.1979322
6 months    SAS-CompFeed    INDIA                          observed             observed          -1.4006377   -1.4802862   -1.3209891
6 months    SAS-FoodSuppl   INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
24 months   COHORTS         GUATEMALA                      observed             observed          -2.9828012   -3.0482527   -2.9173497
24 months   COHORTS         PHILIPPINES                    observed             observed          -2.4204386   -2.4659064   -2.3749708
24 months   LCNI-5          MALAWI                         observed             observed          -1.7832432   -1.9856110   -1.5808754
24 months   MAL-ED          BANGLADESH                     observed             observed          -1.9893377   -2.1309533   -1.8477222
24 months   MAL-ED          BRAZIL                         observed             observed           0.1366034   -0.0878045    0.3610113
24 months   MAL-ED          INDIA                          observed             observed          -1.8803727   -2.0319827   -1.7287626
24 months   MAL-ED          NEPAL                          observed             observed          -1.5368987   -1.7259939   -1.3478035
24 months   MAL-ED          PERU                           observed             observed          -1.7017511   -1.8926845   -1.5108176
24 months   MAL-ED          SOUTH AFRICA                   observed             observed          -1.4819850   -1.6947019   -1.2692681
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.7648500   -2.9586982   -2.5710018
24 months   PROBIT          BELARUS                        observed             observed          -0.1382122   -0.4196601    0.1432356


### Parameter: PAR


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA                      optimal              observed          -0.0787485   -0.2691079    0.1116110
Birth       COHORTS         PHILIPPINES                    optimal              observed          -0.0170696   -0.1255148    0.0913756
Birth       MAL-ED          BANGLADESH                     optimal              observed          -0.0083987   -0.2266633    0.2098658
Birth       MAL-ED          INDIA                          optimal              observed           0.2250219   -0.5785048    1.0285486
Birth       MAL-ED          PERU                           optimal              observed          -0.3996172   -0.6841163   -0.1151180
Birth       MAL-ED          SOUTH AFRICA                   optimal              observed           0.0463804   -1.0187473    1.1115080
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2654491   -0.6273043    0.0964060
Birth       SAS-CompFeed    INDIA                          optimal              observed          -0.5227497   -0.7577613   -0.2877380
6 months    COHORTS         GUATEMALA                      optimal              observed           0.0310069   -0.0759207    0.1379344
6 months    COHORTS         PHILIPPINES                    optimal              observed          -0.0420912   -0.1441438    0.0599613
6 months    LCNI-5          MALAWI                         optimal              observed           0.0031824   -0.2559709    0.2623358
6 months    MAL-ED          BANGLADESH                     optimal              observed          -0.1145297   -0.3150071    0.0859476
6 months    MAL-ED          BRAZIL                         optimal              observed          -0.2818673   -0.5568918   -0.0068428
6 months    MAL-ED          INDIA                          optimal              observed          -0.2241697   -0.4160097   -0.0323296
6 months    MAL-ED          NEPAL                          optimal              observed          -0.4904581   -0.7326834   -0.2482328
6 months    MAL-ED          PERU                           optimal              observed          -0.2711656   -0.5177398   -0.0245915
6 months    MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0625646   -0.5843932    0.4592641
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1459807   -0.0780818    0.3700432
6 months    PROBIT          BELARUS                        optimal              observed           0.0033519   -0.0694972    0.0762011
6 months    SAS-CompFeed    INDIA                          optimal              observed          -0.0192138   -0.1826547    0.1442272
6 months    SAS-FoodSuppl   INDIA                          optimal              observed           0.0216788   -0.2780299    0.3213876
24 months   COHORTS         GUATEMALA                      optimal              observed          -0.1582271   -0.3045317   -0.0119226
24 months   COHORTS         PHILIPPINES                    optimal              observed           0.0175911   -0.1115738    0.1467560
24 months   LCNI-5          MALAWI                         optimal              observed           0.0376645   -0.3924764    0.4678053
24 months   MAL-ED          BANGLADESH                     optimal              observed           0.0716788   -0.0901457    0.2335034
24 months   MAL-ED          BRAZIL                         optimal              observed          -0.2849901   -0.5464090   -0.0235712
24 months   MAL-ED          INDIA                          optimal              observed          -0.0255283   -0.3859228    0.3348662
24 months   MAL-ED          NEPAL                          optimal              observed           0.0458615   -0.3996904    0.4914134
24 months   MAL-ED          PERU                           optimal              observed          -0.0932198   -0.3897920    0.2033523
24 months   MAL-ED          SOUTH AFRICA                   optimal              observed          -0.6566646   -1.5980452    0.2847160
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1054715   -0.3133771    0.1024341
24 months   PROBIT          BELARUS                        optimal              observed           0.0059522   -0.3207520    0.3326564
