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

agecat      studyid                 country                        impsan    stunted   n_cell       n
----------  ----------------------  -----------------------------  -------  --------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1               0      147     213
Birth       ki0047075b-MAL-ED       BANGLADESH                     1               1       32     213
Birth       ki0047075b-MAL-ED       BANGLADESH                     0               0       29     213
Birth       ki0047075b-MAL-ED       BANGLADESH                     0               1        5     213
Birth       ki0047075b-MAL-ED       BRAZIL                         1               0       50      60
Birth       ki0047075b-MAL-ED       BRAZIL                         1               1        9      60
Birth       ki0047075b-MAL-ED       BRAZIL                         0               0        1      60
Birth       ki0047075b-MAL-ED       BRAZIL                         0               1        0      60
Birth       ki0047075b-MAL-ED       INDIA                          1               0       13      40
Birth       ki0047075b-MAL-ED       INDIA                          1               1        2      40
Birth       ki0047075b-MAL-ED       INDIA                          0               0       20      40
Birth       ki0047075b-MAL-ED       INDIA                          0               1        5      40
Birth       ki0047075b-MAL-ED       NEPAL                          1               0       23      26
Birth       ki0047075b-MAL-ED       NEPAL                          1               1        2      26
Birth       ki0047075b-MAL-ED       NEPAL                          0               0        1      26
Birth       ki0047075b-MAL-ED       NEPAL                          0               1        0      26
Birth       ki0047075b-MAL-ED       PERU                           1               0       44     208
Birth       ki0047075b-MAL-ED       PERU                           1               1        8     208
Birth       ki0047075b-MAL-ED       PERU                           0               0      140     208
Birth       ki0047075b-MAL-ED       PERU                           0               1       16     208
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1               0        0      95
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1               1        0      95
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0               0       87      95
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0               1        8      95
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     118
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     118
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0       97     118
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1       21     118
Birth       ki1017093-NIH-Birth     BANGLADESH                     1               0      193     608
Birth       ki1017093-NIH-Birth     BANGLADESH                     1               1       38     608
Birth       ki1017093-NIH-Birth     BANGLADESH                     0               0      318     608
Birth       ki1017093-NIH-Birth     BANGLADESH                     0               1       59     608
Birth       ki1017093b-PROVIDE      BANGLADESH                     1               0       41      45
Birth       ki1017093b-PROVIDE      BANGLADESH                     1               1        2      45
Birth       ki1017093b-PROVIDE      BANGLADESH                     0               0        2      45
Birth       ki1017093b-PROVIDE      BANGLADESH                     0               1        0      45
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1               0      550     721
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1               1       82     721
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0               0       71     721
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0               1       18     721
Birth       ki1114097-CONTENT       PERU                           1               0        1       2
Birth       ki1114097-CONTENT       PERU                           1               1        0       2
Birth       ki1114097-CONTENT       PERU                           0               0        1       2
Birth       ki1114097-CONTENT       PERU                           0               1        0       2
Birth       ki1135781-COHORTS       GUATEMALA                      1               0       42     491
Birth       ki1135781-COHORTS       GUATEMALA                      1               1        3     491
Birth       ki1135781-COHORTS       GUATEMALA                      0               0      416     491
Birth       ki1135781-COHORTS       GUATEMALA                      0               1       30     491
Birth       ki1135781-COHORTS       INDIA                          1               0     1593    4776
Birth       ki1135781-COHORTS       INDIA                          1               1      174    4776
Birth       ki1135781-COHORTS       INDIA                          0               0     2618    4776
Birth       ki1135781-COHORTS       INDIA                          0               1      391    4776
Birth       ki1135781-COHORTS       PHILIPPINES                    1               0      176    1191
Birth       ki1135781-COHORTS       PHILIPPINES                    1               1        2    1191
Birth       ki1135781-COHORTS       PHILIPPINES                    0               0      936    1191
Birth       ki1135781-COHORTS       PHILIPPINES                    0               1       77    1191
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1               0    10471   22431
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1               1     4749   22431
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0               0     4577   22431
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0               1     2634   22431
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1               0     1541    2820
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1               1      640    2820
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0               0      423    2820
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0               1      216    2820
6 months    ki0047075b-MAL-ED       BANGLADESH                     1               0      163     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     1               1       39     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     0               0       33     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     0               1        5     240
6 months    ki0047075b-MAL-ED       BRAZIL                         1               0      199     209
6 months    ki0047075b-MAL-ED       BRAZIL                         1               1        6     209
6 months    ki0047075b-MAL-ED       BRAZIL                         0               0        4     209
6 months    ki0047075b-MAL-ED       BRAZIL                         0               1        0     209
6 months    ki0047075b-MAL-ED       INDIA                          1               0       91     233
6 months    ki0047075b-MAL-ED       INDIA                          1               1       17     233
6 months    ki0047075b-MAL-ED       INDIA                          0               0       98     233
6 months    ki0047075b-MAL-ED       INDIA                          0               1       27     233
6 months    ki0047075b-MAL-ED       NEPAL                          1               0      223     236
6 months    ki0047075b-MAL-ED       NEPAL                          1               1       12     236
6 months    ki0047075b-MAL-ED       NEPAL                          0               0        1     236
6 months    ki0047075b-MAL-ED       NEPAL                          0               1        0     236
6 months    ki0047075b-MAL-ED       PERU                           1               0       47     263
6 months    ki0047075b-MAL-ED       PERU                           1               1       18     263
6 months    ki0047075b-MAL-ED       PERU                           0               0      159     263
6 months    ki0047075b-MAL-ED       PERU                           0               1       39     263
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1               0        3     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1               1        1     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0               0      193     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0               1       47     244
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0      180     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1       58     238
6 months    ki1017093-NIH-Birth     BANGLADESH                     1               0      153     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     1               1       52     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0               0      240     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0               1       92     537
6 months    ki1017093b-PROVIDE      BANGLADESH                     1               0       10      11
6 months    ki1017093b-PROVIDE      BANGLADESH                     1               1        1      11
6 months    ki1017093b-PROVIDE      BANGLADESH                     0               0        0      11
6 months    ki1017093b-PROVIDE      BANGLADESH                     0               1        0      11
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1               0      483     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1               1      132     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0               0       73     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0               1       16     704
6 months    ki1114097-CONTENT       PERU                           1               0      185     215
6 months    ki1114097-CONTENT       PERU                           1               1       16     215
6 months    ki1114097-CONTENT       PERU                           0               0       11     215
6 months    ki1114097-CONTENT       PERU                           0               1        3     215
6 months    ki1135781-COHORTS       GUATEMALA                      1               0       41     658
6 months    ki1135781-COHORTS       GUATEMALA                      1               1       26     658
6 months    ki1135781-COHORTS       GUATEMALA                      0               0      328     658
6 months    ki1135781-COHORTS       GUATEMALA                      0               1      263     658
6 months    ki1135781-COHORTS       INDIA                          1               0     1643    4971
6 months    ki1135781-COHORTS       INDIA                          1               1      238    4971
6 months    ki1135781-COHORTS       INDIA                          0               0     2355    4971
6 months    ki1135781-COHORTS       INDIA                          0               1      735    4971
6 months    ki1135781-COHORTS       PHILIPPINES                    1               0      132    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    1               1       11    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    0               0      718    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    0               1      222    1083
6 months    ki1148112-LCNI-5        MALAWI                         1               0        2     812
6 months    ki1148112-LCNI-5        MALAWI                         1               1        1     812
6 months    ki1148112-LCNI-5        MALAWI                         0               0      515     812
6 months    ki1148112-LCNI-5        MALAWI                         0               1      294     812
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1               0     9239   16800
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1               1     2799   16800
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0               0     3337   16800
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0               1     1425   16800
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1               0     2843    4825
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1               1      891    4825
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0               0      764    4825
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0               1      327    4825
24 months   ki0047075b-MAL-ED       BANGLADESH                     1               0       95     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     1               1       86     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0               0       16     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0               1       15     212
24 months   ki0047075b-MAL-ED       BRAZIL                         1               0      159     169
24 months   ki0047075b-MAL-ED       BRAZIL                         1               1        7     169
24 months   ki0047075b-MAL-ED       BRAZIL                         0               0        3     169
24 months   ki0047075b-MAL-ED       BRAZIL                         0               1        0     169
24 months   ki0047075b-MAL-ED       INDIA                          1               0       67     225
24 months   ki0047075b-MAL-ED       INDIA                          1               1       37     225
24 months   ki0047075b-MAL-ED       INDIA                          0               0       63     225
24 months   ki0047075b-MAL-ED       INDIA                          0               1       58     225
24 months   ki0047075b-MAL-ED       NEPAL                          1               0      177     228
24 months   ki0047075b-MAL-ED       NEPAL                          1               1       50     228
24 months   ki0047075b-MAL-ED       NEPAL                          0               0        1     228
24 months   ki0047075b-MAL-ED       NEPAL                          0               1        0     228
24 months   ki0047075b-MAL-ED       PERU                           1               0       31     196
24 months   ki0047075b-MAL-ED       PERU                           1               1       16     196
24 months   ki0047075b-MAL-ED       PERU                           0               0       93     196
24 months   ki0047075b-MAL-ED       PERU                           0               1       56     196
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1               0        3     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1               1        1     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0               0      149     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0               1       82     235
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0       56     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1      151     207
24 months   ki1017093-NIH-Birth     BANGLADESH                     1               0       83     429
24 months   ki1017093-NIH-Birth     BANGLADESH                     1               1       87     429
24 months   ki1017093-NIH-Birth     BANGLADESH                     0               0      102     429
24 months   ki1017093-NIH-Birth     BANGLADESH                     0               1      157     429
24 months   ki1017093b-PROVIDE      BANGLADESH                     1               0        5       9
24 months   ki1017093b-PROVIDE      BANGLADESH                     1               1        4       9
24 months   ki1017093b-PROVIDE      BANGLADESH                     0               0        0       9
24 months   ki1017093b-PROVIDE      BANGLADESH                     0               1        0       9
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1               0      321     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1               1      112     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0               0       53     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0               1       17     503
24 months   ki1114097-CONTENT       PERU                           1               0      134     164
24 months   ki1114097-CONTENT       PERU                           1               1       17     164
24 months   ki1114097-CONTENT       PERU                           0               0        9     164
24 months   ki1114097-CONTENT       PERU                           0               1        4     164
24 months   ki1135781-COHORTS       GUATEMALA                      1               0       19     893
24 months   ki1135781-COHORTS       GUATEMALA                      1               1       58     893
24 months   ki1135781-COHORTS       GUATEMALA                      0               0      146     893
24 months   ki1135781-COHORTS       GUATEMALA                      0               1      670     893
24 months   ki1135781-COHORTS       INDIA                          1               0      853    3751
24 months   ki1135781-COHORTS       INDIA                          1               1      618    3751
24 months   ki1135781-COHORTS       INDIA                          0               0      772    3751
24 months   ki1135781-COHORTS       INDIA                          0               1     1508    3751
24 months   ki1135781-COHORTS       PHILIPPINES                    1               0       82     990
24 months   ki1135781-COHORTS       PHILIPPINES                    1               1       44     990
24 months   ki1135781-COHORTS       PHILIPPINES                    0               0      226     990
24 months   ki1135781-COHORTS       PHILIPPINES                    0               1      638     990
24 months   ki1148112-LCNI-5        MALAWI                         1               0        1     572
24 months   ki1148112-LCNI-5        MALAWI                         1               1        1     572
24 months   ki1148112-LCNI-5        MALAWI                         0               0      317     572
24 months   ki1148112-LCNI-5        MALAWI                         0               1      253     572
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1               0     3341    8622
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1               1     2770    8622
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0               0     1046    8622
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0               1     1465    8622
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1               0     2276    4747
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1               1     1407    4747
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0               0      568    4747
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0               1      496    4747


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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/ac257f7a-4a78-4e5c-9e55-9220032dd5ea/8b9d920c-0cf3-4ac6-a6b8-131ba7c675f2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ac257f7a-4a78-4e5c-9e55-9220032dd5ea/8b9d920c-0cf3-4ac6-a6b8-131ba7c675f2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ac257f7a-4a78-4e5c-9e55-9220032dd5ea/8b9d920c-0cf3-4ac6-a6b8-131ba7c675f2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ac257f7a-4a78-4e5c-9e55-9220032dd5ea/8b9d920c-0cf3-4ac6-a6b8-131ba7c675f2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.1787709   0.1225078   0.2350341
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.1470588   0.0277327   0.2663850
Birth       ki0047075b-MAL-ED       PERU          1                    NA                0.1538462   0.0555445   0.2521478
Birth       ki0047075b-MAL-ED       PERU          0                    NA                0.1025641   0.0548407   0.1502875
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.1686354   0.1205511   0.2167196
Birth       ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.1541624   0.1176574   0.1906674
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.1296614   0.1034251   0.1558976
Birth       ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.1832724   0.0975573   0.2689876
Birth       ki1135781-COHORTS       INDIA         1                    NA                0.1056479   0.0903338   0.1209619
Birth       ki1135781-COHORTS       INDIA         0                    NA                0.1272498   0.1151845   0.1393151
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.3173116   0.3084055   0.3262178
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.3566077   0.3431852   0.3700303
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2938863   0.2715050   0.3162676
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.3425867   0.2991907   0.3859827
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.1930693   0.1385244   0.2476142
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.1315789   0.0238775   0.2392803
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                0.1676420   0.0985168   0.2367673
6 months    ki0047075b-MAL-ED       INDIA         0                    NA                0.2232505   0.1514235   0.2950776
6 months    ki0047075b-MAL-ED       PERU          1                    NA                0.2920291   0.1747742   0.4092841
6 months    ki0047075b-MAL-ED       PERU          0                    NA                0.1972184   0.1408390   0.2535977
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.2571563   0.1989137   0.3153988
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.2743691   0.2269040   0.3218341
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.2152924   0.1827751   0.2478098
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.1813192   0.1003589   0.2622795
6 months    ki1135781-COHORTS       GUATEMALA     1                    NA                0.3858803   0.2629755   0.5087851
6 months    ki1135781-COHORTS       GUATEMALA     0                    NA                0.4407300   0.4006754   0.4807845
6 months    ki1135781-COHORTS       INDIA         1                    NA                0.1430134   0.1260060   0.1600208
6 months    ki1135781-COHORTS       INDIA         0                    NA                0.2246231   0.2098643   0.2393820
6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0738316   0.0295128   0.1181504
6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                0.2359579   0.2087863   0.2631295
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.2419383   0.2325535   0.2513231
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.2793696   0.2640651   0.2946741
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2398619   0.2238316   0.2558923
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.3066018   0.2733254   0.3398781
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.4772920   0.4047595   0.5498246
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.5036623   0.3266353   0.6806893
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.3602012   0.2672099   0.4531924
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.4717182   0.3836859   0.5597504
24 months   ki0047075b-MAL-ED       PERU          1                    NA                0.3501578   0.2135104   0.4868052
24 months   ki0047075b-MAL-ED       PERU          0                    NA                0.3743567   0.2962611   0.4524523
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.5195407   0.4452851   0.5937964
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.5975175   0.5386928   0.6563422
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.2589130   0.2175653   0.3002607
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.2381959   0.1330897   0.3433020
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                0.7526528   0.6477023   0.8576032
24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                0.8170790   0.7904321   0.8437259
24 months   ki1135781-COHORTS       INDIA         1                    NA                0.4727885   0.4465635   0.4990135
24 months   ki1135781-COHORTS       INDIA         0                    NA                0.6364157   0.6164433   0.6563880
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.4061331   0.3238824   0.4883837
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.7293068   0.6997640   0.7588496
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.4702367   0.4550377   0.4854357
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.5450943   0.5221083   0.5680804
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.3867260   0.3670650   0.4063870
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.4550692   0.4220493   0.4880890


