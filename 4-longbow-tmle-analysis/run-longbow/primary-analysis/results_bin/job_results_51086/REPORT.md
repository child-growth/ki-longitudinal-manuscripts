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

agecat      studyid                 country                        impsan    stunted   n_cell       n
----------  ----------------------  -----------------------------  -------  --------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1               0      164     234
Birth       ki0047075b-MAL-ED       BANGLADESH                     1               1       33     234
Birth       ki0047075b-MAL-ED       BANGLADESH                     0               0       32     234
Birth       ki0047075b-MAL-ED       BANGLADESH                     0               1        5     234
Birth       ki0047075b-MAL-ED       BRAZIL                         1               0      153     174
Birth       ki0047075b-MAL-ED       BRAZIL                         1               1       17     174
Birth       ki0047075b-MAL-ED       BRAZIL                         0               0        4     174
Birth       ki0047075b-MAL-ED       BRAZIL                         0               1        0     174
Birth       ki0047075b-MAL-ED       INDIA                          1               0       76     190
Birth       ki0047075b-MAL-ED       INDIA                          1               1       16     190
Birth       ki0047075b-MAL-ED       INDIA                          0               0       85     190
Birth       ki0047075b-MAL-ED       INDIA                          0               1       13     190
Birth       ki0047075b-MAL-ED       NEPAL                          1               0      152     171
Birth       ki0047075b-MAL-ED       NEPAL                          1               1       18     171
Birth       ki0047075b-MAL-ED       NEPAL                          0               0        1     171
Birth       ki0047075b-MAL-ED       NEPAL                          0               1        0     171
Birth       ki0047075b-MAL-ED       PERU                           1               0       54     250
Birth       ki0047075b-MAL-ED       PERU                           1               1        8     250
Birth       ki0047075b-MAL-ED       PERU                           0               0      167     250
Birth       ki0047075b-MAL-ED       PERU                           0               1       21     250
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1               0        2     213
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1               1        0     213
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0               0      191     213
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0               1       20     213
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     113
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     113
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0       97     113
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1       16     113
Birth       ki1017093-NIH-Birth     BANGLADESH                     1               0        9      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     1               1        0      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     0               0       18      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     0               1        1      28
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1               0       21      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1               1        4      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0               0        1      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0               1        1      27
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
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1               0     9129   19592
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1               1     4058   19592
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0               0     4128   19592
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0               1     2277   19592
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1               0      430     822
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1               1      176     822
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0               0      145     822
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0               1       71     822
6 months    ki0047075b-MAL-ED       BANGLADESH                     1               0      162     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     1               1       40     240
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
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0      181     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1       57     238
6 months    ki1017093-NIH-Birth     BANGLADESH                     1               0      153     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     1               1       52     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0               0      240     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0               1       92     537
6 months    ki1017093b-PROVIDE      BANGLADESH                     1               0      467     581
6 months    ki1017093b-PROVIDE      BANGLADESH                     1               1       88     581
6 months    ki1017093b-PROVIDE      BANGLADESH                     0               0       20     581
6 months    ki1017093b-PROVIDE      BANGLADESH                     0               1        6     581
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
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1               0     2844    4825
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1               1      890    4825
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0               0      764    4825
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0               1      327    4825
24 months   ki0047075b-MAL-ED       BANGLADESH                     1               0       98     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     1               1       83     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0               0       16     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0               1       15     212
24 months   ki0047075b-MAL-ED       BRAZIL                         1               0      160     169
24 months   ki0047075b-MAL-ED       BRAZIL                         1               1        6     169
24 months   ki0047075b-MAL-ED       BRAZIL                         0               0        3     169
24 months   ki0047075b-MAL-ED       BRAZIL                         0               1        0     169
24 months   ki0047075b-MAL-ED       INDIA                          1               0       68     225
24 months   ki0047075b-MAL-ED       INDIA                          1               1       36     225
24 months   ki0047075b-MAL-ED       INDIA                          0               0       64     225
24 months   ki0047075b-MAL-ED       INDIA                          0               1       57     225
24 months   ki0047075b-MAL-ED       NEPAL                          1               0      178     228
24 months   ki0047075b-MAL-ED       NEPAL                          1               1       49     228
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
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0       58     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1      149     207
24 months   ki1017093-NIH-Birth     BANGLADESH                     1               0       85     429
24 months   ki1017093-NIH-Birth     BANGLADESH                     1               1       85     429
24 months   ki1017093-NIH-Birth     BANGLADESH                     0               0      106     429
24 months   ki1017093-NIH-Birth     BANGLADESH                     0               1      153     429
24 months   ki1017093b-PROVIDE      BANGLADESH                     1               0      373     576
24 months   ki1017093b-PROVIDE      BANGLADESH                     1               1      179     576
24 months   ki1017093b-PROVIDE      BANGLADESH                     0               0       13     576
24 months   ki1017093b-PROVIDE      BANGLADESH                     0               1       11     576
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1               0      321     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1               1      112     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0               0       53     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0               1       17     503
24 months   ki1114097-CONTENT       PERU                           1               0      134     164
24 months   ki1114097-CONTENT       PERU                           1               1       17     164
24 months   ki1114097-CONTENT       PERU                           0               0        9     164
24 months   ki1114097-CONTENT       PERU                           0               1        4     164
24 months   ki1135781-COHORTS       GUATEMALA                      1               0       20     896
24 months   ki1135781-COHORTS       GUATEMALA                      1               1       57     896
24 months   ki1135781-COHORTS       GUATEMALA                      0               0      167     896
24 months   ki1135781-COHORTS       GUATEMALA                      0               1      652     896
24 months   ki1135781-COHORTS       INDIA                          1               0      948    3754
24 months   ki1135781-COHORTS       INDIA                          1               1      523    3754
24 months   ki1135781-COHORTS       INDIA                          0               0      955    3754
24 months   ki1135781-COHORTS       INDIA                          0               1     1328    3754
24 months   ki1135781-COHORTS       PHILIPPINES                    1               0       82     990
24 months   ki1135781-COHORTS       PHILIPPINES                    1               1       44     990
24 months   ki1135781-COHORTS       PHILIPPINES                    0               0      234     990
24 months   ki1135781-COHORTS       PHILIPPINES                    0               1      630     990
24 months   ki1148112-LCNI-5        MALAWI                         1               0        1     572
24 months   ki1148112-LCNI-5        MALAWI                         1               1        1     572
24 months   ki1148112-LCNI-5        MALAWI                         0               0      319     572
24 months   ki1148112-LCNI-5        MALAWI                         0               1      251     572
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1               0     3343    8622
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1               1     2768    8622
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0               0     1047    8622
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0               1     1464    8622
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1               0     2306    4747
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1               1     1377    4747
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0               0      579    4747
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0               1      485    4747


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
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




