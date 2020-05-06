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

**Outcome Variable:** sstunted

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

agecat      studyid          country                        exclfeed36    sstunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -----------  ---------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          1                    0        3       3  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          1                    1        0       3  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          0                    0        0       3  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          0                    1        0       3  sstunted         
Birth       EE               PAKISTAN                       1                    0        2       7  sstunted         
Birth       EE               PAKISTAN                       1                    1        1       7  sstunted         
Birth       EE               PAKISTAN                       0                    0        4       7  sstunted         
Birth       EE               PAKISTAN                       0                    1        0       7  sstunted         
Birth       GMS-Nepal        NEPAL                          1                    0      409     526  sstunted         
Birth       GMS-Nepal        NEPAL                          1                    1       13     526  sstunted         
Birth       GMS-Nepal        NEPAL                          0                    0      101     526  sstunted         
Birth       GMS-Nepal        NEPAL                          0                    1        3     526  sstunted         
Birth       IRC              INDIA                          1                    0        0       4  sstunted         
Birth       IRC              INDIA                          1                    1        0       4  sstunted         
Birth       IRC              INDIA                          0                    0        4       4  sstunted         
Birth       IRC              INDIA                          0                    1        0       4  sstunted         
Birth       JiVitA-3         BANGLADESH                     1                    0     7457   10681  sstunted         
Birth       JiVitA-3         BANGLADESH                     1                    1      865   10681  sstunted         
Birth       JiVitA-3         BANGLADESH                     0                    0     2103   10681  sstunted         
Birth       JiVitA-3         BANGLADESH                     0                    1      256   10681  sstunted         
Birth       JiVitA-4         BANGLADESH                     1                    0     1848    2517  sstunted         
Birth       JiVitA-4         BANGLADESH                     1                    1      146    2517  sstunted         
Birth       JiVitA-4         BANGLADESH                     0                    0      457    2517  sstunted         
Birth       JiVitA-4         BANGLADESH                     0                    1       66    2517  sstunted         
Birth       Keneba           GAMBIA                         1                    0      358    1253  sstunted         
Birth       Keneba           GAMBIA                         1                    1        5    1253  sstunted         
Birth       Keneba           GAMBIA                         0                    0      871    1253  sstunted         
Birth       Keneba           GAMBIA                         0                    1       19    1253  sstunted         
Birth       MAL-ED           BANGLADESH                     1                    0       32     221  sstunted         
Birth       MAL-ED           BANGLADESH                     1                    1        0     221  sstunted         
Birth       MAL-ED           BANGLADESH                     0                    0      182     221  sstunted         
Birth       MAL-ED           BANGLADESH                     0                    1        7     221  sstunted         
Birth       MAL-ED           BRAZIL                         1                    0        4      65  sstunted         
Birth       MAL-ED           BRAZIL                         1                    1        1      65  sstunted         
Birth       MAL-ED           BRAZIL                         0                    0       58      65  sstunted         
Birth       MAL-ED           BRAZIL                         0                    1        2      65  sstunted         
Birth       MAL-ED           INDIA                          1                    0        1      42  sstunted         
Birth       MAL-ED           INDIA                          1                    1        0      42  sstunted         
Birth       MAL-ED           INDIA                          0                    0       39      42  sstunted         
Birth       MAL-ED           INDIA                          0                    1        2      42  sstunted         
Birth       MAL-ED           NEPAL                          1                    0        0      26  sstunted         
Birth       MAL-ED           NEPAL                          1                    1        0      26  sstunted         
Birth       MAL-ED           NEPAL                          0                    0       25      26  sstunted         
Birth       MAL-ED           NEPAL                          0                    1        1      26  sstunted         
Birth       MAL-ED           PERU                           1                    0        5     223  sstunted         
Birth       MAL-ED           PERU                           1                    1        0     223  sstunted         
Birth       MAL-ED           PERU                           0                    0      214     223  sstunted         
Birth       MAL-ED           PERU                           0                    1        4     223  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   1                    0        1     105  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   1                    1        0     105  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   0                    0      103     105  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   0                    1        1     105  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        0     119  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        0     119  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      111     119  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1        8     119  sstunted         
Birth       PROVIDE          BANGLADESH                     1                    0      118     490  sstunted         
Birth       PROVIDE          BANGLADESH                     1                    1        1     490  sstunted         
Birth       PROVIDE          BANGLADESH                     0                    0      368     490  sstunted         
Birth       PROVIDE          BANGLADESH                     0                    1        3     490  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          1                    0        7       9  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          1                    1        2       9  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          0                    0        0       9  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          0                    1        0       9  sstunted         
6 months    EE               PAKISTAN                       1                    0        3       9  sstunted         
6 months    EE               PAKISTAN                       1                    1        1       9  sstunted         
6 months    EE               PAKISTAN                       0                    0        5       9  sstunted         
6 months    EE               PAKISTAN                       0                    1        0       9  sstunted         
6 months    GMS-Nepal        NEPAL                          1                    0      410     527  sstunted         
6 months    GMS-Nepal        NEPAL                          1                    1       12     527  sstunted         
6 months    GMS-Nepal        NEPAL                          0                    0       98     527  sstunted         
6 months    GMS-Nepal        NEPAL                          0                    1        7     527  sstunted         
6 months    IRC              INDIA                          1                    0        0       4  sstunted         
6 months    IRC              INDIA                          1                    1        0       4  sstunted         
6 months    IRC              INDIA                          0                    0        4       4  sstunted         
6 months    IRC              INDIA                          0                    1        0       4  sstunted         
6 months    JiVitA-3         BANGLADESH                     1                    0     6169    8552  sstunted         
6 months    JiVitA-3         BANGLADESH                     1                    1      409    8552  sstunted         
6 months    JiVitA-3         BANGLADESH                     0                    0     1846    8552  sstunted         
6 months    JiVitA-3         BANGLADESH                     0                    1      128    8552  sstunted         
6 months    JiVitA-4         BANGLADESH                     1                    0     3098    4185  sstunted         
6 months    JiVitA-4         BANGLADESH                     1                    1      143    4185  sstunted         
6 months    JiVitA-4         BANGLADESH                     0                    0      854    4185  sstunted         
6 months    JiVitA-4         BANGLADESH                     0                    1       90    4185  sstunted         
6 months    Keneba           GAMBIA                         1                    0      490    1790  sstunted         
6 months    Keneba           GAMBIA                         1                    1       17    1790  sstunted         
6 months    Keneba           GAMBIA                         0                    0     1242    1790  sstunted         
6 months    Keneba           GAMBIA                         0                    1       41    1790  sstunted         
6 months    LCNI-5           MALAWI                         1                    0       44     272  sstunted         
6 months    LCNI-5           MALAWI                         1                    1        3     272  sstunted         
6 months    LCNI-5           MALAWI                         0                    0      208     272  sstunted         
6 months    LCNI-5           MALAWI                         0                    1       17     272  sstunted         
6 months    MAL-ED           BANGLADESH                     1                    0       29     240  sstunted         
6 months    MAL-ED           BANGLADESH                     1                    1        1     240  sstunted         
6 months    MAL-ED           BANGLADESH                     0                    0      203     240  sstunted         
6 months    MAL-ED           BANGLADESH                     0                    1        7     240  sstunted         
6 months    MAL-ED           BRAZIL                         1                    0       12     209  sstunted         
6 months    MAL-ED           BRAZIL                         1                    1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         0                    0      197     209  sstunted         
6 months    MAL-ED           BRAZIL                         0                    1        0     209  sstunted         
6 months    MAL-ED           INDIA                          1                    0        8     233  sstunted         
6 months    MAL-ED           INDIA                          1                    1        1     233  sstunted         
6 months    MAL-ED           INDIA                          0                    0      216     233  sstunted         
6 months    MAL-ED           INDIA                          0                    1        8     233  sstunted         
6 months    MAL-ED           NEPAL                          1                    0        4     235  sstunted         
6 months    MAL-ED           NEPAL                          1                    1        0     235  sstunted         
6 months    MAL-ED           NEPAL                          0                    0      230     235  sstunted         
6 months    MAL-ED           NEPAL                          0                    1        1     235  sstunted         
6 months    MAL-ED           PERU                           1                    0        6     272  sstunted         
6 months    MAL-ED           PERU                           1                    1        0     272  sstunted         
6 months    MAL-ED           PERU                           0                    0      256     272  sstunted         
6 months    MAL-ED           PERU                           0                    1       10     272  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   1                    0        1     250  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   1                    1        0     250  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   0                    0      243     250  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   0                    1        6     250  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        4     243  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        0     243  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      225     243  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1       14     243  sstunted         
6 months    PROVIDE          BANGLADESH                     1                    0      143     603  sstunted         
6 months    PROVIDE          BANGLADESH                     1                    1        2     603  sstunted         
6 months    PROVIDE          BANGLADESH                     0                    0      447     603  sstunted         
6 months    PROVIDE          BANGLADESH                     0                    1       11     603  sstunted         
6 months    SAS-FoodSuppl    INDIA                          1                    0        0     168  sstunted         
6 months    SAS-FoodSuppl    INDIA                          1                    1        0     168  sstunted         
6 months    SAS-FoodSuppl    INDIA                          0                    0      140     168  sstunted         
6 months    SAS-FoodSuppl    INDIA                          0                    1       28     168  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          1                    0        6       9  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          1                    1        3       9  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          0                    0        0       9  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          0                    1        0       9  sstunted         
24 months   EE               PAKISTAN                       1                    0        0       3  sstunted         
24 months   EE               PAKISTAN                       1                    1        0       3  sstunted         
24 months   EE               PAKISTAN                       0                    0        3       3  sstunted         
24 months   EE               PAKISTAN                       0                    1        0       3  sstunted         
24 months   GMS-Nepal        NEPAL                          1                    0      329     446  sstunted         
24 months   GMS-Nepal        NEPAL                          1                    1       34     446  sstunted         
24 months   GMS-Nepal        NEPAL                          0                    0       69     446  sstunted         
24 months   GMS-Nepal        NEPAL                          0                    1       14     446  sstunted         
24 months   IRC              INDIA                          1                    0        0       4  sstunted         
24 months   IRC              INDIA                          1                    1        0       4  sstunted         
24 months   IRC              INDIA                          0                    0        3       4  sstunted         
24 months   IRC              INDIA                          0                    1        1       4  sstunted         
24 months   JiVitA-3         BANGLADESH                     1                    0     2829    4334  sstunted         
24 months   JiVitA-3         BANGLADESH                     1                    1      496    4334  sstunted         
24 months   JiVitA-3         BANGLADESH                     0                    0      863    4334  sstunted         
24 months   JiVitA-3         BANGLADESH                     0                    1      146    4334  sstunted         
24 months   JiVitA-4         BANGLADESH                     1                    0     2870    4049  sstunted         
24 months   JiVitA-4         BANGLADESH                     1                    1      275    4049  sstunted         
24 months   JiVitA-4         BANGLADESH                     0                    0      787    4049  sstunted         
24 months   JiVitA-4         BANGLADESH                     0                    1      117    4049  sstunted         
24 months   Keneba           GAMBIA                         1                    0      399    1394  sstunted         
24 months   Keneba           GAMBIA                         1                    1       25    1394  sstunted         
24 months   Keneba           GAMBIA                         0                    0      879    1394  sstunted         
24 months   Keneba           GAMBIA                         0                    1       91    1394  sstunted         
24 months   LCNI-5           MALAWI                         1                    0       30     189  sstunted         
24 months   LCNI-5           MALAWI                         1                    1        4     189  sstunted         
24 months   LCNI-5           MALAWI                         0                    0      135     189  sstunted         
24 months   LCNI-5           MALAWI                         0                    1       20     189  sstunted         
24 months   MAL-ED           BANGLADESH                     1                    0       21     212  sstunted         
24 months   MAL-ED           BANGLADESH                     1                    1        4     212  sstunted         
24 months   MAL-ED           BANGLADESH                     0                    0      163     212  sstunted         
24 months   MAL-ED           BANGLADESH                     0                    1       24     212  sstunted         
24 months   MAL-ED           BRAZIL                         1                    0       11     169  sstunted         
24 months   MAL-ED           BRAZIL                         1                    1        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         0                    0      157     169  sstunted         
24 months   MAL-ED           BRAZIL                         0                    1        1     169  sstunted         
24 months   MAL-ED           INDIA                          1                    0        8     224  sstunted         
24 months   MAL-ED           INDIA                          1                    1        1     224  sstunted         
24 months   MAL-ED           INDIA                          0                    0      186     224  sstunted         
24 months   MAL-ED           INDIA                          0                    1       29     224  sstunted         
24 months   MAL-ED           NEPAL                          1                    0        4     227  sstunted         
24 months   MAL-ED           NEPAL                          1                    1        0     227  sstunted         
24 months   MAL-ED           NEPAL                          0                    0      216     227  sstunted         
24 months   MAL-ED           NEPAL                          0                    1        7     227  sstunted         
24 months   MAL-ED           PERU                           1                    0        4     201  sstunted         
24 months   MAL-ED           PERU                           1                    1        0     201  sstunted         
24 months   MAL-ED           PERU                           0                    0      182     201  sstunted         
24 months   MAL-ED           PERU                           0                    1       15     201  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   1                    0        1     235  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   1                    1        0     235  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   0                    0      208     235  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   0                    1       26     235  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        1     213  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        2     213  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      142     213  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1       68     213  sstunted         
24 months   PROVIDE          BANGLADESH                     1                    0      128     577  sstunted         
24 months   PROVIDE          BANGLADESH                     1                    1       13     577  sstunted         
24 months   PROVIDE          BANGLADESH                     0                    0      397     577  sstunted         
24 months   PROVIDE          BANGLADESH                     0                    1       39     577  sstunted         


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
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
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



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->