### Parameter: E(Y)


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.1737089   0.1227104   0.2247075
Birth       ki0047075b-MAL-ED       PERU          NA                   NA                0.1153846   0.0718621   0.1589071
Birth       ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.1595395   0.1304091   0.1886699
Birth       ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.1386963   0.1134503   0.1639422
Birth       ki1135781-COHORTS       INDIA         NA                   NA                0.1182998   0.1091394   0.1274602
Birth       kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.3291427   0.3217640   0.3365214
Birth       kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.3035461   0.2835868   0.3235054
6 months    ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.1833333   0.1342773   0.2323893
6 months    ki0047075b-MAL-ED       INDIA         NA                   NA                0.1888412   0.1384789   0.2392035
6 months    ki0047075b-MAL-ED       PERU          NA                   NA                0.2167300   0.1668401   0.2666199
6 months    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.2102273   0.1801065   0.2403480
6 months    ki1135781-COHORTS       GUATEMALA     NA                   NA                0.4392097   0.4012606   0.4771588
6 months    ki1135781-COHORTS       INDIA         NA                   NA                0.1957353   0.1847045   0.2067660
6 months    ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.2151431   0.1906585   0.2396277
6 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.2514286   0.2432891   0.2595681
6 months    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.2524352   0.2383740   0.2664965
24 months   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.4764151   0.4090254   0.5438047
24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.4222222   0.3575415   0.4869030
24 months   ki0047075b-MAL-ED       PERU          NA                   NA                0.3673469   0.2996839   0.4350100
24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.5687646   0.5218455   0.6156837
24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.2564612   0.2182616   0.2946608
24 months   ki1135781-COHORTS       GUATEMALA     NA                   NA                0.8152296   0.7897600   0.8406991
24 months   ki1135781-COHORTS       INDIA         NA                   NA                0.5667822   0.5509225   0.5826418
24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.6888889   0.6600365   0.7177413
24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.4911853   0.4780778   0.5042929
24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.4008848   0.3839144   0.4178552