# Results Detail

## Results Plots
![](/tmp/39b2c25c-91a5-4b97-aec0-d9475e56599c/9581332c-3241-4f82-ae66-30392d3e072d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/39b2c25c-91a5-4b97-aec0-d9475e56599c/9581332c-3241-4f82-ae66-30392d3e072d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/39b2c25c-91a5-4b97-aec0-d9475e56599c/9581332c-3241-4f82-ae66-30392d3e072d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/39b2c25c-91a5-4b97-aec0-d9475e56599c/9581332c-3241-4f82-ae66-30392d3e072d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.1675127   0.1152541   0.2197713
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.1351351   0.0247437   0.2455266
Birth       ki0047075b-MAL-ED       INDIA         1                    NA                0.1747181   0.0967680   0.2526682
Birth       ki0047075b-MAL-ED       INDIA         0                    NA                0.1341214   0.0667518   0.2014910
Birth       ki0047075b-MAL-ED       PERU          1                    NA                0.1290323   0.0454195   0.2126451
Birth       ki0047075b-MAL-ED       PERU          0                    NA                0.1117021   0.0665842   0.1568201
Birth       ki1135781-COHORTS       INDIA         1                    NA                0.1052105   0.0898016   0.1206194
Birth       ki1135781-COHORTS       INDIA         0                    NA                0.1276700   0.1155206   0.1398194
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.3125058   0.3031890   0.3218227
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.3492517   0.3349634   0.3635399
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2888738   0.2478071   0.3299406
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.3290853   0.2565813   0.4015893
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.1980198   0.1429498   0.2530898
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.1315789   0.0238775   0.2392803
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                0.1531776   0.0836140   0.2227411
6 months    ki0047075b-MAL-ED       INDIA         0                    NA                0.2098477   0.1372516   0.2824437
6 months    ki0047075b-MAL-ED       PERU          1                    NA                0.2969562   0.1779759   0.4159365
6 months    ki0047075b-MAL-ED       PERU          0                    NA                0.2011766   0.1445890   0.2577643
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.2520420   0.1927222   0.3113617
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.2738953   0.2259261   0.3218644
6 months    ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.1585586   0.1281439   0.1889732
6 months    ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.2307692   0.0686805   0.3928579
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.2150382   0.1825619   0.2475145
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.1790072   0.0964537   0.2615607
6 months    ki1135781-COHORTS       GUATEMALA     1                    NA                0.4163659   0.2984898   0.5342419
6 months    ki1135781-COHORTS       GUATEMALA     0                    NA                0.4411496   0.4011729   0.4811264
6 months    ki1135781-COHORTS       INDIA         1                    NA                0.1444482   0.1270618   0.1618346
6 months    ki1135781-COHORTS       INDIA         0                    NA                0.2254410   0.2106854   0.2401965
6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0826182   0.0382353   0.1270011
6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                0.2362321   0.2090723   0.2633920
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.2412318   0.2318499   0.2506137
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.2815270   0.2657555   0.2972985
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2403397   0.2243123   0.2563670
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.3025652   0.2696931   0.3354374
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.4614534   0.3892019   0.5337048
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.5398483   0.3582742   0.7214225
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.3471897   0.2554564   0.4389229
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.4722039   0.3842312   0.5601766
24 months   ki0047075b-MAL-ED       PERU          1                    NA                0.3472680   0.2086463   0.4858897
24 months   ki0047075b-MAL-ED       PERU          0                    NA                0.3752807   0.2971137   0.4534478
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.5088993   0.4340979   0.5837008
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.5881426   0.5286303   0.6476549
24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.3240238   0.2849187   0.3631289
24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.4522846   0.2325009   0.6720683
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.2585901   0.2172886   0.2998916
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.2404485   0.1372012   0.3436958
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                0.7981899   0.7012077   0.8951722
24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                0.7923956   0.7644596   0.8203316
24 months   ki1135781-COHORTS       INDIA         1                    NA                0.4095184   0.3839733   0.4350635
24 months   ki1135781-COHORTS       INDIA         0                    NA                0.5556043   0.5350437   0.5761650
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.4137101   0.3317428   0.4956774
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.7201135   0.6903811   0.7498459
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.4704318   0.4551815   0.4856821
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.5526032   0.5293576   0.5758488
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.3795047   0.3598102   0.3991991
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.4382829   0.4055609   0.4710049


### Parameter: E(Y)


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.1623932   0.1150373   0.2097491
Birth       ki0047075b-MAL-ED       INDIA         NA                   NA                0.1526316   0.1013601   0.2039030
Birth       ki0047075b-MAL-ED       PERU          NA                   NA                0.1160000   0.0762256   0.1557744
Birth       ki1135781-COHORTS       INDIA         NA                   NA                0.1182998   0.1091394   0.1274602
Birth       kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.3233463   0.3156839   0.3310086
Birth       kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.3004866   0.2649179   0.3360553
6 months    ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.1875000   0.1380164   0.2369836
6 months    ki0047075b-MAL-ED       INDIA         NA                   NA                0.1888412   0.1384789   0.2392035
6 months    ki0047075b-MAL-ED       PERU          NA                   NA                0.2167300   0.1668401   0.2666199
6 months    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093b-PROVIDE      BANGLADESH    NA                   NA                0.1617900   0.1318200   0.1917600
6 months    ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.2102273   0.1801065   0.2403480
6 months    ki1135781-COHORTS       GUATEMALA     NA                   NA                0.4392097   0.4012606   0.4771588
6 months    ki1135781-COHORTS       INDIA         NA                   NA                0.1957353   0.1847045   0.2067660
6 months    ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.2151431   0.1906585   0.2396277
6 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.2514286   0.2432891   0.2595681
6 months    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.2522280   0.2381653   0.2662906
24 months   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.4622642   0.3949918   0.5295365
24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.4133333   0.3488467   0.4778200
24 months   ki0047075b-MAL-ED       PERU          NA                   NA                0.3673469   0.2996839   0.4350100
24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.5547786   0.5076945   0.6018626
24 months   ki1017093b-PROVIDE      BANGLADESH    NA                   NA                0.3298611   0.2914318   0.3682904
24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.2564612   0.2182616   0.2946608
24 months   ki1135781-COHORTS       GUATEMALA     NA                   NA                0.7912946   0.7646707   0.8179186
24 months   ki1135781-COHORTS       INDIA         NA                   NA                0.4930741   0.4770789   0.5090692
24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.6808081   0.6517553   0.7098609
24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.4908374   0.4777103   0.5039644
24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.3922477   0.3752571   0.4092384


### Parameter: RR


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    1                 0.8067158   0.3364777   1.934126
Birth       ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED       INDIA         0                    1                 0.7676447   0.3926217   1.500881
Birth       ki0047075b-MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED       PERU          0                    1                 0.8656915   0.4034095   1.857719
Birth       ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS       INDIA         0                    1                 1.2134717   1.0192218   1.444743
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.1175844   1.0644303   1.173393
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.1392008   0.8759702   1.481532
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    1                 0.6644737   0.2799219   1.577316
6 months    ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED       INDIA         0                    1                 1.3699635   0.7739199   2.425057
6 months    ki0047075b-MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED       PERU          0                    1                 0.6774623   0.4162921   1.102484
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.0867051   0.8116907   1.454899
6 months    ki1017093b-PROVIDE      BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE      BANGLADESH    0                    1                 1.4554196   0.7027093   3.014399
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 0.8324438   0.5127102   1.351568
6 months    ki1135781-COHORTS       GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS       GUATEMALA     0                    1                 1.0595240   0.7892928   1.422275
6 months    ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS       INDIA         0                    1                 1.5607048   1.3618449   1.788603
6 months    ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS       PHILIPPINES   0                    1                 2.8593222   1.6504473   4.953641
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.1670395   1.0949620   1.243862
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.2589068   1.1047814   1.434534
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    1                 1.1698871   0.8109593   1.687675
24 months   ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED       INDIA         0                    1                 1.3600747   0.9878043   1.872641
24 months   ki0047075b-MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED       PERU          0                    1                 1.0806660   0.6937084   1.683473
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.1557150   0.9686312   1.378932
24 months   ki1017093b-PROVIDE      BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE      BANGLADESH    0                    1                 1.3958377   0.8459050   2.303288
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 0.9298443   0.5882370   1.469834
24 months   ki1135781-COHORTS       GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS       GUATEMALA     0                    1                 0.9927407   0.8752667   1.125981
24 months   ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS       INDIA         0                    1                 1.3567262   1.2636524   1.456655
24 months   ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS       PHILIPPINES   0                    1                 1.7406233   1.4236934   2.128105
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.1746723   1.1174418   1.234834
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.1548814   1.0556381   1.263455


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0051195   -0.0244911   0.0142521
Birth       ki0047075b-MAL-ED       INDIA         1                    NA                -0.0220865   -0.0752981   0.0311251
Birth       ki0047075b-MAL-ED       PERU          1                    NA                -0.0130323   -0.0844852   0.0584206
Birth       ki1135781-COHORTS       INDIA         1                    NA                 0.0130893    0.0000376   0.0261410
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0108404    0.0056321   0.0160488
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0116128   -0.0096724   0.0328980
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0105198   -0.0299177   0.0088781
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                 0.0356636   -0.0186493   0.0899766
6 months    ki0047075b-MAL-ED       PERU          1                    NA                -0.0802262   -0.1831214   0.0226690
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0161145   -0.0308425   0.0630715
6 months    ki1017093b-PROVIDE      BANGLADESH    1                    NA                 0.0032315   -0.0042480   0.0107109
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0048109   -0.0157454   0.0061235
6 months    ki1135781-COHORTS       GUATEMALA     1                    NA                 0.0228439   -0.0893347   0.1350225
6 months    ki1135781-COHORTS       INDIA         1                    NA                 0.0512871    0.0359650   0.0666091
6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.1325249    0.0871228   0.1779270
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0101968    0.0055433   0.0148503
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0118883    0.0037195   0.0200572
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0008108   -0.0261809   0.0278025
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                 0.0661437   -0.0018886   0.1341759
24 months   ki0047075b-MAL-ED       PERU          1                    NA                 0.0200789   -0.1014143   0.1415722
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0458792   -0.0113248   0.1030833
24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                 0.0058373   -0.0029902   0.0146648
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0021288   -0.0173038   0.0130461
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                -0.0068953   -0.0997282   0.0859376
24 months   ki1135781-COHORTS       INDIA         1                    NA                 0.0835557    0.0629551   0.1041562
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.2670980    0.1910386   0.3431573
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0204056    0.0125683   0.0282429
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0127431    0.0043924   0.0210938


### Parameter: PAF


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0315255   -0.1577461   0.0809342
Birth       ki0047075b-MAL-ED       INDIA         1                    NA                -0.1447047   -0.5493952   0.1542837
Birth       ki0047075b-MAL-ED       PERU          1                    NA                -0.1123471   -0.9337573   0.3601493
Birth       ki1135781-COHORTS       INDIA         1                    NA                 0.1106453   -0.0065107   0.2141645
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0335257    0.0172535   0.0495285
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0386466   -0.0349198   0.1069837
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0561056   -0.1641975   0.0419503
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                 0.1888552   -0.1541368   0.4299151
6 months    ki0047075b-MAL-ED       PERU          1                    NA                -0.3701664   -0.9357018   0.0301419
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0600935   -0.1323678   0.2198434
6 months    ki1017093b-PROVIDE      BANGLADESH    1                    NA                 0.0199732   -0.0272675   0.0650414
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0228844   -0.0762048   0.0277942
6 months    ki1135781-COHORTS       GUATEMALA     1                    NA                 0.0520113   -0.2410777   0.2758853
6 months    ki1135781-COHORTS       INDIA         1                    NA                 0.2620227    0.1805287   0.3354123
6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.6159848    0.3524867   0.7722554
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0405555    0.0218180   0.0589340
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0471333    0.0141695   0.0789948
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0017540   -0.0583757   0.0584675
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                 0.1600250   -0.0228165   0.3101812
24 months   ki0047075b-MAL-ED       PERU          1                    NA                 0.0546594   -0.3414177   0.3337877
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0826982   -0.0268531   0.1805619
24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                 0.0176963   -0.0094347   0.0440982
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0083009   -0.0692371   0.0491626
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                -0.0087139   -0.1331215   0.1020347
24 months   ki1135781-COHORTS       INDIA         1                    NA                 0.1694587    0.1264728   0.2103293
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.3923249    0.2677723   0.4956910
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0415730    0.0254391   0.0574398
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0324873    0.0107660   0.0537317
