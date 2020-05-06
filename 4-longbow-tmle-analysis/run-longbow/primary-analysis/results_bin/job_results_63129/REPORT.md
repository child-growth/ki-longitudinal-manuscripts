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

**Intervention Variable:** exclfeed6

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

agecat      studyid          country                        exclfeed6    stunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ----------  --------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          1                  0        7       7  stunted          
Birth       CMC-V-BCS-2002   INDIA                          1                  1        0       7  stunted          
Birth       CMC-V-BCS-2002   INDIA                          0                  0        0       7  stunted          
Birth       CMC-V-BCS-2002   INDIA                          0                  1        0       7  stunted          
Birth       EE               PAKISTAN                       1                  0       22      42  stunted          
Birth       EE               PAKISTAN                       1                  1       16      42  stunted          
Birth       EE               PAKISTAN                       0                  0        3      42  stunted          
Birth       EE               PAKISTAN                       0                  1        1      42  stunted          
Birth       GMS-Nepal        NEPAL                          1                  0      351     563  stunted          
Birth       GMS-Nepal        NEPAL                          1                  1       68     563  stunted          
Birth       GMS-Nepal        NEPAL                          0                  0      118     563  stunted          
Birth       GMS-Nepal        NEPAL                          0                  1       26     563  stunted          
Birth       IRC              INDIA                          1                  0        0      14  stunted          
Birth       IRC              INDIA                          1                  1        0      14  stunted          
Birth       IRC              INDIA                          0                  0       13      14  stunted          
Birth       IRC              INDIA                          0                  1        1      14  stunted          
Birth       JiVitA-3         BANGLADESH                     1                  0     7003   13423  stunted          
Birth       JiVitA-3         BANGLADESH                     1                  1     3449   13423  stunted          
Birth       JiVitA-3         BANGLADESH                     0                  0     1976   13423  stunted          
Birth       JiVitA-3         BANGLADESH                     0                  1      995   13423  stunted          
Birth       JiVitA-4         BANGLADESH                     1                  0     1476    2632  stunted          
Birth       JiVitA-4         BANGLADESH                     1                  1      622    2632  stunted          
Birth       JiVitA-4         BANGLADESH                     0                  0      357    2632  stunted          
Birth       JiVitA-4         BANGLADESH                     0                  1      177    2632  stunted          
Birth       Keneba           GAMBIA                         1                  0      459    1403  stunted          
Birth       Keneba           GAMBIA                         1                  1       26    1403  stunted          
Birth       Keneba           GAMBIA                         0                  0      865    1403  stunted          
Birth       Keneba           GAMBIA                         0                  1       53    1403  stunted          
Birth       MAL-ED           BANGLADESH                     1                  0       26     205  stunted          
Birth       MAL-ED           BANGLADESH                     1                  1        5     205  stunted          
Birth       MAL-ED           BANGLADESH                     0                  0      143     205  stunted          
Birth       MAL-ED           BANGLADESH                     0                  1       31     205  stunted          
Birth       MAL-ED           BRAZIL                         1                  0        0      60  stunted          
Birth       MAL-ED           BRAZIL                         1                  1        2      60  stunted          
Birth       MAL-ED           BRAZIL                         0                  0       51      60  stunted          
Birth       MAL-ED           BRAZIL                         0                  1        7      60  stunted          
Birth       MAL-ED           INDIA                          1                  0        0      39  stunted          
Birth       MAL-ED           INDIA                          1                  1        1      39  stunted          
Birth       MAL-ED           INDIA                          0                  0       31      39  stunted          
Birth       MAL-ED           INDIA                          0                  1        7      39  stunted          
Birth       MAL-ED           NEPAL                          1                  0        2      24  stunted          
Birth       MAL-ED           NEPAL                          1                  1        0      24  stunted          
Birth       MAL-ED           NEPAL                          0                  0       21      24  stunted          
Birth       MAL-ED           NEPAL                          0                  1        1      24  stunted          
Birth       MAL-ED           PERU                           1                  0        2     213  stunted          
Birth       MAL-ED           PERU                           1                  1        0     213  stunted          
Birth       MAL-ED           PERU                           0                  0      185     213  stunted          
Birth       MAL-ED           PERU                           0                  1       26     213  stunted          
Birth       MAL-ED           SOUTH AFRICA                   1                  0        0      91  stunted          
Birth       MAL-ED           SOUTH AFRICA                   1                  1        0      91  stunted          
Birth       MAL-ED           SOUTH AFRICA                   0                  0       83      91  stunted          
Birth       MAL-ED           SOUTH AFRICA                   0                  1        8      91  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        0     113  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0     113  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0       92     113  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1       21     113  stunted          
Birth       PROVIDE          BANGLADESH                     1                  0      148     539  stunted          
Birth       PROVIDE          BANGLADESH                     1                  1       11     539  stunted          
Birth       PROVIDE          BANGLADESH                     0                  0      343     539  stunted          
Birth       PROVIDE          BANGLADESH                     0                  1       37     539  stunted          
Birth       SAS-CompFeed     INDIA                          1                  0      257     364  stunted          
Birth       SAS-CompFeed     INDIA                          1                  1       89     364  stunted          
Birth       SAS-CompFeed     INDIA                          0                  0       12     364  stunted          
Birth       SAS-CompFeed     INDIA                          0                  1        6     364  stunted          
6 months    CMC-V-BCS-2002   INDIA                          1                  0       12      19  stunted          
6 months    CMC-V-BCS-2002   INDIA                          1                  1        7      19  stunted          
6 months    CMC-V-BCS-2002   INDIA                          0                  0        0      19  stunted          
6 months    CMC-V-BCS-2002   INDIA                          0                  1        0      19  stunted          
6 months    EE               PAKISTAN                       1                  0       20      48  stunted          
6 months    EE               PAKISTAN                       1                  1       23      48  stunted          
6 months    EE               PAKISTAN                       0                  0        4      48  stunted          
6 months    EE               PAKISTAN                       0                  1        1      48  stunted          
6 months    GMS-Nepal        NEPAL                          1                  0      326     547  stunted          
6 months    GMS-Nepal        NEPAL                          1                  1       80     547  stunted          
6 months    GMS-Nepal        NEPAL                          0                  0      103     547  stunted          
6 months    GMS-Nepal        NEPAL                          0                  1       38     547  stunted          
6 months    IRC              INDIA                          1                  0        0      14  stunted          
6 months    IRC              INDIA                          1                  1        0      14  stunted          
6 months    IRC              INDIA                          0                  0       11      14  stunted          
6 months    IRC              INDIA                          0                  1        3      14  stunted          
6 months    JiVitA-3         BANGLADESH                     1                  0     5758    9901  stunted          
6 months    JiVitA-3         BANGLADESH                     1                  1     1870    9901  stunted          
6 months    JiVitA-3         BANGLADESH                     0                  0     1685    9901  stunted          
6 months    JiVitA-3         BANGLADESH                     0                  1      588    9901  stunted          
6 months    JiVitA-4         BANGLADESH                     1                  0     2534    4272  stunted          
6 months    JiVitA-4         BANGLADESH                     1                  1      782    4272  stunted          
6 months    JiVitA-4         BANGLADESH                     0                  0      665    4272  stunted          
6 months    JiVitA-4         BANGLADESH                     0                  1      291    4272  stunted          
6 months    Keneba           GAMBIA                         1                  0      502    1908  stunted          
6 months    Keneba           GAMBIA                         1                  1       84    1908  stunted          
6 months    Keneba           GAMBIA                         0                  0     1124    1908  stunted          
6 months    Keneba           GAMBIA                         0                  1      198    1908  stunted          
6 months    LCNI-5           MALAWI                         1                  0       30     272  stunted          
6 months    LCNI-5           MALAWI                         1                  1       17     272  stunted          
6 months    LCNI-5           MALAWI                         0                  0      145     272  stunted          
6 months    LCNI-5           MALAWI                         0                  1       80     272  stunted          
6 months    MAL-ED           BANGLADESH                     1                  0       27     231  stunted          
6 months    MAL-ED           BANGLADESH                     1                  1        6     231  stunted          
6 months    MAL-ED           BANGLADESH                     0                  0      163     231  stunted          
6 months    MAL-ED           BANGLADESH                     0                  1       35     231  stunted          
6 months    MAL-ED           BRAZIL                         1                  0       12     209  stunted          
6 months    MAL-ED           BRAZIL                         1                  1        0     209  stunted          
6 months    MAL-ED           BRAZIL                         0                  0      191     209  stunted          
6 months    MAL-ED           BRAZIL                         0                  1        6     209  stunted          
6 months    MAL-ED           INDIA                          1                  0        1     218  stunted          
6 months    MAL-ED           INDIA                          1                  1        1     218  stunted          
6 months    MAL-ED           INDIA                          0                  0      176     218  stunted          
6 months    MAL-ED           INDIA                          0                  1       40     218  stunted          
6 months    MAL-ED           NEPAL                          1                  0        5     225  stunted          
6 months    MAL-ED           NEPAL                          1                  1        0     225  stunted          
6 months    MAL-ED           NEPAL                          0                  0      208     225  stunted          
6 months    MAL-ED           NEPAL                          0                  1       12     225  stunted          
6 months    MAL-ED           PERU                           1                  0        3     271  stunted          
6 months    MAL-ED           PERU                           1                  1        2     271  stunted          
6 months    MAL-ED           PERU                           0                  0      208     271  stunted          
6 months    MAL-ED           PERU                           0                  1       58     271  stunted          
6 months    MAL-ED           SOUTH AFRICA                   1                  0        0     233  stunted          
6 months    MAL-ED           SOUTH AFRICA                   1                  1        0     233  stunted          
6 months    MAL-ED           SOUTH AFRICA                   0                  0      190     233  stunted          
6 months    MAL-ED           SOUTH AFRICA                   0                  1       43     233  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        0     232  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0     232  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      174     232  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1       58     232  stunted          
6 months    PROVIDE          BANGLADESH                     1                  0      123     604  stunted          
6 months    PROVIDE          BANGLADESH                     1                  1       18     604  stunted          
6 months    PROVIDE          BANGLADESH                     0                  0      385     604  stunted          
6 months    PROVIDE          BANGLADESH                     0                  1       78     604  stunted          
6 months    SAS-CompFeed     INDIA                          1                  0      260     398  stunted          
6 months    SAS-CompFeed     INDIA                          1                  1      119     398  stunted          
6 months    SAS-CompFeed     INDIA                          0                  0       13     398  stunted          
6 months    SAS-CompFeed     INDIA                          0                  1        6     398  stunted          
6 months    SAS-FoodSuppl    INDIA                          1                  0        0     168  stunted          
6 months    SAS-FoodSuppl    INDIA                          1                  1        0     168  stunted          
6 months    SAS-FoodSuppl    INDIA                          0                  0       87     168  stunted          
6 months    SAS-FoodSuppl    INDIA                          0                  1       81     168  stunted          
24 months   CMC-V-BCS-2002   INDIA                          1                  0        7      19  stunted          
24 months   CMC-V-BCS-2002   INDIA                          1                  1       12      19  stunted          
24 months   CMC-V-BCS-2002   INDIA                          0                  0        0      19  stunted          
24 months   CMC-V-BCS-2002   INDIA                          0                  1        0      19  stunted          
24 months   EE               PAKISTAN                       1                  0        5      23  stunted          
24 months   EE               PAKISTAN                       1                  1       15      23  stunted          
24 months   EE               PAKISTAN                       0                  0        2      23  stunted          
24 months   EE               PAKISTAN                       0                  1        1      23  stunted          
24 months   GMS-Nepal        NEPAL                          1                  0      199     470  stunted          
24 months   GMS-Nepal        NEPAL                          1                  1      157     470  stunted          
24 months   GMS-Nepal        NEPAL                          0                  0       57     470  stunted          
24 months   GMS-Nepal        NEPAL                          0                  1       57     470  stunted          
24 months   IRC              INDIA                          1                  0        0      14  stunted          
24 months   IRC              INDIA                          1                  1        0      14  stunted          
24 months   IRC              INDIA                          0                  0        5      14  stunted          
24 months   IRC              INDIA                          0                  1        9      14  stunted          
24 months   JiVitA-3         BANGLADESH                     1                  0     2002    5088  stunted          
24 months   JiVitA-3         BANGLADESH                     1                  1     1914    5088  stunted          
24 months   JiVitA-3         BANGLADESH                     0                  0      582    5088  stunted          
24 months   JiVitA-3         BANGLADESH                     0                  1      590    5088  stunted          
24 months   JiVitA-4         BANGLADESH                     1                  0     1984    4199  stunted          
24 months   JiVitA-4         BANGLADESH                     1                  1     1296    4199  stunted          
24 months   JiVitA-4         BANGLADESH                     0                  0      514    4199  stunted          
24 months   JiVitA-4         BANGLADESH                     0                  1      405    4199  stunted          
24 months   Keneba           GAMBIA                         1                  0      365    1513  stunted          
24 months   Keneba           GAMBIA                         1                  1      150    1513  stunted          
24 months   Keneba           GAMBIA                         0                  0      638    1513  stunted          
24 months   Keneba           GAMBIA                         0                  1      360    1513  stunted          
24 months   LCNI-5           MALAWI                         1                  0       17     189  stunted          
24 months   LCNI-5           MALAWI                         1                  1       17     189  stunted          
24 months   LCNI-5           MALAWI                         0                  0       80     189  stunted          
24 months   LCNI-5           MALAWI                         0                  1       75     189  stunted          
24 months   MAL-ED           BANGLADESH                     1                  0       16     205  stunted          
24 months   MAL-ED           BANGLADESH                     1                  1       15     205  stunted          
24 months   MAL-ED           BANGLADESH                     0                  0       93     205  stunted          
24 months   MAL-ED           BANGLADESH                     0                  1       81     205  stunted          
24 months   MAL-ED           BRAZIL                         1                  0       11     169  stunted          
24 months   MAL-ED           BRAZIL                         1                  1        0     169  stunted          
24 months   MAL-ED           BRAZIL                         0                  0      151     169  stunted          
24 months   MAL-ED           BRAZIL                         0                  1        7     169  stunted          
24 months   MAL-ED           INDIA                          1                  0        0     209  stunted          
24 months   MAL-ED           INDIA                          1                  1        2     209  stunted          
24 months   MAL-ED           INDIA                          0                  0      120     209  stunted          
24 months   MAL-ED           INDIA                          0                  1       87     209  stunted          
24 months   MAL-ED           NEPAL                          1                  0        5     219  stunted          
24 months   MAL-ED           NEPAL                          1                  1        0     219  stunted          
24 months   MAL-ED           NEPAL                          0                  0      165     219  stunted          
24 months   MAL-ED           NEPAL                          0                  1       49     219  stunted          
24 months   MAL-ED           PERU                           1                  0        0     201  stunted          
24 months   MAL-ED           PERU                           1                  1        3     201  stunted          
24 months   MAL-ED           PERU                           0                  0      127     201  stunted          
24 months   MAL-ED           PERU                           0                  1       71     201  stunted          
24 months   MAL-ED           SOUTH AFRICA                   1                  0        0     216  stunted          
24 months   MAL-ED           SOUTH AFRICA                   1                  1        0     216  stunted          
24 months   MAL-ED           SOUTH AFRICA                   0                  0      144     216  stunted          
24 months   MAL-ED           SOUTH AFRICA                   0                  1       72     216  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        0     202  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0     202  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0       54     202  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1      148     202  stunted          
24 months   PROVIDE          BANGLADESH                     1                  0       88     578  stunted          
24 months   PROVIDE          BANGLADESH                     1                  1       49     578  stunted          
24 months   PROVIDE          BANGLADESH                     0                  0      300     578  stunted          
24 months   PROVIDE          BANGLADESH                     0                  1      141     578  stunted          


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
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
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
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
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
