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

agecat      studyid                    country                        fage       n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38           63     133
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32            25     133
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)        45     133
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38            6      18
Birth       ki0047075b-MAL-ED          BRAZIL                         <32             1      18
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)        11      18
Birth       ki0047075b-MAL-ED          INDIA                          >=38            7      27
Birth       ki0047075b-MAL-ED          INDIA                          <32             9      27
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)        11      27
Birth       ki0047075b-MAL-ED          NEPAL                          >=38            2       9
Birth       ki0047075b-MAL-ED          NEPAL                          <32             2       9
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)         5       9
Birth       ki0047075b-MAL-ED          PERU                           >=38           23      69
Birth       ki0047075b-MAL-ED          PERU                           <32            22      69
Birth       ki0047075b-MAL-ED          PERU                           [32-38)        24      69
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           17      31
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32             5      31
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)         9      31
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           19      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             9      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        18      46
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38           40    1249
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32          1045    1249
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)       164    1249
Birth       ki1119695-PROBIT           BELARUS                        >=38          606   13396
Birth       ki1119695-PROBIT           BELARUS                        <32         10729   13396
Birth       ki1119695-PROBIT           BELARUS                        [32-38)      2061   13396
Birth       ki1135781-COHORTS          GUATEMALA                      >=38          245     823
Birth       ki1135781-COHORTS          GUATEMALA                      <32           380     823
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)       198     823
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38          328    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    <32          2079    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)       537    2944
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38           44    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32          1125    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)       164    1333
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38           39     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32           264     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        77     380
6 months    ki1119695-PROBIT           BELARUS                        >=38          701   15183
6 months    ki1119695-PROBIT           BELARUS                        <32         12176   15183
6 months    ki1119695-PROBIT           BELARUS                        [32-38)      2306   15183
6 months    ki1135781-COHORTS          GUATEMALA                      >=38          275     929
6 months    ki1135781-COHORTS          GUATEMALA                      <32           421     929
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)       233     929
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38          300    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    <32          1829    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)       495    2624
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
24 months   ki1119695-PROBIT           BELARUS                        >=38          178    3909
24 months   ki1119695-PROBIT           BELARUS                        <32          3143    3909
24 months   ki1119695-PROBIT           BELARUS                        [32-38)       588    3909
24 months   ki1135781-COHORTS          GUATEMALA                      >=38          285    1021
24 months   ki1135781-COHORTS          GUATEMALA                      <32           491    1021
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)       245    1021
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38          270    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    <32          1666    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)       435    2371
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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/4938fe2e-2dff-41e5-ab0c-34bf59bc7e6f/6a63885d-ab9a-40b5-96f8-ba6159a9ca16/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0952982   -1.4524252   -0.7381712
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.6539469   -2.3247490   -0.9831447
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.5360144   -0.8694221   -0.2026067
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.7608362   -1.6990453    0.1773730
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.8562476   -1.2454278   -0.4670674
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.9072663   -1.1739408   -0.6405919
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3837276    1.2311228    1.5363324
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1691316   -0.0085289    0.3467920
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4167582   -0.5569170   -0.2765994
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0753418   -1.3237026   -0.8269809
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3096528    0.0013894    0.6179162
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9794630   -1.1953859   -0.7635401
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0763863   -0.0725439    0.2253165
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.0815972   -1.2885798   -0.8746146
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.7068125   -1.3400497   -0.0735754
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.6440297   -1.9310023   -1.3570571
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.3814239   -1.5870764   -1.1757713
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.9702403   -2.2299563   -1.7105243
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1840068    0.0854512    0.2825625
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.8090146   -1.9317850   -1.6862442
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.1364424   -1.2342505   -1.0386343
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.4518697   -1.7390030   -1.1647363
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.9415112   -2.2058706   -1.6771517
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3985090    0.0950143    0.7020037
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.9134625   -2.2528020   -1.5741230
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.3485635   -1.7911477   -0.9059794
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -2.0383726   -2.3605141   -1.7162310
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.9221002   -1.7534819   -0.0907185
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.6400333   -2.9105951   -2.3694714
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0333458   -0.3635631    0.2968716
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.8942218   -3.0441701   -2.7442735
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.4781767   -2.6171675   -2.3391860
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.6275834   -2.1093318   -1.1458350


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0100752   -1.1744939   -0.8456565
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.3522222   -1.7800602   -0.9243843
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9334783   -1.1468995   -0.7200571
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.7345161   -1.1414567   -0.3275756
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.0947826   -1.3988341   -0.7907311
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4300160   -1.5090211   -1.3510109
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3357428    1.1757840    1.4957016
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1377035    0.0520086    0.2233984
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2468988   -0.2865742   -0.2072233
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.1976000   -1.3310224   -1.0641776
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0554008   -0.1690575    0.2798592
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.1772360   -1.3224216   -1.0320505
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7256962   -0.9111717   -0.5402207
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3335141   -1.5408101   -1.1262180
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.9083333   -1.1234247   -0.6932420
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.4744833   -1.6639782   -1.2849884
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4006377   -1.4802862   -1.3209891
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1166130    0.0230160    0.2102100
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.8068353   -1.8758487   -1.7378219
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1421265   -1.1845116   -1.0997415
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6211321   -1.8052501   -1.4370141
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9894040   -2.1310968   -1.8477111
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.1370886   -0.0872159    0.3613931
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8784783   -2.0301474   -1.7268092
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.5492405   -1.7384624   -1.3600186
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7029114   -1.8930361   -1.5127867
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.4898315   -1.7035677   -1.2760952
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.7648500   -2.9586982   -2.5710018
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1254844   -0.4225624    0.1715937
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.9828012   -3.0482527   -2.9173497
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.4204386   -2.4659064   -2.3749708
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.7832432   -1.9856110   -1.5808754


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0852230   -0.1866055    0.3570515
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.3017246   -0.3001963    0.9036456
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.3974639   -0.6967824   -0.0981453
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0263200   -0.8514670    0.9041071
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2385350   -0.6068758    0.1298057
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5227497   -0.7577613   -0.2877380
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0479848   -0.1022695    0.0062999
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0314280   -0.2016016    0.1387456
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.1698594    0.0370160    0.3027028
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1222582   -0.3211167    0.0766002
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.2542520   -0.5253617    0.0168577
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1977730   -0.3898116   -0.0057344
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.8020825   -1.0231233   -0.5810417
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2519169   -0.5045096    0.0006759
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2015208   -0.8192483    0.4162067
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1695464   -0.0585575    0.3976502
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0192138   -0.1826547    0.1442272
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed           0.0715561   -0.1669781    0.3100904
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0673939   -0.1639087    0.0291210
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0021793   -0.1040300    0.1083886
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0056841   -0.0940679    0.0826997
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1692624   -0.4561465    0.1176217
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0478928   -0.2655740    0.1697883
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.2614204   -0.5393674    0.0165266
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0349842   -0.2858859    0.3558544
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2006770   -0.5889177    0.1875637
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.3354612    0.0637357    0.6071866
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.5677313   -1.3580498    0.2225873
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1248167   -0.3366570    0.0870236
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0921386   -0.5054948    0.3212176
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0885794   -0.2262775    0.0491188
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0577381   -0.0736135    0.1890897
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1556598   -0.5889020    0.2775823
