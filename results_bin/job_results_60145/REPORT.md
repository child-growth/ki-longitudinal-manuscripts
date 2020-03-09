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

agecat      studyid          country        cleanck    stunted   n_cell     n
----------  ---------------  -------------  --------  --------  -------  ----
Birth       CMC-V-BCS-2002   INDIA          1                0       35    92
Birth       CMC-V-BCS-2002   INDIA          1                1        4    92
Birth       CMC-V-BCS-2002   INDIA          0                0       40    92
Birth       CMC-V-BCS-2002   INDIA          0                1       13    92
Birth       GMS-Nepal        NEPAL          1                0        9   621
Birth       GMS-Nepal        NEPAL          1                1        0   621
Birth       GMS-Nepal        NEPAL          0                0      506   621
Birth       GMS-Nepal        NEPAL          0                1      106   621
Birth       IRC              INDIA          1                0      197   378
Birth       IRC              INDIA          1                1       21   378
Birth       IRC              INDIA          0                0      138   378
Birth       IRC              INDIA          0                1       22   378
Birth       MAL-ED           PERU           1                0        1     2
Birth       MAL-ED           PERU           1                1        0     2
Birth       MAL-ED           PERU           0                0        1     2
Birth       MAL-ED           PERU           0                1        0     2
Birth       NIH-Crypto       BANGLADESH     1                0      301   561
Birth       NIH-Crypto       BANGLADESH     1                1       44   561
Birth       NIH-Crypto       BANGLADESH     0                0      183   561
Birth       NIH-Crypto       BANGLADESH     0                1       33   561
Birth       PROVIDE          BANGLADESH     1                0      400   539
Birth       PROVIDE          BANGLADESH     1                1       38   539
Birth       PROVIDE          BANGLADESH     0                0       91   539
Birth       PROVIDE          BANGLADESH     0                1       10   539
6 months    CMC-V-BCS-2002   INDIA          1                0      123   369
6 months    CMC-V-BCS-2002   INDIA          1                1       40   369
6 months    CMC-V-BCS-2002   INDIA          0                0      135   369
6 months    CMC-V-BCS-2002   INDIA          0                1       71   369
6 months    GMS-Nepal        NEPAL          1                0        8   505
6 months    GMS-Nepal        NEPAL          1                1        0   505
6 months    GMS-Nepal        NEPAL          0                0      388   505
6 months    GMS-Nepal        NEPAL          0                1      109   505
6 months    IRC              INDIA          1                0      181   398
6 months    IRC              INDIA          1                1       49   398
6 months    IRC              INDIA          0                0      119   398
6 months    IRC              INDIA          0                1       49   398
6 months    MAL-ED           SOUTH AFRICA   1                0        1     1
6 months    MAL-ED           SOUTH AFRICA   1                1        0     1
6 months    MAL-ED           SOUTH AFRICA   0                0        0     1
6 months    MAL-ED           SOUTH AFRICA   0                1        0     1
6 months    NIH-Crypto       BANGLADESH     1                0      264   545
6 months    NIH-Crypto       BANGLADESH     1                1       65   545
6 months    NIH-Crypto       BANGLADESH     0                0      179   545
6 months    NIH-Crypto       BANGLADESH     0                1       37   545
6 months    PROVIDE          BANGLADESH     1                0      429   604
6 months    PROVIDE          BANGLADESH     1                1       69   604
6 months    PROVIDE          BANGLADESH     0                0       79   604
6 months    PROVIDE          BANGLADESH     0                1       27   604
24 months   CMC-V-BCS-2002   INDIA          1                0       67   371
24 months   CMC-V-BCS-2002   INDIA          1                1       96   371
24 months   CMC-V-BCS-2002   INDIA          0                0       38   371
24 months   CMC-V-BCS-2002   INDIA          0                1      170   371
24 months   GMS-Nepal        NEPAL          1                0        5   435
24 months   GMS-Nepal        NEPAL          1                1        0   435
24 months   GMS-Nepal        NEPAL          0                0      232   435
24 months   GMS-Nepal        NEPAL          0                1      198   435
24 months   IRC              INDIA          1                0      142   400
24 months   IRC              INDIA          1                1       89   400
24 months   IRC              INDIA          0                0       89   400
24 months   IRC              INDIA          0                1       80   400
24 months   MAL-ED           SOUTH AFRICA   1                0        1     1
24 months   MAL-ED           SOUTH AFRICA   1                1        0     1
24 months   MAL-ED           SOUTH AFRICA   0                0        0     1
24 months   MAL-ED           SOUTH AFRICA   0                1        0     1
24 months   NIH-Crypto       BANGLADESH     1                0      156   410
24 months   NIH-Crypto       BANGLADESH     1                1       43   410
24 months   NIH-Crypto       BANGLADESH     0                0      167   410
24 months   NIH-Crypto       BANGLADESH     0                1       44   410
24 months   PROVIDE          BANGLADESH     1                0      338   578
24 months   PROVIDE          BANGLADESH     1                1      141   578
24 months   PROVIDE          BANGLADESH     0                0       50   578
24 months   PROVIDE          BANGLADESH     0                1       49   578


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/5ad3ab9e-34d8-4529-ad7d-3b68b4943989/cf600ad3-0686-439d-87c1-d3d6ed14ca4b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5ad3ab9e-34d8-4529-ad7d-3b68b4943989/cf600ad3-0686-439d-87c1-d3d6ed14ca4b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5ad3ab9e-34d8-4529-ad7d-3b68b4943989/cf600ad3-0686-439d-87c1-d3d6ed14ca4b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5ad3ab9e-34d8-4529-ad7d-3b68b4943989/cf600ad3-0686-439d-87c1-d3d6ed14ca4b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA        1                    NA                0.0973663   0.0582169   0.1365158
Birth       IRC              INDIA        0                    NA                0.1358489   0.0817849   0.1899129
Birth       NIH-Crypto       BANGLADESH   1                    NA                0.1256836   0.0905318   0.1608354
Birth       NIH-Crypto       BANGLADESH   0                    NA                0.1565403   0.1071610   0.2059196
Birth       PROVIDE          BANGLADESH   1                    NA                0.0883061   0.0615726   0.1150396
Birth       PROVIDE          BANGLADESH   0                    NA                0.0883162   0.0334830   0.1431493
6 months    CMC-V-BCS-2002   INDIA        1                    NA                0.2058226   0.1476453   0.2640000
6 months    CMC-V-BCS-2002   INDIA        0                    NA                0.3360106   0.2691052   0.4029161
6 months    IRC              INDIA        1                    NA                0.2184011   0.1624122   0.2743901
6 months    IRC              INDIA        0                    NA                0.2818243   0.2109602   0.3526884
6 months    NIH-Crypto       BANGLADESH   1                    NA                0.1986055   0.1548787   0.2423323
6 months    NIH-Crypto       BANGLADESH   0                    NA                0.1657701   0.1156677   0.2158725
6 months    PROVIDE          BANGLADESH   1                    NA                0.1457421   0.1129836   0.1785007
6 months    PROVIDE          BANGLADESH   0                    NA                0.2179178   0.1400048   0.2958307
24 months   CMC-V-BCS-2002   INDIA        1                    NA                0.6042359   0.5272818   0.6811900
24 months   CMC-V-BCS-2002   INDIA        0                    NA                0.8125224   0.7580407   0.8670040
24 months   IRC              INDIA        1                    NA                0.3969318   0.3316143   0.4622494
24 months   IRC              INDIA        0                    NA                0.4200143   0.3412937   0.4987350
24 months   NIH-Crypto       BANGLADESH   1                    NA                0.2156300   0.1574859   0.2737742
24 months   NIH-Crypto       BANGLADESH   0                    NA                0.2103224   0.1555572   0.2650877
24 months   PROVIDE          BANGLADESH   1                    NA                0.3055787   0.2645115   0.3466458
24 months   PROVIDE          BANGLADESH   0                    NA                0.4481527   0.3490420   0.5472634


