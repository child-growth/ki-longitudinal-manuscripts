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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** impsan

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                 country                        impsan    n_cell       n  outcome_variable 
----------  ----------------------  -----------------------------  -------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1            168     201  whz              
Birth       ki0047075b-MAL-ED       BANGLADESH                     0             33     201  whz              
Birth       ki0047075b-MAL-ED       BRAZIL                         1             56      57  whz              
Birth       ki0047075b-MAL-ED       BRAZIL                         0              1      57  whz              
Birth       ki0047075b-MAL-ED       INDIA                          1             14      39  whz              
Birth       ki0047075b-MAL-ED       INDIA                          0             25      39  whz              
Birth       ki0047075b-MAL-ED       NEPAL                          1             24      25  whz              
Birth       ki0047075b-MAL-ED       NEPAL                          0              1      25  whz              
Birth       ki0047075b-MAL-ED       PERU                           1             50     203  whz              
Birth       ki0047075b-MAL-ED       PERU                           0            153     203  whz              
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1              0      94  whz              
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0             94      94  whz              
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     110  whz              
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            110     110  whz              
Birth       ki1017093-NIH-Birth     BANGLADESH                     1            222     575  whz              
Birth       ki1017093-NIH-Birth     BANGLADESH                     0            353     575  whz              
Birth       ki1017093b-PROVIDE      BANGLADESH                     1             43      45  whz              
Birth       ki1017093b-PROVIDE      BANGLADESH                     0              2      45  whz              
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1            610     696  whz              
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0             86     696  whz              
Birth       ki1114097-CONTENT       PERU                           1              1       2  whz              
Birth       ki1114097-CONTENT       PERU                           0              1       2  whz              
Birth       ki1135781-COHORTS       GUATEMALA                      1             43     449  whz              
Birth       ki1135781-COHORTS       GUATEMALA                      0            406     449  whz              
Birth       ki1135781-COHORTS       INDIA                          1           1685    4461  whz              
Birth       ki1135781-COHORTS       INDIA                          0           2776    4461  whz              
Birth       ki1135781-COHORTS       PHILIPPINES                    1            177    1126  whz              
Birth       ki1135781-COHORTS       PHILIPPINES                    0            949    1126  whz              
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1          12413   17991  whz              
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0           5578   17991  whz              
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1           1859    2394  whz              
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0            535    2394  whz              
6 months    ki0047075b-MAL-ED       BANGLADESH                     1            202     240  whz              
6 months    ki0047075b-MAL-ED       BANGLADESH                     0             38     240  whz              
6 months    ki0047075b-MAL-ED       BRAZIL                         1            205     209  whz              
6 months    ki0047075b-MAL-ED       BRAZIL                         0              4     209  whz              
6 months    ki0047075b-MAL-ED       INDIA                          1            108     233  whz              
6 months    ki0047075b-MAL-ED       INDIA                          0            125     233  whz              
6 months    ki0047075b-MAL-ED       NEPAL                          1            235     236  whz              
6 months    ki0047075b-MAL-ED       NEPAL                          0              1     236  whz              
6 months    ki0047075b-MAL-ED       PERU                           1             65     263  whz              
6 months    ki0047075b-MAL-ED       PERU                           0            198     263  whz              
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     244  whz              
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0            240     244  whz              
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     238  whz              
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            238     238  whz              
6 months    ki1017093-NIH-Birth     BANGLADESH                     1            205     537  whz              
6 months    ki1017093-NIH-Birth     BANGLADESH                     0            332     537  whz              
6 months    ki1017093b-PROVIDE      BANGLADESH                     1             11      11  whz              
6 months    ki1017093b-PROVIDE      BANGLADESH                     0              0      11  whz              
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1            615     704  whz              
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0             89     704  whz              
6 months    ki1114097-CONTENT       PERU                           1            201     215  whz              
6 months    ki1114097-CONTENT       PERU                           0             14     215  whz              
6 months    ki1135781-COHORTS       GUATEMALA                      1             67     658  whz              
6 months    ki1135781-COHORTS       GUATEMALA                      0            591     658  whz              
6 months    ki1135781-COHORTS       INDIA                          1           1879    4964  whz              
6 months    ki1135781-COHORTS       INDIA                          0           3085    4964  whz              
6 months    ki1135781-COHORTS       PHILIPPINES                    1            143    1083  whz              
6 months    ki1135781-COHORTS       PHILIPPINES                    0            940    1083  whz              
6 months    ki1148112-LCNI-5        MALAWI                         1              3     812  whz              
6 months    ki1148112-LCNI-5        MALAWI                         0            809     812  whz              
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1          12015   16773  whz              
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0           4758   16773  whz              
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1           3734    4827  whz              
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0           1093    4827  whz              
24 months   ki0047075b-MAL-ED       BANGLADESH                     1            181     212  whz              
24 months   ki0047075b-MAL-ED       BANGLADESH                     0             31     212  whz              
24 months   ki0047075b-MAL-ED       BRAZIL                         1            166     169  whz              
24 months   ki0047075b-MAL-ED       BRAZIL                         0              3     169  whz              
24 months   ki0047075b-MAL-ED       INDIA                          1            104     225  whz              
24 months   ki0047075b-MAL-ED       INDIA                          0            121     225  whz              
24 months   ki0047075b-MAL-ED       NEPAL                          1            227     228  whz              
24 months   ki0047075b-MAL-ED       NEPAL                          0              1     228  whz              
24 months   ki0047075b-MAL-ED       PERU                           1             47     196  whz              
24 months   ki0047075b-MAL-ED       PERU                           0            149     196  whz              
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     235  whz              
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            231     235  whz              
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     207  whz              
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            207     207  whz              
24 months   ki1017093-NIH-Birth     BANGLADESH                     1            170     428  whz              
24 months   ki1017093-NIH-Birth     BANGLADESH                     0            258     428  whz              
24 months   ki1017093b-PROVIDE      BANGLADESH                     1              9       9  whz              
24 months   ki1017093b-PROVIDE      BANGLADESH                     0              0       9  whz              
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            433     503  whz              
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             70     503  whz              
24 months   ki1114097-CONTENT       PERU                           1            151     164  whz              
24 months   ki1114097-CONTENT       PERU                           0             13     164  whz              
24 months   ki1135781-COHORTS       GUATEMALA                      1             77     903  whz              
24 months   ki1135781-COHORTS       GUATEMALA                      0            826     903  whz              
24 months   ki1135781-COHORTS       INDIA                          1           1457    3724  whz              
24 months   ki1135781-COHORTS       INDIA                          0           2267    3724  whz              
24 months   ki1135781-COHORTS       PHILIPPINES                    1            124     993  whz              
24 months   ki1135781-COHORTS       PHILIPPINES                    0            869     993  whz              
24 months   ki1148112-LCNI-5        MALAWI                         1              2     556  whz              
24 months   ki1148112-LCNI-5        MALAWI                         0            554     556  whz              
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1           6085    8593  whz              
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0           2508    8593  whz              
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1           3671    4730  whz              
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0           1059    4730  whz              


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/e850ce35-3191-4db5-afc3-23039714b3e0/b066d3e7-de28-46fc-9242-d18242833f90/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e850ce35-3191-4db5-afc3-23039714b3e0/b066d3e7-de28-46fc-9242-d18242833f90/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e850ce35-3191-4db5-afc3-23039714b3e0/b066d3e7-de28-46fc-9242-d18242833f90/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.9860563   -1.1480329   -0.8240797
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.9098519   -1.3045990   -0.5151049
Birth       ki0047075b-MAL-ED       INDIA         1                    NA                -1.3063237   -1.8250696   -0.7875777
Birth       ki0047075b-MAL-ED       INDIA         0                    NA                -0.9584881   -1.3428128   -0.5741634
Birth       ki0047075b-MAL-ED       PERU          1                    NA                -0.1688535   -0.3845238    0.0468168
Birth       ki0047075b-MAL-ED       PERU          0                    NA                 0.0021620   -0.1646630    0.1689869
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                -1.3499461   -1.5163550   -1.1835373
Birth       ki1017093-NIH-Birth     BANGLADESH    0                    NA                -1.3457078   -1.4608040   -1.2306117
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -1.2291976   -1.3187018   -1.1396934
Birth       ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -1.2992214   -1.5575974   -1.0408453
Birth       ki1135781-COHORTS       GUATEMALA     1                    NA                -1.1533594   -1.8471232   -0.4595956
Birth       ki1135781-COHORTS       GUATEMALA     0                    NA                -0.8931841   -1.0359825   -0.7503858
Birth       ki1135781-COHORTS       INDIA         1                    NA                -0.9465947   -1.0077982   -0.8853912
Birth       ki1135781-COHORTS       INDIA         0                    NA                -0.9890072   -1.0338139   -0.9442004
Birth       ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.8553645   -1.0372230   -0.6735060
Birth       ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.6493524   -0.7301347   -0.5685702
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.7651664   -0.7883254   -0.7420075
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.8006110   -0.8332283   -0.7679936
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.6724959   -0.7319605   -0.6130313
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.7262740   -0.8302048   -0.6223432
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.1239837   -0.2645863    0.0166190
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.1253259   -0.4895812    0.2389295
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                -0.6967610   -0.8796909   -0.5138312
6 months    ki0047075b-MAL-ED       INDIA         0                    NA                -0.7073697   -0.8884132   -0.5263263
6 months    ki0047075b-MAL-ED       PERU          1                    NA                 1.0364337    0.7656391    1.3072284
6 months    ki0047075b-MAL-ED       PERU          0                    NA                 1.0365795    0.8861646    1.1869943
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.3700178   -0.5112518   -0.2287838
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.5097680   -0.6274542   -0.3920817
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0358214   -0.0478973    0.1195401
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                 0.0250820   -0.2273742    0.2775382
6 months    ki1114097-CONTENT       PERU          1                    NA                 1.0747447    0.9526611    1.1968282
6 months    ki1114097-CONTENT       PERU          0                    NA                 0.8638813    0.5142096    1.2135529
6 months    ki1135781-COHORTS       GUATEMALA     1                    NA                 0.2268950   -0.0426955    0.4964855
6 months    ki1135781-COHORTS       GUATEMALA     0                    NA                 0.1491726    0.0565732    0.2417719
6 months    ki1135781-COHORTS       INDIA         1                    NA                -0.5935732   -0.6485202   -0.5386262
6 months    ki1135781-COHORTS       INDIA         0                    NA                -0.7916663   -0.8340293   -0.7493033
6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.2589160   -0.4290578   -0.0887742
6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.2914215   -0.3619554   -0.2208876
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.5725433   -0.5954610   -0.5496255
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -0.6468722   -0.6845376   -0.6092067
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.3572125   -0.3987581   -0.3156669
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -0.5226145   -0.6075595   -0.4376694
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.7749546   -0.9060309   -0.6438783
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -1.0648664   -1.3633648   -0.7663680
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                -0.8370017   -1.0162343   -0.6577690
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -1.0737133   -1.2228271   -0.9245996
24 months   ki0047075b-MAL-ED       PERU          1                    NA                 0.0261982   -0.3741249    0.4265214
24 months   ki0047075b-MAL-ED       PERU          0                    NA                 0.1190512   -0.0368816    0.2749840
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.8488207   -0.9911222   -0.7065192
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.9437237   -1.0739098   -0.8135376
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.6335060   -0.7376181   -0.5293939
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.4607079   -0.7060576   -0.2153581
24 months   ki1114097-CONTENT       PERU          1                    NA                 0.5574772    0.4121089    0.7028455
24 months   ki1114097-CONTENT       PERU          0                    NA                 0.6242247    0.2556717    0.9927777
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                -0.1180774   -0.3074950    0.0713402
24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                -0.2950576   -0.3578991   -0.2322161
24 months   ki1135781-COHORTS       INDIA         1                    NA                -0.5622130   -0.6164360   -0.5079901
24 months   ki1135781-COHORTS       INDIA         0                    NA                -0.7330848   -0.7755093   -0.6906602
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.5289892   -0.6887573   -0.3692211
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.6807893   -0.7436741   -0.6179046
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -1.2815363   -1.3095762   -1.2534965
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -1.3372491   -1.3815120   -1.2929862
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -1.2092950   -1.2442983   -1.1742918
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -1.2835496   -1.3578422   -1.2092571


