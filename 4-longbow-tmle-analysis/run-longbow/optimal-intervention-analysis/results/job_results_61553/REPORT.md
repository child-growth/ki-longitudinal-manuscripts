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

**Intervention Variable:** trth2o

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
* W_nhh
* W_nchldlt5
* brthmon
* cleanck
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_brthmon
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        trth2o    n_cell     n
----------  ---------------  -----------------------------  -------  -------  ----
Birth       CMC-V-BCS-2002   INDIA                          1             26    26
Birth       CMC-V-BCS-2002   INDIA                          0              0    26
Birth       GMS-Nepal        NEPAL                          1              1     4
Birth       GMS-Nepal        NEPAL                          0              3     4
Birth       IRC              INDIA                          1            120   120
Birth       IRC              INDIA                          0              0   120
Birth       MAL-ED           BANGLADESH                     1            117   119
Birth       MAL-ED           BANGLADESH                     0              2   119
Birth       MAL-ED           BRAZIL                         1              4    22
Birth       MAL-ED           BRAZIL                         0             18    22
Birth       MAL-ED           INDIA                          1              0     2
Birth       MAL-ED           INDIA                          0              2     2
Birth       MAL-ED           NEPAL                          1              7     9
Birth       MAL-ED           NEPAL                          0              2     9
Birth       MAL-ED           PERU                           1             28    36
Birth       MAL-ED           PERU                           0              8    36
Birth       MAL-ED           SOUTH AFRICA                   1              1     5
Birth       MAL-ED           SOUTH AFRICA                   0              4     5
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              4    22
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             18    22
Birth       NIH-Crypto       BANGLADESH                     1            409   732
Birth       NIH-Crypto       BANGLADESH                     0            323   732
Birth       PROVIDE          BANGLADESH                     1             12   539
Birth       PROVIDE          BANGLADESH                     0            527   539
6 months    CMC-V-BCS-2002   INDIA                          1            120   120
6 months    CMC-V-BCS-2002   INDIA                          0              0   120
6 months    GMS-Nepal        NEPAL                          1              1     4
6 months    GMS-Nepal        NEPAL                          0              3     4
6 months    IRC              INDIA                          1            121   121
6 months    IRC              INDIA                          0              0   121
6 months    MAL-ED           BANGLADESH                     1            132   134
6 months    MAL-ED           BANGLADESH                     0              2   134
6 months    MAL-ED           BRAZIL                         1             13   103
6 months    MAL-ED           BRAZIL                         0             90   103
6 months    MAL-ED           INDIA                          1              4     9
6 months    MAL-ED           INDIA                          0              5     9
6 months    MAL-ED           NEPAL                          1             69    83
6 months    MAL-ED           NEPAL                          0             14    83
6 months    MAL-ED           PERU                           1             39    49
6 months    MAL-ED           PERU                           0             10    49
6 months    MAL-ED           SOUTH AFRICA                   1              2    12
6 months    MAL-ED           SOUTH AFRICA                   0             10    12
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6    42
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             36    42
6 months    NIH-Crypto       BANGLADESH                     1            396   715
6 months    NIH-Crypto       BANGLADESH                     0            319   715
6 months    PROVIDE          BANGLADESH                     1             14   604
6 months    PROVIDE          BANGLADESH                     0            590   604
24 months   CMC-V-BCS-2002   INDIA                          1            119   119
24 months   CMC-V-BCS-2002   INDIA                          0              0   119
24 months   GMS-Nepal        NEPAL                          1              1     4
24 months   GMS-Nepal        NEPAL                          0              3     4
24 months   IRC              INDIA                          1            121   121
24 months   IRC              INDIA                          0              0   121
24 months   MAL-ED           BANGLADESH                     1            133   135
24 months   MAL-ED           BANGLADESH                     0              2   135
24 months   MAL-ED           BRAZIL                         1             13   103
24 months   MAL-ED           BRAZIL                         0             90   103
24 months   MAL-ED           INDIA                          1              4     9
24 months   MAL-ED           INDIA                          0              5     9
24 months   MAL-ED           NEPAL                          1             69    83
24 months   MAL-ED           NEPAL                          0             14    83
24 months   MAL-ED           PERU                           1             39    49
24 months   MAL-ED           PERU                           0             10    49
24 months   MAL-ED           SOUTH AFRICA                   1              2    11
24 months   MAL-ED           SOUTH AFRICA                   0              9    11
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6    43
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             37    43
24 months   NIH-Crypto       BANGLADESH                     1            242   514
24 months   NIH-Crypto       BANGLADESH                     0            272   514
24 months   PROVIDE          BANGLADESH                     1             14   578
24 months   PROVIDE          BANGLADESH                     0            564   578


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/62d7b66f-1d7a-4f27-ab1e-b00764767c88/caf462e6-8ec3-4539-890c-c93e636921bd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       PERU                           optimal              observed          -0.9289613   -1.4891889   -0.3687337
Birth       NIH-Crypto   BANGLADESH                     optimal              observed          -0.8523681   -0.9778499   -0.7268862
Birth       PROVIDE      BANGLADESH                     optimal              observed          -0.7465415   -1.2954757   -0.1976074
6 months    MAL-ED       BRAZIL                         optimal              observed           0.1885249   -0.0265428    0.4035927
6 months    MAL-ED       NEPAL                          optimal              observed          -0.4948794   -0.7106167   -0.2791421
6 months    MAL-ED       PERU                           optimal              observed          -1.4139738   -1.8556696   -0.9722780
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.4676624   -2.7237991   -0.2115257
6 months    NIH-Crypto   BANGLADESH                     optimal              observed          -1.1029768   -1.2194858   -0.9864678
6 months    PROVIDE      BANGLADESH                     optimal              observed          -1.2410011   -1.5269624   -0.9550397
24 months   MAL-ED       BRAZIL                         optimal              observed           0.2227928    0.0068112    0.4387743
24 months   MAL-ED       NEPAL                          optimal              observed          -1.2106846   -1.4439861   -0.9773831
24 months   MAL-ED       PERU                           optimal              observed          -1.8121895   -2.0956849   -1.5286940
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -3.2519149   -3.7515453   -2.7522845
24 months   NIH-Crypto   BANGLADESH                     optimal              observed          -1.4775456   -1.6117507   -1.3433406
24 months   PROVIDE      BANGLADESH                     optimal              observed          -1.8736553   -1.9857560   -1.7615546


