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

**Intervention Variable:** predexfd6

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

agecat      studyid          country                        predexfd6    sstunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ----------  ---------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          1                   0        7       7  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          1                   1        0       7  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          0                   0        0       7  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          0                   1        0       7  sstunted         
Birth       EE               PAKISTAN                       1                   0       30      42  sstunted         
Birth       EE               PAKISTAN                       1                   1        8      42  sstunted         
Birth       EE               PAKISTAN                       0                   0        4      42  sstunted         
Birth       EE               PAKISTAN                       0                   1        0      42  sstunted         
Birth       GMS-Nepal        NEPAL                          1                   0      404     563  sstunted         
Birth       GMS-Nepal        NEPAL                          1                   1       15     563  sstunted         
Birth       GMS-Nepal        NEPAL                          0                   0      138     563  sstunted         
Birth       GMS-Nepal        NEPAL                          0                   1        6     563  sstunted         
Birth       IRC              INDIA                          1                   0        0      14  sstunted         
Birth       IRC              INDIA                          1                   1        0      14  sstunted         
Birth       IRC              INDIA                          0                   0       14      14  sstunted         
Birth       IRC              INDIA                          0                   1        0      14  sstunted         
Birth       JiVitA-3         BANGLADESH                     1                   0     9314   13423  sstunted         
Birth       JiVitA-3         BANGLADESH                     1                   1     1152   13423  sstunted         
Birth       JiVitA-3         BANGLADESH                     0                   0     2626   13423  sstunted         
Birth       JiVitA-3         BANGLADESH                     0                   1      331   13423  sstunted         
Birth       JiVitA-4         BANGLADESH                     1                   0     1948    2632  sstunted         
Birth       JiVitA-4         BANGLADESH                     1                   1      155    2632  sstunted         
Birth       JiVitA-4         BANGLADESH                     0                   0      462    2632  sstunted         
Birth       JiVitA-4         BANGLADESH                     0                   1       67    2632  sstunted         
Birth       Keneba           GAMBIA                         1                   0      475    1403  sstunted         
Birth       Keneba           GAMBIA                         1                   1       10    1403  sstunted         
Birth       Keneba           GAMBIA                         0                   0      899    1403  sstunted         
Birth       Keneba           GAMBIA                         0                   1       19    1403  sstunted         
Birth       MAL-ED           BANGLADESH                     1                   0       71     205  sstunted         
Birth       MAL-ED           BANGLADESH                     1                   1        1     205  sstunted         
Birth       MAL-ED           BANGLADESH                     0                   0      129     205  sstunted         
Birth       MAL-ED           BANGLADESH                     0                   1        4     205  sstunted         
Birth       MAL-ED           BRAZIL                         1                   0        5      60  sstunted         
Birth       MAL-ED           BRAZIL                         1                   1        1      60  sstunted         
Birth       MAL-ED           BRAZIL                         0                   0       52      60  sstunted         
Birth       MAL-ED           BRAZIL                         0                   1        2      60  sstunted         
Birth       MAL-ED           INDIA                          1                   0        4      39  sstunted         
Birth       MAL-ED           INDIA                          1                   1        0      39  sstunted         
Birth       MAL-ED           INDIA                          0                   0       33      39  sstunted         
Birth       MAL-ED           INDIA                          0                   1        2      39  sstunted         
Birth       MAL-ED           NEPAL                          1                   0        3      24  sstunted         
Birth       MAL-ED           NEPAL                          1                   1        0      24  sstunted         
Birth       MAL-ED           NEPAL                          0                   0       20      24  sstunted         
Birth       MAL-ED           NEPAL                          0                   1        1      24  sstunted         
Birth       MAL-ED           PERU                           1                   0       73     213  sstunted         
Birth       MAL-ED           PERU                           1                   1        0     213  sstunted         
Birth       MAL-ED           PERU                           0                   0      136     213  sstunted         
Birth       MAL-ED           PERU                           0                   1        4     213  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   1                   0        1      91  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   1                   1        0      91  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   0                   0       89      91  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   0                   1        1      91  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        0     113  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0     113  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      105     113  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        8     113  sstunted         
Birth       PROVIDE          BANGLADESH                     1                   0      158     539  sstunted         
Birth       PROVIDE          BANGLADESH                     1                   1        1     539  sstunted         
Birth       PROVIDE          BANGLADESH                     0                   0      377     539  sstunted         
Birth       PROVIDE          BANGLADESH                     0                   1        3     539  sstunted         
Birth       SAS-CompFeed     INDIA                          1                   0      323     364  sstunted         
Birth       SAS-CompFeed     INDIA                          1                   1       23     364  sstunted         
Birth       SAS-CompFeed     INDIA                          0                   0       15     364  sstunted         
Birth       SAS-CompFeed     INDIA                          0                   1        3     364  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          1                   0       17      19  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          1                   1        2      19  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          0                   0        0      19  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          0                   1        0      19  sstunted         
6 months    EE               PAKISTAN                       1                   0       31      48  sstunted         
6 months    EE               PAKISTAN                       1                   1       12      48  sstunted         
6 months    EE               PAKISTAN                       0                   0        5      48  sstunted         
6 months    EE               PAKISTAN                       0                   1        0      48  sstunted         
6 months    GMS-Nepal        NEPAL                          1                   0      394     547  sstunted         
6 months    GMS-Nepal        NEPAL                          1                   1       12     547  sstunted         
6 months    GMS-Nepal        NEPAL                          0                   0      132     547  sstunted         
6 months    GMS-Nepal        NEPAL                          0                   1        9     547  sstunted         
6 months    IRC              INDIA                          1                   0        0      14  sstunted         
6 months    IRC              INDIA                          1                   1        0      14  sstunted         
6 months    IRC              INDIA                          0                   0       13      14  sstunted         
6 months    IRC              INDIA                          0                   1        1      14  sstunted         
6 months    JiVitA-3         BANGLADESH                     1                   0     7180    9901  sstunted         
6 months    JiVitA-3         BANGLADESH                     1                   1      464    9901  sstunted         
6 months    JiVitA-3         BANGLADESH                     0                   0     2112    9901  sstunted         
6 months    JiVitA-3         BANGLADESH                     0                   1      145    9901  sstunted         
6 months    JiVitA-4         BANGLADESH                     1                   0     3184    4272  sstunted         
6 months    JiVitA-4         BANGLADESH                     1                   1      144    4272  sstunted         
6 months    JiVitA-4         BANGLADESH                     0                   0      854    4272  sstunted         
6 months    JiVitA-4         BANGLADESH                     0                   1       90    4272  sstunted         
6 months    Keneba           GAMBIA                         1                   0      564    1908  sstunted         
6 months    Keneba           GAMBIA                         1                   1       22    1908  sstunted         
6 months    Keneba           GAMBIA                         0                   0     1280    1908  sstunted         
6 months    Keneba           GAMBIA                         0                   1       42    1908  sstunted         
6 months    LCNI-5           MALAWI                         1                   0       44     272  sstunted         
6 months    LCNI-5           MALAWI                         1                   1        3     272  sstunted         
6 months    LCNI-5           MALAWI                         0                   0      208     272  sstunted         
6 months    LCNI-5           MALAWI                         0                   1       17     272  sstunted         
6 months    MAL-ED           BANGLADESH                     1                   0       82     231  sstunted         
6 months    MAL-ED           BANGLADESH                     1                   1        2     231  sstunted         
6 months    MAL-ED           BANGLADESH                     0                   0      142     231  sstunted         
6 months    MAL-ED           BANGLADESH                     0                   1        5     231  sstunted         
6 months    MAL-ED           BRAZIL                         1                   0       30     209  sstunted         
6 months    MAL-ED           BRAZIL                         1                   1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         0                   0      179     209  sstunted         
6 months    MAL-ED           BRAZIL                         0                   1        0     209  sstunted         
6 months    MAL-ED           INDIA                          1                   0        9     218  sstunted         
6 months    MAL-ED           INDIA                          1                   1        2     218  sstunted         
6 months    MAL-ED           INDIA                          0                   0      200     218  sstunted         
6 months    MAL-ED           INDIA                          0                   1        7     218  sstunted         
6 months    MAL-ED           NEPAL                          1                   0       12     225  sstunted         
6 months    MAL-ED           NEPAL                          1                   1        0     225  sstunted         
6 months    MAL-ED           NEPAL                          0                   0      212     225  sstunted         
6 months    MAL-ED           NEPAL                          0                   1        1     225  sstunted         
6 months    MAL-ED           PERU                           1                   0       90     271  sstunted         
6 months    MAL-ED           PERU                           1                   1        2     271  sstunted         
6 months    MAL-ED           PERU                           0                   0      171     271  sstunted         
6 months    MAL-ED           PERU                           0                   1        8     271  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   1                   0        3     233  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   1                   1        0     233  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   0                   0      226     233  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   0                   1        4     233  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        1     232  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0     232  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      217     232  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1       14     232  sstunted         
6 months    PROVIDE          BANGLADESH                     1                   0      139     604  sstunted         
6 months    PROVIDE          BANGLADESH                     1                   1        2     604  sstunted         
6 months    PROVIDE          BANGLADESH                     0                   0      451     604  sstunted         
6 months    PROVIDE          BANGLADESH                     0                   1       12     604  sstunted         
6 months    SAS-CompFeed     INDIA                          1                   0      342     398  sstunted         
6 months    SAS-CompFeed     INDIA                          1                   1       37     398  sstunted         
6 months    SAS-CompFeed     INDIA                          0                   0       16     398  sstunted         
6 months    SAS-CompFeed     INDIA                          0                   1        3     398  sstunted         
6 months    SAS-FoodSuppl    INDIA                          1                   0        0     168  sstunted         
6 months    SAS-FoodSuppl    INDIA                          1                   1        0     168  sstunted         
6 months    SAS-FoodSuppl    INDIA                          0                   0      140     168  sstunted         
6 months    SAS-FoodSuppl    INDIA                          0                   1       28     168  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          1                   0       14      19  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          1                   1        5      19  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          0                   0        0      19  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          0                   1        0      19  sstunted         
24 months   EE               PAKISTAN                       1                   0       12      23  sstunted         
24 months   EE               PAKISTAN                       1                   1        8      23  sstunted         
24 months   EE               PAKISTAN                       0                   0        3      23  sstunted         
24 months   EE               PAKISTAN                       0                   1        0      23  sstunted         
24 months   GMS-Nepal        NEPAL                          1                   0      320     470  sstunted         
24 months   GMS-Nepal        NEPAL                          1                   1       36     470  sstunted         
24 months   GMS-Nepal        NEPAL                          0                   0       98     470  sstunted         
24 months   GMS-Nepal        NEPAL                          0                   1       16     470  sstunted         
24 months   IRC              INDIA                          1                   0        0      14  sstunted         
24 months   IRC              INDIA                          1                   1        0      14  sstunted         
24 months   IRC              INDIA                          0                   0       13      14  sstunted         
24 months   IRC              INDIA                          0                   1        1      14  sstunted         
24 months   JiVitA-3         BANGLADESH                     1                   0     3325    5088  sstunted         
24 months   JiVitA-3         BANGLADESH                     1                   1      601    5088  sstunted         
24 months   JiVitA-3         BANGLADESH                     0                   0      995    5088  sstunted         
24 months   JiVitA-3         BANGLADESH                     0                   1      167    5088  sstunted         
24 months   JiVitA-4         BANGLADESH                     1                   0     3008    4199  sstunted         
24 months   JiVitA-4         BANGLADESH                     1                   1      284    4199  sstunted         
24 months   JiVitA-4         BANGLADESH                     0                   0      791    4199  sstunted         
24 months   JiVitA-4         BANGLADESH                     0                   1      116    4199  sstunted         
24 months   Keneba           GAMBIA                         1                   0      478    1513  sstunted         
24 months   Keneba           GAMBIA                         1                   1       37    1513  sstunted         
24 months   Keneba           GAMBIA                         0                   0      907    1513  sstunted         
24 months   Keneba           GAMBIA                         0                   1       91    1513  sstunted         
24 months   LCNI-5           MALAWI                         1                   0       30     189  sstunted         
24 months   LCNI-5           MALAWI                         1                   1        4     189  sstunted         
24 months   LCNI-5           MALAWI                         0                   0      135     189  sstunted         
24 months   LCNI-5           MALAWI                         0                   1       20     189  sstunted         
24 months   MAL-ED           BANGLADESH                     1                   0       62     205  sstunted         
24 months   MAL-ED           BANGLADESH                     1                   1       14     205  sstunted         
24 months   MAL-ED           BANGLADESH                     0                   0      117     205  sstunted         
24 months   MAL-ED           BANGLADESH                     0                   1       12     205  sstunted         
24 months   MAL-ED           BRAZIL                         1                   0       25     169  sstunted         
24 months   MAL-ED           BRAZIL                         1                   1        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         0                   0      143     169  sstunted         
24 months   MAL-ED           BRAZIL                         0                   1        1     169  sstunted         
24 months   MAL-ED           INDIA                          1                   0        8     209  sstunted         
24 months   MAL-ED           INDIA                          1                   1        3     209  sstunted         
24 months   MAL-ED           INDIA                          0                   0      174     209  sstunted         
24 months   MAL-ED           INDIA                          0                   1       24     209  sstunted         
24 months   MAL-ED           NEPAL                          1                   0       11     219  sstunted         
24 months   MAL-ED           NEPAL                          1                   1        1     219  sstunted         
24 months   MAL-ED           NEPAL                          0                   0      201     219  sstunted         
24 months   MAL-ED           NEPAL                          0                   1        6     219  sstunted         
24 months   MAL-ED           PERU                           1                   0       63     201  sstunted         
24 months   MAL-ED           PERU                           1                   1        5     201  sstunted         
24 months   MAL-ED           PERU                           0                   0      123     201  sstunted         
24 months   MAL-ED           PERU                           0                   1       10     201  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   1                   0        3     216  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   1                   1        0     216  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   0                   0      189     216  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   0                   1       24     216  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        1     202  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0     202  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      133     202  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1       68     202  sstunted         
24 months   PROVIDE          BANGLADESH                     1                   0      125     578  sstunted         
24 months   PROVIDE          BANGLADESH                     1                   1       12     578  sstunted         
24 months   PROVIDE          BANGLADESH                     0                   0      401     578  sstunted         
24 months   PROVIDE          BANGLADESH                     0                   1       40     578  sstunted         


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
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
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
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
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