### Parameter: RR


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    1                 0.8226103   0.3445252   1.964117
Birth       ki0047075b-MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED       PERU          0                    1                 0.6666667   0.3024334   1.469562
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093-NIH-Birth     BANGLADESH    0                    1                 0.9141760   0.6321415   1.322042
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 1.4134699   0.8486865   2.354105
Birth       ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS       INDIA         0                    1                 1.2044711   1.0131364   1.431940
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.1238407   1.0756794   1.174158
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.1657116   1.0073168   1.349013
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    1                 0.6815115   0.2866894   1.620074
6 months    ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED       INDIA         0                    1                 1.3317098   0.7873197   2.252517
6 months    ki0047075b-MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED       PERU          0                    1                 0.6753381   0.4127779   1.104908
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.0669351   0.8072731   1.410118
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 0.8421997   0.5260464   1.348361
6 months    ki1135781-COHORTS       GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS       GUATEMALA     0                    1                 1.1421417   0.8219568   1.587051
6 months    ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS       INDIA         0                    1                 1.5706439   1.3721231   1.797887
6 months    ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS       PHILIPPINES   0                    1                 3.1958936   1.7340693   5.890039
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.1547140   1.0849274   1.228990
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.2782427   1.1220536   1.456173
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    1                 1.0552498   0.7227043   1.540813
24 months   ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED       INDIA         0                    1                 1.3095965   0.9552931   1.795306
24 months   ki0047075b-MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED       PERU          0                    1                 1.0691086   0.6907087   1.654812
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.1500879   0.9691525   1.364803
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 0.9199842   0.5754561   1.470783
24 months   ki1135781-COHORTS       GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS       GUATEMALA     0                    1                 1.0855989   0.9412375   1.252101
24 months   ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS       INDIA         0                    1                 1.3460895   1.2645680   1.432866
24 months   ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS       PHILIPPINES   0                    1                 1.7957335   1.4626596   2.204654
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.1591914   1.1028960   1.218360
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.1767225   1.0774945   1.285089


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0050620   -0.0261785   0.0160544
Birth       ki0047075b-MAL-ED       PERU          1                    NA                -0.0384615   -0.1204726   0.0435496
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0090959   -0.0465783   0.0283865
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0090349   -0.0019078   0.0199776
Birth       ki1135781-COHORTS       INDIA         1                    NA                 0.0126520   -0.0002866   0.0255905
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0118311    0.0069768   0.0166854
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0096598   -0.0009151   0.0202347
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0097360   -0.0290616   0.0095896
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                 0.0211992   -0.0334839   0.0758823
6 months    ki0047075b-MAL-ED       PERU          1                    NA                -0.0752991   -0.1764614   0.0258632
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0110002   -0.0346981   0.0566984
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0050651   -0.0160079   0.0058776
6 months    ki1135781-COHORTS       GUATEMALA     1                    NA                 0.0533295   -0.0642151   0.1708740
6 months    ki1135781-COHORTS       INDIA         1                    NA                 0.0527219    0.0377506   0.0676931
6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.1413115    0.0959776   0.1866455
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0094902    0.0048442   0.0141363
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0125733    0.0044092   0.0207374
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0008769   -0.0275781   0.0258243
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                 0.0620211   -0.0068643   0.1309064
24 months   ki0047075b-MAL-ED       PERU          1                    NA                 0.0171892   -0.1024984   0.1368767
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0492238   -0.0075233   0.1059709
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0024518   -0.0176444   0.0127409
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                 0.0625768   -0.0378094   0.1629630
24 months   ki1135781-COHORTS       INDIA         1                    NA                 0.0939937    0.0732554   0.1147320
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.2827558    0.2062352   0.3592765
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0209486    0.0132548   0.0286425
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0141588    0.0057723   0.0225453


