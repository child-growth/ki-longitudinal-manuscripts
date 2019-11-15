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

**Outcome Variable:** haz

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
Birth       ki0047075b-MAL-ED       BANGLADESH                     1            179     213
Birth       ki0047075b-MAL-ED       BANGLADESH                     0             34     213
Birth       ki0047075b-MAL-ED       BRAZIL                         1             59      60
Birth       ki0047075b-MAL-ED       BRAZIL                         0              1      60
Birth       ki0047075b-MAL-ED       INDIA                          1             15      40
Birth       ki0047075b-MAL-ED       INDIA                          0             25      40
Birth       ki0047075b-MAL-ED       NEPAL                          1             25      26
Birth       ki0047075b-MAL-ED       NEPAL                          0              1      26
Birth       ki0047075b-MAL-ED       PERU                           1             52     208
Birth       ki0047075b-MAL-ED       PERU                           0            156     208
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1              0      95
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0             95      95
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     118
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            118     118
Birth       ki1017093-NIH-Birth     BANGLADESH                     1            231     608
Birth       ki1017093-NIH-Birth     BANGLADESH                     0            377     608
Birth       ki1017093b-PROVIDE      BANGLADESH                     1             43      45
Birth       ki1017093b-PROVIDE      BANGLADESH                     0              2      45
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1            632     721
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0             89     721
Birth       ki1114097-CONTENT       PERU                           1              1       2
Birth       ki1114097-CONTENT       PERU                           0              1       2
Birth       ki1135781-COHORTS       GUATEMALA                      1             45     491
Birth       ki1135781-COHORTS       GUATEMALA                      0            446     491
Birth       ki1135781-COHORTS       INDIA                          1           1767    4776
Birth       ki1135781-COHORTS       INDIA                          0           3009    4776
Birth       ki1135781-COHORTS       PHILIPPINES                    1            178    1191
Birth       ki1135781-COHORTS       PHILIPPINES                    0           1013    1191
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1          15220   22431
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0           7211   22431
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1           2181    2820
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0            639    2820
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
6 months    ki1135781-COHORTS       INDIA                          1           1881    4971
6 months    ki1135781-COHORTS       INDIA                          0           3090    4971
6 months    ki1135781-COHORTS       PHILIPPINES                    1            143    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    0            940    1083
6 months    ki1148112-LCNI-5        MALAWI                         1              3     812
6 months    ki1148112-LCNI-5        MALAWI                         0            809     812
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1          12038   16800
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0           4762   16800
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1           3734    4825
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0           1091    4825
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
24 months   ki1017093-NIH-Birth     BANGLADESH                     1            170     429
24 months   ki1017093-NIH-Birth     BANGLADESH                     0            259     429
24 months   ki1017093b-PROVIDE      BANGLADESH                     1              9       9
24 months   ki1017093b-PROVIDE      BANGLADESH                     0              0       9
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            433     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             70     503
24 months   ki1114097-CONTENT       PERU                           1            151     164
24 months   ki1114097-CONTENT       PERU                           0             13     164
24 months   ki1135781-COHORTS       GUATEMALA                      1             77     893
24 months   ki1135781-COHORTS       GUATEMALA                      0            816     893
24 months   ki1135781-COHORTS       INDIA                          1           1471    3751
24 months   ki1135781-COHORTS       INDIA                          0           2280    3751
24 months   ki1135781-COHORTS       PHILIPPINES                    1            126     990
24 months   ki1135781-COHORTS       PHILIPPINES                    0            864     990
24 months   ki1148112-LCNI-5        MALAWI                         1              2     572
24 months   ki1148112-LCNI-5        MALAWI                         0            570     572
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1           6111    8622
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0           2511    8622
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1           3683    4747
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0           1064    4747


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
![](/tmp/5404e880-fa65-462a-9fa5-c16eeaa10aa8/602cf494-ccfb-4271-a5c9-585edc1aa52a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5404e880-fa65-462a-9fa5-c16eeaa10aa8/602cf494-ccfb-4271-a5c9-585edc1aa52a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5404e880-fa65-462a-9fa5-c16eeaa10aa8/602cf494-ccfb-4271-a5c9-585edc1aa52a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                -1.0559540   -1.2067597   -0.9051483
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    NA                -1.0379750   -1.3829233   -0.6930267
Birth       ki0047075b-MAL-ED       INDIA         1                    NA                -1.2763689   -1.8561817   -0.6965562
Birth       ki0047075b-MAL-ED       INDIA         0                    NA                -1.2406660   -1.5713901   -0.9099419
Birth       ki0047075b-MAL-ED       PERU          1                    NA                -0.7898433   -1.0571048   -0.5225819
Birth       ki0047075b-MAL-ED       PERU          0                    NA                -0.9260934   -1.0648454   -0.7873414
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.8466802   -0.9985783   -0.6947820
Birth       ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.9841829   -1.0927540   -0.8756118
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.9130605   -0.9880661   -0.8380548
Birth       ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.8938480   -1.1313327   -0.6563632
Birth       ki1135781-COHORTS       GUATEMALA     1                    NA                 0.1564617   -0.1887981    0.5017214
Birth       ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0309533   -0.1447852    0.0828785
Birth       ki1135781-COHORTS       INDIA         1                    NA                -0.5428672   -0.5988613   -0.4868731
Birth       ki1135781-COHORTS       INDIA         0                    NA                -0.7698395   -0.8126409   -0.7270381
Birth       ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.0462300   -0.1016531    0.1941132
Birth       ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.3732475   -0.4420343   -0.3044607
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -1.5597506   -1.5821193   -1.5373818
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -1.6732492   -1.7100300   -1.6364684
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -1.5011947   -1.5573656   -1.4450239
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -1.6252883   -1.7245676   -1.5260091
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                -1.2027102   -1.3342617   -1.0711587
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    NA                -1.1937253   -1.4520080   -0.9354426
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                -1.1754624   -1.3423377   -1.0085871
6 months    ki0047075b-MAL-ED       INDIA         0                    NA                -1.1943148   -1.3654950   -1.0231345
6 months    ki0047075b-MAL-ED       PERU          1                    NA                -1.3197094   -1.5757446   -1.0636741
6 months    ki0047075b-MAL-ED       PERU          0                    NA                -1.3062864   -1.4319490   -1.1806238
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                -1.2936763   -1.4351690   -1.1521836
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -1.4748022   -1.5866641   -1.3629402
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -1.2174294   -1.2933991   -1.1414597
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -1.1432348   -1.3603737   -0.9260958
6 months    ki1114097-CONTENT       PERU          1                    NA                -0.2997094   -0.4794460   -0.1199729
6 months    ki1114097-CONTENT       PERU          0                    NA                -0.8032722   -1.3583728   -0.2481717
6 months    ki1135781-COHORTS       GUATEMALA     1                    NA                -1.6866533   -1.9622147   -1.4110919
6 months    ki1135781-COHORTS       GUATEMALA     0                    NA                -1.8923082   -1.9801359   -1.8044805
6 months    ki1135781-COHORTS       INDIA         1                    NA                -0.8527126   -0.9058056   -0.7996197
6 months    ki1135781-COHORTS       INDIA         0                    NA                -1.1701209   -1.2116659   -1.1285760
6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.6701556   -0.8555631   -0.4847480
6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                -1.2700025   -1.3405233   -1.1994817
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -1.2819311   -1.3076215   -1.2562406
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -1.4131211   -1.4538809   -1.3723613
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -1.3147487   -1.3565945   -1.2729028
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -1.4619493   -1.5392638   -1.3846348
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -1.9694281   -2.1086891   -1.8301672
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -2.0116079   -2.3217532   -1.7014626
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                -1.7520376   -1.9207584   -1.5833167
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -1.9638732   -2.1428547   -1.7848917
24 months   ki0047075b-MAL-ED       PERU          1                    NA                -1.7130552   -1.9526690   -1.4734415
24 months   ki0047075b-MAL-ED       PERU          0                    NA                -1.7715202   -1.9141331   -1.6289073
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                -2.0910162   -2.2612313   -1.9208011
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -2.3178215   -2.4429577   -2.1926853
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -1.4488273   -1.5408017   -1.3568529
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -1.3494622   -1.5657452   -1.1331791
24 months   ki1114097-CONTENT       PERU          1                    NA                -0.6535970   -0.8329365   -0.4742574
24 months   ki1114097-CONTENT       PERU          0                    NA                -1.0935404   -1.6104508   -0.5766300
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                -2.7408015   -3.0243010   -2.4573020
24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                -3.0163384   -3.0905140   -2.9421628
24 months   ki1135781-COHORTS       INDIA         1                    NA                -1.9120163   -1.9739733   -1.8500593
24 months   ki1135781-COHORTS       INDIA         0                    NA                -2.4224280   -2.4736236   -2.3712325
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                -1.7351020   -1.9138880   -1.5563160
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -2.7118230   -2.7836861   -2.6399598
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -1.9602727   -1.9917703   -1.9287752
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -2.1750257   -2.2220138   -2.1280376
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -1.7384754   -1.7793625   -1.6975884
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -1.9467126   -2.0065947   -1.8868305


### Parameter: E(Y)


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    NA                   NA                -1.0530516   -1.1896058   -0.9164975
Birth       ki0047075b-MAL-ED       INDIA         NA                   NA                -1.1375000   -1.4325178   -0.8424822
Birth       ki0047075b-MAL-ED       PERU          NA                   NA                -0.9131731   -1.0331160   -0.7932301
Birth       ki1017093-NIH-Birth     BANGLADESH    NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                -0.9131068   -0.9851939   -0.8410197
Birth       ki1135781-COHORTS       GUATEMALA     NA                   NA                -0.0275356   -0.1359303    0.0808590
Birth       ki1135781-COHORTS       INDIA         NA                   NA                -0.6777115   -0.7106054   -0.6448175
Birth       ki1135781-COHORTS       PHILIPPINES   NA                   NA                -0.3137364   -0.3764483   -0.2510244
Birth       kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                -1.5898288   -1.6090823   -1.5705753
Birth       kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                -1.5236135   -1.5727559   -1.4744711
6 months    ki0047075b-MAL-ED       BANGLADESH    NA                   NA                -1.2026806   -1.3203025   -1.0850586
6 months    ki0047075b-MAL-ED       INDIA         NA                   NA                -1.2087268   -1.3282418   -1.0892117
6 months    ki0047075b-MAL-ED       PERU          NA                   NA                -1.3196229   -1.4293681   -1.2098778
6 months    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                -1.2031037   -1.2749632   -1.1312442
6 months    ki1114097-CONTENT       PERU          NA                   NA                -0.3139217   -0.4868486   -0.1409948
6 months    ki1135781-COHORTS       GUATEMALA     NA                   NA                -1.8789210   -1.9609921   -1.7968498
6 months    ki1135781-COHORTS       INDIA         NA                   NA                -1.0414424   -1.0741113   -1.0087734
6 months    ki1135781-COHORTS       PHILIPPINES   NA                   NA                -1.1942936   -1.2608624   -1.1277248
6 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                -1.3134804   -1.3366079   -1.2903528
6 months    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                -1.3440477   -1.3813060   -1.3067894
24 months   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                -1.8779556   -2.0033207   -1.7525904
24 months   ki0047075b-MAL-ED       PERU          NA                   NA                -1.7535204   -1.8760973   -1.6309435
24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                -1.4417097   -1.5263855   -1.3570340
24 months   ki1114097-CONTENT       PERU          NA                   NA                -0.6962195   -0.8674103   -0.5250287
24 months   ki1135781-COHORTS       GUATEMALA     NA                   NA                -3.0050840   -3.0758338   -2.9343342
24 months   ki1135781-COHORTS       INDIA         NA                   NA                -2.2126633   -2.2518337   -2.1734929
24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                -2.5937576   -2.6629996   -2.5245156
24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                -2.0136975   -2.0413718   -1.9860232
24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                -1.7803708   -1.8158650   -1.7448765


### Parameter: ATE


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    1                  0.0179790   -0.3594914    0.3954494
Birth       ki0047075b-MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       INDIA         0                    1                  0.0357029   -0.6340803    0.7054861
Birth       ki0047075b-MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU          0                    1                 -0.1362501   -0.4381607    0.1656606
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH    0                    1                 -0.1375027   -0.3233960    0.0483905
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH    0                    1                  0.0192125   -0.2291402    0.2675652
Birth       ki1135781-COHORTS       GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS       GUATEMALA     0                    1                 -0.1874150   -0.5518771    0.1770472
Birth       ki1135781-COHORTS       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS       INDIA         0                    1                 -0.2269723   -0.2971313   -0.1568133
Birth       ki1135781-COHORTS       PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS       PHILIPPINES   0                    1                 -0.4194775   -0.5818413   -0.2571138
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    1                 -0.1134986   -0.1532521   -0.0737451
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    1                 -0.1240936   -0.2367062   -0.0114810
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    1                  0.0089849   -0.2811316    0.2991014
6 months    ki0047075b-MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA         0                    1                 -0.0188524   -0.2588053    0.2211005
6 months    ki0047075b-MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU          0                    1                  0.0134230   -0.2722865    0.2991324
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    1                 -0.1811259   -0.3603171   -0.0019347
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    1                  0.0741946   -0.1552768    0.3036661
6 months    ki1114097-CONTENT       PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT       PERU          0                    1                 -0.5035628   -1.0850990    0.0779734
6 months    ki1135781-COHORTS       GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS       GUATEMALA     0                    1                 -0.2056549   -0.4950416    0.0837318
6 months    ki1135781-COHORTS       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS       INDIA         0                    1                 -0.3174083   -0.3840740   -0.2507426
6 months    ki1135781-COHORTS       PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS       PHILIPPINES   0                    1                 -0.5998469   -0.7985739   -0.4011199
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    1                 -0.1311901   -0.1732525   -0.0891276
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    1                 -0.1472006   -0.2340661   -0.0603352
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    1                 -0.0421798   -0.3830504    0.2986908
24 months   ki0047075b-MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA         0                    1                 -0.2118356   -0.4571332    0.0334620
24 months   ki0047075b-MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU          0                    1                 -0.0584650   -0.3361184    0.2191885
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    1                 -0.2268053   -0.4354713   -0.0181392
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    1                  0.0993651   -0.1348031    0.3335333
24 months   ki1114097-CONTENT       PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT       PERU          0                    1                 -0.4399434   -0.9868372    0.1069504
24 months   ki1135781-COHORTS       GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS       GUATEMALA     0                    1                 -0.2755369   -0.5683374    0.0172636
24 months   ki1135781-COHORTS       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS       INDIA         0                    1                 -0.5104117   -0.5910910   -0.4297325
24 months   ki1135781-COHORTS       PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS       PHILIPPINES   0                    1                 -0.9767210   -1.1693463   -0.7840956
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 -0.2147530   -0.2661761   -0.1633298
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 -0.2082372   -0.2790920   -0.1373824


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0029024   -0.0553008    0.0611055
Birth       ki0047075b-MAL-ED       INDIA         1                    NA                 0.1388689   -0.2864999    0.5642377
Birth       ki0047075b-MAL-ED       PERU          1                    NA                -0.1233298   -0.3603596    0.1137001
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0843396   -0.2001295    0.0314503
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0000463   -0.0304530    0.0303603
Birth       ki1135781-COHORTS       GUATEMALA     1                    NA                -0.1839973   -0.5174260    0.1494314
Birth       ki1135781-COHORTS       INDIA         1                    NA                -0.1348443   -0.1806953   -0.0889932
Birth       ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.3599664   -0.5011077   -0.2188251
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0300782   -0.0417712   -0.0183853
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0224187   -0.0482686    0.0034311
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0000297   -0.0447291    0.0447884
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                -0.0332644   -0.1617386    0.0952099
6 months    ki0047075b-MAL-ED       PERU          1                    NA                 0.0000864   -0.2265473    0.2267201
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.1137058   -0.2246661   -0.0027455
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0143257   -0.0144910    0.0431424
6 months    ki1114097-CONTENT       PERU          1                    NA                -0.0142123   -0.0572675    0.0288430
6 months    ki1135781-COHORTS       GUATEMALA     1                    NA                -0.1922677   -0.4611398    0.0766045
6 months    ki1135781-COHORTS       INDIA         1                    NA                -0.1887297   -0.2323747   -0.1450848
6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.5241381   -0.7002827   -0.3479934
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0315493   -0.0423981   -0.0207005
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0292990   -0.0485279   -0.0100701
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0089681   -0.0567343    0.0387981
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                -0.1259180   -0.2601115    0.0082756
24 months   ki0047075b-MAL-ED       PERU          1                    NA                -0.0404652   -0.2547032    0.1737729
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.1280417   -0.2546637   -0.0014196
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0071175   -0.0248342    0.0390693
24 months   ki1114097-CONTENT       PERU          1                    NA                -0.0426225   -0.0891003    0.0038552
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                -0.2642825   -0.5400909    0.0115260
24 months   ki1135781-COHORTS       INDIA         1                    NA                -0.3006470   -0.3512910   -0.2500029
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.8586556   -1.0317061   -0.6856050
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0534248   -0.0686355   -0.0382140
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0418953   -0.0583114   -0.0254792