### Parameter: E(Y)


agecat      studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA        NA                   NA                0.1137566   0.0817056   0.1458077
Birth       NIH-Crypto       BANGLADESH   NA                   NA                0.1372549   0.1087540   0.1657558
Birth       PROVIDE          BANGLADESH   NA                   NA                0.0890538   0.0649864   0.1131212
6 months    CMC-V-BCS-2002   INDIA        NA                   NA                0.3008130   0.2539566   0.3476694
6 months    IRC              INDIA        NA                   NA                0.2462312   0.2038529   0.2886094
6 months    NIH-Crypto       BANGLADESH   NA                   NA                0.1871560   0.1543801   0.2199318
6 months    PROVIDE          BANGLADESH   NA                   NA                0.1589404   0.1297581   0.1881227
24 months   CMC-V-BCS-2002   INDIA        NA                   NA                0.7169811   0.6710815   0.7628807
24 months   IRC              INDIA        NA                   NA                0.4225000   0.3740325   0.4709675
24 months   NIH-Crypto       BANGLADESH   NA                   NA                0.2121951   0.1725707   0.2518196
24 months   PROVIDE          BANGLADESH   NA                   NA                0.3287197   0.2903909   0.3670485


### Parameter: RR


agecat      studyid          country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
Birth       IRC              INDIA        0                    1                 1.3952345   0.7935425   2.453151
Birth       NIH-Crypto       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       NIH-Crypto       BANGLADESH   0                    1                 1.2455110   0.8171297   1.898472
Birth       PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       PROVIDE          BANGLADESH   0                    1                 1.0001142   0.5023244   1.991200
6 months    CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    CMC-V-BCS-2002   INDIA        0                    1                 1.6325251   1.1510739   2.315349
6 months    IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    IRC              INDIA        0                    1                 1.2903975   0.9012105   1.847654
6 months    NIH-Crypto       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    NIH-Crypto       BANGLADESH   0                    1                 0.8346703   0.5742762   1.213135
6 months    PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    PROVIDE          BANGLADESH   0                    1                 1.4952281   0.9812705   2.278380
24 months   CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
24 months   CMC-V-BCS-2002   INDIA        0                    1                 1.3447105   1.1642368   1.553160
24 months   IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
24 months   IRC              INDIA        0                    1                 1.0581523   0.8246852   1.357714
24 months   NIH-Crypto       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   NIH-Crypto       BANGLADESH   0                    1                 0.9753856   0.6712671   1.417285
24 months   PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   PROVIDE          BANGLADESH   0                    1                 1.4665707   1.1340585   1.896577


