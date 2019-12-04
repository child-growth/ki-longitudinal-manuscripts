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

**Outcome Variable:** stunted

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

agecat      studyid                    country        cleanck    stunted   n_cell     n
----------  -------------------------  -------------  --------  --------  -------  ----
Birth       ki0047075b-MAL-ED          PERU           1                0        1     2
Birth       ki0047075b-MAL-ED          PERU           1                1        0     2
Birth       ki0047075b-MAL-ED          PERU           0                0        1     2
Birth       ki0047075b-MAL-ED          PERU           0                1        0     2
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1                0       35    92
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1                1        4    92
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0                0       40    92
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0                1       13    92
Birth       ki1000108-IRC              INDIA          1                0      197   378
Birth       ki1000108-IRC              INDIA          1                1       21   378
Birth       ki1000108-IRC              INDIA          0                0      138   378
Birth       ki1000108-IRC              INDIA          0                1       22   378
Birth       ki1017093b-PROVIDE         BANGLADESH     1                0      400   539
Birth       ki1017093b-PROVIDE         BANGLADESH     1                1       38   539
Birth       ki1017093b-PROVIDE         BANGLADESH     0                0       91   539
Birth       ki1017093b-PROVIDE         BANGLADESH     0                1       10   539
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1                0      301   561
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1                1       44   561
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0                0      183   561
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0                1       33   561
Birth       ki1113344-GMS-Nepal        NEPAL          1                0        9   621
Birth       ki1113344-GMS-Nepal        NEPAL          1                1        0   621
Birth       ki1113344-GMS-Nepal        NEPAL          0                0      506   621
Birth       ki1113344-GMS-Nepal        NEPAL          0                1      106   621
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                0        1     1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                1        0     1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                0        0     1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                1        0     1
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                0      123   369
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                1       40   369
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                0      135   369
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                1       71   369
6 months    ki1000108-IRC              INDIA          1                0      181   398
6 months    ki1000108-IRC              INDIA          1                1       49   398
6 months    ki1000108-IRC              INDIA          0                0      119   398
6 months    ki1000108-IRC              INDIA          0                1       49   398
6 months    ki1017093b-PROVIDE         BANGLADESH     1                0      429   604
6 months    ki1017093b-PROVIDE         BANGLADESH     1                1       69   604
6 months    ki1017093b-PROVIDE         BANGLADESH     0                0       79   604
6 months    ki1017093b-PROVIDE         BANGLADESH     0                1       27   604
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                0      264   545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                1       65   545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                0      179   545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                1       37   545
6 months    ki1113344-GMS-Nepal        NEPAL          1                0        8   505
6 months    ki1113344-GMS-Nepal        NEPAL          1                1        0   505
6 months    ki1113344-GMS-Nepal        NEPAL          0                0      388   505
6 months    ki1113344-GMS-Nepal        NEPAL          0                1      109   505
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                0        1     1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                1        0     1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                0        0     1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                1        0     1
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                0       67   371
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                1       96   371
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                0       38   371
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                1      170   371
24 months   ki1000108-IRC              INDIA          1                0      142   400
24 months   ki1000108-IRC              INDIA          1                1       89   400
24 months   ki1000108-IRC              INDIA          0                0       89   400
24 months   ki1000108-IRC              INDIA          0                1       80   400
24 months   ki1017093b-PROVIDE         BANGLADESH     1                0      338   578
24 months   ki1017093b-PROVIDE         BANGLADESH     1                1      141   578
24 months   ki1017093b-PROVIDE         BANGLADESH     0                0       50   578
24 months   ki1017093b-PROVIDE         BANGLADESH     0                1       49   578
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                0      156   410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                1       43   410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                0      167   410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                1       44   410
24 months   ki1113344-GMS-Nepal        NEPAL          1                0        5   435
24 months   ki1113344-GMS-Nepal        NEPAL          1                1        0   435
24 months   ki1113344-GMS-Nepal        NEPAL          0                0      232   435
24 months   ki1113344-GMS-Nepal        NEPAL          0                1      198   435


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
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/be310ad5-9ad5-410f-a6b0-c2261c793190/757edb7a-e524-47f6-95d0-063341bd3743/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/be310ad5-9ad5-410f-a6b0-c2261c793190/757edb7a-e524-47f6-95d0-063341bd3743/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/be310ad5-9ad5-410f-a6b0-c2261c793190/757edb7a-e524-47f6-95d0-063341bd3743/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/be310ad5-9ad5-410f-a6b0-c2261c793190/757edb7a-e524-47f6-95d0-063341bd3743/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        1                    NA                0.0978528   0.0587216   0.1369839
Birth       ki1000108-IRC              INDIA        0                    NA                0.1400201   0.0867143   0.1933258
Birth       ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0856238   0.0591789   0.1120688
Birth       ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0818851   0.0223294   0.1414407
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1310479   0.0946185   0.1674772
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.1527994   0.1032062   0.2023927
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.2081754   0.1482147   0.2681360
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.3391969   0.2720758   0.4063179
6 months    ki1000108-IRC              INDIA        1                    NA                0.2142456   0.1609266   0.2675646
6 months    ki1000108-IRC              INDIA        0                    NA                0.2842383   0.2138656   0.3546110
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1389547   0.1084857   0.1694236
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2510991   0.1676011   0.3345971
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1964006   0.1529257   0.2398755
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.1780937   0.1256571   0.2305304
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.6043242   0.5252104   0.6834379
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.8105408   0.7559692   0.8651124
24 months   ki1000108-IRC              INDIA        1                    NA                0.3872943   0.3240672   0.4505214
24 months   ki1000108-IRC              INDIA        0                    NA                0.4684588   0.3899739   0.5469437
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.2954682   0.2545329   0.3364035
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.4832735   0.3821309   0.5844161
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.2056149   0.1473991   0.2638307
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.2259200   0.1640910   0.2877491


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        NA                   NA                0.1137566   0.0817056   0.1458077
Birth       ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0890538   0.0649864   0.1131212
Birth       ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1372549   0.1087540   0.1657558
6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.3008130   0.2539566   0.3476694
6 months    ki1000108-IRC              INDIA        NA                   NA                0.2462312   0.2038529   0.2886094
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1589404   0.1297581   0.1881227
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1871560   0.1543801   0.2199318
24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.7169811   0.6710815   0.7628807
24 months   ki1000108-IRC              INDIA        NA                   NA                0.4225000   0.3740325   0.4709675
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2121951   0.1725707   0.2518196


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC              INDIA        0                    1                 1.4309260   0.8237951   2.485508
Birth       ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093b-PROVIDE         BANGLADESH   0                    1                 0.9563351   0.4332978   2.110735
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 1.1659820   0.7600068   1.788818
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 1.6293803   1.1457738   2.317107
6 months    ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA        0                    1                 1.3266937   0.9320774   1.888380
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    1                 1.8070577   1.2148589   2.687932
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 0.9067881   0.6275216   1.310337
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 1.3412350   1.1572791   1.554432
24 months   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA        0                    1                 1.2095680   0.9568516   1.529030
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 1.6356195   1.2712925   2.104355
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 1.0987532   0.7414967   1.628138


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA        1                    NA                 0.0159039   -0.0121878   0.0439955
Birth       ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0034300   -0.0087296   0.0155895
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0062070   -0.0178289   0.0302430
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0926376    0.0425301   0.1427451
6 months    ki1000108-IRC              INDIA        1                    NA                 0.0319855   -0.0059730   0.0699440
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0199857    0.0041162   0.0358552
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0092447   -0.0362938   0.0178045
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.1126569    0.0554419   0.1698720
24 months   ki1000108-IRC              INDIA        1                    NA                 0.0352057   -0.0074432   0.0778546
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0332515    0.0137824   0.0527207
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0065802   -0.0366369   0.0497973


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA        1                    NA                 0.1398060   -0.1420915   0.3521239
Birth       ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0385155   -0.1080851   0.1657208
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0452228   -0.1467683   0.2050708
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.3079575    0.1253371   0.4524487
6 months    ki1000108-IRC              INDIA        1                    NA                 0.1299004   -0.0374214   0.2702355
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.1257436    0.0218880   0.2185718
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0493955   -0.2041743   0.0854887
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.1571268    0.0709129   0.2353405
24 months   ki1000108-IRC              INDIA        1                    NA                 0.0833271   -0.0234503   0.1789643
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.1011546    0.0401341   0.1582960
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0310102   -0.1956421   0.2146971
