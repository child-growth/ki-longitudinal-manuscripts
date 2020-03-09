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

**Outcome Variable:** wasted

## Predictor Variables

**Intervention Variable:** exclfeed36

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        exclfeed36    wasted   n_cell      n
----------  ---------------  -----------------------------  -----------  -------  -------  -----
Birth       CMC-V-BCS-2002   INDIA                          1                  0        3      3
Birth       CMC-V-BCS-2002   INDIA                          1                  1        0      3
Birth       CMC-V-BCS-2002   INDIA                          0                  0        0      3
Birth       CMC-V-BCS-2002   INDIA                          0                  1        0      3
Birth       EE               PAKISTAN                       1                  0        2      6
Birth       EE               PAKISTAN                       1                  1        0      6
Birth       EE               PAKISTAN                       0                  0        3      6
Birth       EE               PAKISTAN                       0                  1        1      6
Birth       GMS-Nepal        NEPAL                          1                  0      320    491
Birth       GMS-Nepal        NEPAL                          1                  1       76    491
Birth       GMS-Nepal        NEPAL                          0                  0       77    491
Birth       GMS-Nepal        NEPAL                          0                  1       18    491
Birth       IRC              INDIA                          1                  0        0      3
Birth       IRC              INDIA                          1                  1        0      3
Birth       IRC              INDIA                          0                  0        2      3
Birth       IRC              INDIA                          0                  1        1      3
Birth       JiVitA-3         BANGLADESH                     1                  0     5974   8619
Birth       JiVitA-3         BANGLADESH                     1                  1      762   8619
Birth       JiVitA-3         BANGLADESH                     0                  0     1689   8619
Birth       JiVitA-3         BANGLADESH                     0                  1      194   8619
Birth       JiVitA-4         BANGLADESH                     1                  0     1537   2128
Birth       JiVitA-4         BANGLADESH                     1                  1      174   2128
Birth       JiVitA-4         BANGLADESH                     0                  0      370   2128
Birth       JiVitA-4         BANGLADESH                     0                  1       47   2128
Birth       Keneba           GAMBIA                         1                  0      267   1192
Birth       Keneba           GAMBIA                         1                  1       76   1192
Birth       Keneba           GAMBIA                         0                  0      622   1192
Birth       Keneba           GAMBIA                         0                  1      227   1192
Birth       MAL-ED           BANGLADESH                     1                  0       27    208
Birth       MAL-ED           BANGLADESH                     1                  1        4    208
Birth       MAL-ED           BANGLADESH                     0                  0      147    208
Birth       MAL-ED           BANGLADESH                     0                  1       30    208
Birth       MAL-ED           BRAZIL                         1                  0        4     62
Birth       MAL-ED           BRAZIL                         1                  1        0     62
Birth       MAL-ED           BRAZIL                         0                  0       56     62
Birth       MAL-ED           BRAZIL                         0                  1        2     62
Birth       MAL-ED           INDIA                          1                  0        1     40
Birth       MAL-ED           INDIA                          1                  1        0     40
Birth       MAL-ED           INDIA                          0                  0       34     40
Birth       MAL-ED           INDIA                          0                  1        5     40
Birth       MAL-ED           NEPAL                          1                  0        0     25
Birth       MAL-ED           NEPAL                          1                  1        0     25
Birth       MAL-ED           NEPAL                          0                  0       23     25
Birth       MAL-ED           NEPAL                          0                  1        2     25
Birth       MAL-ED           PERU                           1                  0        5    218
Birth       MAL-ED           PERU                           1                  1        0    218
Birth       MAL-ED           PERU                           0                  0      208    218
Birth       MAL-ED           PERU                           0                  1        5    218
Birth       MAL-ED           SOUTH AFRICA                   1                  0        1    104
Birth       MAL-ED           SOUTH AFRICA                   1                  1        0    104
Birth       MAL-ED           SOUTH AFRICA                   0                  0       94    104
Birth       MAL-ED           SOUTH AFRICA                   0                  1        9    104
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        0    111
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0    111
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      110    111
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1        1    111
Birth       PROVIDE          BANGLADESH                     1                  0       86    483
Birth       PROVIDE          BANGLADESH                     1                  1       29    483
Birth       PROVIDE          BANGLADESH                     0                  0      293    483
Birth       PROVIDE          BANGLADESH                     0                  1       75    483
6 months    CMC-V-BCS-2002   INDIA                          1                  0        8      9
6 months    CMC-V-BCS-2002   INDIA                          1                  1        1      9
6 months    CMC-V-BCS-2002   INDIA                          0                  0        0      9
6 months    CMC-V-BCS-2002   INDIA                          0                  1        0      9
6 months    EE               PAKISTAN                       1                  0        4      9
6 months    EE               PAKISTAN                       1                  1        0      9
6 months    EE               PAKISTAN                       0                  0        5      9
6 months    EE               PAKISTAN                       0                  1        0      9
6 months    GMS-Nepal        NEPAL                          1                  0      383    527
6 months    GMS-Nepal        NEPAL                          1                  1       39    527
6 months    GMS-Nepal        NEPAL                          0                  0       95    527
6 months    GMS-Nepal        NEPAL                          0                  1       10    527
6 months    IRC              INDIA                          1                  0        0      4
6 months    IRC              INDIA                          1                  1        0      4
6 months    IRC              INDIA                          0                  0        3      4
6 months    IRC              INDIA                          0                  1        1      4
6 months    JiVitA-3         BANGLADESH                     1                  0     5986   8535
6 months    JiVitA-3         BANGLADESH                     1                  1      575   8535
6 months    JiVitA-3         BANGLADESH                     0                  0     1804   8535
6 months    JiVitA-3         BANGLADESH                     0                  1      170   8535
6 months    JiVitA-4         BANGLADESH                     1                  0     3081   4188
6 months    JiVitA-4         BANGLADESH                     1                  1      159   4188
6 months    JiVitA-4         BANGLADESH                     0                  0      870   4188
6 months    JiVitA-4         BANGLADESH                     0                  1       78   4188
6 months    Keneba           GAMBIA                         1                  0      483   1790
6 months    Keneba           GAMBIA                         1                  1       24   1790
6 months    Keneba           GAMBIA                         0                  0     1197   1790
6 months    Keneba           GAMBIA                         0                  1       86   1790
6 months    LCNI-5           MALAWI                         1                  0       47    272
6 months    LCNI-5           MALAWI                         1                  1        0    272
6 months    LCNI-5           MALAWI                         0                  0      221    272
6 months    LCNI-5           MALAWI                         0                  1        4    272
6 months    MAL-ED           BANGLADESH                     1                  0       29    240
6 months    MAL-ED           BANGLADESH                     1                  1        1    240
6 months    MAL-ED           BANGLADESH                     0                  0      203    240
6 months    MAL-ED           BANGLADESH                     0                  1        7    240
6 months    MAL-ED           BRAZIL                         1                  0       12    209
6 months    MAL-ED           BRAZIL                         1                  1        0    209
6 months    MAL-ED           BRAZIL                         0                  0      196    209
6 months    MAL-ED           BRAZIL                         0                  1        1    209
6 months    MAL-ED           INDIA                          1                  0        8    233
6 months    MAL-ED           INDIA                          1                  1        1    233
6 months    MAL-ED           INDIA                          0                  0      206    233
6 months    MAL-ED           INDIA                          0                  1       18    233
6 months    MAL-ED           NEPAL                          1                  0        4    235
6 months    MAL-ED           NEPAL                          1                  1        0    235
6 months    MAL-ED           NEPAL                          0                  0      227    235
6 months    MAL-ED           NEPAL                          0                  1        4    235
6 months    MAL-ED           PERU                           1                  0        6    272
6 months    MAL-ED           PERU                           1                  1        0    272
6 months    MAL-ED           PERU                           0                  0      266    272
6 months    MAL-ED           PERU                           0                  1        0    272
6 months    MAL-ED           SOUTH AFRICA                   1                  0        1    250
6 months    MAL-ED           SOUTH AFRICA                   1                  1        0    250
6 months    MAL-ED           SOUTH AFRICA                   0                  0      242    250
6 months    MAL-ED           SOUTH AFRICA                   0                  1        7    250
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        4    243
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0    243
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      238    243
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1        1    243
6 months    PROVIDE          BANGLADESH                     1                  0      142    603
6 months    PROVIDE          BANGLADESH                     1                  1        3    603
6 months    PROVIDE          BANGLADESH                     0                  0      436    603
6 months    PROVIDE          BANGLADESH                     0                  1       22    603
6 months    SAS-FoodSuppl    INDIA                          1                  0        0    168
6 months    SAS-FoodSuppl    INDIA                          1                  1        0    168
6 months    SAS-FoodSuppl    INDIA                          0                  0      127    168
6 months    SAS-FoodSuppl    INDIA                          0                  1       41    168
24 months   CMC-V-BCS-2002   INDIA                          1                  0        9      9
24 months   CMC-V-BCS-2002   INDIA                          1                  1        0      9
24 months   CMC-V-BCS-2002   INDIA                          0                  0        0      9
24 months   CMC-V-BCS-2002   INDIA                          0                  1        0      9
24 months   EE               PAKISTAN                       1                  0        0      3
24 months   EE               PAKISTAN                       1                  1        0      3
24 months   EE               PAKISTAN                       0                  0        3      3
24 months   EE               PAKISTAN                       0                  1        0      3
24 months   GMS-Nepal        NEPAL                          1                  0      304    445
24 months   GMS-Nepal        NEPAL                          1                  1       58    445
24 months   GMS-Nepal        NEPAL                          0                  0       60    445
24 months   GMS-Nepal        NEPAL                          0                  1       23    445
24 months   IRC              INDIA                          1                  0        0      4
24 months   IRC              INDIA                          1                  1        0      4
24 months   IRC              INDIA                          0                  0        4      4
24 months   IRC              INDIA                          0                  1        0      4
24 months   JiVitA-3         BANGLADESH                     1                  0     2556   4317
24 months   JiVitA-3         BANGLADESH                     1                  1      755   4317
24 months   JiVitA-3         BANGLADESH                     0                  0      782   4317
24 months   JiVitA-3         BANGLADESH                     0                  1      224   4317
24 months   JiVitA-4         BANGLADESH                     1                  0     2541   4035
24 months   JiVitA-4         BANGLADESH                     1                  1      591   4035
24 months   JiVitA-4         BANGLADESH                     0                  0      702   4035
24 months   JiVitA-4         BANGLADESH                     0                  1      201   4035
24 months   Keneba           GAMBIA                         1                  0      380   1395
24 months   Keneba           GAMBIA                         1                  1       44   1395
24 months   Keneba           GAMBIA                         0                  0      867   1395
24 months   Keneba           GAMBIA                         0                  1      104   1395
24 months   LCNI-5           MALAWI                         1                  0       33    184
24 months   LCNI-5           MALAWI                         1                  1        1    184
24 months   LCNI-5           MALAWI                         0                  0      147    184
24 months   LCNI-5           MALAWI                         0                  1        3    184
24 months   MAL-ED           BANGLADESH                     1                  0       23    212
24 months   MAL-ED           BANGLADESH                     1                  1        2    212
24 months   MAL-ED           BANGLADESH                     0                  0      168    212
24 months   MAL-ED           BANGLADESH                     0                  1       19    212
24 months   MAL-ED           BRAZIL                         1                  0       11    169
24 months   MAL-ED           BRAZIL                         1                  1        0    169
24 months   MAL-ED           BRAZIL                         0                  0      155    169
24 months   MAL-ED           BRAZIL                         0                  1        3    169
24 months   MAL-ED           INDIA                          1                  0        8    224
24 months   MAL-ED           INDIA                          1                  1        1    224
24 months   MAL-ED           INDIA                          0                  0      189    224
24 months   MAL-ED           INDIA                          0                  1       26    224
24 months   MAL-ED           NEPAL                          1                  0        4    227
24 months   MAL-ED           NEPAL                          1                  1        0    227
24 months   MAL-ED           NEPAL                          0                  0      218    227
24 months   MAL-ED           NEPAL                          0                  1        5    227
24 months   MAL-ED           PERU                           1                  0        4    201
24 months   MAL-ED           PERU                           1                  1        0    201
24 months   MAL-ED           PERU                           0                  0      193    201
24 months   MAL-ED           PERU                           0                  1        4    201
24 months   MAL-ED           SOUTH AFRICA                   1                  0        1    235
24 months   MAL-ED           SOUTH AFRICA                   1                  1        0    235
24 months   MAL-ED           SOUTH AFRICA                   0                  0      233    235
24 months   MAL-ED           SOUTH AFRICA                   0                  1        1    235
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        3    213
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0    213
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      206    213
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1        4    213
24 months   PROVIDE          BANGLADESH                     1                  0      130    577
24 months   PROVIDE          BANGLADESH                     1                  1       11    577
24 months   PROVIDE          BANGLADESH                     0                  0      385    577
24 months   PROVIDE          BANGLADESH                     0                  1       51    577


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/da147422-3515-4e3e-a3e8-d187b013dfcb/1e376fa3-3673-42ff-81a2-c41c52a230d3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/da147422-3515-4e3e-a3e8-d187b013dfcb/1e376fa3-3673-42ff-81a2-c41c52a230d3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/da147422-3515-4e3e-a3e8-d187b013dfcb/1e376fa3-3673-42ff-81a2-c41c52a230d3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/da147422-3515-4e3e-a3e8-d187b013dfcb/1e376fa3-3673-42ff-81a2-c41c52a230d3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                0.1932257   0.1543980   0.2320534
Birth       GMS-Nepal   NEPAL        0                    NA                0.2166617   0.1378508   0.2954726
Birth       JiVitA-3    BANGLADESH   1                    NA                0.1109306   0.1032764   0.1185848
Birth       JiVitA-3    BANGLADESH   0                    NA                0.1104540   0.1023523   0.1185558
Birth       JiVitA-4    BANGLADESH   1                    NA                0.1019411   0.0839861   0.1198962
Birth       JiVitA-4    BANGLADESH   0                    NA                0.1143150   0.0773736   0.1512564
Birth       Keneba      GAMBIA       1                    NA                0.2463511   0.2207981   0.2719041
Birth       Keneba      GAMBIA       0                    NA                0.2566784   0.2314484   0.2819083
Birth       PROVIDE     BANGLADESH   1                    NA                0.2470821   0.1676240   0.3265402
Birth       PROVIDE     BANGLADESH   0                    NA                0.2055163   0.1644105   0.2466221
6 months    GMS-Nepal   NEPAL        1                    NA                0.0924085   0.0648079   0.1200091
6 months    GMS-Nepal   NEPAL        0                    NA                0.1002134   0.0438216   0.1566052
6 months    JiVitA-3    BANGLADESH   1                    NA                0.0875501   0.0798067   0.0952935
6 months    JiVitA-3    BANGLADESH   0                    NA                0.0871521   0.0738188   0.1004854
6 months    JiVitA-4    BANGLADESH   1                    NA                0.0492792   0.0388047   0.0597537
6 months    JiVitA-4    BANGLADESH   0                    NA                0.0805109   0.0621914   0.0988304
6 months    Keneba      GAMBIA       1                    NA                0.0464423   0.0278634   0.0650211
6 months    Keneba      GAMBIA       0                    NA                0.0665590   0.0528747   0.0802433
24 months   GMS-Nepal   NEPAL        1                    NA                0.1594681   0.1216871   0.1972491
24 months   GMS-Nepal   NEPAL        0                    NA                0.2770481   0.1805882   0.3735080
24 months   JiVitA-3    BANGLADESH   1                    NA                0.2270519   0.2097390   0.2443648
24 months   JiVitA-3    BANGLADESH   0                    NA                0.2253246   0.1934530   0.2571962
24 months   JiVitA-4    BANGLADESH   1                    NA                0.1916249   0.1755650   0.2076848
24 months   JiVitA-4    BANGLADESH   0                    NA                0.2108712   0.1764301   0.2453123
24 months   Keneba      GAMBIA       1                    NA                0.1018027   0.0725455   0.1310600
24 months   Keneba      GAMBIA       0                    NA                0.1081677   0.0887395   0.1275959
24 months   PROVIDE     BANGLADESH   1                    NA                0.0802156   0.0360560   0.1243751
24 months   PROVIDE     BANGLADESH   0                    NA                0.1168589   0.0866005   0.1471174


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL        NA                   NA                0.1914460   0.1566101   0.2262820
Birth       JiVitA-3    BANGLADESH   NA                   NA                0.1109177   0.1033745   0.1184610
Birth       JiVitA-4    BANGLADESH   NA                   NA                0.1038534   0.0874500   0.1202568
Birth       Keneba      GAMBIA       NA                   NA                0.2541946   0.2294667   0.2789226
Birth       PROVIDE     BANGLADESH   NA                   NA                0.2153209   0.1786253   0.2520165
6 months    GMS-Nepal   NEPAL        NA                   NA                0.0929791   0.0681617   0.1177965
6 months    JiVitA-3    BANGLADESH   NA                   NA                0.0872876   0.0805483   0.0940269
6 months    JiVitA-4    BANGLADESH   NA                   NA                0.0565903   0.0475372   0.0656433
6 months    Keneba      GAMBIA       NA                   NA                0.0614525   0.0503239   0.0725811
24 months   GMS-Nepal   NEPAL        NA                   NA                0.1820225   0.1461311   0.2179138
24 months   JiVitA-3    BANGLADESH   NA                   NA                0.2267779   0.2114523   0.2421034
24 months   JiVitA-4    BANGLADESH   NA                   NA                0.1962825   0.1816413   0.2109237
24 months   Keneba      GAMBIA       NA                   NA                0.1060932   0.0899270   0.1222593
24 months   PROVIDE     BANGLADESH   NA                   NA                0.1074523   0.0821617   0.1327430


