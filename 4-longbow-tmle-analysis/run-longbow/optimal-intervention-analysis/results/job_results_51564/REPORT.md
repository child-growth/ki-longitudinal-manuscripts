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

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        hdlvry    n_cell      n
----------  -------------------------  -----------------------------  -------  -------  -----
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0             86     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              2     88
Birth       ki1000108-IRC              INDIA                          0            337    343
Birth       ki1000108-IRC              INDIA                          1              6    343
Birth       ki1000109-EE               PAKISTAN                       0              1      1
Birth       ki1000109-EE               PAKISTAN                       1              0      1
Birth       ki1000304b-SAS-CompFeed    INDIA                          0              6    160
Birth       ki1000304b-SAS-CompFeed    INDIA                          1            154    160
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0             19     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              4     23
Birth       ki1135781-COHORTS          INDIA                          0           2763   4389
Birth       ki1135781-COHORTS          INDIA                          1           1626   4389
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              8    263
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            255    263
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0             43    681
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1            638    681
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0            357    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              8    365
6 months    ki1000108-IRC              INDIA                          0            400    408
6 months    ki1000108-IRC              INDIA                          1              8    408
6 months    ki1000109-EE               PAKISTAN                       0            252    374
6 months    ki1000109-EE               PAKISTAN                       1            122    374
6 months    ki1000304b-SAS-CompFeed    INDIA                          0            147   1088
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            941   1088
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             76    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1            304    380
6 months    ki1017093b-PROVIDE         BANGLADESH                     0            433    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            149    582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            554    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            161    715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1888   1920
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             32   1920
6 months    ki1113344-GMS-Nepal        NEPAL                          0            129    527
6 months    ki1113344-GMS-Nepal        NEPAL                          1            398    527
6 months    ki1135781-COHORTS          INDIA                          0           2896   4694
6 months    ki1135781-COHORTS          INDIA                          1           1798   4694
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0             39    334
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            295    334
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0           1082   4042
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1           2960   4042
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            361    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              8    369
24 months   ki1000108-IRC              INDIA                          0            401    409
24 months   ki1000108-IRC              INDIA                          1              8    409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0            432    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            146    578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            391    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            123    514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      6
24 months   ki1113344-GMS-Nepal        NEPAL                          0            120    466
24 months   ki1113344-GMS-Nepal        NEPAL                          1            346    466
24 months   ki1135781-COHORTS          INDIA                          0           2214   3533
24 months   ki1135781-COHORTS          INDIA                          1           1319   3533
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             34    289
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            255    289
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0           1032   3993
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2961   3993


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Error in while (go <= 0) { : missing value where TRUE/FALSE needed
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/db356a8b-3f9e-4e9b-a896-42e084273dc0/127adcb3-64ad-4de7-a4be-59d131b5e587/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.9917805   -1.1803806   -0.8031805
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.9648244   -1.0168354   -0.9128135
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1749968   -0.8193582    0.4693646
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2490889   -0.7142174    0.2160397
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2938028   -0.9820233    0.3944176
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.7211577   -1.2138586   -0.2284567
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.6905052   -0.8334818   -0.5475286
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5482190   -0.6566426   -0.4397954
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.8314989   -1.0948412   -0.5681565
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0699968   -0.2009596    0.0609660
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0606787   -0.0286317    0.1499891
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0504780   -0.2138834    0.3148395
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.4604913   -0.6266690   -0.2943137
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6518656   -0.6964336   -0.6072977
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5323313   -0.8970310   -0.1676316
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2738477   -0.3571520   -0.1905433
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.6721215   -1.0531849   -0.2910581
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.7385396   -0.8313679   -0.6457113
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8554030   -0.9611280   -0.7496779
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5123083   -0.6619766   -0.3626400
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1545527   -1.2898099   -1.0192955
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.5389707   -0.5836340   -0.4943074
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.0459321   -1.6237377   -0.4681264
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1997338   -1.2660728   -1.1333948


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9755867   -1.0106993   -0.9404741
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.8162738   -0.9311489   -0.7013987
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3701909   -0.4509242   -0.2894576
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5045068   -0.6566169   -0.3523968
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -0.7158824   -0.8295258   -0.6022389
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6734421   -0.8121314   -0.5347528
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0688763    0.0147308    0.1230218
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6002688   -0.6889771   -0.5115605
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.7160077   -0.7492815   -0.6827338
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.6044910   -0.7122040   -0.4967781
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3760651   -0.4191017   -0.3330285
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5436992   -0.6434110   -0.4439874
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1197461   -1.2105714   -1.0289207
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6520577   -0.6860033   -0.6181122
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2989273   -1.4377964   -1.1600583
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2421463   -1.2763113   -1.2079812


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0188026   -0.0515540    0.0139489
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0107622   -0.0477008    0.0261763
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6412770   -1.3005425    0.0179886
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1211020   -0.5649814    0.3227773
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2107040   -0.8993726    0.4779645
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.1222279   -0.3422444    0.5867003
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.0253772   -0.1013044    0.0505501
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1252231   -0.2649123    0.0144661
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.1806590   -0.4224678    0.0611497
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1383737   -0.2411876   -0.0355599
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0309164   -0.0753084    0.0134755
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0183983   -0.2438762    0.2806728
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1397775   -0.2827987    0.0032437
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0641421   -0.0955444   -0.0327397
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0721597   -0.4110340    0.2667146
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1022174   -0.1700594   -0.0343754
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.1284223   -0.2549889    0.5118335
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0072754   -0.0170531    0.0025023
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0325382   -0.1004947    0.0354183
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0980419   -0.2080228    0.0119390
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0348066   -0.0767753    0.1463886
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.1130870   -0.1431834   -0.0829907
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2529953   -0.7801958    0.2742052
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0424124   -0.0983564    0.0135315
