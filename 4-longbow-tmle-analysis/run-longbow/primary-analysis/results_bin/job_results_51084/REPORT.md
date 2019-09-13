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
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   1                0        0     2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   1                1        1     2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   0                0        1     2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   0                1        0     2
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1                0       34    90
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1                1        4    90
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0                0       40    90
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0                1       12    90
Birth       ki1000108-IRC              INDIA          1                0      197   378
Birth       ki1000108-IRC              INDIA          1                1       21   378
Birth       ki1000108-IRC              INDIA          0                0      138   378
Birth       ki1000108-IRC              INDIA          0                1       22   378
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1                0       11    20
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1                1        1    20
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0                0        6    20
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0                1        2    20
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
6 months    ki1017093b-PROVIDE         BANGLADESH     1                0      413   583
6 months    ki1017093b-PROVIDE         BANGLADESH     1                1       69   583
6 months    ki1017093b-PROVIDE         BANGLADESH     0                0       76   583
6 months    ki1017093b-PROVIDE         BANGLADESH     0                1       25   583
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                0      264   545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                1       65   545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                0      179   545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                1       37   545
6 months    ki1113344-GMS-Nepal        NEPAL          1                0        8   504
6 months    ki1113344-GMS-Nepal        NEPAL          1                1        0   504
6 months    ki1113344-GMS-Nepal        NEPAL          0                0      389   504
6 months    ki1113344-GMS-Nepal        NEPAL          0                1      107   504
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                0        1     1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                1        0     1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                0        0     1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                1        0     1
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                0       67   372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                1       96   372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                0       39   372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                1      170   372
24 months   ki1000108-IRC              INDIA          1                0      144   400
24 months   ki1000108-IRC              INDIA          1                1       87   400
24 months   ki1000108-IRC              INDIA          0                0       89   400
24 months   ki1000108-IRC              INDIA          0                1       80   400
24 months   ki1017093b-PROVIDE         BANGLADESH     1                0      338   577
24 months   ki1017093b-PROVIDE         BANGLADESH     1                1      141   577
24 months   ki1017093b-PROVIDE         BANGLADESH     0                0       49   577
24 months   ki1017093b-PROVIDE         BANGLADESH     0                1       49   577
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                0      156   410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                1       43   410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                0      167   410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                1       44   410
24 months   ki1113344-GMS-Nepal        NEPAL          1                0        7   446
24 months   ki1113344-GMS-Nepal        NEPAL          1                1        0   446
24 months   ki1113344-GMS-Nepal        NEPAL          0                0      237   446
24 months   ki1113344-GMS-Nepal        NEPAL          0                1      202   446


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
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
![](/tmp/8014b928-7977-4f97-8397-77acd87b24c4/fb2d3683-3699-4719-af68-8481f7b92788/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8014b928-7977-4f97-8397-77acd87b24c4/fb2d3683-3699-4719-af68-8481f7b92788/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8014b928-7977-4f97-8397-77acd87b24c4/fb2d3683-3699-4719-af68-8481f7b92788/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8014b928-7977-4f97-8397-77acd87b24c4/fb2d3683-3699-4719-af68-8481f7b92788/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        1                    NA                0.0994500   0.0600706   0.1388295
Birth       ki1000108-IRC              INDIA        0                    NA                0.1402094   0.0872626   0.1931561
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.2035157   0.1442953   0.2627362
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.3398418   0.2725181   0.4071655
6 months    ki1000108-IRC              INDIA        1                    NA                0.2138452   0.1603146   0.2673757
6 months    ki1000108-IRC              INDIA        0                    NA                0.2895714   0.2194060   0.3597367
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1432891   0.1119565   0.1746217
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2483708   0.1644355   0.3323060
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.2004121   0.1562798   0.2445444
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.1756296   0.1233309   0.2279282
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.5948858   0.5130059   0.6767657
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.8042244   0.7473999   0.8610489
24 months   ki1000108-IRC              INDIA        1                    NA                0.3783895   0.3146264   0.4421525
24 months   ki1000108-IRC              INDIA        0                    NA                0.4668442   0.3891195   0.5445689
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.2956236   0.2546715   0.3365757
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.4923958   0.3907765   0.5940151
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.2152168   0.1530859   0.2773477
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.2192700   0.1614208   0.2771191


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        NA                   NA                0.1137566   0.0817056   0.1458077
6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.3008130   0.2539566   0.3476694
6 months    ki1000108-IRC              INDIA        NA                   NA                0.2462312   0.2038529   0.2886094
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1871560   0.1543801   0.2199318
24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.7150538   0.6691221   0.7609854
24 months   ki1000108-IRC              INDIA        NA                   NA                0.4175000   0.3691120   0.4658880
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2121951   0.1725707   0.2518196


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC              INDIA        0                    1                 1.4098475   0.8158972   2.436177
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 1.6698551   1.1711860   2.380848
6 months    ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA        0                    1                 1.3541170   0.9546637   1.920711
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    1                 1.7333546   1.1589965   2.592345
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 0.8763422   0.6048272   1.269744
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 1.3518971   1.1580190   1.578235
24 months   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA        0                    1                 1.2337664   0.9731940   1.564107
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 1.6656175   1.2973093   2.138489
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 1.0188330   0.6896943   1.505045


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA        1                    NA                 0.0143066   -0.0139065   0.0425197
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0972973    0.0478414   0.1467531
6 months    ki1000108-IRC              INDIA        1                    NA                 0.0323860   -0.0051716   0.0699436
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0179459    0.0020175   0.0338743
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0132561   -0.0406796   0.0141674
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.1201680    0.0593298   0.1810061
24 months   ki1000108-IRC              INDIA        1                    NA                 0.0391105   -0.0041612   0.0823822
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0336658    0.0141432   0.0531884
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0030217   -0.0494447   0.0434014


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA        1                    NA                 0.1257648   -0.1572597   0.3395716
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.3234477    0.1432871   0.4657218
6 months    ki1000108-IRC              INDIA        1                    NA                 0.1315268   -0.0343274   0.2707863
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.1113029    0.0084033   0.2035244
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0708292   -0.2274965   0.0658424
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.1680544    0.0758329   0.2510733
24 months   ki1000108-IRC              INDIA        1                    NA                 0.0936780   -0.0163325   0.1917806
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.1022378    0.0411741   0.1594127
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0142401   -0.2583016   0.1824830
