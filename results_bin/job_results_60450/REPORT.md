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

agecat                        studyid          country        cleanck    ever_wasted   n_cell     n
----------------------------  ---------------  -------------  --------  ------------  -------  ----
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA          1                    0      104   368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA          1                    1       59   368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA          0                    0       98   368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA          0                    1      107   368
0-24 months (no birth wast)   GMS-Nepal        NEPAL          1                    0        7   589
0-24 months (no birth wast)   GMS-Nepal        NEPAL          1                    1        2   589
0-24 months (no birth wast)   GMS-Nepal        NEPAL          0                    0      279   589
0-24 months (no birth wast)   GMS-Nepal        NEPAL          0                    1      301   589
0-24 months (no birth wast)   IRC              INDIA          1                    0      107   399
0-24 months (no birth wast)   IRC              INDIA          1                    1      123   399
0-24 months (no birth wast)   IRC              INDIA          0                    0       84   399
0-24 months (no birth wast)   IRC              INDIA          0                    1       85   399
0-24 months (no birth wast)   MAL-ED           PERU           1                    0        1     2
0-24 months (no birth wast)   MAL-ED           PERU           1                    1        0     2
0-24 months (no birth wast)   MAL-ED           PERU           0                    0        1     2
0-24 months (no birth wast)   MAL-ED           PERU           0                    1        0     2
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA   1                    0        2     3
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA   1                    1        0     3
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA   0                    0        1     3
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA   0                    1        0     3
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH     1                    0      319   575
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH     1                    1       39   575
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH     0                    0      181   575
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH     0                    1       36   575
0-24 months (no birth wast)   PROVIDE          BANGLADESH     1                    0      471   687
0-24 months (no birth wast)   PROVIDE          BANGLADESH     1                    1       90   687
0-24 months (no birth wast)   PROVIDE          BANGLADESH     0                    0       94   687
0-24 months (no birth wast)   PROVIDE          BANGLADESH     0                    1       32   687
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA          1                    0      117   350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA          1                    1       40   350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA          0                    0      125   350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA          0                    1       68   350
0-6 months (no birth wast)    GMS-Nepal        NEPAL          1                    0        7   576
0-6 months (no birth wast)    GMS-Nepal        NEPAL          1                    1        1   576
0-6 months (no birth wast)    GMS-Nepal        NEPAL          0                    0      456   576
0-6 months (no birth wast)    GMS-Nepal        NEPAL          0                    1      112   576
0-6 months (no birth wast)    IRC              INDIA          1                    0      136   381
0-6 months (no birth wast)    IRC              INDIA          1                    1       86   381
0-6 months (no birth wast)    IRC              INDIA          0                    0      115   381
0-6 months (no birth wast)    IRC              INDIA          0                    1       44   381
0-6 months (no birth wast)    MAL-ED           PERU           1                    0        1     2
0-6 months (no birth wast)    MAL-ED           PERU           1                    1        0     2
0-6 months (no birth wast)    MAL-ED           PERU           0                    0        1     2
0-6 months (no birth wast)    MAL-ED           PERU           0                    1        0     2
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA   1                    0        2     3
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA   1                    1        0     3
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA   0                    0        1     3
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA   0                    1        0     3
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH     1                    0      351   572
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH     1                    1        4   572
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH     0                    0      208   572
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH     0                    1        9   572
0-6 months (no birth wast)    PROVIDE          BANGLADESH     1                    0      530   683
0-6 months (no birth wast)    PROVIDE          BANGLADESH     1                    1       27   683
0-6 months (no birth wast)    PROVIDE          BANGLADESH     0                    0      116   683
0-6 months (no birth wast)    PROVIDE          BANGLADESH     0                    1       10   683
6-24 months                   CMC-V-BCS-2002   INDIA          1                    0      128   373
6-24 months                   CMC-V-BCS-2002   INDIA          1                    1       35   373
6-24 months                   CMC-V-BCS-2002   INDIA          0                    0      146   373
6-24 months                   CMC-V-BCS-2002   INDIA          0                    1       64   373
6-24 months                   GMS-Nepal        NEPAL          1                    0        6   529
6-24 months                   GMS-Nepal        NEPAL          1                    1        2   529
6-24 months                   GMS-Nepal        NEPAL          0                    0      269   529
6-24 months                   GMS-Nepal        NEPAL          0                    1      252   529
6-24 months                   IRC              INDIA          1                    0      166   400
6-24 months                   IRC              INDIA          1                    1       65   400
6-24 months                   IRC              INDIA          0                    0      110   400
6-24 months                   IRC              INDIA          0                    1       59   400
6-24 months                   MAL-ED           SOUTH AFRICA   1                    0        1     1
6-24 months                   MAL-ED           SOUTH AFRICA   1                    1        0     1
6-24 months                   MAL-ED           SOUTH AFRICA   0                    0        0     1
6-24 months                   MAL-ED           SOUTH AFRICA   0                    1        0     1
6-24 months                   NIH-Crypto       BANGLADESH     1                    0      306   559
6-24 months                   NIH-Crypto       BANGLADESH     1                    1       37   559
6-24 months                   NIH-Crypto       BANGLADESH     0                    0      186   559
6-24 months                   NIH-Crypto       BANGLADESH     0                    1       30   559
6-24 months                   PROVIDE          BANGLADESH     1                    0      437   615
6-24 months                   PROVIDE          BANGLADESH     1                    1       71   615
6-24 months                   PROVIDE          BANGLADESH     0                    0       79   615
6-24 months                   PROVIDE          BANGLADESH     0                    1       28   615


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/f3b1d37a-1689-444d-bd3d-3c8c0a77fe31/0ec00283-3f00-4a44-964c-fa8ef1d60344/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f3b1d37a-1689-444d-bd3d-3c8c0a77fe31/0ec00283-3f00-4a44-964c-fa8ef1d60344/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f3b1d37a-1689-444d-bd3d-3c8c0a77fe31/0ec00283-3f00-4a44-964c-fa8ef1d60344/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f3b1d37a-1689-444d-bd3d-3c8c0a77fe31/0ec00283-3f00-4a44-964c-fa8ef1d60344/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA        1                    NA                0.3837871   0.3064563   0.4611179
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA        0                    NA                0.5290496   0.4582937   0.5998056
0-24 months (no birth wast)   IRC              INDIA        1                    NA                0.5223740   0.4565682   0.5881798
0-24 months (no birth wast)   IRC              INDIA        0                    NA                0.5035986   0.4207634   0.5864338
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH   1                    NA                0.1082778   0.0761177   0.1404378
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH   0                    NA                0.1616411   0.1117057   0.2115765
0-24 months (no birth wast)   PROVIDE          BANGLADESH   1                    NA                0.1609416   0.1305329   0.1913503
0-24 months (no birth wast)   PROVIDE          BANGLADESH   0                    NA                0.2464313   0.1694846   0.3233779
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA        1                    NA                0.2561166   0.1820986   0.3301345
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA        0                    NA                0.3673368   0.2969362   0.4377375
0-6 months (no birth wast)    IRC              INDIA        1                    NA                0.3904895   0.3255718   0.4554072
0-6 months (no birth wast)    IRC              INDIA        0                    NA                0.2804479   0.2087046   0.3521911
0-6 months (no birth wast)    PROVIDE          BANGLADESH   1                    NA                0.0483150   0.0304650   0.0661649
0-6 months (no birth wast)    PROVIDE          BANGLADESH   0                    NA                0.0757917   0.0279625   0.1236210
6-24 months                   CMC-V-BCS-2002   INDIA        1                    NA                0.2093463   0.1467494   0.2719432
6-24 months                   CMC-V-BCS-2002   INDIA        0                    NA                0.3001199   0.2364350   0.3638048
6-24 months                   IRC              INDIA        1                    NA                0.2755410   0.2157794   0.3353026
6-24 months                   IRC              INDIA        0                    NA                0.3626513   0.2816079   0.4436947
6-24 months                   NIH-Crypto       BANGLADESH   1                    NA                0.1063501   0.0732489   0.1394514
6-24 months                   NIH-Crypto       BANGLADESH   0                    NA                0.1402131   0.0919378   0.1884885
6-24 months                   PROVIDE          BANGLADESH   1                    NA                0.1401322   0.1099143   0.1703500
6-24 months                   PROVIDE          BANGLADESH   0                    NA                0.2590814   0.1746777   0.3434852


