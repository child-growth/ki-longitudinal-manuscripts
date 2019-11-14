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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** impsan

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                 country                        impsan    n_cell       n
----------  ----------------------  -----------------------------  -------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1            168     201
Birth       ki0047075b-MAL-ED       BANGLADESH                     0             33     201
Birth       ki0047075b-MAL-ED       BRAZIL                         1             56      57
Birth       ki0047075b-MAL-ED       BRAZIL                         0              1      57
Birth       ki0047075b-MAL-ED       INDIA                          1             14      39
Birth       ki0047075b-MAL-ED       INDIA                          0             25      39
Birth       ki0047075b-MAL-ED       NEPAL                          1             24      25
Birth       ki0047075b-MAL-ED       NEPAL                          0              1      25
Birth       ki0047075b-MAL-ED       PERU                           1             50     203
Birth       ki0047075b-MAL-ED       PERU                           0            153     203
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1              0      94
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0             94      94
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     110
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            110     110
Birth       ki1017093-NIH-Birth     BANGLADESH                     1            222     575
Birth       ki1017093-NIH-Birth     BANGLADESH                     0            353     575
Birth       ki1017093b-PROVIDE      BANGLADESH                     1             43      45
Birth       ki1017093b-PROVIDE      BANGLADESH                     0              2      45
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1            610     696
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0             86     696
Birth       ki1114097-CONTENT       PERU                           1              1       2
Birth       ki1114097-CONTENT       PERU                           0              1       2
Birth       ki1135781-COHORTS       GUATEMALA                      1             43     449
Birth       ki1135781-COHORTS       GUATEMALA                      0            406     449
Birth       ki1135781-COHORTS       INDIA                          1           1685    4461
Birth       ki1135781-COHORTS       INDIA                          0           2776    4461
Birth       ki1135781-COHORTS       PHILIPPINES                    1            177    1126
Birth       ki1135781-COHORTS       PHILIPPINES                    0            949    1126
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1          15611   22057
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0           6446   22057
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1           1859    2394
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0            535    2394
6 months    ki0047075b-MAL-ED       BANGLADESH                     1            202     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     0             38     240
6 months    ki0047075b-MAL-ED       BRAZIL                         1            205     209
6 months    ki0047075b-MAL-ED       BRAZIL                         0              4     209
6 months    ki0047075b-MAL-ED       INDIA                          1            108     233
6 months    ki0047075b-MAL-ED       INDIA                          0            125     233
6 months    ki0047075b-MAL-ED       NEPAL                          1            235     236
6 months    ki0047075b-MAL-ED       NEPAL                          0              1     236
6 months    ki0047075b-MAL-ED       PERU                           1             65     263
6 months    ki0047075b-MAL-ED       PERU                           0            198     263
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0            240     244
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            238     238
6 months    ki1017093-NIH-Birth     BANGLADESH                     1            205     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0            332     537
6 months    ki1017093b-PROVIDE      BANGLADESH                     1             11      11
6 months    ki1017093b-PROVIDE      BANGLADESH                     0              0      11
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1            615     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0             89     704
6 months    ki1114097-CONTENT       PERU                           1            201     215
6 months    ki1114097-CONTENT       PERU                           0             14     215
6 months    ki1135781-COHORTS       GUATEMALA                      1             67     658
6 months    ki1135781-COHORTS       GUATEMALA                      0            591     658
6 months    ki1135781-COHORTS       INDIA                          1           1879    4964
6 months    ki1135781-COHORTS       INDIA                          0           3085    4964
6 months    ki1135781-COHORTS       PHILIPPINES                    1            143    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    0            940    1083
6 months    ki1148112-LCNI-5        MALAWI                         1              3     812
6 months    ki1148112-LCNI-5        MALAWI                         0            809     812
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1          11975   16715
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0           4740   16715
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1           3734    4827
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0           1093    4827
24 months   ki0047075b-MAL-ED       BANGLADESH                     1            181     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0             31     212
24 months   ki0047075b-MAL-ED       BRAZIL                         1            166     169
24 months   ki0047075b-MAL-ED       BRAZIL                         0              3     169
24 months   ki0047075b-MAL-ED       INDIA                          1            104     225
24 months   ki0047075b-MAL-ED       INDIA                          0            121     225
24 months   ki0047075b-MAL-ED       NEPAL                          1            227     228
24 months   ki0047075b-MAL-ED       NEPAL                          0              1     228
24 months   ki0047075b-MAL-ED       PERU                           1             47     196
24 months   ki0047075b-MAL-ED       PERU                           0            149     196
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            231     235
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            207     207
24 months   ki1017093-NIH-Birth     BANGLADESH                     1            170     428
24 months   ki1017093-NIH-Birth     BANGLADESH                     0            258     428
24 months   ki1017093b-PROVIDE      BANGLADESH                     1              9       9
24 months   ki1017093b-PROVIDE      BANGLADESH                     0              0       9
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            433     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             70     503
24 months   ki1114097-CONTENT       PERU                           1            151     164
24 months   ki1114097-CONTENT       PERU                           0             13     164
24 months   ki1135781-COHORTS       GUATEMALA                      1             77     903
24 months   ki1135781-COHORTS       GUATEMALA                      0            826     903
24 months   ki1135781-COHORTS       INDIA                          1           1457    3724
24 months   ki1135781-COHORTS       INDIA                          0           2267    3724
24 months   ki1135781-COHORTS       PHILIPPINES                    1            124     993
24 months   ki1135781-COHORTS       PHILIPPINES                    0            869     993
24 months   ki1148112-LCNI-5        MALAWI                         1              2     556
24 months   ki1148112-LCNI-5        MALAWI                         0            554     556
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1           6040    8528
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0           2488    8528
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1           3671    4730
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0           1059    4730


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/ebd0f6af-c8ec-4d06-9e32-0d073b259ef2/34059a6c-5105-4a6f-a974-f356fc295694/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ebd0f6af-c8ec-4d06-9e32-0d073b259ef2/34059a6c-5105-4a6f-a974-f356fc295694/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ebd0f6af-c8ec-4d06-9e32-0d073b259ef2/34059a6c-5105-4a6f-a974-f356fc295694/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.9827261   -1.1442502   -0.8212020
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.8881218   -1.2714468   -0.5047968
Birth       ki0047075b-MAL-ED       INDIA         1                    NA                -1.1104949   -1.7077723   -0.5132175
Birth       ki0047075b-MAL-ED       INDIA         0                    NA                -0.8611645   -1.2483115   -0.4740174
Birth       ki0047075b-MAL-ED       PERU          1                    NA                -0.1610340   -0.3804517    0.0583836
Birth       ki0047075b-MAL-ED       PERU          0                    NA                 0.0057797   -0.1576399    0.1691994
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                -1.3569542   -1.5225546   -1.1913538
Birth       ki1017093-NIH-Birth     BANGLADESH    0                    NA                -1.3468438   -1.4624406   -1.2312469
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -1.2313026   -1.3208133   -1.1417919
Birth       ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -1.3519004   -1.6112895   -1.0925114
Birth       ki1135781-COHORTS       GUATEMALA     1                    NA                -1.1812675   -1.8601666   -0.5023685
Birth       ki1135781-COHORTS       GUATEMALA     0                    NA                -0.8926582   -1.0357925   -0.7495240
Birth       ki1135781-COHORTS       INDIA         1                    NA                -0.9467641   -1.0091281   -0.8844000
Birth       ki1135781-COHORTS       INDIA         0                    NA                -0.9912286   -1.0358006   -0.9466567
Birth       ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.8820889   -1.0625061   -0.7016717
Birth       ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.6473423   -0.7282751   -0.5664096
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.7323885   -0.7533935   -0.7113834
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.7988347   -0.8331589   -0.7645105
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.6706059   -0.7300674   -0.6111445
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.7274369   -0.8306649   -0.6242088
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.1238590   -0.2651913    0.0174734
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.1533259   -0.5282116    0.2215597
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                -0.6723705   -0.8556654   -0.4890755
6 months    ki0047075b-MAL-ED       INDIA         0                    NA                -0.7236850   -0.9023338   -0.5450362
6 months    ki0047075b-MAL-ED       PERU          1                    NA                 0.9497151    0.6250792    1.2743510
6 months    ki0047075b-MAL-ED       PERU          0                    NA                 1.0659168    0.9078183    1.2240153
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.3368261   -0.4763911   -0.1972612
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.5153468   -0.6324937   -0.3981999
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0358593   -0.0479105    0.1196290
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.0112840   -0.2578535    0.2352854
6 months    ki1114097-CONTENT       PERU          1                    NA                 1.0741927    0.9521015    1.1962840
6 months    ki1114097-CONTENT       PERU          0                    NA                 0.9620246    0.5268172    1.3972320
6 months    ki1135781-COHORTS       GUATEMALA     1                    NA                 0.2164660   -0.0576226    0.4905545
6 months    ki1135781-COHORTS       GUATEMALA     0                    NA                 0.1506978    0.0582849    0.2431107
6 months    ki1135781-COHORTS       INDIA         1                    NA                -0.5903087   -0.6447884   -0.5358290
6 months    ki1135781-COHORTS       INDIA         0                    NA                -0.7873670   -0.8296847   -0.7450494
6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.2295957   -0.3960533   -0.0631382
6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.2925924   -0.3628555   -0.2223293
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.5710412   -0.5940457   -0.5480367
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.6553462   -0.6954483   -0.6152441
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.3561478   -0.3978859   -0.3144097
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.5243698   -0.6090606   -0.4396790
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.7698951   -0.9007427   -0.6390476
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -1.0397530   -1.3821793   -0.6973266
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                -0.8568596   -1.0364911   -0.6772281
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -1.0851482   -1.2335912   -0.9367053
24 months   ki0047075b-MAL-ED       PERU          1                    NA                 0.0322333   -0.2911823    0.3556489
24 months   ki0047075b-MAL-ED       PERU          0                    NA                 0.1248959   -0.0177185    0.2675103
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.8186283   -0.9650821   -0.6721745
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.9750538   -1.1056415   -0.8444660
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.6271701   -0.7323398   -0.5220004
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.5269229   -0.7566089   -0.2972369
24 months   ki1114097-CONTENT       PERU          1                    NA                 0.5571377    0.4106832    0.7035921
24 months   ki1114097-CONTENT       PERU          0                    NA                 0.5381226    0.2457930    0.8304522
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                -0.0947363   -0.2807513    0.0912787
24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.2941739   -0.3572318   -0.2311160
24 months   ki1135781-COHORTS       INDIA         1                    NA                -0.5678196   -0.6216876   -0.5139515
24 months   ki1135781-COHORTS       INDIA         0                    NA                -0.7327098   -0.7756206   -0.6897991
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.5499145   -0.7111151   -0.3887139
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.6822669   -0.7450038   -0.6195300
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -1.2832928   -1.3117165   -1.2548692
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -1.3473263   -1.3928553   -1.3017973
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -1.2097367   -1.2446741   -1.1747993
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -1.2833544   -1.3573314   -1.2093774


