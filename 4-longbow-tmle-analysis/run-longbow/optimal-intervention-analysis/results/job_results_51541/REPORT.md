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

**Intervention Variable:** cleanck

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nhh
* W_nchldlt5
* trth2o
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_trth2o
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country        cleanck    n_cell     n
----------  -------------------------  -------------  --------  -------  ----
Birth       ki0047075b-MAL-ED          PERU           1               1     2
Birth       ki0047075b-MAL-ED          PERU           0               1     2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   1               1     2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   0               1     2
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1              38    90
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0              52    90
Birth       ki1000108-IRC              INDIA          1             218   378
Birth       ki1000108-IRC              INDIA          0             160   378
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1              12    20
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0               8    20
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1             163   369
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0             206   369
6 months    ki1000108-IRC              INDIA          1             230   398
6 months    ki1000108-IRC              INDIA          0             168   398
6 months    ki1017093b-PROVIDE         BANGLADESH     1             482   583
6 months    ki1017093b-PROVIDE         BANGLADESH     0             101   583
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1             329   545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0             216   545
6 months    ki1113344-GMS-Nepal        NEPAL          1               8   504
6 months    ki1113344-GMS-Nepal        NEPAL          0             496   504
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1             163   372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0             209   372
24 months   ki1000108-IRC              INDIA          1             231   400
24 months   ki1000108-IRC              INDIA          0             169   400
24 months   ki1017093b-PROVIDE         BANGLADESH     1             479   577
24 months   ki1017093b-PROVIDE         BANGLADESH     0              98   577
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1             199   410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0             211   410
24 months   ki1113344-GMS-Nepal        NEPAL          1               7   446
24 months   ki1113344-GMS-Nepal        NEPAL          0             439   446


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/16abdb93-5098-4a50-b467-715201001c28/fa9cf7e3-48b1-4108-8b52-ce1a10a9d398/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -0.8403151   -1.1446112   -0.5360189
Birth       ki1000108-IRC              INDIA        optimal              observed          -0.2158088   -0.4878655    0.0562479
Birth       ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -1.2331108   -1.9416665   -0.5245551
6 months    ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -1.0810351   -1.2915321   -0.8705381
6 months    ki1000108-IRC              INDIA        optimal              observed          -1.1209242   -1.3161804   -0.9256680
6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -1.0118008   -1.0937515   -0.9298502
6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -1.1903523   -1.3153504   -1.0653541
6 months    ki1113344-GMS-Nepal        NEPAL        optimal              observed          -1.1380741   -1.3880907   -0.8880575
24 months   ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -2.1918501   -2.3409050   -2.0427951
24 months   ki1000108-IRC              INDIA        optimal              observed          -1.6230867   -1.7521025   -1.4940709
24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -1.4792483   -1.5664723   -1.3920242
24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -1.3019760   -1.4252452   -1.1787069
24 months   ki1113344-GMS-Nepal        NEPAL        optimal              observed          -1.3978272   -1.5405481   -1.2551063


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        observed             observed          -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA        observed             observed          -0.3176455   -0.4788394   -0.1564516
Birth       ki1017093c-NIH-Crypto      BANGLADESH   observed             observed          -0.9960000   -1.4776141   -0.5143859
6 months    ki1000108-CMC-V-BCS-2002   INDIA        observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA        observed             observed          -1.2373869   -1.3694835   -1.1052903
6 months    ki1017093b-PROVIDE         BANGLADESH   observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH   observed             observed          -1.1482385   -1.2287866   -1.0676904
6 months    ki1113344-GMS-Nepal        NEPAL        observed             observed          -1.3468287   -1.4295445   -1.2641129
24 months   ki1000108-CMC-V-BCS-2002   INDIA        observed             observed          -2.5593683   -2.6601027   -2.4586339
24 months   ki1000108-IRC              INDIA        observed             observed          -1.7881333   -1.8826438   -1.6936229
24 months   ki1017093b-PROVIDE         BANGLADESH   observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH   observed             observed          -1.3304146   -1.4194311   -1.2413981
24 months   ki1113344-GMS-Nepal        NEPAL        observed             observed          -1.8935015   -1.9813928   -1.8056102


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -0.1251294   -0.4105671    0.1603083
Birth       ki1000108-IRC              INDIA        optimal              observed          -0.1018367   -0.3036528    0.0999794
Birth       ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed           0.2371108   -0.2609211    0.7351427
6 months    ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -0.3424157   -0.5036531   -0.1811782
6 months    ki1000108-IRC              INDIA        optimal              observed          -0.1164627   -0.2322311   -0.0006943
6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.0753032   -0.1134964   -0.0371100
6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed           0.0421137   -0.0605547    0.1447821
6 months    ki1113344-GMS-Nepal        NEPAL        optimal              observed          -0.2087546   -0.4665334    0.0490242
24 months   ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -0.3675182   -0.4901407   -0.2448957
24 months   ki1000108-IRC              INDIA        optimal              observed          -0.1650466   -0.2490293   -0.0810640
24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.1068696   -0.1500505   -0.0636887
24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.0284386   -0.1204272    0.0635500
24 months   ki1113344-GMS-Nepal        NEPAL        optimal              observed          -0.4956743   -0.6606743   -0.3306744
