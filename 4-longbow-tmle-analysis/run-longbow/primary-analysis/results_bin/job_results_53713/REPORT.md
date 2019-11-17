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

**Outcome Variable:** ever_swasted

## Predictor Variables

**Intervention Variable:** meducyrs

**Adjustment Set:**

* arm
* W_mage
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* impsan
* delta_W_mage
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        meducyrs    ever_swasted   n_cell       n
------------  -------------------------  -----------------------------  ---------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   0       74     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   1        4     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    0       63     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    1        7     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       61     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 1        4     213
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                   0       77     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                   1        2     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                    0       62     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                    1        1     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                 0       89     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                 1        1     232
0-24 months   ki0047075b-MAL-ED          INDIA                          High                   0       57     220
0-24 months   ki0047075b-MAL-ED          INDIA                          High                   1        6     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                    0       68     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                    1        8     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 0       73     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 1        8     220
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                   0       52     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                   1        1     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    0       93     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    1        3     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 0       73     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 1        3     225
0-24 months   ki0047075b-MAL-ED          PERU                           High                   0       90     301
0-24 months   ki0047075b-MAL-ED          PERU                           High                   1        0     301
0-24 months   ki0047075b-MAL-ED          PERU                           Low                    0      101     301
0-24 months   ki0047075b-MAL-ED          PERU                           Low                    1        3     301
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                 0      106     301
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                 1        1     301
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       92     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1        3     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0      138     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1       10     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       66     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1        3     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0       10     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1        1     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       62     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1        2     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0      136     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1        5     216
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                   0      122     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                   1       36     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                    0       78     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                    1       28     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 0       81     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 1       28     373
0-24 months   ki1000108-IRC              INDIA                          High                   0       84     410
0-24 months   ki1000108-IRC              INDIA                          High                   1       40     410
0-24 months   ki1000108-IRC              INDIA                          Low                    0       93     410
0-24 months   ki1000108-IRC              INDIA                          Low                    1       54     410
0-24 months   ki1000108-IRC              INDIA                          Medium                 0       93     410
0-24 months   ki1000108-IRC              INDIA                          Medium                 1       46     410
0-24 months   ki1000109-EE               PAKISTAN                       High                   0       14     377
0-24 months   ki1000109-EE               PAKISTAN                       High                   1        1     377
0-24 months   ki1000109-EE               PAKISTAN                       Low                    0      256     377
0-24 months   ki1000109-EE               PAKISTAN                       Low                    1       73     377
0-24 months   ki1000109-EE               PAKISTAN                       Medium                 0       28     377
0-24 months   ki1000109-EE               PAKISTAN                       Medium                 1        5     377
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   0      297    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   1       25    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    0      549    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    1      133    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 0      444    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 1       65    1513
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   0       40     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   1        1     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    0      270     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    1       62     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 0       37     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 1        8     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                   0      159     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                   1       19     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                    0      180     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                    1       48     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                 0      186     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                 1       32     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   0      225     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   1       10     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    0      198     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    1       16     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 0      235     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 1       16     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   0      239     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   1       15     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    0      217     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    1       25     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 0      236     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 1       26     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      580    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       41    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0       75    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1        7    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0     1573    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1      110    2386
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                   0      118     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                   1        0     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                    0       74     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                    1        2     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                 0       87     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                 1        1     282
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   0       68     683
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   1       16     683
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    0      348     683
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    1      132     683
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 0       90     683
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 1       29     683
0-24 months   ki1119695-PROBIT           BELARUS                        High                   0     2652   16898
0-24 months   ki1119695-PROBIT           BELARUS                        High                   1      189   16898
0-24 months   ki1119695-PROBIT           BELARUS                        Low                    0     5600   16898
0-24 months   ki1119695-PROBIT           BELARUS                        Low                    1      500   16898
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                 0     7337   16898
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                 1      620   16898
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   0     6865   13926
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   1      690   13926
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     2645   13926
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1      281   13926
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     3131   13926
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1      314   13926
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                   0      259    1322
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                   1       21    1322
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    0      589    1322
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    1       38    1322
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 0      380    1322
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 1       35    1322
0-24 months   ki1135781-COHORTS          INDIA                          High                   0      749    5844
0-24 months   ki1135781-COHORTS          INDIA                          High                   1       44    5844
0-24 months   ki1135781-COHORTS          INDIA                          Low                    0     1679    5844
0-24 months   ki1135781-COHORTS          INDIA                          Low                    1      272    5844
0-24 months   ki1135781-COHORTS          INDIA                          Medium                 0     2814    5844
0-24 months   ki1135781-COHORTS          INDIA                          Medium                 1      286    5844
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   0     1034    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   1      134    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    0      783    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    1      118    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 0      846    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 1      130    3045
0-24 months   ki1148112-LCNI-5           MALAWI                         High                   0      297     814
0-24 months   ki1148112-LCNI-5           MALAWI                         High                   1        1     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                    0      258     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                    1        3     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 0      251     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 1        4     814
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   0     8485   26922
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   1      499   26922
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     9072   26922
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    1      662   26922
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     7721   26922
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1      483   26922
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   0     1819    5420
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   1       82    5420
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    0     1648    5420
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    1      138    5420
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0     1611    5420
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1      122    5420
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                   0       76     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                   1        2     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                    0       64     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                    1        6     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       61     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                 1        4     213
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                   0       77     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                   1        2     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                    0       62     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                    1        1     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                 0       90     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                 1        0     232
0-6 months    ki0047075b-MAL-ED          INDIA                          High                   0       59     220
0-6 months    ki0047075b-MAL-ED          INDIA                          High                   1        4     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                    0       68     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                    1        8     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                 0       74     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                 1        7     220
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                   0       52     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                   1        1     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                    0       94     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                    1        2     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                 0       73     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                 1        3     225
0-6 months    ki0047075b-MAL-ED          PERU                           High                   0       90     301
0-6 months    ki0047075b-MAL-ED          PERU                           High                   1        0     301
0-6 months    ki0047075b-MAL-ED          PERU                           Low                    0      103     301
0-6 months    ki0047075b-MAL-ED          PERU                           Low                    1        1     301
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                 0      107     301
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                 1        0     301
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       95     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0      144     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1        4     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       67     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1        2     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0       11     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1        0     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       64     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1        0     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0      138     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1        3     216
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                   0      131     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                   1       26     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                    0       81     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                    1       23     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 0       89     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 1       18     368
0-6 months    ki1000108-IRC              INDIA                          High                   0       88     410
0-6 months    ki1000108-IRC              INDIA                          High                   1       36     410
0-6 months    ki1000108-IRC              INDIA                          Low                    0       96     410
0-6 months    ki1000108-IRC              INDIA                          Low                    1       51     410
0-6 months    ki1000108-IRC              INDIA                          Medium                 0      100     410
0-6 months    ki1000108-IRC              INDIA                          Medium                 1       39     410
0-6 months    ki1000109-EE               PAKISTAN                       High                   0       15     377
0-6 months    ki1000109-EE               PAKISTAN                       High                   1        0     377
0-6 months    ki1000109-EE               PAKISTAN                       Low                    0      295     377
0-6 months    ki1000109-EE               PAKISTAN                       Low                    1       34     377
0-6 months    ki1000109-EE               PAKISTAN                       Medium                 0       31     377
0-6 months    ki1000109-EE               PAKISTAN                       Medium                 1        2     377
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                   0      308    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                   1       14    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                    0      623    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                    1       56    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                 0      474    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                 1       30    1505
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                   0       40     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                   1        1     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                    0      315     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                    1       17     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 0       43     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 1        2     418
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                   0      164     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                   1       13     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                    0      205     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                    1       23     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium                 0      197     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium                 1       20     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                   0      227     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                   1        8     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                    0      207     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                    1        7     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                 0      237     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                 1       14     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                   0      240     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                   1       14     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                    0      225     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                    1       17     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 0      243     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 1       19     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      597    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       24    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0       80    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1        2    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0     1630    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1       53    2386
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                   0      112     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                   1        0     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                    0       74     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                    1        0     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium                 0       78     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium                 1        1     265
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                   0       73     683
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                   1       11     683
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                    0      427     683
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                    1       53     683
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                 0      104     683
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                 1       15     683
0-6 months    ki1119695-PROBIT           BELARUS                        High                   0     2653   16895
0-6 months    ki1119695-PROBIT           BELARUS                        High                   1      188   16895
0-6 months    ki1119695-PROBIT           BELARUS                        Low                    0     5609   16895
0-6 months    ki1119695-PROBIT           BELARUS                        Low                    1      489   16895
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                 0     7348   16895
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                 1      608   16895
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                   0     6972   13833
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                   1      535   13833
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     2716   13833
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1      191   13833
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     3193   13833
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1      226   13833
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                   0      202    1051
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                   1       13    1051
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                    0      484    1051
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                    1       21    1051
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                 0      301    1051
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                 1       30    1051
0-6 months    ki1135781-COHORTS          INDIA                          High                   0      711    5626
0-6 months    ki1135781-COHORTS          INDIA                          High                   1       39    5626
0-6 months    ki1135781-COHORTS          INDIA                          Low                    0     1730    5626
0-6 months    ki1135781-COHORTS          INDIA                          Low                    1      163    5626
0-6 months    ki1135781-COHORTS          INDIA                          Medium                 0     2781    5626
0-6 months    ki1135781-COHORTS          INDIA                          Medium                 1      202    5626
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                   0     1075    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                   1       93    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                    0      846    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                    1       54    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                 0      912    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                 1       64    3044
0-6 months    ki1148112-LCNI-5           MALAWI                         High                   0       87     267
0-6 months    ki1148112-LCNI-5           MALAWI                         High                   1        0     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                    0       92     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                    1        0     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                 0       88     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                 1        0     267
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                   0     8592   26825
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                   1      353   26825
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     9254   26825
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                    1      446   26825
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     7868   26825
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1      312   26825
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                   0     1746    5077
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                   1       36    5077
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                    0     1629    5077
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                    1       37    5077
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0     1591    5077
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1       38    5077
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   0       69     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   1        2     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    0       64     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    1        1     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       59     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 1        0     195
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                   0       71     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                   1        0     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                    0       55     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                    1        0     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                 0       79     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                 1        1     206
6-24 months   ki0047075b-MAL-ED          INDIA                          High                   0       56     207
6-24 months   ki0047075b-MAL-ED          INDIA                          High                   1        2     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                    0       72     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                    1        0     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 0       76     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 1        1     207
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                   0       52     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                   1        0     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    0       92     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    1        1     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 0       75     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 1        0     220
6-24 months   ki0047075b-MAL-ED          PERU                           High                   0       81     269
6-24 months   ki0047075b-MAL-ED          PERU                           High                   1        0     269
6-24 months   ki0047075b-MAL-ED          PERU                           Low                    0       91     269
6-24 months   ki0047075b-MAL-ED          PERU                           Low                    1        2     269
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                 0       94     269
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                 1        1     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       71     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1        3     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0      123     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1        6     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       55     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1        1     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0        8     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1        1     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       60     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1        2     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0      129     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1        2     202
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                   0      147     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                   1       11     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                    0      100     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                    1        6     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 0       96     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 1       13     373
6-24 months   ki1000108-IRC              INDIA                          High                   0      119     410
6-24 months   ki1000108-IRC              INDIA                          High                   1        5     410
6-24 months   ki1000108-IRC              INDIA                          Low                    0      139     410
6-24 months   ki1000108-IRC              INDIA                          Low                    1        8     410
6-24 months   ki1000108-IRC              INDIA                          Medium                 0      126     410
6-24 months   ki1000108-IRC              INDIA                          Medium                 1       13     410
6-24 months   ki1000109-EE               PAKISTAN                       High                   0       14     371
6-24 months   ki1000109-EE               PAKISTAN                       High                   1        1     371
6-24 months   ki1000109-EE               PAKISTAN                       Low                    0      277     371
6-24 months   ki1000109-EE               PAKISTAN                       Low                    1       46     371
6-24 months   ki1000109-EE               PAKISTAN                       Medium                 0       30     371
6-24 months   ki1000109-EE               PAKISTAN                       Medium                 1        3     371
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   0      291    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   1       11    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    0      530    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    1       84    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 0      434    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 1       39    1389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   0       40     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   1        0     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    0      275     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    1       45     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 0       36     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 1        6     402
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                   0      151     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                   1        6     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                    0      169     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                    1       28     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                 0      174     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                 1       14     542
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   0      209     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   1        2     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    0      176     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    1        9     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 0      217     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 1        2     615
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   0      245     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   1        1     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    0      223     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    1       11     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 0      242     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 1        8     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      497    2011
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       17    2011
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0       67    2011
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1        5    2011
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0     1364    2011
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1       61    2011
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                   0      111     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                   1        0     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                    0       69     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                    1        2     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                 0       84     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                 1        0     266
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   0       64     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   1        7     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    0      324     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    1       90     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 0       87     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 1       15     587
6-24 months   ki1119695-PROBIT           BELARUS                        High                   0     2774   16598
6-24 months   ki1119695-PROBIT           BELARUS                        High                   1        1   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Low                    0     5959   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Low                    1       13   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                 0     7839   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                 1       12   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   0     5661   10800
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   1      164   10800
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     2184   10800
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1       94   10800
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     2599   10800
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1       98   10800
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                   0      234    1198
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                   1        8    1198
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    0      552    1198
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    1       17    1198
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 0      382    1198
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 1        5    1198
6-24 months   ki1135781-COHORTS          INDIA                          High                   0      745    5479
6-24 months   ki1135781-COHORTS          INDIA                          High                   1        5    5479
6-24 months   ki1135781-COHORTS          INDIA                          Low                    0     1682    5479
6-24 months   ki1135781-COHORTS          INDIA                          Low                    1      114    5479
6-24 months   ki1135781-COHORTS          INDIA                          Medium                 0     2848    5479
6-24 months   ki1135781-COHORTS          INDIA                          Medium                 1       85    5479
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   0     1009    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   1       45    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    0      775    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    1       72    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 0      837    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 1       71    2809
6-24 months   ki1148112-LCNI-5           MALAWI                         High                   0      292     803
6-24 months   ki1148112-LCNI-5           MALAWI                         High                   1        1     803
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                    0      256     803
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                    1        3     803
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 0      247     803
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 1        4     803
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   0     5941   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   1      153   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     5574   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    1      222   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     5213   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1      177   17280
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   0     1850    5416
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   1       48    5416
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    0     1683    5416
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    1      103    5416
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0     1645    5416
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1       87    5416


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/c54ba8f6-0a40-4f21-ada9-120b8cfe2acb/5f9dd57c-f875-4c8f-b871-31a8dd5df9dc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c54ba8f6-0a40-4f21-ada9-120b8cfe2acb/5f9dd57c-f875-4c8f-b871-31a8dd5df9dc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c54ba8f6-0a40-4f21-ada9-120b8cfe2acb/5f9dd57c-f875-4c8f-b871-31a8dd5df9dc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c54ba8f6-0a40-4f21-ada9-120b8cfe2acb/5f9dd57c-f875-4c8f-b871-31a8dd5df9dc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.0952381   0.0225874   0.1678888
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.1052632   0.0361093   0.1744170
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.0987654   0.0336452   0.1638857
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.2245889   0.1594185   0.2897594
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.2606137   0.1766360   0.3445914
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.2687345   0.1830355   0.3544336
0-24 months   ki1000108-IRC              INDIA                          High                 NA                0.3389887   0.2631640   0.4148134
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.3711669   0.2983447   0.4439891
0-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.3301716   0.2537147   0.4066285
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0731309   0.0448889   0.1013730
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1913036   0.1535992   0.2290081
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.1305096   0.0812667   0.1797525
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.1047862   0.0588371   0.1507354
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.2077783   0.1545948   0.2609618
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.1468541   0.0995563   0.1941519
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0399032   0.0155657   0.0642406
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.0701504   0.0362095   0.1040914
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0698077   0.0357035   0.1039118
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0583892   0.0297427   0.0870357
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1068939   0.0679994   0.1457885
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0988411   0.0627488   0.1349333
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0660225   0.0464878   0.0855573
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0853659   0.0248738   0.1458579
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0653595   0.0535488   0.0771701
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1760526   0.0926836   0.2594215
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2692905   0.2290033   0.3095776
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2306342   0.1482413   0.3130272
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0724885   0.0412176   0.1037593
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0793022   0.0473578   0.1112466
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0765252   0.0432274   0.1098230
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0858568   0.0801007   0.0916130
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1021240   0.0928095   0.1114384
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0975665   0.0891688   0.1059642
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0704291   0.0413483   0.0995098
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0629572   0.0428767   0.0830377
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0791021   0.0529264   0.1052777
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0521652   0.0351713   0.0691591
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1292729   0.1139329   0.1446130
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0922181   0.0817776   0.1026586
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1168104   0.0985745   0.1350464
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.1406373   0.1176100   0.1636645
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.1293954   0.1081657   0.1506252
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0566829   0.0507770   0.0625889
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0649658   0.0591805   0.0707510
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0583223   0.0527790   0.0638655
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0432860   0.0327179   0.0538541
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0740272   0.0612687   0.0867858
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0716090   0.0585326   0.0846853
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.1655988   0.1071294   0.2240682
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.2236964   0.1431367   0.3042561
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.1688793   0.0975215   0.2402371
0-6 months    ki1000108-IRC              INDIA                          High                 NA                0.3123020   0.2333616   0.3912425
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                0.3547784   0.2784805   0.4310763
0-6 months    ki1000108-IRC              INDIA                          Medium               NA                0.2830514   0.2096362   0.3564666
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0374781   0.0194491   0.0555071
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.0814501   0.0527516   0.1101486
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0649343   0.0292718   0.1005967
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.0723856   0.0338370   0.1109342
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.1024850   0.0629899   0.1419800
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.0917152   0.0532243   0.1302062
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0340426   0.0108411   0.0572440
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.0327103   0.0088612   0.0565594
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0557769   0.0273659   0.0841879
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0528348   0.0253015   0.0803680
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0723412   0.0398711   0.1048114
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0720356   0.0411054   0.1029657
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1377791   0.0656395   0.2099188
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1110969   0.0829890   0.1392048
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1327446   0.0728998   0.1925894
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0713569   0.0409698   0.1017440
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0760349   0.0442863   0.1077835
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0762962   0.0426277   0.1099646
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0664503   0.0615734   0.0713272
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0722545   0.0652773   0.0792317
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0724772   0.0663965   0.0785579
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0645958   0.0336257   0.0955660
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0446304   0.0273186   0.0619422
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0885106   0.0573080   0.1197131
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.0485923   0.0331890   0.0639956
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.0852727   0.0726636   0.0978817
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.0676078   0.0585394   0.0766763
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0764764   0.0605169   0.0924360
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0693695   0.0511580   0.0875810
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0655359   0.0489387   0.0821331
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0394897   0.0349881   0.0439914
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0441722   0.0391364   0.0492079
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0386047   0.0340115   0.0431979
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0197273   0.0126992   0.0267553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0235782   0.0158733   0.0312831
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0224608   0.0150933   0.0298284
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.0696203   0.0298828   0.1093577
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.0566038   0.0125536   0.1006540
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.1192661   0.0583406   0.1801915
6-24 months   ki1000108-IRC              INDIA                          High                 NA                0.0403226   0.0056565   0.0749886
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.0544218   0.0177058   0.0911377
6-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.0935252   0.0450619   0.1419885
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0339302   0.0117025   0.0561579
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1321763   0.0994027   0.1649498
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0824715   0.0470559   0.1178871
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.0382166   0.0081998   0.0682333
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.1421320   0.0933261   0.1909379
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.0744681   0.0369059   0.1120303
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0330739   0.0176102   0.0485377
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0694444   0.0107118   0.1281771
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0428070   0.0322945   0.0533195
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.0985916   0.0291899   0.1679932
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2173913   0.1776253   0.2571573
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1470588   0.0782691   0.2158485
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0276115   0.0233609   0.0318621
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0410935   0.0323761   0.0498110
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0374765   0.0297183   0.0452346
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0330579   0.0105228   0.0555929
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0298770   0.0158826   0.0438714
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0129199   0.0016640   0.0241758
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0066667   0.0008422   0.0124912
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.0634744   0.0521974   0.0747514
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0289806   0.0229090   0.0350521
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0462964   0.0332170   0.0593759
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0847469   0.0654552   0.1040386
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0749445   0.0574308   0.0924582
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0263070   0.0216267   0.0309873
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0357727   0.0306004   0.0409449
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0324084   0.0270547   0.0377621
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0260811   0.0169834   0.0351788
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0556473   0.0446617   0.0666329
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0506634   0.0397926   0.0615342


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1000000   0.0602674   0.1397326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2466488   0.2028447   0.2904529
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3414634   0.2955068   0.3874201
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1473893   0.1184132   0.1763654
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1586538   0.1299648   0.1873429
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0600000   0.0423945   0.0776055
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0870712   0.0669870   0.1071555
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0662196   0.0562399   0.0761994
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2591508   0.2262659   0.2920357
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0774648   0.0450418   0.1098878
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0922734   0.0874665   0.0970804
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0711044   0.0572455   0.0849633
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1030116   0.0952175   0.1108057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1254516   0.1136848   0.1372183
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0610653   0.0575838   0.0645468
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0630996   0.0561390   0.0700602
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1820652   0.1425842   0.2215462
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.3073171   0.2626027   0.3520314
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0664452   0.0425975   0.0902929
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0900322   0.0675202   0.1125442
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0414286   0.0266555   0.0562017
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0659631   0.0482810   0.0836451
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1156662   0.0916631   0.1396693
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0760580   0.0435003   0.1086157
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0688209   0.0646022   0.0730397
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0608944   0.0464300   0.0753587
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0718095   0.0650627   0.0785562
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0693167   0.0602923   0.0783411
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0414166   0.0384340   0.0443992
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0218633   0.0173413   0.0263853
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0804290   0.0527929   0.1080650
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.0634146   0.0397960   0.0870333
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0964723   0.0729872   0.1199573
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0885609   0.0646203   0.1125014
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0412730   0.0325768   0.0499692
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1908007   0.1589868   0.2226146
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0329630   0.0295956   0.0363303
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0250417   0.0161900   0.0338934
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0372331   0.0322193   0.0422468
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0669277   0.0576848   0.0761707
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0319444   0.0290509   0.0348380
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0439439   0.0381166   0.0497712


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.1052631   0.4038751    3.024713
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.0370370   0.3783556    2.842421
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.1604033   0.7518612    1.790937
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.1965619   0.7763895    1.844126
0-24 months   ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1000108-IRC              INDIA                          Low                  High              1.0949240   0.8237126    1.455433
0-24 months   ki1000108-IRC              INDIA                          Medium               High              0.9739900   0.7127188    1.331039
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              2.6159054   1.7417349    3.928819
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.7846016   1.0623374    2.997920
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.9828784   1.1930103    3.295702
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.4014640   0.8126833    2.416810
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.7580173   0.8065841    3.831745
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.7494267   0.7999717    3.825753
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.8307139   0.9938070    3.372399
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.6927969   0.9177465    3.122389
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.2929804   0.5999184    2.786709
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              0.9899570   0.6999193    1.400183
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.5296026   0.9304148    2.514668
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.3100307   0.7241887    2.369797
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.0939971   0.9774162    1.224483
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.0556881   0.9389019    1.187001
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.1894678   1.0761788    1.314683
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1363858   1.0335173    1.249493
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.8939099   0.5308518    1.505269
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.1231452   0.6618725    1.905889
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              2.4781431   1.7517194    3.505809
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.7678070   1.2520897    2.495941
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.2039789   0.9665312    1.499760
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.1077388   0.8904156    1.378104
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1461258   1.0046919    1.307470
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0289211   0.8971597    1.180034
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.7101884   1.2665820    2.309163
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.6543217   1.2184554    2.246106
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.3508337   0.8150334    2.238867
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.0198099   0.5874366    1.770424
0-6 months    ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1000108-IRC              INDIA                          Low                  High              1.1360105   0.8176720    1.578286
0-6 months    ki1000108-IRC              INDIA                          Medium               High              0.9063387   0.6330641    1.297578
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              2.1732714   1.3557857    3.483669
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.7325923   1.0990549    2.731325
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.4158203   0.7337094    2.732072
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.2670371   0.6430645    2.496457
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              0.9608645   0.3541751    2.606791
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.6384462   0.6996975    3.836667
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.3691974   0.6877111    2.726001
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.3634119   0.6937466    2.679497
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              0.8063407   0.4508695    1.442070
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.9634594   0.4828462    1.922463
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              1.0655583   0.9714736    1.168755
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.0692194   0.9606960    1.190002
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.0873458   0.9876165    1.197146
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0906974   1.0035837    1.185373
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              0.6909171   0.3747655    1.273774
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              1.3702210   0.7568119    2.480809
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              1.7548598   1.2367574    2.490006
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.3913283   0.9861010    1.963079
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              0.9070709   0.6488206    1.268113
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.8569426   0.6178167    1.188622
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1185731   0.9626490    1.299753
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              0.9775869   0.8415783    1.135576
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.1952088   0.7495222    1.905913
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.1385685   0.7143802    1.814633
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000    1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              0.8130360   0.3097233    2.134252
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.7130942   0.7963737    3.685069
6-24 months   ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000    1.000000
6-24 months   ki1000108-IRC              INDIA                          Low                  High              1.3496597   0.4524960    4.025630
6-24 months   ki1000108-IRC              INDIA                          Medium               High              2.3194242   0.8500255    6.328902
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              3.8955369   2.1187622    7.162299
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              2.4306230   1.1616551    5.085785
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              3.7191201   1.5781718    8.764480
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.9485816   0.7661679    4.955794
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000    1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              2.0996732   0.7988343    5.518826
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.2942828   0.7632538    2.194772
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000    1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              2.2049689   1.0654565    4.563197
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.4915966   0.6406116    3.473025
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.4882756   1.1455022    1.933618
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.3572768   1.0487882    1.756504
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9037786   0.3952360    2.066653
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.3908269   0.1292899    1.181420
6-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Low                  High              9.5211577   3.9038372   23.221369
6-24 months   ki1135781-COHORTS          INDIA                          Medium               High              4.3470847   1.7701456   10.675475
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.8305268   1.2737867    2.630604
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.6187961   1.1222608    2.335020
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.3598170   1.0816323    1.709548
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.2319328   0.9654476    1.571974
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              2.1336253   1.4187963    3.208605
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.9425306   1.2875289    2.930750


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0047619   -0.0571564   0.0666802
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0220599   -0.0286023   0.0727220
0-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0024747   -0.0593247   0.0642740
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0742583    0.0420726   0.1064441
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0538676    0.0120337   0.0957015
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0200968   -0.0018938   0.0420874
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0286820    0.0028191   0.0545450
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0001971   -0.0166125   0.0170066
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0830983    0.0025849   0.1636116
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0049763   -0.0022350   0.0121877
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0064166    0.0028552   0.0099780
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0006753   -0.0251409   0.0264916
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0508464    0.0339335   0.0677593
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0086411   -0.0060285   0.0233107
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0043824   -0.0007476   0.0095123
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0198136    0.0107267   0.0289005
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0164664   -0.0292330   0.0621658
0-6 months    ki1000108-IRC              INDIA                          High                 NA                -0.0049849   -0.0711654   0.0611955
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0289671    0.0105758   0.0473584
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0176466   -0.0162605   0.0515536
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0073860   -0.0124915   0.0272636
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0131283   -0.0104381   0.0366946
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0221129   -0.0892243   0.0449984
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0047011   -0.0016977   0.0111000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0023706   -0.0002493   0.0049905
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0037015   -0.0313010   0.0238981
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0232172    0.0084182   0.0380161
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0071597   -0.0195756   0.0052561
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0019268   -0.0016318   0.0054855
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0021360   -0.0033566   0.0076287
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0108087   -0.0208939   0.0425113
6-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0230920   -0.0090432   0.0552273
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0625421    0.0394497   0.0856345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0503443    0.0194871   0.0812016
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0081991   -0.0056758   0.0220739
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0922091    0.0239190   0.1604993
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0053515    0.0021169   0.0085860
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0080161   -0.0275357   0.0115035
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0305664    0.0235113   0.0376215
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0206313    0.0088559   0.0324067
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0056375    0.0014768   0.0097981
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0178627    0.0099666   0.0257589


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0476190   -0.8241477   0.5027653
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0894384   -0.1406763   0.2731309
0-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0072473   -0.1912492   0.1726686
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.5038246    0.2864511   0.6549780
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.3395293    0.0224418   0.5537642
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.3349473   -0.1323490   0.6094004
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.3294089   -0.0306560   0.5636833
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0029760   -0.2861107   0.2270830
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.3206560   -0.0700138   0.5686894
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0642399   -0.0299046   0.1497785
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0695390    0.0302473   0.1072386
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0094977   -0.4290146   0.3134467
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.4935985    0.3052075   0.6309078
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0688802   -0.0554683   0.1785789
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0717653   -0.0158237   0.1518020
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.3140055    0.1551625   0.4429834
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0904424   -0.1979888   0.3094301
0-6 months    ki1000108-IRC              INDIA                          High                 NA                -0.0162208   -0.2561770   0.1778987
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.4359547    0.1831366   0.6105260
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.1960030   -0.2807082   0.4952705
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1782832   -0.4663291   0.5395178
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.1990248   -0.2464292   0.4852806
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.1911790   -0.9384598   0.2680233
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0618098   -0.0180974   0.1354453
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0344461   -0.0043564   0.0717496
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0607848   -0.6269256   0.3083492
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.3233161    0.0850004   0.4995614
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.1032902   -0.2970115   0.0614969
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0465236   -0.0432377   0.1285617
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0976998   -0.1924022   0.3172222
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.1343882   -0.3612271   0.4495527
6-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.3641439   -0.3738866   0.7057159
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.6482909    0.3742772   0.8023098
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.5684713    0.1027881   0.7924493
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1986545   -0.2153224   0.4716180
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.4832746   -0.0191883   0.7380218
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1623477    0.0598730   0.2536525
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.3201102   -1.3687346   0.2642946
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.8209477    0.5757823   0.9244262
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3082622    0.1147277   0.4594871
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1764775    0.0371641   0.2956335
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.4064900    0.1964265   0.5616405
