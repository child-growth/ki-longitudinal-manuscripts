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
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   1               1     2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   0               1     2
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1              37    88
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0              51    88
Birth       ki1000108-IRC              INDIA          1             198   337
Birth       ki1000108-IRC              INDIA          0             139   337
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1              11    17
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0               6    17
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1             162   368
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0             206   368
6 months    ki1000108-IRC              INDIA          1             229   398
6 months    ki1000108-IRC              INDIA          0             169   398
6 months    ki1017093b-PROVIDE         BANGLADESH     1             481   582
6 months    ki1017093b-PROVIDE         BANGLADESH     0             101   582
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
24 months   ki1017093b-PROVIDE         BANGLADESH     1             480   578
24 months   ki1017093b-PROVIDE         BANGLADESH     0              98   578
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1             199   410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0             211   410
24 months   ki1113344-GMS-Nepal        NEPAL          1               7   445
24 months   ki1113344-GMS-Nepal        NEPAL          0             438   445


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



```
## Error in combiners[[result_name]](results[[result_name]]) : 
##   Class attribute on column 1 of item 8 does not match with column 1 of item 1.
## Error in self$compute_step() : 
##   Error in combiners[[result_name]](results[[result_name]]) : 
##   Class attribute on column 1 of item 8 does not match with column 1 of item 1.
## 
## Error in self$compute_step() : Error in self$compute_step() : 
##   Error in combiners[[result_name]](results[[result_name]]) : 
##   Class attribute on column 1 of item 8 does not match with column 1 of item 1.
```




# Results Detail

## Results Plots
![](/tmp/ad332cf4-8e8a-45bf-87a9-871a0a7916db/ea1f4550-5c1e-4e7b-900b-a98b761e2bff/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -0.2680252   -0.8098164    0.2737660
Birth       ki1000108-IRC              INDIA        optimal              observed          -0.7909570   -1.0381207   -0.5437933
6 months    ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -0.3881377   -0.6102478   -0.1660276
6 months    ki1000108-IRC              INDIA        optimal              observed          -0.6371747   -0.8587411   -0.4156083
6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.1550555   -0.2525808   -0.0575302
6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed           0.1270230   -0.0000205    0.2540665
6 months    ki1113344-GMS-Nepal        NEPAL        optimal              observed          -0.6207704   -0.7127537   -0.5287871
24 months   ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -0.2718474   -0.4400767   -0.1036180
24 months   ki1000108-IRC              INDIA        optimal              observed          -0.6658070   -0.7892081   -0.5424059
24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.8275671   -0.9155283   -0.7396059
24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.4664565   -0.6367213   -0.2961917
24 months   ki1113344-GMS-Nepal        NEPAL        optimal              observed          -1.2430310   -1.6071096   -0.8789525


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        observed             observed          -0.6275000   -0.9746292   -0.2803708
Birth       ki1000108-IRC              INDIA        observed             observed          -0.9860831   -1.1746070   -0.7975591
6 months    ki1000108-CMC-V-BCS-2002   INDIA        observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA        observed             observed          -0.6153685   -0.7522411   -0.4784959
6 months    ki1017093b-PROVIDE         BANGLADESH   observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH   observed             observed           0.0640826   -0.0252594    0.1534245
6 months    ki1113344-GMS-Nepal        NEPAL        observed             observed          -0.6241700   -0.7143013   -0.5340386
24 months   ki1000108-CMC-V-BCS-2002   INDIA        observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA        observed             observed          -0.7479083   -0.8403586   -0.6554581
24 months   ki1017093b-PROVIDE         BANGLADESH   observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH   observed             observed          -0.5518293   -0.6602513   -0.4434072
24 months   ki1113344-GMS-Nepal        NEPAL        observed             observed          -1.1192697   -1.2125104   -1.0260289


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -0.3594748   -0.8268213    0.1078717
Birth       ki1000108-IRC              INDIA        optimal              observed          -0.1951261   -0.3545132   -0.0357390
6 months    ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -0.1145390   -0.2890295    0.0599516
6 months    ki1000108-IRC              INDIA        optimal              observed           0.0218062   -0.1482494    0.1918618
6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.0533150   -0.1047753   -0.0018548
6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.0629404   -0.1518957    0.0260149
6 months    ki1113344-GMS-Nepal        NEPAL        optimal              observed          -0.0033996   -0.0128293    0.0060302
24 months   ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -0.2853032   -0.4182870   -0.1523194
24 months   ki1000108-IRC              INDIA        optimal              observed          -0.0821013   -0.1612483   -0.0029544
24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.0603741   -0.1030757   -0.0176726
24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.0853727   -0.2047006    0.0339551
24 months   ki1113344-GMS-Nepal        NEPAL        optimal              observed           0.1237614   -0.2416995    0.4892222
