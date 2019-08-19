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
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38           67     145
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32            27     145
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)        51     145
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38           27      68
Birth       ki0047075b-MAL-ED          BRAZIL                         <32            16      68
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)        25      68
Birth       ki0047075b-MAL-ED          INDIA                          >=38           27     131
Birth       ki0047075b-MAL-ED          INDIA                          <32            44     131
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)        60     131
Birth       ki0047075b-MAL-ED          NEPAL                          >=38           13      61
Birth       ki0047075b-MAL-ED          NEPAL                          <32             9      61
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)        39      61
Birth       ki0047075b-MAL-ED          PERU                           >=38           27      80
Birth       ki0047075b-MAL-ED          PERU                           <32            27      80
Birth       ki0047075b-MAL-ED          PERU                           [32-38)        26      80
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           53      76
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32             8      76
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        15      76
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           21      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             6      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        19      46
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38            4     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32           152     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)        31     187
Birth       ki1119695-PROBIT           BELARUS                        >=38          606   13390
Birth       ki1119695-PROBIT           BELARUS                        <32         10724   13390
Birth       ki1119695-PROBIT           BELARUS                        [32-38)      2060   13390
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
24 months   ki1135781-COHORTS          GUATEMALA                      >=38          285    1024
24 months   ki1135781-COHORTS          GUATEMALA                      <32           492    1024
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)       247    1024
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
![](/tmp/9121becf-ba58-4a6f-9ae0-b030255df784/0594dd5c-5b69-47c8-a55f-57ad6a78a8f6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9958493   -1.3379172   -0.6537815
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.6160711   -1.0367968   -0.1953454
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9564939   -1.3626286   -0.5503593
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.2540892   -1.7404903   -0.7676881
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.6074327   -0.9358123   -0.2790531
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.5578798   -1.2212941    0.1055344
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.9799374   -1.5292732   -0.4306016
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.2797515    1.1317231    1.4277800
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1427056   -0.0490667    0.3344779
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3383936   -0.4535931   -0.2231942
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9401946   -1.2005766   -0.6798126
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0038349   -0.3485868    0.3562566
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9827614   -1.2007168   -0.7648061
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3038135   -0.5311189   -0.0765081
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.0462613   -1.2437849   -0.8487376
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.8303143   -1.3893834   -0.2712452
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.4640370   -1.8137892   -1.1142847
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.5064150   -1.6224324   -1.3903976
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.6055206   -1.7973390   -1.4137023
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0568327   -0.0519718    0.1656372
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.8067675   -2.0143369   -1.5991982
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.1366248   -1.2370585   -1.0361912
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.4983096   -1.7172695   -1.2793498
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.9152581   -2.1955140   -1.6350022
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3260052    0.0244653    0.6275452
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.7884891   -2.1451627   -1.4318154
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.3929923   -1.8186860   -0.9672986
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.6129613   -1.9315645   -1.2943581
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.8431242   -1.7786151    0.0923667
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.7393997   -3.0048442   -2.4739552
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.2349468   -0.4913161    0.0214224
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.6869057   -2.8222927   -2.5515186
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.3576877   -2.5052619   -2.2101136
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.8007211   -2.2370276   -1.3644146


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9778621   -1.1318533   -0.8238709
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.7238235   -0.9850427   -0.4626043
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9720611   -1.1477959   -0.7963262
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7244262   -0.9767822   -0.4720703
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9256250   -1.1260052   -0.7252448
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.7181579   -0.9588306   -0.4774852
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.7745652   -1.0958030   -0.4533274
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3342255    1.1742855    1.4941656
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1377035    0.0520086    0.2233984
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2468988   -0.2865742   -0.2072233
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.1979000   -1.3314769   -1.0643231
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0554008   -0.1690575    0.2798592
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.1894617   -1.3346428   -1.0442806
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7256962   -0.9111717   -0.5402207
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3300201   -1.5375346   -1.1225056
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.9083333   -1.1234247   -0.6932420
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.4744833   -1.6639782   -1.2849884
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4006377   -1.4802862   -1.3209891
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1166130    0.0230160    0.2102100
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.8068353   -1.8758487   -1.7378219
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1421265   -1.1845116   -1.0997415
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6211321   -1.8052501   -1.4370141
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9567550   -2.0984173   -1.8150926
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.1588608   -0.0651474    0.3828689
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8373292   -1.9909581   -1.6837003
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.5030380   -1.6956243   -1.3104516
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.6960127   -1.8853995   -1.5066258
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.4697191   -1.6840618   -1.2553764
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.7318500   -2.9253580   -2.5383420
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1254844   -0.4225624    0.1715937
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.8513770   -2.9170436   -2.7857104
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.3958878   -2.4412250   -2.3505506
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.7689189   -1.9714091   -1.5664287


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0179873   -0.2562705    0.2922450
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1077524   -0.4422865    0.2267816
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0155671   -0.3323402    0.3012059
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.5296630    0.0900036    0.9693223
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.3181923   -0.6234751   -0.0129095
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1602781   -0.8104510    0.4898949
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2053722   -0.1871439    0.5978882
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.0544740   -0.0222064    0.1311544
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0050021   -0.1843969    0.1743928
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0914948   -0.0189749    0.2019646
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2577054   -0.5001494   -0.0152614
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0515659   -0.2526455    0.3557774
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2067003   -0.3996067   -0.0137938
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4218827   -0.6787112   -0.1650542
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2837588   -0.5289903   -0.0385273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0780190   -0.6247372    0.4686991
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0104464   -0.3110905    0.2901978
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.1057773   -0.0179218    0.2294765
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.2931636   -0.4760673   -0.1102598
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0597803   -0.0361689    0.1557294
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0000678   -0.1900633    0.1899277
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0055017   -0.0966842    0.0856809
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1228224   -0.3635247    0.1178799
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0414969   -0.2719100    0.1889162
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1671445   -0.4444268    0.1101378
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0488401   -0.3924039    0.2947237
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1100457   -0.4893686    0.2692772
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0830514   -0.3768706    0.2107678
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.6265949   -1.5145697    0.2613799
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0075497   -0.2035156    0.2186150
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.1094625   -0.2328843    0.4518092
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1644713   -0.2917335   -0.0372090
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0382001   -0.1787208    0.1023206
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0318022   -0.3657810    0.4293854
