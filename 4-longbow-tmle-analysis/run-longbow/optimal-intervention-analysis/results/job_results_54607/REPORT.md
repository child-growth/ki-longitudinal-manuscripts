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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/85dd3642-a4b8-4a82-a5f0-d6cf3c75c50d/5b9bf5fa-f420-4fec-8b69-16e355ca7d1d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9405622   -1.2628242   -0.6183002
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.6916997   -2.4354150   -0.9479844
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.5170424   -0.8322775   -0.2018073
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.6814846   -2.0799085    0.7169393
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.8552588   -1.2415798   -0.4689378
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.9072663   -1.1739408   -0.6405919
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3068487    1.1473526    1.4663447
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1845462   -0.0280590    0.3971515
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4401691   -0.5491110   -0.3312273
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9688599   -1.2514909   -0.6862289
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0720222   -0.3591552    0.2151108
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9950938   -1.2077886   -0.7823989
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.9543765   -1.4790569   -0.4296960
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.0365741   -1.2278600   -0.8452883
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.8964398   -1.4438399   -0.3490397
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.5372718   -1.8541600   -1.2203837
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.3814239   -1.5870764   -1.1757713
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.8903904   -2.1320067   -1.6487741
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0618913   -0.0324154    0.1561980
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.7822647   -1.9583438   -1.6061856
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.0789777   -1.1716297   -0.9863257
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.6493478   -1.8636908   -1.4350048
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -2.0477019   -2.3794311   -1.7159726
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3335471    0.0368361    0.6302580
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.8220491   -2.1665233   -1.4775749
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.3280970   -1.7757960   -0.8803979
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.8217926   -2.1553252   -1.4882600
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.9838741   -1.8826334   -0.0851148
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.6367515   -2.8971763   -2.3763267
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.2321349   -0.4970107    0.0327408
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.8606147   -2.9929454   -2.7282841
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.2867013   -2.4276052   -2.1457973
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.7426710   -2.2985907   -1.1867513


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
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.1980333   -1.3314438   -1.0646229
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0543249   -0.1697391    0.2783889
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.1778882   -1.3228601   -1.0329163
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7277004   -0.9122329   -0.5431679
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3317470   -1.5395361   -1.1239579
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.9078464   -1.1231179   -0.6925750
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.4744833   -1.6639782   -1.2849884
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4006377   -1.4802862   -1.3209891
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1166130    0.0230160    0.2102100
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.8068353   -1.8758487   -1.7378219
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1421265   -1.1845116   -1.0997415
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6211321   -1.8052501   -1.4370141
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9893377   -2.1309533   -1.8477222
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.1366034   -0.0878045    0.3610113
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8803727   -2.0319827   -1.7287626
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.5368987   -1.7259939   -1.3478035
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7017511   -1.8926845   -1.5108176
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.4819850   -1.6947019   -1.2692681
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.7648500   -2.9586982   -2.5710018
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1254844   -0.4225624    0.1715937
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.9828012   -3.0482527   -2.9173497
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.4204386   -2.4659064   -2.3749708
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.7832432   -1.9856110   -1.5808754


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0695130   -0.3175816    0.1785555
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.3394775   -0.3170164    0.9959714
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.4164359   -0.7247753   -0.1080964
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0530315   -1.3088591    1.2027961
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2395238   -0.6066979    0.1276503
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5227497   -0.7577613   -0.2877380
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.0288941   -0.0358218    0.0936099
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0468427   -0.2453515    0.1516661
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.1932704    0.0889057    0.2976350
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2291734   -0.4865573    0.0282104
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1263471   -0.1449390    0.3976331
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1827944   -0.3693237    0.0037349
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.2266760   -0.2551379    0.7084900
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2951729   -0.5425604   -0.0477853
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0114066   -0.5471191    0.5243058
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0627885   -0.1786751    0.3042521
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0192138   -0.1826547    0.1442272
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.0082938   -0.2397593    0.2231717
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0547217   -0.0251755    0.1346188
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0245706   -0.1842425    0.1351014
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0631488   -0.1469087    0.0206111
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0282157   -0.1937232    0.2501547
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0583641   -0.2217187    0.3384470
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1969437   -0.4722951    0.0784077
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0583236   -0.3824039    0.2657568
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2088018   -0.6044349    0.1868314
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.1200415   -0.1737203    0.4138033
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4981109   -1.3546833    0.3584615
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1280985   -0.3339141    0.0777171
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.1066506   -0.1382555    0.3515567
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1221865   -0.2459639    0.0015910
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1337374   -0.2683355    0.0008607
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0405723   -0.5347596    0.4536151