### Parameter: E(Y)


agecat                        studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA        NA                   NA                0.4510870   0.4001777   0.5019962
0-24 months (no birth wast)   IRC              INDIA        NA                   NA                0.5213033   0.4722258   0.5703807
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH   NA                   NA                0.1304348   0.1028836   0.1579859
0-24 months (no birth wast)   PROVIDE          BANGLADESH   NA                   NA                0.1775837   0.1489858   0.2061816
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA        NA                   NA                0.3085714   0.2601110   0.3570318
0-6 months (no birth wast)    IRC              INDIA        NA                   NA                0.3412073   0.2935379   0.3888768
0-6 months (no birth wast)    PROVIDE          BANGLADESH   NA                   NA                0.0541728   0.0371844   0.0711612
6-24 months                   CMC-V-BCS-2002   INDIA        NA                   NA                0.2654155   0.2205451   0.3102860
6-24 months                   IRC              INDIA        NA                   NA                0.3100000   0.2646197   0.3553803
6-24 months                   NIH-Crypto       BANGLADESH   NA                   NA                0.1198569   0.0929081   0.1468057
6-24 months                   PROVIDE          BANGLADESH   NA                   NA                0.1609756   0.1319065   0.1900447


### Parameter: RR


agecat                        studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA        0                    1                 1.3784976   1.0806434   1.7584484
0-24 months (no birth wast)   IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   IRC              INDIA        0                    1                 0.9640576   0.7836696   1.1859680
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH   0                    1                 1.4928374   0.9718304   2.2931609
0-24 months (no birth wast)   PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   PROVIDE          BANGLADESH   0                    1                 1.5311844   1.0633716   2.2048039
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA        0                    1                 1.4342565   1.0140826   2.0285248
0-6 months (no birth wast)    IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    IRC              INDIA        0                    1                 0.7181957   0.5291937   0.9746998
0-6 months (no birth wast)    PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    PROVIDE          BANGLADESH   0                    1                 1.5687006   0.7548806   3.2598817
6-24 months                   CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   CMC-V-BCS-2002   INDIA        0                    1                 1.4336050   0.9936491   2.0683593
6-24 months                   IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   IRC              INDIA        0                    1                 1.3161430   0.9647734   1.7954812
6-24 months                   NIH-Crypto       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   NIH-Crypto       BANGLADESH   0                    1                 1.3184106   0.8299974   2.0942315
6-24 months                   PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   PROVIDE          BANGLADESH   0                    1                 1.8488362   1.2517980   2.7306286


