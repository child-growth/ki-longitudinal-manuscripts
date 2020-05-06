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

agecat      studyid      country                        impsan    sstunted   n_cell       n  outcome_variable 
----------  -----------  -----------------------------  -------  ---------  -------  ------  -----------------
Birth       COHORTS      GUATEMALA                      1                0       45     491  sstunted         
Birth       COHORTS      GUATEMALA                      1                1        0     491  sstunted         
Birth       COHORTS      GUATEMALA                      0                0      440     491  sstunted         
Birth       COHORTS      GUATEMALA                      0                1        6     491  sstunted         
Birth       COHORTS      INDIA                          1                0     1723    4776  sstunted         
Birth       COHORTS      INDIA                          1                1       44    4776  sstunted         
Birth       COHORTS      INDIA                          0                0     2912    4776  sstunted         
Birth       COHORTS      INDIA                          0                1       97    4776  sstunted         
Birth       COHORTS      PHILIPPINES                    1                0      178    1191  sstunted         
Birth       COHORTS      PHILIPPINES                    1                1        0    1191  sstunted         
Birth       COHORTS      PHILIPPINES                    0                0      994    1191  sstunted         
Birth       COHORTS      PHILIPPINES                    0                1       19    1191  sstunted         
Birth       CONTENT      PERU                           1                0        1       2  sstunted         
Birth       CONTENT      PERU                           1                1        0       2  sstunted         
Birth       CONTENT      PERU                           0                0        1       2  sstunted         
Birth       CONTENT      PERU                           0                1        0       2  sstunted         
Birth       JiVitA-3     BANGLADESH                     1                0    13709   22431  sstunted         
Birth       JiVitA-3     BANGLADESH                     1                1     1511   22431  sstunted         
Birth       JiVitA-3     BANGLADESH                     0                0     6274   22431  sstunted         
Birth       JiVitA-3     BANGLADESH                     0                1      937   22431  sstunted         
Birth       JiVitA-4     BANGLADESH                     1                0     2012    2820  sstunted         
Birth       JiVitA-4     BANGLADESH                     1                1      169    2820  sstunted         
Birth       JiVitA-4     BANGLADESH                     0                0      575    2820  sstunted         
Birth       JiVitA-4     BANGLADESH                     0                1       64    2820  sstunted         
Birth       MAL-ED       BANGLADESH                     1                0      174     213  sstunted         
Birth       MAL-ED       BANGLADESH                     1                1        5     213  sstunted         
Birth       MAL-ED       BANGLADESH                     0                0       33     213  sstunted         
Birth       MAL-ED       BANGLADESH                     0                1        1     213  sstunted         
Birth       MAL-ED       BRAZIL                         1                0       56      60  sstunted         
Birth       MAL-ED       BRAZIL                         1                1        3      60  sstunted         
Birth       MAL-ED       BRAZIL                         0                0        1      60  sstunted         
Birth       MAL-ED       BRAZIL                         0                1        0      60  sstunted         
Birth       MAL-ED       INDIA                          1                0       14      40  sstunted         
Birth       MAL-ED       INDIA                          1                1        1      40  sstunted         
Birth       MAL-ED       INDIA                          0                0       25      40  sstunted         
Birth       MAL-ED       INDIA                          0                1        0      40  sstunted         
Birth       MAL-ED       NEPAL                          1                0       24      26  sstunted         
Birth       MAL-ED       NEPAL                          1                1        1      26  sstunted         
Birth       MAL-ED       NEPAL                          0                0        1      26  sstunted         
Birth       MAL-ED       NEPAL                          0                1        0      26  sstunted         
Birth       MAL-ED       PERU                           1                0       50     208  sstunted         
Birth       MAL-ED       PERU                           1                1        2     208  sstunted         
Birth       MAL-ED       PERU                           0                0      154     208  sstunted         
Birth       MAL-ED       PERU                           0                1        2     208  sstunted         
Birth       MAL-ED       SOUTH AFRICA                   1                0        0      95  sstunted         
Birth       MAL-ED       SOUTH AFRICA                   1                1        0      95  sstunted         
Birth       MAL-ED       SOUTH AFRICA                   0                0       94      95  sstunted         
Birth       MAL-ED       SOUTH AFRICA                   0                1        1      95  sstunted         
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                0        0     118  sstunted         
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                1        0     118  sstunted         
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                0      110     118  sstunted         
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                1        8     118  sstunted         
Birth       NIH-Birth    BANGLADESH                     1                0      226     608  sstunted         
Birth       NIH-Birth    BANGLADESH                     1                1        5     608  sstunted         
Birth       NIH-Birth    BANGLADESH                     0                0      363     608  sstunted         
Birth       NIH-Birth    BANGLADESH                     0                1       14     608  sstunted         
Birth       NIH-Crypto   BANGLADESH                     1                0      625     721  sstunted         
Birth       NIH-Crypto   BANGLADESH                     1                1        7     721  sstunted         
Birth       NIH-Crypto   BANGLADESH                     0                0       86     721  sstunted         
Birth       NIH-Crypto   BANGLADESH                     0                1        3     721  sstunted         
Birth       PROVIDE      BANGLADESH                     1                0       43      45  sstunted         
Birth       PROVIDE      BANGLADESH                     1                1        0      45  sstunted         
Birth       PROVIDE      BANGLADESH                     0                0        2      45  sstunted         
Birth       PROVIDE      BANGLADESH                     0                1        0      45  sstunted         
6 months    COHORTS      GUATEMALA                      1                0       63     658  sstunted         
6 months    COHORTS      GUATEMALA                      1                1        4     658  sstunted         
6 months    COHORTS      GUATEMALA                      0                0      503     658  sstunted         
6 months    COHORTS      GUATEMALA                      0                1       88     658  sstunted         
6 months    COHORTS      INDIA                          1                0     1829    4971  sstunted         
6 months    COHORTS      INDIA                          1                1       52    4971  sstunted         
6 months    COHORTS      INDIA                          0                0     2900    4971  sstunted         
6 months    COHORTS      INDIA                          0                1      190    4971  sstunted         
6 months    COHORTS      PHILIPPINES                    1                0      141    1083  sstunted         
6 months    COHORTS      PHILIPPINES                    1                1        2    1083  sstunted         
6 months    COHORTS      PHILIPPINES                    0                0      882    1083  sstunted         
6 months    COHORTS      PHILIPPINES                    0                1       58    1083  sstunted         
6 months    CONTENT      PERU                           1                0      201     215  sstunted         
6 months    CONTENT      PERU                           1                1        0     215  sstunted         
6 months    CONTENT      PERU                           0                0       13     215  sstunted         
6 months    CONTENT      PERU                           0                1        1     215  sstunted         
6 months    JiVitA-3     BANGLADESH                     1                0    11398   16800  sstunted         
6 months    JiVitA-3     BANGLADESH                     1                1      640   16800  sstunted         
6 months    JiVitA-3     BANGLADESH                     0                0     4383   16800  sstunted         
6 months    JiVitA-3     BANGLADESH                     0                1      379   16800  sstunted         
6 months    JiVitA-4     BANGLADESH                     1                0     3536    4825  sstunted         
6 months    JiVitA-4     BANGLADESH                     1                1      198    4825  sstunted         
6 months    JiVitA-4     BANGLADESH                     0                0     1018    4825  sstunted         
6 months    JiVitA-4     BANGLADESH                     0                1       73    4825  sstunted         
6 months    LCNI-5       MALAWI                         1                0        2     812  sstunted         
6 months    LCNI-5       MALAWI                         1                1        1     812  sstunted         
6 months    LCNI-5       MALAWI                         0                0      745     812  sstunted         
6 months    LCNI-5       MALAWI                         0                1       64     812  sstunted         
6 months    MAL-ED       BANGLADESH                     1                0      195     240  sstunted         
6 months    MAL-ED       BANGLADESH                     1                1        7     240  sstunted         
6 months    MAL-ED       BANGLADESH                     0                0       37     240  sstunted         
6 months    MAL-ED       BANGLADESH                     0                1        1     240  sstunted         
6 months    MAL-ED       BRAZIL                         1                0      205     209  sstunted         
6 months    MAL-ED       BRAZIL                         1                1        0     209  sstunted         
6 months    MAL-ED       BRAZIL                         0                0        4     209  sstunted         
6 months    MAL-ED       BRAZIL                         0                1        0     209  sstunted         
6 months    MAL-ED       INDIA                          1                0      102     233  sstunted         
6 months    MAL-ED       INDIA                          1                1        6     233  sstunted         
6 months    MAL-ED       INDIA                          0                0      122     233  sstunted         
6 months    MAL-ED       INDIA                          0                1        3     233  sstunted         
6 months    MAL-ED       NEPAL                          1                0      234     236  sstunted         
6 months    MAL-ED       NEPAL                          1                1        1     236  sstunted         
6 months    MAL-ED       NEPAL                          0                0        1     236  sstunted         
6 months    MAL-ED       NEPAL                          0                1        0     236  sstunted         
6 months    MAL-ED       PERU                           1                0       62     263  sstunted         
6 months    MAL-ED       PERU                           1                1        3     263  sstunted         
6 months    MAL-ED       PERU                           0                0      191     263  sstunted         
6 months    MAL-ED       PERU                           0                1        7     263  sstunted         
6 months    MAL-ED       SOUTH AFRICA                   1                0        4     244  sstunted         
6 months    MAL-ED       SOUTH AFRICA                   1                1        0     244  sstunted         
6 months    MAL-ED       SOUTH AFRICA                   0                0      234     244  sstunted         
6 months    MAL-ED       SOUTH AFRICA                   0                1        6     244  sstunted         
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                0        0     238  sstunted         
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                1        0     238  sstunted         
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                0      224     238  sstunted         
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                1       14     238  sstunted         
6 months    NIH-Birth    BANGLADESH                     1                0      194     537  sstunted         
6 months    NIH-Birth    BANGLADESH                     1                1       11     537  sstunted         
6 months    NIH-Birth    BANGLADESH                     0                0      308     537  sstunted         
6 months    NIH-Birth    BANGLADESH                     0                1       24     537  sstunted         
6 months    NIH-Crypto   BANGLADESH                     1                0      597     704  sstunted         
6 months    NIH-Crypto   BANGLADESH                     1                1       18     704  sstunted         
6 months    NIH-Crypto   BANGLADESH                     0                0       84     704  sstunted         
6 months    NIH-Crypto   BANGLADESH                     0                1        5     704  sstunted         
6 months    PROVIDE      BANGLADESH                     1                0       11      11  sstunted         
6 months    PROVIDE      BANGLADESH                     1                1        0      11  sstunted         
6 months    PROVIDE      BANGLADESH                     0                0        0      11  sstunted         
6 months    PROVIDE      BANGLADESH                     0                1        0      11  sstunted         
24 months   COHORTS      GUATEMALA                      1                0       44     893  sstunted         
24 months   COHORTS      GUATEMALA                      1                1       33     893  sstunted         
24 months   COHORTS      GUATEMALA                      0                0      407     893  sstunted         
24 months   COHORTS      GUATEMALA                      0                1      409     893  sstunted         
24 months   COHORTS      INDIA                          1                0     1247    3751  sstunted         
24 months   COHORTS      INDIA                          1                1      224    3751  sstunted         
24 months   COHORTS      INDIA                          0                0     1542    3751  sstunted         
24 months   COHORTS      INDIA                          0                1      738    3751  sstunted         
24 months   COHORTS      PHILIPPINES                    1                0      116     990  sstunted         
24 months   COHORTS      PHILIPPINES                    1                1       10     990  sstunted         
24 months   COHORTS      PHILIPPINES                    0                0      533     990  sstunted         
24 months   COHORTS      PHILIPPINES                    0                1      331     990  sstunted         
24 months   CONTENT      PERU                           1                0      150     164  sstunted         
24 months   CONTENT      PERU                           1                1        1     164  sstunted         
24 months   CONTENT      PERU                           0                0       13     164  sstunted         
24 months   CONTENT      PERU                           0                1        0     164  sstunted         
24 months   JiVitA-3     BANGLADESH                     1                0     5298    8622  sstunted         
24 months   JiVitA-3     BANGLADESH                     1                1      813    8622  sstunted         
24 months   JiVitA-3     BANGLADESH                     0                0     1979    8622  sstunted         
24 months   JiVitA-3     BANGLADESH                     0                1      532    8622  sstunted         
24 months   JiVitA-4     BANGLADESH                     1                0     3373    4747  sstunted         
24 months   JiVitA-4     BANGLADESH                     1                1      310    4747  sstunted         
24 months   JiVitA-4     BANGLADESH                     0                0      922    4747  sstunted         
24 months   JiVitA-4     BANGLADESH                     0                1      142    4747  sstunted         
24 months   LCNI-5       MALAWI                         1                0        1     572  sstunted         
24 months   LCNI-5       MALAWI                         1                1        1     572  sstunted         
24 months   LCNI-5       MALAWI                         0                0      502     572  sstunted         
24 months   LCNI-5       MALAWI                         0                1       68     572  sstunted         
24 months   MAL-ED       BANGLADESH                     1                0      156     212  sstunted         
24 months   MAL-ED       BANGLADESH                     1                1       25     212  sstunted         
24 months   MAL-ED       BANGLADESH                     0                0       28     212  sstunted         
24 months   MAL-ED       BANGLADESH                     0                1        3     212  sstunted         
24 months   MAL-ED       BRAZIL                         1                0      165     169  sstunted         
24 months   MAL-ED       BRAZIL                         1                1        1     169  sstunted         
24 months   MAL-ED       BRAZIL                         0                0        3     169  sstunted         
24 months   MAL-ED       BRAZIL                         0                1        0     169  sstunted         
24 months   MAL-ED       INDIA                          1                0       96     225  sstunted         
24 months   MAL-ED       INDIA                          1                1        8     225  sstunted         
24 months   MAL-ED       INDIA                          0                0      100     225  sstunted         
24 months   MAL-ED       INDIA                          0                1       21     225  sstunted         
24 months   MAL-ED       NEPAL                          1                0      220     228  sstunted         
24 months   MAL-ED       NEPAL                          1                1        7     228  sstunted         
24 months   MAL-ED       NEPAL                          0                0        1     228  sstunted         
24 months   MAL-ED       NEPAL                          0                1        0     228  sstunted         
24 months   MAL-ED       PERU                           1                0       43     196  sstunted         
24 months   MAL-ED       PERU                           1                1        4     196  sstunted         
24 months   MAL-ED       PERU                           0                0      138     196  sstunted         
24 months   MAL-ED       PERU                           0                1       11     196  sstunted         
24 months   MAL-ED       SOUTH AFRICA                   1                0        4     235  sstunted         
24 months   MAL-ED       SOUTH AFRICA                   1                1        0     235  sstunted         
24 months   MAL-ED       SOUTH AFRICA                   0                0      204     235  sstunted         
24 months   MAL-ED       SOUTH AFRICA                   0                1       27     235  sstunted         
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                0        0     207  sstunted         
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                1        0     207  sstunted         
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                0      139     207  sstunted         
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                1       68     207  sstunted         
24 months   NIH-Birth    BANGLADESH                     1                0      141     429  sstunted         
24 months   NIH-Birth    BANGLADESH                     1                1       29     429  sstunted         
24 months   NIH-Birth    BANGLADESH                     0                0      193     429  sstunted         
24 months   NIH-Birth    BANGLADESH                     0                1       66     429  sstunted         
24 months   NIH-Crypto   BANGLADESH                     1                0      403     503  sstunted         
24 months   NIH-Crypto   BANGLADESH                     1                1       30     503  sstunted         
24 months   NIH-Crypto   BANGLADESH                     0                0       65     503  sstunted         
24 months   NIH-Crypto   BANGLADESH                     0                1        5     503  sstunted         
24 months   PROVIDE      BANGLADESH                     1                0        8       9  sstunted         
24 months   PROVIDE      BANGLADESH                     1                1        1       9  sstunted         
24 months   PROVIDE      BANGLADESH                     0                0        0       9  sstunted         
24 months   PROVIDE      BANGLADESH                     0                1        0       9  sstunted         


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH

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