### Parameter: PAR


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       IRC              INDIA        1                    NA                 0.0163903   -0.0115553   0.0443358
Birth       NIH-Crypto       BANGLADESH   1                    NA                 0.0115713   -0.0114752   0.0346179
Birth       PROVIDE          BANGLADESH   1                    NA                 0.0007477   -0.0114464   0.0129418
6 months    CMC-V-BCS-2002   INDIA        1                    NA                 0.0949904    0.0461634   0.1438174
6 months    IRC              INDIA        1                    NA                 0.0278300   -0.0124426   0.0681027
6 months    NIH-Crypto       BANGLADESH   1                    NA                -0.0114495   -0.0385884   0.0156894
6 months    PROVIDE          BANGLADESH   1                    NA                 0.0131982   -0.0049540   0.0313505
24 months   CMC-V-BCS-2002   INDIA        1                    NA                 0.1127452    0.0577950   0.1676954
24 months   IRC              INDIA        1                    NA                 0.0255682   -0.0202254   0.0713618
24 months   NIH-Crypto       BANGLADESH   1                    NA                -0.0034349   -0.0451161   0.0382462
24 months   PROVIDE          BANGLADESH   1                    NA                 0.0231411    0.0043271   0.0419550


### Parameter: PAF


agecat      studyid          country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       IRC              INDIA        1                    NA                 0.1440820   -0.1365951   0.3554471
Birth       NIH-Crypto       BANGLADESH   1                    NA                 0.0843053   -0.0993556   0.2372833
Birth       PROVIDE          BANGLADESH   1                    NA                 0.0083960   -0.1384015   0.1362640
6 months    CMC-V-BCS-2002   INDIA        1                    NA                 0.3157788    0.1395185   0.4559341
6 months    IRC              INDIA        1                    NA                 0.1130240   -0.0660338   0.2620061
6 months    NIH-Crypto       BANGLADESH   1                    NA                -0.0611763   -0.2163122   0.0741726
6 months    PROVIDE          BANGLADESH   1                    NA                 0.0830390   -0.0379770   0.1899459
24 months   CMC-V-BCS-2002   INDIA        1                    NA                 0.1572499    0.0745847   0.2325309
24 months   IRC              INDIA        1                    NA                 0.0605164   -0.0543046   0.1628326
24 months   NIH-Crypto       BANGLADESH   1                    NA                -0.0161876   -0.2328322   0.1623862
24 months   PROVIDE          BANGLADESH   1                    NA                 0.0703975    0.0115658   0.1257276