### Parameter: PAF


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0291409   -0.1579815   0.0853646
Birth       ki0047075b-MAL-ED       PERU          1                    NA                -0.3333333   -1.2598233   0.2133112
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0570134   -0.3200509   0.1536105
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0651415   -0.0165417   0.1402612
Birth       ki1135781-COHORTS       INDIA         1                    NA                 0.1069483   -0.0090923   0.2096447
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0359451    0.0210461   0.0506173
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0318230   -0.0036667   0.0660579
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0531053   -0.1634147   0.0467451
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                 0.1122592   -0.2266210   0.3575166
6 months    ki0047075b-MAL-ED       PERU          1                    NA                -0.3474326   -0.9034418   0.0461623
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0410214   -0.1453853   0.1970912
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0240937   -0.0774441   0.0266151
6 months    ki1135781-COHORTS       GUATEMALA     1                    NA                 0.1214214   -0.1914795   0.3521497
6 months    ki1135781-COHORTS       INDIA         1                    NA                 0.2693529    0.1899406   0.3409801
6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.6568257    0.3845119   0.8086582
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0377453    0.0190431   0.0560909
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0498080    0.0168794   0.0816338
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0018407   -0.0594843   0.0526666
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                 0.1468920   -0.0339184   0.2960825
24 months   ki0047075b-MAL-ED       PERU          1                    NA                 0.0467927   -0.3416206   0.3227563
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0865452   -0.0193024   0.1814012
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0095600   -0.0705647   0.0479685
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                 0.0767597   -0.0551496   0.1921784
24 months   ki1135781-COHORTS       INDIA         1                    NA                 0.1658374    0.1280823   0.2019576
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.4104520    0.2862622   0.5130329
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0426492    0.0268145   0.0582262
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0353188    0.0139653   0.0562100
