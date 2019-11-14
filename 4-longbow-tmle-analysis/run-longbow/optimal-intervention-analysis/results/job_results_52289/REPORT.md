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
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1              39    92
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0              53    92
Birth       ki1000108-IRC              INDIA          1             218   378
Birth       ki1000108-IRC              INDIA          0             160   378
Birth       ki1017093b-PROVIDE         BANGLADESH     1             438   539
Birth       ki1017093b-PROVIDE         BANGLADESH     0             101   539
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1             345   561
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0             216   561
Birth       ki1113344-GMS-Nepal        NEPAL          1               9   621
Birth       ki1113344-GMS-Nepal        NEPAL          0             612   621
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1             163   369
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0             206   369
6 months    ki1000108-IRC              INDIA          1             230   398
6 months    ki1000108-IRC              INDIA          0             168   398
6 months    ki1017093b-PROVIDE         BANGLADESH     1             498   604
6 months    ki1017093b-PROVIDE         BANGLADESH     0             106   604
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1             329   545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0             216   545
6 months    ki1113344-GMS-Nepal        NEPAL          1               8   505
6 months    ki1113344-GMS-Nepal        NEPAL          0             497   505
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1             163   371
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0             208   371
24 months   ki1000108-IRC              INDIA          1             231   400
24 months   ki1000108-IRC              INDIA          0             169   400
24 months   ki1017093b-PROVIDE         BANGLADESH     1             479   578
24 months   ki1017093b-PROVIDE         BANGLADESH     0              99   578
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1             199   410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0             211   410
24 months   ki1113344-GMS-Nepal        NEPAL          1               5   435
24 months   ki1113344-GMS-Nepal        NEPAL          0             430   435


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



```
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```




# Results Detail

## Results Plots
![](/tmp/15f3c8dc-e04b-437e-9b75-d7a38567b451/13347f4d-8423-4e9d-8b47-f992b6cdf0d2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -0.7683412   -1.0668598   -0.4698225
Birth       ki1000108-IRC              INDIA        optimal              observed          -0.2614966   -0.5670814    0.0440882
Birth       ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.8005918   -0.9068753   -0.6943084
Birth       ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.9897135   -1.2204971   -0.7589300
Birth       ki1113344-GMS-Nepal        NEPAL        optimal              observed          -0.9115644   -1.0806271   -0.7425018
6 months    ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -1.0584128   -1.2569283   -0.8598972
6 months    ki1000108-IRC              INDIA        optimal              observed          -1.1326977   -1.3208898   -0.9445057
6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -1.0263195   -1.1082143   -0.9444247
6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -1.2789625   -1.5057825   -1.0521425
6 months    ki1113344-GMS-Nepal        NEPAL        optimal              observed          -1.1698085   -1.4284867   -0.9111303
24 months   ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -2.2318156   -2.3774402   -2.0861910
24 months   ki1000108-IRC              INDIA        optimal              observed          -1.6946061   -1.8312976   -1.5579145
24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -1.5071322   -1.5949844   -1.4192801
24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -1.4483533   -1.6377625   -1.2589442
24 months   ki1113344-GMS-Nepal        NEPAL        optimal              observed          -1.4202300   -1.5616792   -1.2787809


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        observed             observed          -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA        observed             observed          -0.3176455   -0.4788394   -0.1564516
Birth       ki1017093b-PROVIDE         BANGLADESH   observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH   observed             observed          -0.8996078   -0.9825064   -0.8167093
Birth       ki1113344-GMS-Nepal        NEPAL        observed             observed          -1.0998712   -1.1839267   -1.0158156
6 months    ki1000108-CMC-V-BCS-2002   INDIA        observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA        observed             observed          -1.2373869   -1.3694835   -1.1052903
6 months    ki1017093b-PROVIDE         BANGLADESH   observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH   observed             observed          -1.1482385   -1.2287866   -1.0676904
6 months    ki1113344-GMS-Nepal        NEPAL        observed             observed          -1.3650165   -1.4477401   -1.2822929
24 months   ki1000108-CMC-V-BCS-2002   INDIA        observed             observed          -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA        observed             observed          -1.8039875   -1.8980579   -1.7099171
24 months   ki1017093b-PROVIDE         BANGLADESH   observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH   observed             observed          -1.3408537   -1.4302211   -1.2514862
24 months   ki1113344-GMS-Nepal        NEPAL        observed             observed          -1.8970805   -1.9859605   -1.8082004


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -0.1928545   -0.4523198    0.0666109
Birth       ki1000108-IRC              INDIA        optimal              observed          -0.0561489   -0.2916150    0.1793171
Birth       ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.0845102   -0.1589897   -0.0100307
Birth       ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed           0.0901057   -0.1193273    0.2995386
Birth       ki1113344-GMS-Nepal        NEPAL        optimal              observed          -0.1883067   -0.3734347   -0.0031788
6 months    ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -0.3650380   -0.5248373   -0.2052387
6 months    ki1000108-IRC              INDIA        optimal              observed          -0.1046892   -0.2230069    0.0136285
6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.0653720   -0.1051122   -0.0256318
6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed           0.1307240   -0.0784391    0.3398871
6 months    ki1113344-GMS-Nepal        NEPAL        optimal              observed          -0.1952080   -0.4611903    0.0707744
24 months   ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -0.3270523   -0.4461812   -0.2079234
24 months   ki1000108-IRC              INDIA        optimal              observed          -0.1093814   -0.1997176   -0.0190452
24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.0952899   -0.1390712   -0.0515086
24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed           0.1074997   -0.0579194    0.2729187
24 months   ki1113344-GMS-Nepal        NEPAL        optimal              observed          -0.4768504   -0.6410967   -0.3126041
