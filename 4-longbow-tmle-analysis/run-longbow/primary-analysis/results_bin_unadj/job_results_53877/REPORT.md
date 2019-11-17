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

unadjusted

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
![](/tmp/d2863488-6453-47cd-9da8-e6c6872827bc/c83eb3a1-ff6c-45fb-a6e1-96890788cd97/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d2863488-6453-47cd-9da8-e6c6872827bc/c83eb3a1-ff6c-45fb-a6e1-96890788cd97/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d2863488-6453-47cd-9da8-e6c6872827bc/c83eb3a1-ff6c-45fb-a6e1-96890788cd97/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d2863488-6453-47cd-9da8-e6c6872827bc/c83eb3a1-ff6c-45fb-a6e1-96890788cd97/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.1787709   0.1225078   0.2350341
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.1470588   0.0277327   0.2663850
Birth       ki0047075b-MAL-ED       PERU          1                    NA                0.1538462   0.0555445   0.2521478
Birth       ki0047075b-MAL-ED       PERU          0                    NA                0.1025641   0.0548407   0.1502875
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.1645022   0.1166548   0.2123495
Birth       ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.1564987   0.1197930   0.1932043
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.1297468   0.1035311   0.1559626
Birth       ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.2022472   0.1187388   0.2857555
Birth       ki1135781-COHORTS       INDIA         1                    NA                0.0984720   0.0845782   0.1123658
Birth       ki1135781-COHORTS       INDIA         0                    NA                0.1299435   0.1179282   0.1419588
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.3120237   0.3032546   0.3207927
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.3652753   0.3532469   0.3773037
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2934434   0.2709323   0.3159544
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.3380282   0.2966131   0.3794432
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.1930693   0.1385244   0.2476142
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.1315789   0.0238775   0.2392803
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                0.1574074   0.0885752   0.2262396
6 months    ki0047075b-MAL-ED       INDIA         0                    NA                0.2160000   0.1437044   0.2882956
6 months    ki0047075b-MAL-ED       PERU          1                    NA                0.2769231   0.1679321   0.3859140
6 months    ki0047075b-MAL-ED       PERU          0                    NA                0.1969697   0.1414677   0.2524717
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.2536585   0.1940416   0.3132754
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.2771084   0.2289197   0.3252971
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.2146341   0.1821625   0.2471058
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.1797753   0.0999403   0.2596103
6 months    ki1135781-COHORTS       GUATEMALA     1                    NA                0.3880597   0.2712861   0.5048333
6 months    ki1135781-COHORTS       GUATEMALA     0                    NA                0.4450085   0.4049115   0.4851055
6 months    ki1135781-COHORTS       INDIA         1                    NA                0.1265284   0.1115034   0.1415535
6 months    ki1135781-COHORTS       INDIA         0                    NA                0.2378641   0.2228502   0.2528780
6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0769231   0.0332285   0.1206177
6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                0.2361702   0.2090061   0.2633343
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.2325137   0.2233357   0.2416917
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.2992440   0.2852659   0.3132221
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2386181   0.2225209   0.2547153
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.2997250   0.2691771   0.3302729
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.4751381   0.4022145   0.5480617
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.4838710   0.3075362   0.6602057
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.3557692   0.2635538   0.4479847
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.4793388   0.3901272   0.5685505
24 months   ki0047075b-MAL-ED       PERU          1                    NA                0.3404255   0.2046089   0.4762421
24 months   ki0047075b-MAL-ED       PERU          0                    NA                0.3758389   0.2978712   0.4538067
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.5117647   0.4365366   0.5869928
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.6061776   0.5466038   0.6657514
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.2586605   0.2173738   0.2999472
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.2428571   0.1423040   0.3434103
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                0.7532468   0.6568980   0.8495955
24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                0.8210784   0.7947655   0.8473914
24 months   ki1135781-COHORTS       INDIA         1                    NA                0.4201224   0.3948959   0.4453488
24 months   ki1135781-COHORTS       INDIA         0                    NA                0.6614035   0.6419762   0.6808308
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.3492063   0.2659255   0.4324872
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.7384259   0.7091061   0.7677458
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.4532810   0.4380829   0.4684791
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.5834329   0.5620232   0.6048426
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.3820255   0.3625738   0.4014773
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.4661654   0.4349668   0.4973640


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
Birth       ki1017093-NIH-Birth     BANGLADESH    0                    1                 0.9513472   0.6547370   1.382328
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 1.5587832   0.9843406   2.468460
Birth       ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS       INDIA         0                    1                 1.3195986   1.1147549   1.562084
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.1706653   1.1230330   1.220318
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.1519366   0.9979945   1.329625
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    1                 0.6815115   0.2866894   1.620074
6 months    ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED       INDIA         0                    1                 1.3722353   0.7911751   2.380042
6 months    ki0047075b-MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED       PERU          0                    1                 0.7112795   0.4383494   1.154144
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.0924467   0.8155049   1.463437
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 0.8375894   0.5239430   1.338993
6 months    ki1135781-COHORTS       GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS       GUATEMALA     0                    1                 1.1467526   0.8376265   1.569962
6 months    ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS       INDIA         0                    1                 1.8799258   1.6433730   2.150529
6 months    ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS       PHILIPPINES   0                    1                 3.0702128   1.7197670   5.481095
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.2869952   1.2145749   1.363733
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.2560867   1.1090939   1.422561
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    1                 1.0183796   0.6857701   1.512310
24 months   ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED       INDIA         0                    1                 1.3473308   0.9792465   1.853773
24 months   ki0047075b-MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED       PERU          0                    1                 1.1040268   0.7041890   1.730892
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.1844850   0.9925121   1.413590
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 0.9389031   0.6024281   1.463310
24 months   ki1135781-COHORTS       GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS       GUATEMALA     0                    1                 1.0900524   0.9553869   1.243700
24 months   ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS       INDIA         0                    1                 1.5743116   1.4725172   1.683143
24 months   ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS       PHILIPPINES   0                    1                 2.1145833   1.6604507   2.692921
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.2871330   1.2266492   1.350599
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.2202468   1.1238080   1.324961


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0050620   -0.0261785   0.0160544
Birth       ki0047075b-MAL-ED       PERU          1                    NA                -0.0384615   -0.1204726   0.0435496
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0049627   -0.0423569   0.0324316
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0089494   -0.0019944   0.0198932
Birth       ki1135781-COHORTS       INDIA         1                    NA                 0.0198278    0.0082472   0.0314085
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0171191    0.0124746   0.0217635
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0101027   -0.0004859   0.0206914
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0097360   -0.0290616   0.0095896
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                 0.0314338   -0.0222509   0.0851184
6 months    ki0047075b-MAL-ED       PERU          1                    NA                -0.0601930   -0.1523682   0.0319822
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0144979   -0.0329052   0.0619010
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0044069   -0.0153362   0.0065224
6 months    ki1135781-COHORTS       GUATEMALA     1                    NA                 0.0511500   -0.0597520   0.1620521
6 months    ki1135781-COHORTS       INDIA         1                    NA                 0.0692068    0.0559184   0.0824952
6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.1382200    0.0934481   0.1829920
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0189149    0.0143699   0.0234598
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0138171    0.0058153   0.0218190
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0012770   -0.0266289   0.0291828
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                 0.0664530   -0.0030171   0.1359231
24 months   ki0047075b-MAL-ED       PERU          1                    NA                 0.0269214   -0.0921492   0.1459921
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0569999   -0.0010989   0.1150987
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0021993   -0.0173340   0.0129354
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                 0.0619828   -0.0292909   0.1532565
24 months   ki1135781-COHORTS       INDIA         1                    NA                 0.1466598    0.1269424   0.1663773
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.3396825    0.2622054   0.4171597
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0379044    0.0302846   0.0455241
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0188592    0.0107333   0.0269852


### Parameter: PAF


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0291409   -0.1579815   0.0853646
Birth       ki0047075b-MAL-ED       PERU          1                    NA                -0.3333333   -1.2598233   0.2133112
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0311063   -0.2942216   0.1785176
Birth       ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0645253   -0.0171357   0.1396302
Birth       ki1135781-COHORTS       INDIA         1                    NA                 0.1676067    0.0644791   0.2593660
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0520110    0.0377307   0.0660794
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0332823   -0.0022889   0.0675912
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0531053   -0.1634147   0.0467451
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                 0.1664562   -0.1693317   0.4058185
6 months    ki0047075b-MAL-ED       PERU          1                    NA                -0.2777328   -0.7804013   0.0830151
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0540650   -0.1402456   0.2152629
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0209624   -0.0742550   0.0296864
6 months    ki1135781-COHORTS       GUATEMALA     1                    NA                 0.1164592   -0.1759253   0.3361446
6 months    ki1135781-COHORTS       INDIA         1                    NA                 0.3535736    0.2842470   0.4161854
6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.6424563    0.3787979   0.7942094
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0752296    0.0568978   0.0932051
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0547353    0.0223846   0.0860155
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0026804   -0.0576496   0.0595690
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                 0.1573887   -0.0248054   0.3071915
24 months   ki0047075b-MAL-ED       PERU          1                    NA                 0.0732861   -0.3147977   0.3468206
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.1002170   -0.0084699   0.1971903
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0085755   -0.0693452   0.0487408
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                 0.0760311   -0.0431988   0.1816339
24 months   ki1135781-COHORTS       INDIA         1                    NA                 0.2587587    0.2224061   0.2934119
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.4930876    0.3642450   0.5958188
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0771692    0.0613751   0.0926975
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0470441    0.0262792   0.0673661