### Parameter: E(Y)


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       PERU                           observed             observed          -1.0902778   -1.3682718   -0.8122837
Birth       NIH-Crypto   BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       PROVIDE      BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
6 months    MAL-ED       BRAZIL                         observed             observed           0.1558900   -0.0436128    0.3553927
6 months    MAL-ED       NEPAL                          observed             observed          -0.5416867   -0.7337282   -0.3496452
6 months    MAL-ED       PERU                           observed             observed          -1.4335034   -1.6988926   -1.1681142
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.5469444   -1.8498756   -1.2440133
6 months    NIH-Crypto   BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    PROVIDE      BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
24 months   MAL-ED       BRAZIL                         observed             observed           0.0833172   -0.1220854    0.2887197
24 months   MAL-ED       NEPAL                          observed             observed          -1.2665060   -1.4788044   -1.0542077
24 months   MAL-ED       PERU                           observed             observed          -1.9093878   -2.1570845   -1.6616910
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.8477907   -3.1592380   -2.5363434
24 months   NIH-Crypto   BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   PROVIDE      BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023


### Parameter: PAR


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       PERU                           optimal              observed          -0.1613165   -0.6886569    0.3660239
Birth       NIH-Crypto   BANGLADESH                     optimal              observed          -0.0571265   -0.1567516    0.0424986
Birth       PROVIDE      BANGLADESH                     optimal              observed          -0.1385605   -0.6753019    0.3981809
6 months    MAL-ED       BRAZIL                         optimal              observed          -0.0326350   -0.1056898    0.0404199
6 months    MAL-ED       NEPAL                          optimal              observed          -0.0468074   -0.1259302    0.0323155
6 months    MAL-ED       PERU                           optimal              observed          -0.0195296   -0.4618718    0.4228126
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0792820   -1.2286184    1.0700543
6 months    NIH-Crypto   BANGLADESH                     optimal              observed          -0.0957015   -0.1913807   -0.0000223
6 months    PROVIDE      BANGLADESH                     optimal              observed           0.1493096   -0.1242247    0.4228438
24 months   MAL-ED       BRAZIL                         optimal              observed          -0.1394756   -0.2306901   -0.0482611
24 months   MAL-ED       NEPAL                          optimal              observed          -0.0558214   -0.1468499    0.0352070
24 months   MAL-ED       PERU                           optimal              observed          -0.0971983   -0.2212587    0.0268622
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4041242   -0.1100232    0.9182716
24 months   NIH-Crypto   BANGLADESH                     optimal              observed           0.0362810   -0.0699581    0.1425202
24 months   PROVIDE      BANGLADESH                     optimal              observed           0.2712332    0.1954530    0.3470133
