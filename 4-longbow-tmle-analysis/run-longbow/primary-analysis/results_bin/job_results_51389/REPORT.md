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

**Outcome Variable:** ever_wasted

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

agecat                        studyid                    country        cleanck    ever_wasted   n_cell     n
----------------------------  -------------------------  -------------  --------  ------------  -------  ----
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU           1                    0        1     2
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU           1                    1        0     2
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU           0                    0        1     2
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU           0                    1        0     2
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   1                    0        2     3
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   1                    1        0     3
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   0                    0        1     3
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   0                    1        0     3
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          1                    0      104   368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          1                    1       59   368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          0                    0       98   368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          0                    1      107   368
0-24 months (no birth wast)   ki1000108-IRC              INDIA          1                    0      107   399
0-24 months (no birth wast)   ki1000108-IRC              INDIA          1                    1      123   399
0-24 months (no birth wast)   ki1000108-IRC              INDIA          0                    0       84   399
0-24 months (no birth wast)   ki1000108-IRC              INDIA          0                    1       85   399
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     1                    0      471   687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     1                    1       90   687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     0                    0       94   687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     0                    1       32   687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     1                    0      319   575
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     1                    1       39   575
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     0                    0      181   575
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     0                    1       36   575
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL          1                    0        6   525
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL          1                    1        3   525
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL          0                    0      235   525
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL          0                    1      281   525
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU           1                    0        1     2
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU           1                    1        0     2
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU           0                    0        1     2
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU           0                    1        0     2
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA   1                    0        2     3
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA   1                    1        0     3
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA   0                    0        1     3
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA   0                    1        0     3
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          1                    0      117   350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          1                    1       40   350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          0                    0      125   350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          0                    1       68   350
0-6 months (no birth wast)    ki1000108-IRC              INDIA          1                    0      136   381
0-6 months (no birth wast)    ki1000108-IRC              INDIA          1                    1       86   381
0-6 months (no birth wast)    ki1000108-IRC              INDIA          0                    0      115   381
0-6 months (no birth wast)    ki1000108-IRC              INDIA          0                    1       44   381
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     1                    0      531   683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     1                    1       26   683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     0                    0      116   683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     0                    1       10   683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     1                    0      351   572
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     1                    1        4   572
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     0                    0      208   572
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     0                    1        9   572
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL          1                    0        6   506
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL          1                    1        2   506
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL          0                    0      425   506
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL          0                    1       73   506
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA   1                    0        1     1
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA   1                    1        0     1
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA   0                    0        0     1
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA   0                    1        0     1
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA          1                    0      128   373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA          1                    1       35   373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA          0                    0      146   373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA          0                    1       64   373
6-24 months                   ki1000108-IRC              INDIA          1                    0      166   400
6-24 months                   ki1000108-IRC              INDIA          1                    1       65   400
6-24 months                   ki1000108-IRC              INDIA          0                    0      110   400
6-24 months                   ki1000108-IRC              INDIA          0                    1       59   400
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     1                    0      437   615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     1                    1       71   615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     0                    0       79   615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     0                    1       28   615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     1                    0      306   559
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     1                    1       37   559
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     0                    0      186   559
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     0                    1       30   559
6-24 months                   ki1113344-GMS-Nepal        NEPAL          1                    0        6   529
6-24 months                   ki1113344-GMS-Nepal        NEPAL          1                    1        2   529
6-24 months                   ki1113344-GMS-Nepal        NEPAL          0                    0      269   529
6-24 months                   ki1113344-GMS-Nepal        NEPAL          0                    1      252   529


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/5eaa50eb-6e5e-4180-85b3-c6f9ac7b06d9/89ab91d4-7a8a-4346-87f9-cef3a0c6fe2b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5eaa50eb-6e5e-4180-85b3-c6f9ac7b06d9/89ab91d4-7a8a-4346-87f9-cef3a0c6fe2b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5eaa50eb-6e5e-4180-85b3-c6f9ac7b06d9/89ab91d4-7a8a-4346-87f9-cef3a0c6fe2b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5eaa50eb-6e5e-4180-85b3-c6f9ac7b06d9/89ab91d4-7a8a-4346-87f9-cef3a0c6fe2b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.3763855   0.2970575   0.4557135
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.5292472   0.4581724   0.6003221
0-24 months (no birth wast)   ki1000108-IRC              INDIA        1                    NA                0.5296023   0.4642031   0.5950015
0-24 months (no birth wast)   ki1000108-IRC              INDIA        0                    NA                0.5095508   0.4328939   0.5862078
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1610594   0.1306833   0.1914355
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2570235   0.1804755   0.3335714
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1063237   0.0744902   0.1381572
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.1644844   0.1135044   0.2154645
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.2625340   0.1863316   0.3387363
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.3623690   0.2905753   0.4341626
0-6 months (no birth wast)    ki1000108-IRC              INDIA        1                    NA                0.3882157   0.3236102   0.4528211
0-6 months (no birth wast)    ki1000108-IRC              INDIA        0                    NA                0.2789486   0.2082771   0.3496201
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0472254   0.0295919   0.0648589
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0774450   0.0288351   0.1260549
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.2319315   0.1638430   0.3000200
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.3095213   0.2458783   0.3731644
6-24 months                   ki1000108-IRC              INDIA        1                    NA                0.2794640   0.2207946   0.3381333
6-24 months                   ki1000108-IRC              INDIA        0                    NA                0.3538310   0.2802850   0.4273771
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1404273   0.1102584   0.1705963
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2660004   0.1812505   0.3507504
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1098123   0.0768906   0.1427340
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.1369246   0.0909386   0.1829106