### Parameter: E(Y)


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    NA                   NA                -0.9721393   -1.1211171   -0.8231615
Birth       ki0047075b-MAL-ED       INDIA         NA                   NA                -0.9441026   -1.2397919   -0.6484132
Birth       ki0047075b-MAL-ED       PERU          NA                   NA                -0.0381281   -0.1669868    0.0907307
Birth       ki1017093-NIH-Birth     BANGLADESH    NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                -1.2402802   -1.3249395   -1.1556208
Birth       ki1135781-COHORTS       GUATEMALA     NA                   NA                -0.9294432   -1.0701697   -0.7887168
Birth       ki1135781-COHORTS       INDIA         NA                   NA                -0.9771733   -1.0119896   -0.9423570
Birth       ki1135781-COHORTS       PHILIPPINES   NA                   NA                -0.6841030   -0.7582767   -0.6099293
Birth       kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                -0.7501016   -0.7679528   -0.7322503
Birth       kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                -0.6882498   -0.7406539   -0.6358456
6 months    ki0047075b-MAL-ED       BANGLADESH    NA                   NA                -0.1340556   -0.2631866   -0.0049245
6 months    ki0047075b-MAL-ED       INDIA         NA                   NA                -0.7020815   -0.8292964   -0.5748666
6 months    ki0047075b-MAL-ED       PERU          NA                   NA                 1.0402218    0.9168903    1.1635533
6 months    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                 0.0336790   -0.0458848    0.1132428
6 months    ki1114097-CONTENT       PERU          NA                   NA                 1.0684318    0.9515274    1.1853362
6 months    ki1135781-COHORTS       GUATEMALA     NA                   NA                 0.1458511    0.0589571    0.2327450
6 months    ki1135781-COHORTS       INDIA         NA                   NA                -0.7104855   -0.7428053   -0.6781657
6 months    ki1135781-COHORTS       PHILIPPINES   NA                   NA                -0.2830286   -0.3471028   -0.2189545
6 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                -0.5926506   -0.6122450   -0.5730562
6 months    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                -0.3901595   -0.4274150   -0.3529041
24 months   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                -0.8201887   -0.9423967   -0.6979806
24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                -0.9496667   -1.0657716   -0.8335618
24 months   ki0047075b-MAL-ED       PERU          NA                   NA                 0.1069898   -0.0141601    0.2281397
24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                -0.6115706   -0.7075788   -0.5155624
24 months   ki1114097-CONTENT       PERU          NA                   NA                 0.5668293    0.4302437    0.7034148
24 months   ki1135781-COHORTS       GUATEMALA     NA                   NA                -0.2861905   -0.3461594   -0.2262216
24 months   ki1135781-COHORTS       INDIA         NA                   NA                -0.6606874   -0.6938402   -0.6275347
24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                -0.6564149   -0.7144543   -0.5983756
24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                -1.2986562   -1.3220237   -1.2752887
24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                -1.2231776   -1.2550332   -1.1913220