### Parameter: E(Y)


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    NA                   NA                -0.9728358   -1.1217009   -0.8239707
Birth       ki0047075b-MAL-ED       INDIA         NA                   NA                -0.9441026   -1.2397919   -0.6484132
Birth       ki0047075b-MAL-ED       PERU          NA                   NA                -0.0381281   -0.1669868    0.0907307
Birth       ki1017093-NIH-Birth     BANGLADESH    NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                -1.2402802   -1.3249395   -1.1556208
Birth       ki1135781-COHORTS       GUATEMALA     NA                   NA                -0.9294432   -1.0701697   -0.7887168
Birth       ki1135781-COHORTS       INDIA         NA                   NA                -0.9771733   -1.0119896   -0.9423570
Birth       ki1135781-COHORTS       PHILIPPINES   NA                   NA                -0.6841030   -0.7582767   -0.6099293
Birth       kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                -0.7777528   -0.7967725   -0.7587330
Birth       kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                -0.6882498   -0.7406539   -0.6358456
6 months    ki0047075b-MAL-ED       BANGLADESH    NA                   NA                -0.1333333   -0.2623761   -0.0042906
6 months    ki0047075b-MAL-ED       INDIA         NA                   NA                -0.7018062   -0.8289790   -0.5746333
6 months    ki0047075b-MAL-ED       PERU          NA                   NA                 1.0372972    0.9141109    1.1604836
6 months    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                 0.0336790   -0.0458848    0.1132428
6 months    ki1114097-CONTENT       PERU          NA                   NA                 1.0684318    0.9515274    1.1853362
6 months    ki1135781-COHORTS       GUATEMALA     NA                   NA                 0.1458511    0.0589571    0.2327450
6 months    ki1135781-COHORTS       INDIA         NA                   NA                -0.7104855   -0.7428053   -0.6781657
6 months    ki1135781-COHORTS       PHILIPPINES   NA                   NA                -0.2830286   -0.3471028   -0.2189545
6 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                -0.5931476   -0.6127125   -0.5735828
6 months    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                -0.3901595   -0.4274150   -0.3529041
24 months   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                -0.9490222   -1.0651720   -0.8328724
24 months   ki0047075b-MAL-ED       PERU          NA                   NA                 0.0972406   -0.0271085    0.2215898
24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                -0.6115706   -0.7075788   -0.5155624
24 months   ki1114097-CONTENT       PERU          NA                   NA                 0.5668293    0.4302437    0.7034148
24 months   ki1135781-COHORTS       GUATEMALA     NA                   NA                -0.2861905   -0.3461594   -0.2262216
24 months   ki1135781-COHORTS       INDIA         NA                   NA                -0.6606874   -0.6938402   -0.6275347
24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                -0.6564149   -0.7144543   -0.5983756
24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                -1.2970418   -1.3203361   -1.2737475
24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                -1.2231776   -1.2550332   -1.1913220