### Parameter: PAR


agecat                        studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA        1                    NA                 0.0672998    0.0063289    0.1282707
0-24 months (no birth wast)   IRC              INDIA        1                    NA                -0.0010707   -0.0457640    0.0436226
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH   1                    NA                 0.0221570   -0.0004227    0.0447367
0-24 months (no birth wast)   PROVIDE          BANGLADESH   1                    NA                 0.0166421    0.0014325    0.0318517
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA        1                    NA                 0.0524549   -0.0074084    0.1123181
0-6 months (no birth wast)    IRC              INDIA        1                    NA                -0.0492821   -0.0902724   -0.0082919
0-6 months (no birth wast)    PROVIDE          BANGLADESH   1                    NA                 0.0058578   -0.0035218    0.0152374
6-24 months                   CMC-V-BCS-2002   INDIA        1                    NA                 0.0560692    0.0054261    0.1067124
6-24 months                   IRC              INDIA        1                    NA                 0.0344590   -0.0079487    0.0768667
6-24 months                   NIH-Crypto       BANGLADESH   1                    NA                 0.0135068   -0.0087644    0.0357779
6-24 months                   PROVIDE          BANGLADESH   1                    NA                 0.0208434    0.0050590    0.0366278


### Parameter: PAF


agecat                        studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA        1                    NA                 0.1491948    0.0025192    0.2743023
0-24 months (no birth wast)   IRC              INDIA        1                    NA                -0.0020539   -0.0915661    0.0801180
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH   1                    NA                 0.1698703   -0.0188321    0.3236223
0-24 months (no birth wast)   PROVIDE          BANGLADESH   1                    NA                 0.0937142    0.0048051    0.1746802
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA        1                    NA                 0.1699926   -0.0482407    0.3427919
0-6 months (no birth wast)    IRC              INDIA        1                    NA                -0.1444346   -0.2714801   -0.0300833
0-6 months (no birth wast)    PROVIDE          BANGLADESH   1                    NA                 0.1081319   -0.0794801    0.2631372
6-24 months                   CMC-V-BCS-2002   INDIA        1                    NA                 0.2112508   -0.0022598    0.3792774
6-24 months                   IRC              INDIA        1                    NA                 0.1111581   -0.0364462    0.2377415
6-24 months                   NIH-Crypto       BANGLADESH   1                    NA                 0.1126908   -0.0928459    0.2795713
6-24 months                   PROVIDE          BANGLADESH   1                    NA                 0.1294820    0.0277515    0.2205680
