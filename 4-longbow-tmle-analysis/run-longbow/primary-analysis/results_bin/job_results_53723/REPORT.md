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
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL          1                    0        7   589
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL          1                    1        2   589
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL          0                    0      279   589
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL          0                    1      301   589
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
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     1                    0      530   683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     1                    1       27   683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     0                    0      116   683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     0                    1       10   683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     1                    0      351   572
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     1                    1        4   572
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     0                    0      208   572
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     0                    1        9   572
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL          1                    0        7   576
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL          1                    1        1   576
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL          0                    0      456   576
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL          0                    1      112   576
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
![](/tmp/1bff0aa6-fd9a-4db5-9d7f-ffdd4d23e22e/d0b9de32-8814-48eb-ae4c-f94893614515/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1bff0aa6-fd9a-4db5-9d7f-ffdd4d23e22e/d0b9de32-8814-48eb-ae4c-f94893614515/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1bff0aa6-fd9a-4db5-9d7f-ffdd4d23e22e/d0b9de32-8814-48eb-ae4c-f94893614515/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1bff0aa6-fd9a-4db5-9d7f-ffdd4d23e22e/d0b9de32-8814-48eb-ae4c-f94893614515/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.3737961   0.2938090   0.4537833
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.5313363   0.4596069   0.6030657
0-24 months (no birth wast)   ki1000108-IRC              INDIA        1                    NA                0.5220758   0.4569968   0.5871549
0-24 months (no birth wast)   ki1000108-IRC              INDIA        0                    NA                0.5178952   0.4405755   0.5952148
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1610379   0.1306436   0.1914322
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2498422   0.1732994   0.3263850
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1061664   0.0740788   0.1382540
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.1648697   0.1137573   0.2159821
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.2547222   0.1801798   0.3292646
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.3652838   0.2938885   0.4366791
0-6 months (no birth wast)    ki1000108-IRC              INDIA        1                    NA                0.3877567   0.3232555   0.4522580
0-6 months (no birth wast)    ki1000108-IRC              INDIA        0                    NA                0.2762720   0.2061454   0.3463985
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0484615   0.0306114   0.0663117
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0796927   0.0322220   0.1271635
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.2237476   0.1572530   0.2902421
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.3071825   0.2423807   0.3719844
6-24 months                   ki1000108-IRC              INDIA        1                    NA                0.2824811   0.2238556   0.3411067
6-24 months                   ki1000108-IRC              INDIA        0                    NA                0.3533996   0.2792326   0.4275666
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1401226   0.1099041   0.1703412
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2498799   0.1651206   0.3346392
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1098027   0.0768209   0.1427845
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.1370998   0.0910472   0.1831524


### Parameter: E(Y)


agecat                        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.4510870   0.4001777   0.5019962
0-24 months (no birth wast)   ki1000108-IRC              INDIA        NA                   NA                0.5213033   0.4722258   0.5703807
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1304348   0.1028836   0.1579859
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.3085714   0.2601110   0.3570318
0-6 months (no birth wast)    ki1000108-IRC              INDIA        NA                   NA                0.3412073   0.2935379   0.3888768
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0541728   0.0371844   0.0711612
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.2654155   0.2205451   0.3102860
6-24 months                   ki1000108-IRC              INDIA        NA                   NA                0.3100000   0.2646197   0.3553803
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1198569   0.0929081   0.1468057


### Parameter: RR


agecat                        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 1.4214602   1.1032866   1.8313909
0-24 months (no birth wast)   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA        0                    1                 0.9919922   0.8176256   1.2035442
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   0                    1                 1.5514497   1.0829897   2.2225475
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 1.5529360   1.0065419   2.3959363
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 1.4340476   1.0084119   2.0393380
0-6 months (no birth wast)    ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA        0                    1                 0.7124878   0.5260184   0.9650591
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   0                    1                 1.6444534   0.8160194   3.3139248
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 1.3728978   0.9523059   1.9792466
6-24 months                   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-IRC              INDIA        0                    1                 1.2510556   0.9315765   1.6800982
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   0                    1                 1.7832941   1.1928963   2.6658963
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 1.2486017   0.7957438   1.9591812


### Parameter: PAR


agecat                        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0772909    0.0133892    0.1411925
0-24 months (no birth wast)   ki1000108-IRC              INDIA        1                    NA                -0.0007726   -0.0432397    0.0416945
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0165458    0.0013117    0.0317798
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0242683    0.0014789    0.0470577
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0538492   -0.0067394    0.1144379
0-6 months (no birth wast)    ki1000108-IRC              INDIA        1                    NA                -0.0465494   -0.0868095   -0.0062893
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0057112   -0.0036591    0.0150816
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0416680   -0.0122734    0.0956093
6-24 months                   ki1000108-IRC              INDIA        1                    NA                 0.0275189   -0.0122301    0.0672678
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0208530    0.0050006    0.0367054
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0100542   -0.0119328    0.0320412


### Parameter: PAF


agecat                        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.1713436    0.0162653    0.3019749
0-24 months (no birth wast)   ki1000108-IRC              INDIA        1                    NA                -0.0014820   -0.0863495    0.0767555
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0931718    0.0041467    0.1742383
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.1860573   -0.0046256    0.3405476
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.1745114   -0.0468462    0.3490625
0-6 months (no birth wast)    ki1000108-IRC              INDIA        1                    NA                -0.1364256   -0.2609975   -0.0241599
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.1054264   -0.0819303    0.2603386
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.1569915   -0.0715369    0.3367813
6-24 months                   ki1000108-IRC              INDIA        1                    NA                 0.0887705   -0.0488306    0.2083191
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.1295412    0.0273897    0.2209638
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0838851   -0.1180277    0.2493330