### Parameter: RR


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       GMS-Nepal   NEPAL        0                    1                 1.1212885   0.7391773   1.700929
Birth       JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3    BANGLADESH   0                    1                 0.9957040   0.9569005   1.036081
Birth       JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-4    BANGLADESH   0                    1                 1.1213824   0.7802234   1.611716
Birth       Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
Birth       Keneba      GAMBIA       0                    1                 1.0419210   0.9917087   1.094676
Birth       PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       PROVIDE     BANGLADESH   0                    1                 0.8317732   0.5709055   1.211841
6 months    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    GMS-Nepal   NEPAL        0                    1                 1.0844614   0.5727413   2.053382
6 months    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3    BANGLADESH   0                    1                 0.9954540   0.8350176   1.186716
6 months    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-4    BANGLADESH   0                    1                 1.6337714   1.1963141   2.231194
6 months    Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    Keneba      GAMBIA       0                    1                 1.4331559   0.9144138   2.246178
24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   GMS-Nepal   NEPAL        0                    1                 1.7373261   1.1421879   2.642562
24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3    BANGLADESH   0                    1                 0.9923925   0.8462322   1.163798
24 months   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-4    BANGLADESH   0                    1                 1.1004374   0.9179442   1.319211
24 months   Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
24 months   Keneba      GAMBIA       0                    1                 1.0625221   0.7577328   1.489909
24 months   PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   PROVIDE     BANGLADESH   0                    1                 1.4568115   0.7931362   2.675833


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                -0.0017797   -0.0189367   0.0153774
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.0000129   -0.0009755   0.0009498
Birth       JiVitA-4    BANGLADESH   1                    NA                 0.0019122   -0.0060762   0.0099006
Birth       Keneba      GAMBIA       1                    NA                 0.0078435   -0.0010391   0.0167261
Birth       PROVIDE     BANGLADESH   1                    NA                -0.0317612   -0.0997435   0.0362211
6 months    GMS-Nepal   NEPAL        1                    NA                 0.0005706   -0.0119412   0.0130825
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0002625   -0.0038168   0.0032918
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.0073111    0.0025503   0.0120719
6 months    Keneba      GAMBIA       1                    NA                 0.0150103   -0.0015438   0.0315643
24 months   GMS-Nepal   NEPAL        1                    NA                 0.0225544    0.0027220   0.0423867
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0002740   -0.0086488   0.0081007
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0046576   -0.0035915   0.0129068
24 months   Keneba      GAMBIA       1                    NA                 0.0042905   -0.0202052   0.0287861
24 months   PROVIDE     BANGLADESH   1                    NA                 0.0272368   -0.0131641   0.0676376


### Parameter: PAF


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                -0.0092959   -0.1030311   0.0764738
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.0001159   -0.0088325   0.0085253
Birth       JiVitA-4    BANGLADESH   1                    NA                 0.0184129   -0.0615346   0.0923393
Birth       Keneba      GAMBIA       1                    NA                 0.0308564   -0.0045936   0.0650554
Birth       PROVIDE     BANGLADESH   1                    NA                -0.1475063   -0.5099648   0.1279461
6 months    GMS-Nepal   NEPAL        1                    NA                 0.0061374   -0.1379435   0.1319754
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0030072   -0.0445554   0.0368883
6 months    JiVitA-4    BANGLADESH   1                    NA                 0.1291931    0.0368067   0.2127180
6 months    Keneba      GAMBIA       1                    NA                 0.2442578   -0.0755184   0.4689572
24 months   GMS-Nepal   NEPAL        1                    NA                 0.1239098    0.0097377   0.2249185
24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0012084   -0.0388291   0.0350499
24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0237292   -0.0190668   0.0647279
24 months   Keneba      GAMBIA       1                    NA                 0.0404404   -0.2206461   0.2456825
24 months   PROVIDE     BANGLADESH   1                    NA                 0.2534778   -0.2275751   0.5460193
