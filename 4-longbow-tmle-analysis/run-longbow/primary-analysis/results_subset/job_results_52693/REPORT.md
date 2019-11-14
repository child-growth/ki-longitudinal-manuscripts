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
![](/tmp/983f08a8-9f21-442c-905d-c2a2ffc1bb61/f66c9193-0fe6-4b91-9093-225f709dbb0b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -0.2609011   -0.7155978    0.1937956
Birth       ki1000108-IRC              INDIA        optimal              observed          -0.7733039   -1.0250621   -0.5215457
Birth       ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -1.2870910   -1.3914404   -1.1827415
Birth       ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -1.1068606   -1.2422147   -0.9715064
Birth       ki1113344-GMS-Nepal        NEPAL        optimal              observed          -1.1081228   -1.2024405   -1.0138050
6 months    ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -0.4644514   -0.6924225   -0.2364804
6 months    ki1000108-IRC              INDIA        optimal              observed          -0.7082707   -0.9160272   -0.5005142
6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.1389933   -0.2286875   -0.0492992
6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed           0.1243240   -0.0220995    0.2707476
6 months    ki1113344-GMS-Nepal        NEPAL        optimal              observed          -0.6195238   -0.7114355   -0.5276121
24 months   ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -0.2662881   -0.4361084   -0.0964677
24 months   ki1000108-IRC              INDIA        optimal              observed          -0.6817357   -0.8078072   -0.5556641
24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.8182236   -0.9122198   -0.7242275
24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.4590115   -0.6270262   -0.2909967
24 months   ki1113344-GMS-Nepal        NEPAL        optimal              observed          -1.3447343   -1.7096095   -0.9798591


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
Birth       ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -0.2039245   -0.5497230    0.1418740
Birth       ki1000108-IRC              INDIA        optimal              observed          -0.2127792   -0.3754001   -0.0501583
Birth       ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.0113677   -0.0896007    0.0668653
Birth       ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.0772555   -0.1713371    0.0168262
Birth       ki1113344-GMS-Nepal        NEPAL        optimal              observed          -0.0063158   -0.0205230    0.0078913
6 months    ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -0.0382252   -0.2162063    0.1397559
6 months    ki1000108-IRC              INDIA        optimal              observed           0.0929022   -0.0636099    0.2494143
6 months    ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.0600973   -0.1002306   -0.0199640
6 months    ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.0602415   -0.1704412    0.0499583
6 months    ki1113344-GMS-Nepal        NEPAL        optimal              observed          -0.0035389   -0.0128424    0.0057646
24 months   ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          -0.2908625   -0.4248863   -0.1568387
24 months   ki1000108-IRC              INDIA        optimal              observed          -0.0661727   -0.1484761    0.0161308
24 months   ki1017093b-PROVIDE         BANGLADESH   optimal              observed          -0.0746434   -0.1253195   -0.0239672
24 months   ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          -0.0928178   -0.2085020    0.0228663
24 months   ki1113344-GMS-Nepal        NEPAL        optimal              observed           0.2200031   -0.1463496    0.5863559
