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

**Outcome Variable:** haz

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

agecat      studyid                 country                        impsan    n_cell       n
----------  ----------------------  -----------------------------  -------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1            179     213
Birth       ki0047075b-MAL-ED       BANGLADESH                     0             34     213
Birth       ki0047075b-MAL-ED       BRAZIL                         1             59      60
Birth       ki0047075b-MAL-ED       BRAZIL                         0              1      60
Birth       ki0047075b-MAL-ED       INDIA                          1             15      40
Birth       ki0047075b-MAL-ED       INDIA                          0             25      40
Birth       ki0047075b-MAL-ED       NEPAL                          1             25      26
Birth       ki0047075b-MAL-ED       NEPAL                          0              1      26
Birth       ki0047075b-MAL-ED       PERU                           1             52     208
Birth       ki0047075b-MAL-ED       PERU                           0            156     208
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1              0      95
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0             95      95
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     118
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            118     118
Birth       ki1017093-NIH-Birth     BANGLADESH                     1            231     608
Birth       ki1017093-NIH-Birth     BANGLADESH                     0            377     608
Birth       ki1017093b-PROVIDE      BANGLADESH                     1             43      45
Birth       ki1017093b-PROVIDE      BANGLADESH                     0              2      45
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1            632     721
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0             89     721
Birth       ki1114097-CONTENT       PERU                           1              1       2
Birth       ki1114097-CONTENT       PERU                           0              1       2
Birth       ki1135781-COHORTS       GUATEMALA                      1             45     491
Birth       ki1135781-COHORTS       GUATEMALA                      0            446     491
Birth       ki1135781-COHORTS       INDIA                          1           1767    4776
Birth       ki1135781-COHORTS       INDIA                          0           3009    4776
Birth       ki1135781-COHORTS       PHILIPPINES                    1            178    1191
Birth       ki1135781-COHORTS       PHILIPPINES                    0           1013    1191
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1          18507   26641
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0           8134   26641
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1           2181    2820
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0            639    2820
6 months    ki0047075b-MAL-ED       BANGLADESH                     1            202     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     0             38     240
6 months    ki0047075b-MAL-ED       BRAZIL                         1            205     209
6 months    ki0047075b-MAL-ED       BRAZIL                         0              4     209
6 months    ki0047075b-MAL-ED       INDIA                          1            108     233
6 months    ki0047075b-MAL-ED       INDIA                          0            125     233
6 months    ki0047075b-MAL-ED       NEPAL                          1            235     236
6 months    ki0047075b-MAL-ED       NEPAL                          0              1     236
6 months    ki0047075b-MAL-ED       PERU                           1             65     263
6 months    ki0047075b-MAL-ED       PERU                           0            198     263
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0            240     244
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            238     238
6 months    ki1017093-NIH-Birth     BANGLADESH                     1            205     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0            332     537
6 months    ki1017093b-PROVIDE      BANGLADESH                     1             11      11
6 months    ki1017093b-PROVIDE      BANGLADESH                     0              0      11
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1            615     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0             89     704
6 months    ki1114097-CONTENT       PERU                           1            201     215
6 months    ki1114097-CONTENT       PERU                           0             14     215
6 months    ki1135781-COHORTS       GUATEMALA                      1             67     658
6 months    ki1135781-COHORTS       GUATEMALA                      0            591     658
6 months    ki1135781-COHORTS       INDIA                          1           1881    4971
6 months    ki1135781-COHORTS       INDIA                          0           3090    4971
6 months    ki1135781-COHORTS       PHILIPPINES                    1            143    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    0            940    1083
6 months    ki1148112-LCNI-5        MALAWI                         1              3     812
6 months    ki1148112-LCNI-5        MALAWI                         0            809     812
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1          11998   16742
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0           4744   16742
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1           3734    4825
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0           1091    4825
24 months   ki0047075b-MAL-ED       BANGLADESH                     1            181     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0             31     212
24 months   ki0047075b-MAL-ED       BRAZIL                         1            166     169
24 months   ki0047075b-MAL-ED       BRAZIL                         0              3     169
24 months   ki0047075b-MAL-ED       INDIA                          1            104     225
24 months   ki0047075b-MAL-ED       INDIA                          0            121     225
24 months   ki0047075b-MAL-ED       NEPAL                          1            227     228
24 months   ki0047075b-MAL-ED       NEPAL                          0              1     228
24 months   ki0047075b-MAL-ED       PERU                           1             47     196
24 months   ki0047075b-MAL-ED       PERU                           0            149     196
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            231     235
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            207     207
24 months   ki1017093-NIH-Birth     BANGLADESH                     1            170     429
24 months   ki1017093-NIH-Birth     BANGLADESH                     0            259     429
24 months   ki1017093b-PROVIDE      BANGLADESH                     1              9       9
24 months   ki1017093b-PROVIDE      BANGLADESH                     0              0       9
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            433     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             70     503
24 months   ki1114097-CONTENT       PERU                           1            151     164
24 months   ki1114097-CONTENT       PERU                           0             13     164
24 months   ki1135781-COHORTS       GUATEMALA                      1             77     893
24 months   ki1135781-COHORTS       GUATEMALA                      0            816     893
24 months   ki1135781-COHORTS       INDIA                          1           1471    3751
24 months   ki1135781-COHORTS       INDIA                          0           2280    3751
24 months   ki1135781-COHORTS       PHILIPPINES                    1            126     990
24 months   ki1135781-COHORTS       PHILIPPINES                    0            864     990
24 months   ki1148112-LCNI-5        MALAWI                         1              2     572
24 months   ki1148112-LCNI-5        MALAWI                         0            570     572
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1           6064    8555
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0           2491    8555
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1           3683    4747
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0           1064    4747


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
![](/tmp/d5cf6a6e-308b-47c9-b181-409075fc4bdb/07b339a8-3123-43b3-a55f-2113b8fe8238/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d5cf6a6e-308b-47c9-b181-409075fc4bdb/07b339a8-3123-43b3-a55f-2113b8fe8238/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d5cf6a6e-308b-47c9-b181-409075fc4bdb/07b339a8-3123-43b3-a55f-2113b8fe8238/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                -1.0529810   -1.2036336   -0.9023285
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    NA                -1.0469703   -1.3897460   -0.7041946
Birth       ki0047075b-MAL-ED       INDIA         1                    NA                -1.1786483   -1.7827723   -0.5745243
Birth       ki0047075b-MAL-ED       INDIA         0                    NA                -1.2497247   -1.5654806   -0.9339687
Birth       ki0047075b-MAL-ED       PERU          1                    NA                -0.8015759   -1.0397446   -0.5634072
Birth       ki0047075b-MAL-ED       PERU          0                    NA                -0.9274493   -1.0600080   -0.7948906
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.8497583   -1.0003698   -0.6991469
Birth       ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.9859161   -1.0937749   -0.8780573
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.9088547   -0.9837432   -0.8339661
Birth       ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -0.8836200   -1.1269610   -0.6402789
Birth       ki1135781-COHORTS       GUATEMALA     1                    NA                 0.1176904   -0.2612285    0.4966094
Birth       ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0333777   -0.1471577    0.0804023
Birth       ki1135781-COHORTS       INDIA         1                    NA                -0.5405766   -0.5973063   -0.4838469
Birth       ki1135781-COHORTS       INDIA         0                    NA                -0.7683241   -0.8110030   -0.7256451
Birth       ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.0618386   -0.0909954    0.2146727
Birth       ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.3696314   -0.4379787   -0.3012841
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -1.1192130   -1.1516957   -1.0867302
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -1.3595004   -1.4071539   -1.3118470
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -1.5027035   -1.5588523   -1.4465548
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -1.6281765   -1.7282366   -1.5281163
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                -1.2028108   -1.3344576   -1.0711640
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    NA                -1.2087954   -1.4679234   -0.9496675
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                -1.1861467   -1.3534980   -1.0187953
6 months    ki0047075b-MAL-ED       INDIA         0                    NA                -1.2180623   -1.3902816   -1.0458430
6 months    ki0047075b-MAL-ED       PERU          1                    NA                -1.3263242   -1.5629159   -1.0897325
6 months    ki0047075b-MAL-ED       PERU          0                    NA                -1.3068977   -1.4323661   -1.1814294
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                -1.2858956   -1.4277741   -1.1440171
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -1.4743830   -1.5858794   -1.3628865
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -1.2126178   -1.2887911   -1.1364445
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -1.1333338   -1.3472539   -0.9194137
6 months    ki1114097-CONTENT       PERU          1                    NA                -0.2988484   -0.4785752   -0.1191216
6 months    ki1114097-CONTENT       PERU          0                    NA                -0.7281000   -1.3591037   -0.0970963
6 months    ki1135781-COHORTS       GUATEMALA     1                    NA                -1.7095014   -1.9574450   -1.4615578
6 months    ki1135781-COHORTS       GUATEMALA     0                    NA                -1.8944807   -1.9818438   -1.8071175
6 months    ki1135781-COHORTS       INDIA         1                    NA                -0.8544120   -0.9078397   -0.8009843
6 months    ki1135781-COHORTS       INDIA         0                    NA                -1.1669034   -1.2087320   -1.1250748
6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.6786255   -0.8544107   -0.5028404
6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                -1.2700882   -1.3405938   -1.1995826
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -1.3039120   -1.3294031   -1.2784208
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -1.4332800   -1.4718645   -1.3946954
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -1.3148230   -1.3566157   -1.2730304
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -1.4582914   -1.5346142   -1.3819685
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -1.9736653   -2.1132138   -1.8341169
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -2.0112121   -2.3201727   -1.7022515
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                -1.7385499   -1.9059880   -1.5711119
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -1.9697216   -2.1476089   -1.7918343
24 months   ki0047075b-MAL-ED       PERU          1                    NA                -1.7547800   -2.0114045   -1.4981555
24 months   ki0047075b-MAL-ED       PERU          0                    NA                -1.7735948   -1.9161005   -1.6310891
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                -2.0850920   -2.2541313   -1.9160526
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -2.3120866   -2.4360846   -2.1880886
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -1.4497900   -1.5418492   -1.3577308
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -1.3907526   -1.6103475   -1.1711576
24 months   ki1114097-CONTENT       PERU          1                    NA                -0.6539478   -0.8337097   -0.4741858
24 months   ki1114097-CONTENT       PERU          0                    NA                -1.1819891   -1.6974146   -0.6665636
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                -2.7658306   -3.0402262   -2.4914350
24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                -3.0153648   -3.0891530   -2.9415765
24 months   ki1135781-COHORTS       INDIA         1                    NA                -1.9054626   -1.9668476   -1.8440776
24 months   ki1135781-COHORTS       INDIA         0                    NA                -2.4247516   -2.4750672   -2.3744359
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                -1.7334274   -1.9091397   -1.5577151
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -2.7122093   -2.7841176   -2.6403011
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -1.9670929   -1.9983665   -1.9358192
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -2.1739067   -2.2213459   -2.1264675
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -1.7381922   -1.7789549   -1.6974296
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -1.9464255   -2.0067621   -1.8860889


### Parameter: E(Y)


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    NA                   NA                -1.0530516   -1.1896058   -0.9164975
Birth       ki0047075b-MAL-ED       INDIA         NA                   NA                -1.1375000   -1.4325178   -0.8424822
Birth       ki0047075b-MAL-ED       PERU          NA                   NA                -0.9131731   -1.0331160   -0.7932301
Birth       ki1017093-NIH-Birth     BANGLADESH    NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                -0.9131068   -0.9851939   -0.8410197
Birth       ki1135781-COHORTS       GUATEMALA     NA                   NA                -0.0275356   -0.1359303    0.0808590
Birth       ki1135781-COHORTS       INDIA         NA                   NA                -0.6777115   -0.7106054   -0.6448175
Birth       ki1135781-COHORTS       PHILIPPINES   NA                   NA                -0.3137364   -0.3764483   -0.2510244
Birth       kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                -1.1730603   -1.2011221   -1.1449986
Birth       kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                -1.5236135   -1.5727559   -1.4744711
6 months    ki0047075b-MAL-ED       BANGLADESH    NA                   NA                -1.2031806   -1.3209873   -1.0853738
6 months    ki0047075b-MAL-ED       INDIA         NA                   NA                -1.2085694   -1.3282177   -1.0889210
6 months    ki0047075b-MAL-ED       PERU          NA                   NA                -1.3223764   -1.4323641   -1.2123887
6 months    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                -1.2031037   -1.2749632   -1.1312442
6 months    ki1114097-CONTENT       PERU          NA                   NA                -0.3139217   -0.4868486   -0.1409948
6 months    ki1135781-COHORTS       GUATEMALA     NA                   NA                -1.8789210   -1.9609921   -1.7968498
6 months    ki1135781-COHORTS       INDIA         NA                   NA                -1.0414424   -1.0741113   -1.0087734
6 months    ki1135781-COHORTS       PHILIPPINES   NA                   NA                -1.1942936   -1.2608624   -1.1277248
6 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                -1.3359778   -1.3590491   -1.3129065
6 months    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                -1.3440477   -1.3813060   -1.3067894
24 months   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                -1.8766000   -2.0020012   -1.7511988
24 months   ki0047075b-MAL-ED       PERU          NA                   NA                -1.7559184   -1.8781773   -1.6336595
24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                -1.4417097   -1.5263855   -1.3570340
24 months   ki1114097-CONTENT       PERU          NA                   NA                -0.6962195   -0.8674103   -0.5250287
24 months   ki1135781-COHORTS       GUATEMALA     NA                   NA                -3.0050840   -3.0758338   -2.9343342
24 months   ki1135781-COHORTS       INDIA         NA                   NA                -2.2126633   -2.2518337   -2.1734929
24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                -2.5937576   -2.6629996   -2.5245156
24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                -2.0196341   -2.0472667   -1.9920015
24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                -1.7803708   -1.8158650   -1.7448765


### Parameter: ATE


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    1                  0.0060108   -0.3690164    0.3810379
Birth       ki0047075b-MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       INDIA         0                    1                 -0.0710764   -0.7714031    0.6292503
Birth       ki0047075b-MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU          0                    1                 -0.1258734   -0.3980266    0.1462798
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH    0                    1                 -0.1361577   -0.3201834    0.0478679
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH    0                    1                  0.0252347   -0.2287563    0.2792256
Birth       ki1135781-COHORTS       GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS       GUATEMALA     0                    1                 -0.1510681   -0.5463851    0.2442489
Birth       ki1135781-COHORTS       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS       INDIA         0                    1                 -0.2277475   -0.2984552   -0.1570397
Birth       ki1135781-COHORTS       PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS       PHILIPPINES   0                    1                 -0.4314700   -0.5984527   -0.2644873
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    1                 -0.2402875   -0.2944818   -0.1860931
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    1                 -0.1254730   -0.2388464   -0.0120995
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    1                 -0.0059847   -0.2970655    0.2850962
6 months    ki0047075b-MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA         0                    1                 -0.0319156   -0.2723090    0.2084778
6 months    ki0047075b-MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU          0                    1                  0.0194265   -0.2472277    0.2860806
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    1                 -0.1884874   -0.3673956   -0.0095791
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    1                  0.0792840   -0.1478231    0.3063911
6 months    ki1114097-CONTENT       PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT       PERU          0                    1                 -0.4292516   -1.0854448    0.2269417
6 months    ki1135781-COHORTS       GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS       GUATEMALA     0                    1                 -0.1849792   -0.4480105    0.0780521
6 months    ki1135781-COHORTS       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS       INDIA         0                    1                 -0.3124914   -0.3796168   -0.2453660
6 months    ki1135781-COHORTS       PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS       PHILIPPINES   0                    1                 -0.5914627   -0.7811793   -0.4017461
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    1                 -0.1293680   -0.1692447   -0.0894913
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    1                 -0.1434683   -0.2292452   -0.0576915
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    1                 -0.0375468   -0.3765980    0.3015044
24 months   ki0047075b-MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA         0                    1                 -0.2311717   -0.4711995    0.0088561
24 months   ki0047075b-MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU          0                    1                 -0.0188148   -0.3117041    0.2740745
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    1                 -0.2269946   -0.4329183   -0.0210709
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    1                  0.0590374   -0.1797301    0.2978050
24 months   ki1114097-CONTENT       PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT       PERU          0                    1                 -0.5280413   -1.0743220    0.0182393
24 months   ki1135781-COHORTS       GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS       GUATEMALA     0                    1                 -0.2495342   -0.5332671    0.0341987
24 months   ki1135781-COHORTS       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS       INDIA         0                    1                 -0.5192890   -0.5986121   -0.4399658
24 months   ki1135781-COHORTS       PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS       PHILIPPINES   0                    1                 -0.9787819   -1.1691594   -0.7884044
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 -0.2068138   -0.2587266   -0.1549010
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 -0.2082332   -0.2794178   -0.1370487


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0000706   -0.0584028    0.0582616
Birth       ki0047075b-MAL-ED       INDIA         1                    NA                 0.0411483   -0.4171259    0.4994224
Birth       ki0047075b-MAL-ED       PERU          1                    NA                -0.1115972   -0.3211012    0.0979068
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0812614   -0.1954344    0.0329116
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0042521   -0.0348062    0.0263019
Birth       ki1135781-COHORTS       GUATEMALA     1                    NA                -0.1452261   -0.5068383    0.2163861
Birth       ki1135781-COHORTS       INDIA         1                    NA                -0.1371349   -0.1836632   -0.0906065
Birth       ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.3755750   -0.5208776   -0.2302724
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0538473   -0.0668968   -0.0407979
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0209100   -0.0466560    0.0048361
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0003698   -0.0456083    0.0448687
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                -0.0224227   -0.1510596    0.1062142
6 months    ki0047075b-MAL-ED       PERU          1                    NA                 0.0039478   -0.2055111    0.2134067
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.1214865   -0.2327703   -0.0102027
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0095141   -0.0192723    0.0383005
6 months    ki1114097-CONTENT       PERU          1                    NA                -0.0150733   -0.0582488    0.0281023
6 months    ki1135781-COHORTS       GUATEMALA     1                    NA                -0.1694196   -0.4112373    0.0723982
6 months    ki1135781-COHORTS       INDIA         1                    NA                -0.1870304   -0.2310509   -0.1430098
6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.5156681   -0.6825378   -0.3487985
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0320658   -0.0429223   -0.0212093
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0292246   -0.0482771   -0.0101722
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0052498   -0.0531176    0.0426181
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                -0.1380501   -0.2685409   -0.0075593
24 months   ki0047075b-MAL-ED       PERU          1                    NA                -0.0011384   -0.2318490    0.2295722
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.1339659   -0.2590623   -0.0088695
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0080803   -0.0241789    0.0403394
24 months   ki1114097-CONTENT       PERU          1                    NA                -0.0422717   -0.0892374    0.0046940
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                -0.2392534   -0.5055993    0.0270925
24 months   ki1135781-COHORTS       INDIA         1                    NA                -0.3072007   -0.3571021   -0.2572992
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.8603302   -1.0306144   -0.6900459
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0525413   -0.0677417   -0.0373408
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0421785   -0.0586281   -0.0257290
