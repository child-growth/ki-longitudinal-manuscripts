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

**Intervention Variable:** nchldlt5

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nrooms
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        nchldlt5    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
Birth       ki1000108-IRC              INDIA                          1               84     274
Birth       ki1000108-IRC              INDIA                          2+             190     274
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               18      19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+               1      19
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            12104   12571
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+             467   12571
6 months    ki1000108-IRC              INDIA                          1               89     288
6 months    ki1000108-IRC              INDIA                          2+             199     288
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              426     435
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+               9     435
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              507     512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+               5     512
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1391    1453
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+              62    1453
6 months    ki1148112-LCNI-5           MALAWI                         1              390     453
6 months    ki1148112-LCNI-5           MALAWI                         2+              63     453
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            10887   11252
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+             365   11252
24 months   ki1000108-IRC              INDIA                          1               89     290
24 months   ki1000108-IRC              INDIA                          2+             201     290
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              423     431
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+               8     431
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              357     361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+               4     361
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                5       5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               0       5
24 months   ki1148112-LCNI-5           MALAWI                         1              283     327
24 months   ki1148112-LCNI-5           MALAWI                         2+              44     327
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             5454    5673
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+             219    5673


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/706e34e4-6121-4650-9e9e-1ea11dd70717/9c120ca8-5f55-4967-be55-1a67e3f3119a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.3958333   -0.7473737   -0.0442928
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.5537783   -1.6279379   -1.4796187
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.2931215   -1.4904179   -1.0958252
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.2173914   -1.3769874   -1.0577955
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.9851537   -1.1772701   -0.7930374
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3772463   -0.6756157   -0.0788768
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.6173653   -1.7160376   -1.5186930
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1202917   -1.1568220   -1.0837614
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.6287011   -1.8418974   -1.4155048
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.3846612   -1.7014669   -1.0678555
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.8256749   -1.9429890   -1.7083608
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.6368064   -1.7101201   -1.5634926


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3088686   -0.4962872   -0.1214501
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.6491457   -1.6736931   -1.6245982
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2046701   -1.3666765   -1.0426638
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0590153   -1.1475823   -0.9704483
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1510254   -1.2352824   -1.0667684
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5175195   -0.5745106   -0.4605284
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6323620   -1.7237497   -1.5409743
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3246241   -1.3512538   -1.2979943
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.8129023   -1.9234787   -1.7023259
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5068677   -1.6032866   -1.4104489
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8484862   -1.9573785   -1.7395940
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.9717645   -2.0050051   -1.9385239


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.0869646   -0.2049350    0.3788643
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0953674   -0.1698346   -0.0209001
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.0884514   -0.0407127    0.2176155
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.1583761    0.0204074    0.2963448
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1658717   -0.3718266    0.0400832
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1402732   -0.4311946    0.1506482
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0149967   -0.0491366    0.0191432
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2043324   -0.2369025   -0.1717623
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1842012   -0.3574861   -0.0109162
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1222066   -0.4459433    0.2015301
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0228113   -0.0638797    0.0182570
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.3349581   -0.4055448   -0.2643715
