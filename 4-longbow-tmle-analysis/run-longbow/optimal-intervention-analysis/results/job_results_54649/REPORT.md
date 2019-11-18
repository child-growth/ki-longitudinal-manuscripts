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

**Outcome Variable:** whz

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
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38           61     128
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32            23     128
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)        44     128
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38            5      16
Birth       ki0047075b-MAL-ED          BRAZIL                         <32             1      16
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)        10      16
Birth       ki0047075b-MAL-ED          INDIA                          >=38            7      25
Birth       ki0047075b-MAL-ED          INDIA                          <32             8      25
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)        10      25
Birth       ki0047075b-MAL-ED          NEPAL                          >=38            2       9
Birth       ki0047075b-MAL-ED          NEPAL                          <32             2       9
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)         5       9
Birth       ki0047075b-MAL-ED          PERU                           >=38           23      67
Birth       ki0047075b-MAL-ED          PERU                           <32            21      67
Birth       ki0047075b-MAL-ED          PERU                           [32-38)        23      67
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           16      30
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32             5      30
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)         9      30
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           17      44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             9      44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        18      44
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38           34    1101
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32           923    1101
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)       144    1101
Birth       ki1119695-PROBIT           BELARUS                        >=38          606   13339
Birth       ki1119695-PROBIT           BELARUS                        <32         10681   13339
Birth       ki1119695-PROBIT           BELARUS                        [32-38)      2052   13339
Birth       ki1135781-COHORTS          GUATEMALA                      >=38          222     735
Birth       ki1135781-COHORTS          GUATEMALA                      <32           337     735
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)       176     735
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38          303    2797
Birth       ki1135781-COHORTS          PHILIPPINES                    <32          1981    2797
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)       513    2797
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38           44    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32          1122    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)       165    1331
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38           40     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32           264     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        76     380
6 months    ki1119695-PROBIT           BELARUS                        >=38          701   15180
6 months    ki1119695-PROBIT           BELARUS                        <32         12175   15180
6 months    ki1119695-PROBIT           BELARUS                        [32-38)      2304   15180
6 months    ki1135781-COHORTS          GUATEMALA                      >=38          276     930
6 months    ki1135781-COHORTS          GUATEMALA                      <32           421     930
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)       233     930
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38          299    2622
6 months    ki1135781-COHORTS          PHILIPPINES                    <32          1828    2622
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)       495    2622
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
24 months   ki1119695-PROBIT           BELARUS                        >=38          176    3849
24 months   ki1119695-PROBIT           BELARUS                        <32          3095    3849
24 months   ki1119695-PROBIT           BELARUS                        [32-38)       578    3849
24 months   ki1135781-COHORTS          GUATEMALA                      >=38          287    1032
24 months   ki1135781-COHORTS          GUATEMALA                      <32           495    1032
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)       250    1032
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38          271    2376
24 months   ki1135781-COHORTS          PHILIPPINES                    <32          1670    2376
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)       435    2376
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
![](/tmp/225f89a6-187c-4d0c-acd6-f4ad5324508a/ac67ee1a-f783-4480-91c0-c64f3bd01a73/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8090645   -1.2412661   -0.3768629
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8322380   -1.4486317   -0.2158442
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.4642039    0.1116181    0.8167897
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2163844   -0.4600219    0.8927907
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3396682   -0.1068373    0.7861738
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5447912   -0.8407381   -0.2488443
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.0082849   -1.1679470   -0.8486228
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.1869186   -1.4328831   -0.9409540
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.7322830   -0.9398245   -0.5247415
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1001990   -0.2250598    0.4254578
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.6473637    0.1019212    1.1928062
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9880900   -1.3681588   -0.6080212
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1588671   -0.9366528    1.2543871
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.4165142    0.8362389    1.9967896
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1064081   -0.6661059    0.8789221
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6441792    0.0532736    1.2350848
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.7077075   -0.9908767   -0.4245383
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.2939618   -1.5580377   -1.0298859
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5965327    0.5167265    0.6763390
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.3785607    0.2559130    0.5012085
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4467304   -0.5941976   -0.2992632
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.3278771    0.0795771    0.5761771
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9842058   -1.3353058   -0.6331057
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0695512   -0.5775023    0.7166047
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7321548   -1.0199504   -0.4443592
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1077084   -0.2245946    0.4400115
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.0810715   -0.2533319    0.4154749
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2005508   -0.4489113    0.8500128
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3206511    0.0461481    0.5951542
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.8641761    0.7400563    0.9882959
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2476107   -0.3758188   -0.1194026
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6869813   -0.7974150   -0.5765475
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.1501589   -0.3091898    0.6095075


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0375000   -1.2165024   -0.8584976
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9464000   -1.3554144   -0.5373856
Birth       ki0047075b-MAL-ED          PERU                           observed             observed           0.0529851   -0.1628445    0.2688147
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.0073333   -0.5181900    0.5035233
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7115909    0.4034609    1.0197209
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6685468   -0.8459689   -0.4911247
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1395817   -1.3497976   -0.9293658
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0580408   -1.1607065   -0.9553751
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7309760   -0.7780724   -0.6838797
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1950111   -0.3575506   -0.0324716
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9365401    0.6541549    1.2189253
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7292288   -0.8803893   -0.5780683
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1749789   -0.0644624    0.4144202
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0182129    0.7827641    1.2536616
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5158052    0.2517895    0.7798210
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5271500    0.3177522    0.7365478
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6641059   -0.8040033   -0.5242086
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5785982    0.5189015    0.6382948
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1925914    0.1205037    0.2646791
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2878032   -0.3296319   -0.2459745
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.5060377    0.3131397    0.6989358
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8844702   -1.0263143   -0.7426261
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.5448101    0.2082313    0.8813890
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.8968012   -1.0287307   -0.7648718
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.2794304   -0.4767398   -0.0821210
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1198207   -0.0845120    0.3241534
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4414045    0.2336389    0.6491701
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0766500   -0.1115307    0.2648307
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6857534    0.5745271    0.7969798
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2760853   -0.3311930   -0.2209775
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6087584   -0.6459824   -0.5715345
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.1979730   -0.4244675    0.0285215


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2284355   -0.5996254    0.1427544
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1141620   -0.7386126    0.5102885
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.4112189   -0.7428746   -0.0795631
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2237177   -0.7271809    0.2797454
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3719227   -0.0114129    0.7552583
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1237556   -0.3654605    0.1179493
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1312968   -0.2380366   -0.0245569
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1288777   -0.0996076    0.3573631
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0013070   -0.2021144    0.2047283
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2952101   -0.5992391    0.0088189
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2891764   -0.1527520    0.7311048
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.2588612   -0.0747773    0.5924998
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0161118   -0.9823172    1.0145407
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.3983014   -0.8480024    0.0513996
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4093971   -0.2902388    1.1090331
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1170292   -0.6459472    0.4118888
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0436016   -0.1504717    0.2376749
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed           0.2818039    0.0328628    0.5307450
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0179346   -0.0833358    0.0474667
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1859694   -0.2983648   -0.0735739
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.1589272    0.0149309    0.3029234
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.1781607   -0.0660448    0.4223661
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0997356   -0.2082993    0.4077705
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.4752590   -0.1311474    1.0816653
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1646464   -0.4390912    0.1097983
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3871388   -0.7017630   -0.0725146
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.0387492   -0.2536184    0.3311169
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2408537   -0.3698869    0.8515944
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2440011   -0.4479824   -0.0400198
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1784227   -0.3071411   -0.0497042
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0284745   -0.1445303    0.0875813
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0782228   -0.0264457    0.1828914
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.3481318   -0.7323292    0.0360655
