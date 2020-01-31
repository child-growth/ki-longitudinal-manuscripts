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
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1              37    86
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0              49    86
Birth       ki1000108-IRC              INDIA          1             198   337
Birth       ki1000108-IRC              INDIA          0             139   337
Birth       ki1017093b-PROVIDE         BANGLADESH     1             433   532
Birth       ki1017093b-PROVIDE         BANGLADESH     0              99   532
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1             336   543
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0             207   543
Birth       ki1113344-GMS-Nepal        NEPAL          1               9   570
Birth       ki1113344-GMS-Nepal        NEPAL          0             561   570
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1             162   368
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0             206   368
6 months    ki1000108-IRC              INDIA          1             229   398
6 months    ki1000108-IRC              INDIA          0             169   398
6 months    ki1017093b-PROVIDE         BANGLADESH     1             497   603
6 months    ki1017093b-PROVIDE         BANGLADESH     0             106   603
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1             329   545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0             216   545
6 months    ki1113344-GMS-Nepal        NEPAL          1               8   505
6 months    ki1113344-GMS-Nepal        NEPAL          0             497   505
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1             163   372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0             209   372
24 months   ki1000108-IRC              INDIA          1             231   400
24 months   ki1000108-IRC              INDIA          0             169   400
24 months   ki1017093b-PROVIDE         BANGLADESH     1             480   579
24 months   ki1017093b-PROVIDE         BANGLADESH     0              99   579
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1             199   410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0             211   410
24 months   ki1113344-GMS-Nepal        NEPAL          1               5   434
24 months   ki1113344-GMS-Nepal        NEPAL          0             429   434


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
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/3d52cf27-6857-4dee-9975-2bdf9105886b/865875e4-99d8-40cd-a0c1-df8ef1eeae7d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -0.3941017   -0.8463604    0.0581569
Birth       ki1000108-IRC              INDIA        optimal              observed          -0.7782339   -1.0260961   -0.5303717
Birth       ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -1.2338500   -1.3388491   -1.1288509
Birth       ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -1.1132798   -1.2495795   -0.9769801
Birth       ki1113344-GMS-Nepal        NEPAL        optimal              observed          -1.1083260   -1.2026469   -1.0140051
6 months    ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -0.3534242   -0.5992342   -0.1076142
6 months    ki1000108-IRC              INDIA        optimal              observed          -0.5511735   -0.7770890   -0.3252581
6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.1350203   -0.2247137   -0.0453269
6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed           0.0697877   -0.0605443    0.2001197
6 months    ki1113344-GMS-Nepal        NEPAL        optimal              observed          -0.7449245   -0.8797453   -0.6101036
24 months   ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -0.2446829   -0.4223136   -0.0670521
24 months   ki1000108-IRC              INDIA        optimal              observed          -0.6683831   -0.7935091   -0.5432570
24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.8183072   -0.9068275   -0.7297869
24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.4774033   -0.6477336   -0.3070731
24 months   ki1113344-GMS-Nepal        NEPAL        optimal              observed          -0.8444335   -1.3369878   -0.3518791


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        observed             observed          -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA        observed             observed          -0.9860831   -1.1746070   -0.7975591
Birth       ki1017093b-PROVIDE         BANGLADESH   observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH   observed             observed          -1.1841160   -1.2799097   -1.0883224
Birth       ki1113344-GMS-Nepal        NEPAL        observed             observed          -1.1144386   -1.2074618   -1.0214154
6 months    ki1000108-CMC-V-BCS-2002   INDIA        observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA        observed             observed          -0.6153685   -0.7522411   -0.4784959
6 months    ki1017093b-PROVIDE         BANGLADESH   observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH   observed             observed           0.0640826   -0.0252594    0.1534245
6 months    ki1113344-GMS-Nepal        NEPAL        observed             observed          -0.6230627   -0.7131245   -0.5330009
24 months   ki1000108-CMC-V-BCS-2002   INDIA        observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA        observed             observed          -0.7479083   -0.8403586   -0.6554581
24 months   ki1017093b-PROVIDE         BANGLADESH   observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH   observed             observed          -0.5518293   -0.6602513   -0.4434072
24 months   ki1113344-GMS-Nepal        NEPAL        observed             observed          -1.1247312   -1.2195989   -1.0298635


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -0.0707238   -0.4049174    0.2634697
Birth       ki1000108-IRC              INDIA        optimal              observed          -0.2078492   -0.3685046   -0.0471938
Birth       ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.0646086   -0.1463484    0.0171311
Birth       ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.0708362   -0.1658898    0.0242174
Birth       ki1113344-GMS-Nepal        NEPAL        optimal              observed          -0.0061126   -0.0204894    0.0082642
6 months    ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -0.1492525   -0.3428018    0.0442969
6 months    ki1000108-IRC              INDIA        optimal              observed          -0.0641950   -0.2404053    0.1120154
6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.0640703   -0.1045372   -0.0236034
6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.0057051   -0.1014231    0.0900129
6 months    ki1113344-GMS-Nepal        NEPAL        optimal              observed           0.1218618    0.0080776    0.2356459
24 months   ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -0.3124677   -0.4543138   -0.1706216
24 months   ki1000108-IRC              INDIA        optimal              observed          -0.0795252   -0.1597355    0.0006850
24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.0745598   -0.1241788   -0.0249409
24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.0744259   -0.1944601    0.0456082
24 months   ki1113344-GMS-Nepal        NEPAL        optimal              observed          -0.2802977   -0.7697662    0.2091707