### Parameter: ATE


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    1                  0.0762043   -0.3512009    0.5036096
Birth       ki0047075b-MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       INDIA         0                    1                  0.3478356   -0.3132590    1.0089302
Birth       ki0047075b-MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU          0                    1                  0.1710155   -0.1021789    0.4442098
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH    0                    1                  0.0042383   -0.1986667    0.2071434
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 -0.0700238   -0.3432486    0.2032010
Birth       ki1135781-COHORTS       GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS       GUATEMALA     0                    1                  0.2601753   -0.4481927    0.9685433
Birth       ki1135781-COHORTS       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS       INDIA         0                    1                 -0.0424125   -0.1181688    0.0333439
Birth       ki1135781-COHORTS       PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS       PHILIPPINES   0                    1                  0.2060120    0.0074111    0.4046129
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    1                 -0.0354445   -0.0732308    0.0023418
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    1                 -0.0537781   -0.1719229    0.0643668
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    1                 -0.0013422   -0.3924212    0.3897368
6 months    ki0047075b-MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA         0                    1                 -0.0106087   -0.2710331    0.2498158
6 months    ki0047075b-MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU          0                    1                  0.0001457   -0.3105784    0.3108699
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    1                 -0.1397502   -0.3239700    0.0444697
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 -0.0107394   -0.2767623    0.2552836
6 months    ki1114097-CONTENT       PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT       PERU          0                    1                 -0.2108634   -0.5836656    0.1619388
6 months    ki1135781-COHORTS       GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS       GUATEMALA     0                    1                 -0.0777224   -0.3628518    0.2074070
6 months    ki1135781-COHORTS       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS       INDIA         0                    1                 -0.1980931   -0.2673807   -0.1288055
6 months    ki1135781-COHORTS       PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS       PHILIPPINES   0                    1                 -0.0325055   -0.2171586    0.1521477
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    1                 -0.0743289   -0.1162783   -0.0323795
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    1                 -0.1654019   -0.2590450   -0.0717589
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    1                 -0.2899118   -0.6167912    0.0369675
24 months   ki0047075b-MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA         0                    1                 -0.2367117   -0.4706648   -0.0027585
24 months   ki0047075b-MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU          0                    1                  0.0928530   -0.3368629    0.5225689
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    1                 -0.0949030   -0.2849095    0.0951035
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    1                  0.1727981   -0.0922726    0.4378688
24 months   ki1114097-CONTENT       PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT       PERU          0                    1                  0.0667475   -0.3301138    0.4636087
24 months   ki1135781-COHORTS       GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS       GUATEMALA     0                    1                 -0.1769802   -0.3770249    0.0230645
24 months   ki1135781-COHORTS       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS       INDIA         0                    1                 -0.1708717   -0.2392938   -0.1024496
24 months   ki1135781-COHORTS       PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS       PHILIPPINES   0                    1                 -0.1518001   -0.3238391    0.0202390
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 -0.0557128   -0.1066258   -0.0047997
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 -0.0742546   -0.1550038    0.0064946


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0132205   -0.0543067    0.0807476
Birth       ki0047075b-MAL-ED       INDIA         1                    NA                 0.3622211   -0.0776384    0.8020806
Birth       ki0047075b-MAL-ED       PERU          1                    NA                 0.1307254   -0.0712803    0.3327311
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0000244   -0.1252992    0.1253480
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0110826   -0.0446309    0.0224657
Birth       ki1135781-COHORTS       GUATEMALA     1                    NA                 0.2239162   -0.4310592    0.8788916
Birth       ki1135781-COHORTS       INDIA         1                    NA                -0.0305786   -0.0797365    0.0185793
Birth       ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.1712614    0.0006506    0.3418723
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0125863   -0.0240119   -0.0011607
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0157539   -0.0417058    0.0101980
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0093497   -0.0660452    0.0473459
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                -0.0050451   -0.1450986    0.1350083
6 months    ki0047075b-MAL-ED       PERU          1                    NA                 0.0008635   -0.2450098    0.2467367
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0773860   -0.1921008    0.0373288
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0021424   -0.0348459    0.0305611
6 months    ki1114097-CONTENT       PERU          1                    NA                -0.0063129   -0.0338426    0.0212168
6 months    ki1135781-COHORTS       GUATEMALA     1                    NA                -0.0810439   -0.3424520    0.1803642
6 months    ki1135781-COHORTS       INDIA         1                    NA                -0.1169123   -0.1624425   -0.0713820
6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.0241126   -0.1874274    0.1392022
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0206044   -0.0315663   -0.0096425
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0329470   -0.0524842   -0.0134099
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0443379   -0.0968816    0.0082059
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                -0.1120206   -0.2388038    0.0147627
24 months   ki0047075b-MAL-ED       PERU          1                    NA                 0.0710424   -0.3036925    0.4457773
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0627584   -0.1771652    0.0516484
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0219354   -0.0131556    0.0570264
24 months   ki1114097-CONTENT       PERU          1                    NA                 0.0093521   -0.0225129    0.0412171
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                -0.1681131   -0.3522525    0.0160264
24 months   ki1135781-COHORTS       INDIA         1                    NA                -0.0984744   -0.1414926   -0.0554562
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.1274257   -0.2798036    0.0249523
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0155054   -0.0301105   -0.0009004
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0138825   -0.0301663    0.0024012
