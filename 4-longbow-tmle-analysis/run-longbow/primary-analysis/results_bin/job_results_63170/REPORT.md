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

**Intervention Variable:** exclfeed3

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

agecat      studyid          country                        exclfeed3    sstunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ----------  ---------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          1                   0        4       4  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          1                   1        0       4  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          0                   0        0       4  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          0                   1        0       4  sstunted         
Birth       EE               PAKISTAN                       1                   0       28      35  sstunted         
Birth       EE               PAKISTAN                       1                   1        7      35  sstunted         
Birth       EE               PAKISTAN                       0                   0        0      35  sstunted         
Birth       EE               PAKISTAN                       0                   1        0      35  sstunted         
Birth       GMS-Nepal        NEPAL                          1                   0      367     458  sstunted         
Birth       GMS-Nepal        NEPAL                          1                   1       13     458  sstunted         
Birth       GMS-Nepal        NEPAL                          0                   0       73     458  sstunted         
Birth       GMS-Nepal        NEPAL                          0                   1        5     458  sstunted         
Birth       IRC              INDIA                          1                   0        0      10  sstunted         
Birth       IRC              INDIA                          1                   1        0      10  sstunted         
Birth       IRC              INDIA                          0                   0       10      10  sstunted         
Birth       IRC              INDIA                          0                   1        0      10  sstunted         
Birth       JiVitA-3         BANGLADESH                     1                   0    10706   13276  sstunted         
Birth       JiVitA-3         BANGLADESH                     1                   1     1308   13276  sstunted         
Birth       JiVitA-3         BANGLADESH                     0                   0     1118   13276  sstunted         
Birth       JiVitA-3         BANGLADESH                     0                   1      144   13276  sstunted         
Birth       JiVitA-4         BANGLADESH                     1                   0       97     116  sstunted         
Birth       JiVitA-4         BANGLADESH                     1                   1        8     116  sstunted         
Birth       JiVitA-4         BANGLADESH                     0                   0        9     116  sstunted         
Birth       JiVitA-4         BANGLADESH                     0                   1        2     116  sstunted         
Birth       Keneba           GAMBIA                         1                   0     1171    1356  sstunted         
Birth       Keneba           GAMBIA                         1                   1       27    1356  sstunted         
Birth       Keneba           GAMBIA                         0                   0      156    1356  sstunted         
Birth       Keneba           GAMBIA                         0                   1        2    1356  sstunted         
Birth       MAL-ED           BANGLADESH                     1                   0      135     215  sstunted         
Birth       MAL-ED           BANGLADESH                     1                   1        3     215  sstunted         
Birth       MAL-ED           BANGLADESH                     0                   0       73     215  sstunted         
Birth       MAL-ED           BANGLADESH                     0                   1        4     215  sstunted         
Birth       MAL-ED           BRAZIL                         1                   0       11      57  sstunted         
Birth       MAL-ED           BRAZIL                         1                   1        1      57  sstunted         
Birth       MAL-ED           BRAZIL                         0                   0       44      57  sstunted         
Birth       MAL-ED           BRAZIL                         0                   1        1      57  sstunted         
Birth       MAL-ED           INDIA                          1                   0       22      41  sstunted         
Birth       MAL-ED           INDIA                          1                   1        2      41  sstunted         
Birth       MAL-ED           INDIA                          0                   0       17      41  sstunted         
Birth       MAL-ED           INDIA                          0                   1        0      41  sstunted         
Birth       MAL-ED           NEPAL                          1                   0        8      26  sstunted         
Birth       MAL-ED           NEPAL                          1                   1        0      26  sstunted         
Birth       MAL-ED           NEPAL                          0                   0       17      26  sstunted         
Birth       MAL-ED           NEPAL                          0                   1        1      26  sstunted         
Birth       MAL-ED           PERU                           1                   0       47     223  sstunted         
Birth       MAL-ED           PERU                           1                   1        2     223  sstunted         
Birth       MAL-ED           PERU                           0                   0      173     223  sstunted         
Birth       MAL-ED           PERU                           0                   1        1     223  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   1                   0       12     100  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   1                   1        0     100  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   0                   0       87     100  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   0                   1        1     100  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0       15     102  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        2     102  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0       80     102  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        5     102  sstunted         
Birth       PROVIDE          BANGLADESH                     1                   0      385     539  sstunted         
Birth       PROVIDE          BANGLADESH                     1                   1        2     539  sstunted         
Birth       PROVIDE          BANGLADESH                     0                   0      150     539  sstunted         
Birth       PROVIDE          BANGLADESH                     0                   1        2     539  sstunted         
Birth       SAS-CompFeed     INDIA                          1                   0      323     364  sstunted         
Birth       SAS-CompFeed     INDIA                          1                   1       23     364  sstunted         
Birth       SAS-CompFeed     INDIA                          0                   0       15     364  sstunted         
Birth       SAS-CompFeed     INDIA                          0                   1        3     364  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          1                   0       10      10  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          1                   1        0      10  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          0                   0        0      10  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          0                   1        0      10  sstunted         
6 months    EE               PAKISTAN                       1                   0       28      39  sstunted         
6 months    EE               PAKISTAN                       1                   1       11      39  sstunted         
6 months    EE               PAKISTAN                       0                   0        0      39  sstunted         
6 months    EE               PAKISTAN                       0                   1        0      39  sstunted         
6 months    GMS-Nepal        NEPAL                          1                   0      356     441  sstunted         
6 months    GMS-Nepal        NEPAL                          1                   1       11     441  sstunted         
6 months    GMS-Nepal        NEPAL                          0                   0       69     441  sstunted         
6 months    GMS-Nepal        NEPAL                          0                   1        5     441  sstunted         
6 months    IRC              INDIA                          1                   0        0      10  sstunted         
6 months    IRC              INDIA                          1                   1        0      10  sstunted         
6 months    IRC              INDIA                          0                   0        9      10  sstunted         
6 months    IRC              INDIA                          0                   1        1      10  sstunted         
6 months    JiVitA-3         BANGLADESH                     1                   0     7996    9328  sstunted         
6 months    JiVitA-3         BANGLADESH                     1                   1      518    9328  sstunted         
6 months    JiVitA-3         BANGLADESH                     0                   0      758    9328  sstunted         
6 months    JiVitA-3         BANGLADESH                     0                   1       56    9328  sstunted         
6 months    JiVitA-4         BANGLADESH                     1                   0       76      88  sstunted         
6 months    JiVitA-4         BANGLADESH                     1                   1        0      88  sstunted         
6 months    JiVitA-4         BANGLADESH                     0                   0       11      88  sstunted         
6 months    JiVitA-4         BANGLADESH                     0                   1        1      88  sstunted         
6 months    Keneba           GAMBIA                         1                   0     1495    1742  sstunted         
6 months    Keneba           GAMBIA                         1                   1       46    1742  sstunted         
6 months    Keneba           GAMBIA                         0                   0      191    1742  sstunted         
6 months    Keneba           GAMBIA                         0                   1       10    1742  sstunted         
6 months    MAL-ED           BANGLADESH                     1                   0      149     233  sstunted         
6 months    MAL-ED           BANGLADESH                     1                   1        3     233  sstunted         
6 months    MAL-ED           BANGLADESH                     0                   0       76     233  sstunted         
6 months    MAL-ED           BANGLADESH                     0                   1        5     233  sstunted         
6 months    MAL-ED           BRAZIL                         1                   0       60     187  sstunted         
6 months    MAL-ED           BRAZIL                         1                   1        0     187  sstunted         
6 months    MAL-ED           BRAZIL                         0                   0      127     187  sstunted         
6 months    MAL-ED           BRAZIL                         0                   1        0     187  sstunted         
6 months    MAL-ED           INDIA                          1                   0      107     210  sstunted         
6 months    MAL-ED           INDIA                          1                   1        3     210  sstunted         
6 months    MAL-ED           INDIA                          0                   0       94     210  sstunted         
6 months    MAL-ED           INDIA                          0                   1        6     210  sstunted         
6 months    MAL-ED           NEPAL                          1                   0       69     227  sstunted         
6 months    MAL-ED           NEPAL                          1                   1        1     227  sstunted         
6 months    MAL-ED           NEPAL                          0                   0      157     227  sstunted         
6 months    MAL-ED           NEPAL                          0                   1        0     227  sstunted         
6 months    MAL-ED           PERU                           1                   0       58     270  sstunted         
6 months    MAL-ED           PERU                           1                   1        3     270  sstunted         
6 months    MAL-ED           PERU                           0                   0      203     270  sstunted         
6 months    MAL-ED           PERU                           0                   1        6     270  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   1                   0       22     244  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   1                   1        0     244  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   0                   0      216     244  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   0                   1        6     244  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0       43     212  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        3     212  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      158     212  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        8     212  sstunted         
6 months    PROVIDE          BANGLADESH                     1                   0      422     604  sstunted         
6 months    PROVIDE          BANGLADESH                     1                   1        6     604  sstunted         
6 months    PROVIDE          BANGLADESH                     0                   0      168     604  sstunted         
6 months    PROVIDE          BANGLADESH                     0                   1        8     604  sstunted         
6 months    SAS-CompFeed     INDIA                          1                   0      342     398  sstunted         
6 months    SAS-CompFeed     INDIA                          1                   1       37     398  sstunted         
6 months    SAS-CompFeed     INDIA                          0                   0       16     398  sstunted         
6 months    SAS-CompFeed     INDIA                          0                   1        3     398  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          1                   0        8      10  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          1                   1        2      10  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          0                   0        0      10  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          0                   1        0      10  sstunted         
24 months   EE               PAKISTAN                       1                   0       12      20  sstunted         
24 months   EE               PAKISTAN                       1                   1        8      20  sstunted         
24 months   EE               PAKISTAN                       0                   0        0      20  sstunted         
24 months   EE               PAKISTAN                       0                   1        0      20  sstunted         
24 months   GMS-Nepal        NEPAL                          1                   0      289     384  sstunted         
24 months   GMS-Nepal        NEPAL                          1                   1       33     384  sstunted         
24 months   GMS-Nepal        NEPAL                          0                   0       56     384  sstunted         
24 months   GMS-Nepal        NEPAL                          0                   1        6     384  sstunted         
24 months   IRC              INDIA                          1                   0        0      10  sstunted         
24 months   IRC              INDIA                          1                   1        0      10  sstunted         
24 months   IRC              INDIA                          0                   0       10      10  sstunted         
24 months   IRC              INDIA                          0                   1        0      10  sstunted         
24 months   JiVitA-3         BANGLADESH                     1                   0     3764    4852  sstunted         
24 months   JiVitA-3         BANGLADESH                     1                   1      669    4852  sstunted         
24 months   JiVitA-3         BANGLADESH                     0                   0      345    4852  sstunted         
24 months   JiVitA-3         BANGLADESH                     0                   1       74    4852  sstunted         
24 months   JiVitA-4         BANGLADESH                     1                   0      130     151  sstunted         
24 months   JiVitA-4         BANGLADESH                     1                   1        6     151  sstunted         
24 months   JiVitA-4         BANGLADESH                     0                   0       13     151  sstunted         
24 months   JiVitA-4         BANGLADESH                     0                   1        2     151  sstunted         
24 months   Keneba           GAMBIA                         1                   0     1170    1420  sstunted         
24 months   Keneba           GAMBIA                         1                   1      104    1420  sstunted         
24 months   Keneba           GAMBIA                         0                   0      129    1420  sstunted         
24 months   Keneba           GAMBIA                         0                   1       17    1420  sstunted         
24 months   MAL-ED           BANGLADESH                     1                   0      117     205  sstunted         
24 months   MAL-ED           BANGLADESH                     1                   1       18     205  sstunted         
24 months   MAL-ED           BANGLADESH                     0                   0       60     205  sstunted         
24 months   MAL-ED           BANGLADESH                     0                   1       10     205  sstunted         
24 months   MAL-ED           BRAZIL                         1                   0       51     152  sstunted         
24 months   MAL-ED           BRAZIL                         1                   1        1     152  sstunted         
24 months   MAL-ED           BRAZIL                         0                   0      100     152  sstunted         
24 months   MAL-ED           BRAZIL                         0                   1        0     152  sstunted         
24 months   MAL-ED           INDIA                          1                   0       84     202  sstunted         
24 months   MAL-ED           INDIA                          1                   1       18     202  sstunted         
24 months   MAL-ED           INDIA                          0                   0       89     202  sstunted         
24 months   MAL-ED           INDIA                          0                   1       11     202  sstunted         
24 months   MAL-ED           NEPAL                          1                   0       65     220  sstunted         
24 months   MAL-ED           NEPAL                          1                   1        2     220  sstunted         
24 months   MAL-ED           NEPAL                          0                   0      149     220  sstunted         
24 months   MAL-ED           NEPAL                          0                   1        4     220  sstunted         
24 months   MAL-ED           PERU                           1                   0       39     198  sstunted         
24 months   MAL-ED           PERU                           1                   1        4     198  sstunted         
24 months   MAL-ED           PERU                           0                   0      145     198  sstunted         
24 months   MAL-ED           PERU                           0                   1       10     198  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   1                   0       18     228  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   1                   1        1     228  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   0                   0      184     228  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   0                   1       25     228  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0       26     184  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1       12     184  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0       94     184  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1       52     184  sstunted         
24 months   PROVIDE          BANGLADESH                     1                   0      372     578  sstunted         
24 months   PROVIDE          BANGLADESH                     1                   1       36     578  sstunted         
24 months   PROVIDE          BANGLADESH                     0                   0      154     578  sstunted         
24 months   PROVIDE          BANGLADESH                     0                   1       16     578  sstunted         


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
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
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA

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