### Parameter: ATE


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    1                  0.0946043   -0.3212107    0.5104192
Birth       ki0047075b-MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       INDIA         0                    1                  0.2493305   -0.4928524    0.9915133
Birth       ki0047075b-MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU          0                    1                  0.1668138   -0.1073244    0.4409520
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH    0                    1                  0.0101104   -0.1914955    0.2117163
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 -0.1205978   -0.3951045    0.1539089
Birth       ki1135781-COHORTS       GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS       GUATEMALA     0                    1                  0.2886093   -0.4056031    0.9828218
Birth       ki1135781-COHORTS       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS       INDIA         0                    1                 -0.0444646   -0.1211041    0.0321750
Birth       ki1135781-COHORTS       PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS       PHILIPPINES   0                    1                  0.2347466    0.0374710    0.4320222
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    1                 -0.0664462   -0.1041240   -0.0287684
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    1                 -0.0568309   -0.1741519    0.0604901
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    1                 -0.0294669   -0.4306456    0.3717117
6 months    ki0047075b-MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA         0                    1                 -0.0513145   -0.3080763    0.2054473
6 months    ki0047075b-MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU          0                    1                  0.1162017   -0.2497841    0.4821876
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    1                 -0.1785207   -0.3601055    0.0030642
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 -0.0471433   -0.3072844    0.2129978
6 months    ki1114097-CONTENT       PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT       PERU          0                    1                 -0.1121681   -0.5648848    0.3405486
6 months    ki1135781-COHORTS       GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS       GUATEMALA     0                    1                 -0.0657681   -0.3547486    0.2232123
6 months    ki1135781-COHORTS       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS       INDIA         0                    1                 -0.1970584   -0.2659500   -0.1281668
6 months    ki1135781-COHORTS       PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS       PHILIPPINES   0                    1                 -0.0629966   -0.2441637    0.1181704
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    1                 -0.0843050   -0.1289061   -0.0397039
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    1                 -0.1682220   -0.2617680   -0.0746760
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    1                 -0.2698578   -0.6375757    0.0978601
24 months   ki0047075b-MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA         0                    1                 -0.2282886   -0.4632953    0.0067180
24 months   ki0047075b-MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU          0                    1                  0.0926626   -0.2608362    0.4461614
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    1                 -0.1564255   -0.3527357    0.0398848
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    1                  0.1002472   -0.1521620    0.3526565
24 months   ki1114097-CONTENT       PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT       PERU          0                    1                 -0.0190151   -0.3459347    0.3079045
24 months   ki1135781-COHORTS       GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS       GUATEMALA     0                    1                 -0.1994376   -0.3964990   -0.0023763
24 months   ki1135781-COHORTS       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS       INDIA         0                    1                 -0.1648902   -0.2333031   -0.0964774
24 months   ki1135781-COHORTS       PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS       PHILIPPINES   0                    1                 -0.1323524   -0.3056390    0.0409342
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 -0.0640335   -0.1163635   -0.0117035
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 -0.0736176   -0.1540233    0.0067881


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0105868   -0.0558395    0.0770131
Birth       ki0047075b-MAL-ED       INDIA         1                    NA                 0.1663924   -0.3267306    0.6595154
Birth       ki0047075b-MAL-ED       PERU          1                    NA                 0.1229060   -0.0819593    0.3277712
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0070325   -0.1176188    0.1316837
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0089776   -0.0430440    0.0250889
Birth       ki1135781-COHORTS       GUATEMALA     1                    NA                 0.2518243   -0.3885673    0.8922160
Birth       ki1135781-COHORTS       INDIA         1                    NA                -0.0304092   -0.0805660    0.0197475
Birth       ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.1979859    0.0291020    0.3668698
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0177131   -0.0275346   -0.0078916
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0176439   -0.0436859    0.0083982
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0101966   -0.0676740    0.0472809
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                -0.0297111   -0.1676101    0.1081880
6 months    ki0047075b-MAL-ED       PERU          1                    NA                 0.0905067   -0.2117507    0.3927641
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.1105776   -0.2231212    0.0019659
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0021803   -0.0347041    0.0303435
6 months    ki1114097-CONTENT       PERU          1                    NA                -0.0057610   -0.0328904    0.0213685
6 months    ki1135781-COHORTS       GUATEMALA     1                    NA                -0.0706149   -0.3371950    0.1959652
6 months    ki1135781-COHORTS       INDIA         1                    NA                -0.1201768   -0.1652671   -0.0750866
6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.0534329   -0.2132941    0.1064283
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0216094   -0.0328234   -0.0103955
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0340117   -0.0537052   -0.0143182
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0502935   -0.1032749    0.0026878
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                -0.0928070   -0.2217924    0.0361783
24 months   ki0047075b-MAL-ED       PERU          1                    NA                 0.0747565   -0.2177472    0.3672601
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0929508   -0.2113566    0.0254551
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0155995   -0.0193142    0.0505132
24 months   ki1114097-CONTENT       PERU          1                    NA                 0.0096916   -0.0231575    0.0425407
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                -0.1914542   -0.3724819   -0.0104265
24 months   ki1135781-COHORTS       INDIA         1                    NA                -0.0928678   -0.1355678   -0.0501679
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.1065004   -0.2603654    0.0473645
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0153634   -0.0302848   -0.0004420
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0134409   -0.0296070    0.0027253
