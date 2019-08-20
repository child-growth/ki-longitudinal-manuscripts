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

agecat      studyid                 country                        impsan    sstunted   n_cell       n
----------  ----------------------  -----------------------------  -------  ---------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1                0      192     234
Birth       ki0047075b-MAL-ED       BANGLADESH                     1                1        5     234
Birth       ki0047075b-MAL-ED       BANGLADESH                     0                0       36     234
Birth       ki0047075b-MAL-ED       BANGLADESH                     0                1        1     234
Birth       ki0047075b-MAL-ED       BRAZIL                         1                0      163     174
Birth       ki0047075b-MAL-ED       BRAZIL                         1                1        7     174
Birth       ki0047075b-MAL-ED       BRAZIL                         0                0        4     174
Birth       ki0047075b-MAL-ED       BRAZIL                         0                1        0     174
Birth       ki0047075b-MAL-ED       INDIA                          1                0       87     190
Birth       ki0047075b-MAL-ED       INDIA                          1                1        5     190
Birth       ki0047075b-MAL-ED       INDIA                          0                0       97     190
Birth       ki0047075b-MAL-ED       INDIA                          0                1        1     190
Birth       ki0047075b-MAL-ED       NEPAL                          1                0      164     171
Birth       ki0047075b-MAL-ED       NEPAL                          1                1        6     171
Birth       ki0047075b-MAL-ED       NEPAL                          0                0        1     171
Birth       ki0047075b-MAL-ED       NEPAL                          0                1        0     171
Birth       ki0047075b-MAL-ED       PERU                           1                0       60     250
Birth       ki0047075b-MAL-ED       PERU                           1                1        2     250
Birth       ki0047075b-MAL-ED       PERU                           0                0      183     250
Birth       ki0047075b-MAL-ED       PERU                           0                1        5     250
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                0        2     213
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1                1        0     213
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0                0      210     213
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0                1        1     213
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                0        0     113
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                1        0     113
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                0      108     113
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                1        5     113
Birth       ki1017093-NIH-Birth     BANGLADESH                     1                0        9      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     1                1        0      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     0                0       19      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     0                1        0      28
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                0       24      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                1        1      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                0        2      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                1        0      27
Birth       ki1114097-CONTENT       PERU                           1                0        1       2
Birth       ki1114097-CONTENT       PERU                           1                1        0       2
Birth       ki1114097-CONTENT       PERU                           0                0        1       2
Birth       ki1114097-CONTENT       PERU                           0                1        0       2
Birth       ki1135781-COHORTS       GUATEMALA                      1                0       45     491
Birth       ki1135781-COHORTS       GUATEMALA                      1                1        0     491
Birth       ki1135781-COHORTS       GUATEMALA                      0                0      440     491
Birth       ki1135781-COHORTS       GUATEMALA                      0                1        6     491
Birth       ki1135781-COHORTS       INDIA                          1                0     1723    4776
Birth       ki1135781-COHORTS       INDIA                          1                1       44    4776
Birth       ki1135781-COHORTS       INDIA                          0                0     2912    4776
Birth       ki1135781-COHORTS       INDIA                          0                1       97    4776
Birth       ki1135781-COHORTS       PHILIPPINES                    1                0      178    1191
Birth       ki1135781-COHORTS       PHILIPPINES                    1                1        0    1191
Birth       ki1135781-COHORTS       PHILIPPINES                    0                0      994    1191
Birth       ki1135781-COHORTS       PHILIPPINES                    0                1       19    1191
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                0    11946   19592
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1                1     1241   19592
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0                0     5605   19592
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0                1      800   19592
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                0      562     822
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1                1       44     822
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0                0      196     822
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0                1       20     822
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                0      195     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     1                1        7     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     0                0       37     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     0                1        1     240
6 months    ki0047075b-MAL-ED       BRAZIL                         1                0      205     209
6 months    ki0047075b-MAL-ED       BRAZIL                         1                1        0     209
6 months    ki0047075b-MAL-ED       BRAZIL                         0                0        4     209
6 months    ki0047075b-MAL-ED       BRAZIL                         0                1        0     209
6 months    ki0047075b-MAL-ED       INDIA                          1                0      102     233
6 months    ki0047075b-MAL-ED       INDIA                          1                1        6     233
6 months    ki0047075b-MAL-ED       INDIA                          0                0      122     233
6 months    ki0047075b-MAL-ED       INDIA                          0                1        3     233
6 months    ki0047075b-MAL-ED       NEPAL                          1                0      234     236
6 months    ki0047075b-MAL-ED       NEPAL                          1                1        1     236
6 months    ki0047075b-MAL-ED       NEPAL                          0                0        1     236
6 months    ki0047075b-MAL-ED       NEPAL                          0                1        0     236
6 months    ki0047075b-MAL-ED       PERU                           1                0       62     263
6 months    ki0047075b-MAL-ED       PERU                           1                1        3     263
6 months    ki0047075b-MAL-ED       PERU                           0                0      189     263
6 months    ki0047075b-MAL-ED       PERU                           0                1        9     263
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                0        4     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                1        0     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                0      234     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                1        6     244
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                0        0     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                1        0     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                0      224     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                1       14     238
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                0      194     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     1                1       11     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0                0      308     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0                1       24     537
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                0      542     581
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                1       13     581
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                0       25     581
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                1        1     581
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                0      597     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                1       18     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                0       84     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                1        5     704
6 months    ki1114097-CONTENT       PERU                           1                0      197     215
6 months    ki1114097-CONTENT       PERU                           1                1        4     215
6 months    ki1114097-CONTENT       PERU                           0                0       14     215
6 months    ki1114097-CONTENT       PERU                           0                1        0     215
6 months    ki1135781-COHORTS       GUATEMALA                      1                0       63     658
6 months    ki1135781-COHORTS       GUATEMALA                      1                1        4     658
6 months    ki1135781-COHORTS       GUATEMALA                      0                0      503     658
6 months    ki1135781-COHORTS       GUATEMALA                      0                1       88     658
6 months    ki1135781-COHORTS       INDIA                          1                0     1829    4971
6 months    ki1135781-COHORTS       INDIA                          1                1       52    4971
6 months    ki1135781-COHORTS       INDIA                          0                0     2900    4971
6 months    ki1135781-COHORTS       INDIA                          0                1      190    4971
6 months    ki1135781-COHORTS       PHILIPPINES                    1                0      141    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    1                1        2    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    0                0      882    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    0                1       58    1083
6 months    ki1148112-LCNI-5        MALAWI                         1                0        2     812
6 months    ki1148112-LCNI-5        MALAWI                         1                1        1     812
6 months    ki1148112-LCNI-5        MALAWI                         0                0      745     812
6 months    ki1148112-LCNI-5        MALAWI                         0                1       64     812
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                0    11398   16800
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                1      640   16800
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                0     4383   16800
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                1      379   16800
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                0     3537    4825
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                1      197    4825
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                0     1018    4825
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                1       73    4825
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                0      158     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     1                1       23     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0                0       28     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0                1        3     212
24 months   ki0047075b-MAL-ED       BRAZIL                         1                0      165     169
24 months   ki0047075b-MAL-ED       BRAZIL                         1                1        1     169
24 months   ki0047075b-MAL-ED       BRAZIL                         0                0        3     169
24 months   ki0047075b-MAL-ED       BRAZIL                         0                1        0     169
24 months   ki0047075b-MAL-ED       INDIA                          1                0       96     225
24 months   ki0047075b-MAL-ED       INDIA                          1                1        8     225
24 months   ki0047075b-MAL-ED       INDIA                          0                0      102     225
24 months   ki0047075b-MAL-ED       INDIA                          0                1       19     225
24 months   ki0047075b-MAL-ED       NEPAL                          1                0      220     228
24 months   ki0047075b-MAL-ED       NEPAL                          1                1        7     228
24 months   ki0047075b-MAL-ED       NEPAL                          0                0        1     228
24 months   ki0047075b-MAL-ED       NEPAL                          0                1        0     228
24 months   ki0047075b-MAL-ED       PERU                           1                0       43     196
24 months   ki0047075b-MAL-ED       PERU                           1                1        4     196
24 months   ki0047075b-MAL-ED       PERU                           0                0      138     196
24 months   ki0047075b-MAL-ED       PERU                           0                1       11     196
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                0        4     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                1        0     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                0      205     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                1       26     235
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                0        0     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                1        0     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                0      140     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                1       67     207
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                0      142     429
24 months   ki1017093-NIH-Birth     BANGLADESH                     1                1       28     429
24 months   ki1017093-NIH-Birth     BANGLADESH                     0                0      194     429
24 months   ki1017093-NIH-Birth     BANGLADESH                     0                1       65     429
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                0      508     576
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                1       44     576
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                0       19     576
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                1        5     576
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                0      404     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                1       29     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                0       65     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                1        5     503
24 months   ki1114097-CONTENT       PERU                           1                0      148     164
24 months   ki1114097-CONTENT       PERU                           1                1        3     164
24 months   ki1114097-CONTENT       PERU                           0                0       13     164
24 months   ki1114097-CONTENT       PERU                           0                1        0     164
24 months   ki1135781-COHORTS       GUATEMALA                      1                0       52     896
24 months   ki1135781-COHORTS       GUATEMALA                      1                1       25     896
24 months   ki1135781-COHORTS       GUATEMALA                      0                0      458     896
24 months   ki1135781-COHORTS       GUATEMALA                      0                1      361     896
24 months   ki1135781-COHORTS       INDIA                          1                0     1303    3754
24 months   ki1135781-COHORTS       INDIA                          1                1      168    3754
24 months   ki1135781-COHORTS       INDIA                          0                0     1674    3754
24 months   ki1135781-COHORTS       INDIA                          0                1      609    3754
24 months   ki1135781-COHORTS       PHILIPPINES                    1                0      117     990
24 months   ki1135781-COHORTS       PHILIPPINES                    1                1        9     990
24 months   ki1135781-COHORTS       PHILIPPINES                    0                0      536     990
24 months   ki1135781-COHORTS       PHILIPPINES                    0                1      328     990
24 months   ki1148112-LCNI-5        MALAWI                         1                0        1     572
24 months   ki1148112-LCNI-5        MALAWI                         1                1        1     572
24 months   ki1148112-LCNI-5        MALAWI                         0                0      505     572
24 months   ki1148112-LCNI-5        MALAWI                         0                1       65     572
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                0     5299    8622
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                1      812    8622
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                0     1979    8622
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                1      532    8622
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                0     3383    4747
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                1      300    4747
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                0      928    4747
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                1      136    4747


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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/72142392-dde0-4600-a482-b9ec98628c8a/3d1bbdd6-8f12-49ca-b00e-7a2156f7dce2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/72142392-dde0-4600-a482-b9ec98628c8a/3d1bbdd6-8f12-49ca-b00e-7a2156f7dce2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/72142392-dde0-4600-a482-b9ec98628c8a/3d1bbdd6-8f12-49ca-b00e-7a2156f7dce2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/72142392-dde0-4600-a482-b9ec98628c8a/3d1bbdd6-8f12-49ca-b00e-7a2156f7dce2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS       INDIA         1                    NA                0.0249993   0.0177268   0.0322719
Birth       ki1135781-COHORTS       INDIA         0                    NA                0.0317937   0.0255133   0.0380741
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0961860   0.0904473   0.1019247
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.1241066   0.1148344   0.1333788
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0731366   0.0478240   0.0984493
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0940320   0.0447229   0.1433410
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.0559147   0.0247792   0.0870502
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.0730904   0.0452718   0.1009090
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.0292683   0.0159371   0.0425994
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.0561798   0.0083061   0.1040534
6 months    ki1135781-COHORTS       INDIA         1                    NA                0.0308344   0.0226281   0.0390407
6 months    ki1135781-COHORTS       INDIA         0                    NA                0.0597210   0.0513037   0.0681382
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0554342   0.0510225   0.0598459
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.0721634   0.0639903   0.0803365
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0541694   0.0464339   0.0619049
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0630952   0.0497982   0.0763921
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.0769231   0.0255961   0.1282501
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.1570248   0.0920546   0.2219950
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.1789176   0.1254720   0.2323633
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.2471032   0.1943734   0.2998330
24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.0797101   0.0570963   0.1023240
24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.2083333   0.0457147   0.3709520
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.0669746   0.0434058   0.0905434
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.0714286   0.0110372   0.1318199
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                0.2674238   0.1641697   0.3706780
24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                0.4376994   0.4037439   0.4716549
24 months   ki1135781-COHORTS       INDIA         1                    NA                0.1374231   0.1187479   0.1560983
24 months   ki1135781-COHORTS       INDIA         0                    NA                0.2457216   0.2282231   0.2632201
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0714286   0.0264375   0.1164196
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.3796296   0.3472541   0.4120051
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.1416150   0.1317801   0.1514499
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.1910836   0.1742685   0.2078986
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0827388   0.0723069   0.0931706
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.1199567   0.0990746   0.1408389