### Parameter: E(Y)


agecat                        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.4510870   0.4001777   0.5019962
0-24 months (no birth wast)   ki1000108-IRC              INDIA        NA                   NA                0.5213033   0.4722258   0.5703807
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1304348   0.1028836   0.1579859
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.3085714   0.2601110   0.3570318
0-6 months (no birth wast)    ki1000108-IRC              INDIA        NA                   NA                0.3412073   0.2935379   0.3888768
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0527086   0.0359384   0.0694789
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.2654155   0.2205451   0.3102860
6-24 months                   ki1000108-IRC              INDIA        NA                   NA                0.3100000   0.2646197   0.3553803
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1198569   0.0929081   0.1468057


### Parameter: RR


agecat                        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 1.4061308   1.0948391   1.8059310
0-24 months (no birth wast)   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA        0                    1                 0.9621386   0.7922334   1.1684824
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   0                    1                 1.5958306   1.1221023   2.2695573
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 1.5470159   1.0045219   2.3824848
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 1.3802745   0.9709744   1.9621091
0-6 months (no birth wast)    ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA        0                    1                 0.7185404   0.5304589   0.9733087
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   0                    1                 1.6399014   0.7888613   3.4090614
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 1.3345380   0.9313016   1.9123683
6-24 months                   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-IRC              INDIA        0                    1                 1.2661061   0.9426195   1.7006063
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   0                    1                 1.8942210   1.2891745   2.7832331
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 1.2468969   0.7952578   1.9550287


### Parameter: PAR


agecat                        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0747015    0.0117839    0.1376191
0-24 months (no birth wast)   ki1000108-IRC              INDIA        1                    NA                -0.0082990   -0.0511210    0.0345229
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0165243    0.0013417    0.0317069
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0241111    0.0016480    0.0465742
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0460375   -0.0159546    0.1080295
0-6 months (no birth wast)    ki1000108-IRC              INDIA        1                    NA                -0.0470083   -0.0875372   -0.0064795
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0054833   -0.0039844    0.0149509
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0334841   -0.0215716    0.0885397
6-24 months                   ki1000108-IRC              INDIA        1                    NA                 0.0305360   -0.0093076    0.0703797
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0205483    0.0046532    0.0364434
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0100446   -0.0118886    0.0319778


### Parameter: PAF


agecat                        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.1656032    0.0131962    0.2944717
0-24 months (no birth wast)   ki1000108-IRC              INDIA        1                    NA                -0.0159198   -0.1014774    0.0629922
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0930509    0.0043399    0.1738580
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.1848518   -0.0025895    0.3372496
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.1491954   -0.0772373    0.3280326
0-6 months (no birth wast)    ki1000108-IRC              INDIA        1                    NA                -0.1377706   -0.2632721   -0.0247372
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.1040297   -0.0909272    0.2641464
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.1261572   -0.1071177    0.3102801
6-24 months                   ki1000108-IRC              INDIA        1                    NA                 0.0985033   -0.0396294    0.2182827
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.1276483    0.0253455    0.2192131
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0838050   -0.1175239    0.2488632
