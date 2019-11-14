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
![](/tmp/564beb28-b2fd-45fe-9fb4-0a5df43817df/4eb165aa-3fc9-420a-8eec-0c40eebe5e20/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8589807   -1.2824241   -0.4355374
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6594764   -1.4793913    0.1604385
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.4223607    0.0924103    0.7523112
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1712939   -1.5770416    1.2344538
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3517283   -0.1890461    0.8925027
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5447912   -0.8407381   -0.2488443
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.0717964   -1.2435059   -0.9000870
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.2546265   -1.5248041   -0.9844489
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.8488127   -1.0627270   -0.6348984
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1304541   -0.0974237    0.3583320
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.5310367    0.0863207    0.9757527
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7897565   -1.2002385   -0.3792745
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1351948   -0.5262520    0.2558624
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.2927562    0.7989242    1.7865882
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1166156   -0.3804670    0.6136982
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5572439    0.0316409    1.0828469
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.7077075   -0.9908767   -0.4245383
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.1668430   -1.4728362   -0.8608498
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.6689551    0.6024545    0.7354556
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.4229713    0.2742782    0.5716644
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2168647   -0.3676336   -0.0660958
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.2200348   -0.0708475    0.5109172
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1751871   -1.4766825   -0.8736918
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1766167   -0.3784299    0.7316634
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7744228   -1.0961894   -0.4526562
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1938618   -0.1457375    0.5334610
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.0980947   -0.1949612    0.3911506
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1781266   -0.5177863    0.1615332
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3259859    0.0576484    0.5943234
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.8240152    0.6961329    0.9518976
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2377892   -0.3770994   -0.0984791
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.7219274   -0.8494167   -0.5944380
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.1762551   -0.2709278    0.6234380


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0341406   -1.2130997   -0.8551816
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9464000   -1.3554144   -0.5373856
Birth       ki0047075b-MAL-ED          PERU                           observed             observed           0.0529851   -0.1628445    0.2688147
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.0073333   -0.5181900    0.5035233
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7115909    0.4034609    1.0197209
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6685468   -0.8459689   -0.4911247
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1395817   -1.3497976   -0.9293658
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0580408   -1.1607065   -0.9553751
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7309760   -0.7780724   -0.6838797
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1955333   -0.3580029   -0.0330638
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9393882    0.6572880    1.2214884
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7302484   -0.8815603   -0.5789365
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1778270   -0.0614697    0.4171237
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0206627    0.7854137    1.2559116
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5153558    0.2512666    0.7794450
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5271500    0.3177522    0.7365478
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6641059   -0.8040033   -0.5242086
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5785982    0.5189015    0.6382948
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1925914    0.1205037    0.2646791
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2878032   -0.3296319   -0.2459745
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.5060377    0.3131397    0.6989358
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8861589   -1.0281048   -0.7442131
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.5441139    0.2074310    0.8807969
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.8977019   -1.0295625   -0.7658412
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.2838608   -0.4798646   -0.0878569
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1203797   -0.0839887    0.3247482
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4541011    0.2467238    0.6614784
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0766500   -0.1115307    0.2648307
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6857534    0.5745271    0.7969798
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2760853   -0.3311930   -0.2209775
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6087584   -0.6459824   -0.5715345
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.1979730   -0.4244675    0.0285215


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1751599   -0.5474387    0.1971189
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2869236   -1.0387792    0.4649319
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.3693756   -0.6843967   -0.0543546
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1639606   -1.0038538    1.3317750
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3598626   -0.0616067    0.7813320
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1237556   -0.3654605    0.1179493
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0677853   -0.1821376    0.0465671
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1965857   -0.0552516    0.4484231
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.1178366   -0.0909463    0.3266195
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3259875   -0.5606656   -0.0913093
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.4083515   -0.0101198    0.8268229
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0595080   -0.3164229    0.4354390
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.3130218   -0.0154482    0.6414918
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2720935   -0.6671906    0.1230035
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.3987402    0.0243737    0.7731067
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0300939   -0.4935430    0.4333552
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0436016   -0.1504717    0.2376749
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed           0.1546851   -0.1373216    0.4466918
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0903569   -0.1411880   -0.0395258
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2303799   -0.3620420   -0.0987178
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0709385   -0.2176098    0.0757328
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.2860029    0.0307014    0.5413044
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.2890282    0.0314517    0.5466047
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3674972   -0.1455290    0.8805234
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1232790   -0.4241204    0.1775623
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4777226   -0.8020929   -0.1533522
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.0222850   -0.2479361    0.2925061
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.6322277    0.2593838    1.0050716
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2493359   -0.4488234   -0.0498484
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1382618   -0.2589946   -0.0175290
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0382961   -0.1651036    0.0885115
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.1131690   -0.0073402    0.2336781
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.3742281   -0.7480220   -0.0004341