### Parameter: E(Y)


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS       INDIA         NA                   NA                0.0295226   0.0247216   0.0343236
Birth       kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.1041752   0.0994998   0.1088506
Birth       kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.0778589   0.0559066   0.0998111
6 months    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.0651769   0.0442802   0.0860736
6 months    ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.0326705   0.0195292   0.0458117
6 months    ki1135781-COHORTS       INDIA         NA                   NA                0.0486824   0.0426994   0.0546654
6 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.0606548   0.0567999   0.0645096
6 months    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.0559585   0.0491999   0.0627172
24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.1200000   0.0774445   0.1625555
24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.2167832   0.1777459   0.2558205
24 months   ki1017093b-PROVIDE      BANGLADESH    NA                   NA                0.0850694   0.0622663   0.1078726
24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.0675944   0.0456333   0.0895555
24 months   ki1135781-COHORTS       GUATEMALA     NA                   NA                0.4308036   0.3983616   0.4632455
24 months   ki1135781-COHORTS       INDIA         NA                   NA                0.2069792   0.1940174   0.2199410
24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.3404040   0.3108725   0.3699356
24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.1558803   0.1471367   0.1646240
24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.0918475   0.0824775   0.1012175


### Parameter: RR


agecat      studyid                 country       intervention_level   baseline_level    estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ---------  ----------  ----------
Birth       ki1135781-COHORTS       INDIA         1                    1                 1.000000   1.0000000    1.000000
Birth       ki1135781-COHORTS       INDIA         0                    1                 1.271782   0.8947230    1.807744
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.290277   1.1758737    1.415811
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.285703   0.6864405    2.408120
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.000000   1.0000000    1.000000
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.307177   0.6648313    2.570143
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 1.919476   0.7303803    5.044477
6 months    ki1135781-COHORTS       INDIA         1                    1                 1.000000   1.0000000    1.000000
6 months    ki1135781-COHORTS       INDIA         0                    1                 1.936830   1.4333961    2.617078
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.301786   1.1373782    1.489958
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.164775   0.9065612    1.496534
24 months   ki0047075b-MAL-ED       INDIA         1                    1                 1.000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED       INDIA         0                    1                 2.041322   0.9309721    4.475963
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.381101   0.9646444    1.977349
24 months   ki1017093b-PROVIDE      BANGLADESH    1                    1                 1.000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE      BANGLADESH    0                    1                 2.613636   1.1390737    5.997061
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 1.066502   0.4268141    2.664925
24 months   ki1135781-COHORTS       GUATEMALA     1                    1                 1.000000   1.0000000    1.000000
24 months   ki1135781-COHORTS       GUATEMALA     0                    1                 1.636725   1.1040233    2.426461
24 months   ki1135781-COHORTS       INDIA         1                    1                 1.000000   1.0000000    1.000000
24 months   ki1135781-COHORTS       INDIA         0                    1                 1.788066   1.5370171    2.080120
24 months   ki1135781-COHORTS       PHILIPPINES   1                    1                 1.000000   1.0000000    1.000000
24 months   ki1135781-COHORTS       PHILIPPINES   0                    1                 5.314815   2.8147590   10.035409
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.349317   1.2117934    1.502449
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.449825   1.1700456    1.796504


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1135781-COHORTS       INDIA         1                    NA                0.0045233   -0.0015649   0.0106114
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0079892    0.0046308   0.0113475
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0047223   -0.0083457   0.0177902
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.0092622   -0.0167573   0.0352817
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.0034022   -0.0029150   0.0097193
6 months    ki1135781-COHORTS       INDIA         1                    NA                0.0178480    0.0102493   0.0254467
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0052206    0.0025412   0.0079000
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0017891   -0.0020002   0.0055785
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.0430769   -0.0017563   0.0879102
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.0378656   -0.0064255   0.0821567
24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.0053593   -0.0017970   0.0125156
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.0006198   -0.0084029   0.0096426
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                0.1633797    0.0634225   0.2633370
24 months   ki1135781-COHORTS       INDIA         1                    NA                0.0695561    0.0528518   0.0862604
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.2689755    0.2201794   0.3177715
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0142653    0.0084652   0.0200654
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0091087    0.0037154   0.0145020


### Parameter: PAF


agecat      studyid                 country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1135781-COHORTS       INDIA         1                    NA                0.1532136   -0.0782722   0.3350034
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0766898    0.0437164   0.1085263
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0606514   -0.1237345   0.2147828
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.1421088   -0.3607455   0.4591367
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.1041357   -0.1063416   0.2745705
6 months    ki1135781-COHORTS       INDIA         1                    NA                0.3666208    0.1980401   0.4997640
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0860703    0.0411728   0.1288656
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0319724   -0.0382717   0.0974641
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.3589744   -0.1157479   0.6317144
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.1746703   -0.0528959   0.3530518
24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.0629991   -0.0234726   0.1421650
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.0091699   -0.1336899   0.1340276
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                0.3792441    0.0978018   0.5728900
24 months   ki1135781-COHORTS       INDIA         1                    NA                0.3360536    0.2525595   0.4102208
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.7901653    0.6103487   0.8870000
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0915145    0.0538707   0.1276606
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0991720    0.0384267   0.1560799
