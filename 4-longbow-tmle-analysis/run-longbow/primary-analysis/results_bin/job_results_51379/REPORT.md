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
* W_mhtcm
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_feducyrs
* delta_W_mhtcm
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single

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
0-24 months   ki0047075b-MAL-ED          INDIA                          High                   0       58     220
0-24 months   ki0047075b-MAL-ED          INDIA                          High                   1        5     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                    0       68     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                    1        8     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 0       74     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 1        7     220
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                   0       52     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                   1        1     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    0       93     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    1        3     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 0       73     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 1        3     225
0-24 months   ki0047075b-MAL-ED          PERU                           High                   0       90     301
0-24 months   ki0047075b-MAL-ED          PERU                           High                   1        0     301
0-24 months   ki0047075b-MAL-ED          PERU                           Low                    0      102     301
0-24 months   ki0047075b-MAL-ED          PERU                           Low                    1        2     301
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                 0      106     301
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                 1        1     301
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       93     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1        2     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0      138     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1       10     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       67     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1        2     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0       11     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1        0     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       62     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1        2     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0      137     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1        4     216
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                   0      122     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                   1       36     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                    0       77     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                    1       29     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 0       79     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 1       30     373
0-24 months   ki1000108-IRC              INDIA                          High                   0       84     410
0-24 months   ki1000108-IRC              INDIA                          High                   1       40     410
0-24 months   ki1000108-IRC              INDIA                          Low                    0       93     410
0-24 months   ki1000108-IRC              INDIA                          Low                    1       54     410
0-24 months   ki1000108-IRC              INDIA                          Medium                 0       93     410
0-24 months   ki1000108-IRC              INDIA                          Medium                 1       46     410
0-24 months   ki1000109-EE               PAKISTAN                       High                   0       14     377
0-24 months   ki1000109-EE               PAKISTAN                       High                   1        1     377
0-24 months   ki1000109-EE               PAKISTAN                       Low                    0      271     377
0-24 months   ki1000109-EE               PAKISTAN                       Low                    1       58     377
0-24 months   ki1000109-EE               PAKISTAN                       Medium                 0       29     377
0-24 months   ki1000109-EE               PAKISTAN                       Medium                 1        4     377
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
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                    0      181     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                    1       47     624
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   0       64     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   1       11     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    0      300     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    1      121     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 0       79     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 1       24     599
0-24 months   ki1119695-PROBIT           BELARUS                        High                   0     2652   16898
0-24 months   ki1119695-PROBIT           BELARUS                        High                   1      189   16898
0-24 months   ki1119695-PROBIT           BELARUS                        Low                    0     5600   16898
0-24 months   ki1119695-PROBIT           BELARUS                        Low                    1      500   16898
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                 0     7337   16898
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                 1      620   16898
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   0     6865   13919
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   1      686   13919
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     2649   13919
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1      277   13919
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     3130   13919
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1      312   13919
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
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 0      250     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 1        5     814
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   0     8485   26926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   1      499   26926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     9074   26926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    1      662   26926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     7725   26926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1      481   26926
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   0       73    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   1        4    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    0     2021    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    1      129    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0       75    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1        5    2307
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                   0       76     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                   1        2     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                    0       64     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                    1        6     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       61     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                 1        4     213
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                   0       77     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                   1        2     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                    0       63     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                    1        0     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                 0       90     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                 1        0     232
0-6 months    ki0047075b-MAL-ED          INDIA                          High                   0       60     220
0-6 months    ki0047075b-MAL-ED          INDIA                          High                   1        3     220
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
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       68     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1        1     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0       11     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1        0     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       64     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1        0     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0      139     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1        2     216
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                   0      131     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                   1       26     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                    0       80     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                    1       24     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 0       87     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 1       20     368
0-6 months    ki1000108-IRC              INDIA                          High                   0       88     410
0-6 months    ki1000108-IRC              INDIA                          High                   1       36     410
0-6 months    ki1000108-IRC              INDIA                          Low                    0       96     410
0-6 months    ki1000108-IRC              INDIA                          Low                    1       51     410
0-6 months    ki1000108-IRC              INDIA                          Medium                 0      100     410
0-6 months    ki1000108-IRC              INDIA                          Medium                 1       39     410
0-6 months    ki1000109-EE               PAKISTAN                       High                   0       15     377
0-6 months    ki1000109-EE               PAKISTAN                       High                   1        0     377
0-6 months    ki1000109-EE               PAKISTAN                       Low                    0      304     377
0-6 months    ki1000109-EE               PAKISTAN                       Low                    1       25     377
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                   0       69     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                   1        6     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                    0      380     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                    1       41     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                 0       94     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                 1        9     599
0-6 months    ki1119695-PROBIT           BELARUS                        High                   0     2653   16895
0-6 months    ki1119695-PROBIT           BELARUS                        High                   1      188   16895
0-6 months    ki1119695-PROBIT           BELARUS                        Low                    0     5609   16895
0-6 months    ki1119695-PROBIT           BELARUS                        Low                    1      489   16895
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                 0     7348   16895
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                 1      608   16895
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                   0     6968   13827
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                   1      534   13827
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     2717   13827
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1      190   13827
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     3192   13827
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1      226   13827
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                   0     8592   26829
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                   1      353   26829
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     9256   26829
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                    1      446   26829
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     7872   26829
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1      310   26829
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                   0       68    2158
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                   1        2    2158
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                    0     1977    2158
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                    1       39    2158
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0       70    2158
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1        2    2158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   0       69     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   1        2     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    0       64     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    1        1     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       59     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 1        0     195
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                   0       71     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                   1        0     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                    0       54     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                    1        1     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                 0       79     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                 1        1     206
6-24 months   ki0047075b-MAL-ED          INDIA                          High                   0       56     207
6-24 months   ki0047075b-MAL-ED          INDIA                          High                   1        2     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                    0       72     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                    1        0     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 0       77     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 1        0     207
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                   0       52     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                   1        0     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    0       92     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    1        1     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 0       75     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 1        0     220
6-24 months   ki0047075b-MAL-ED          PERU                           High                   0       81     269
6-24 months   ki0047075b-MAL-ED          PERU                           High                   1        0     269
6-24 months   ki0047075b-MAL-ED          PERU                           Low                    0       92     269
6-24 months   ki0047075b-MAL-ED          PERU                           Low                    1        1     269
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                 0       94     269
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                 1        1     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       72     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1        2     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0      123     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1        6     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       55     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1        1     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0        9     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1        0     202
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
6-24 months   ki1000109-EE               PAKISTAN                       High                   0       14     372
6-24 months   ki1000109-EE               PAKISTAN                       High                   1        1     372
6-24 months   ki1000109-EE               PAKISTAN                       Low                    0      289     372
6-24 months   ki1000109-EE               PAKISTAN                       Low                    1       35     372
6-24 months   ki1000109-EE               PAKISTAN                       Medium                 0       30     372
6-24 months   ki1000109-EE               PAKISTAN                       Medium                 1        3     372
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
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                   0      151     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                   1        6     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                    0      169     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                    1       27     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                 0      174     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                 1       14     541
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 0       86     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 1       16     587
6-24 months   ki1119695-PROBIT           BELARUS                        High                   0     2774   16598
6-24 months   ki1119695-PROBIT           BELARUS                        High                   1        1   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Low                    0     5959   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Low                    1       13   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                 0     7839   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                 1       12   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   0     5590   10679
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   1      161   10679
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     2171   10679
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1       91   10679
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     2570   10679
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1       96   10679
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
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 0      246     803
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 1        5     803
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   0     5941   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   1      153   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     5574   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    1      222   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     5213   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1      177   17280
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   0       75    2301
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   1        2    2301
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    0     2049    2301
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    1       95    2301
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0       77    2301
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1        3    2301


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
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
![](/tmp/0a1899e1-abb5-404a-aa2b-e1aa928e4786/b842f61f-bdac-41f6-94c9-56627e17ece0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0a1899e1-abb5-404a-aa2b-e1aa928e4786/b842f61f-bdac-41f6-94c9-56627e17ece0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0a1899e1-abb5-404a-aa2b-e1aa928e4786/b842f61f-bdac-41f6-94c9-56627e17ece0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0a1899e1-abb5-404a-aa2b-e1aa928e4786/b842f61f-bdac-41f6-94c9-56627e17ece0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.0793651   0.0124652   0.1462650
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.1052632   0.0361093   0.1744170
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.0864198   0.0250895   0.1477500
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.2239593   0.1591153   0.2888034
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.2791028   0.1924581   0.3657476
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.2753256   0.1878424   0.3628088
0-24 months   ki1000108-IRC              INDIA                          High                 NA                0.3252173   0.2466974   0.4037371
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.3694281   0.2939696   0.4448866
0-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.3249396   0.2493279   0.4005513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0704144   0.0442070   0.0966218
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1967297   0.1577128   0.2357466
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.1378092   0.0838870   0.1917315
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.1084520   0.0623287   0.1545752
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.2040418   0.1511636   0.2569201
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.1481434   0.1004519   0.1958350
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0396139   0.0153742   0.0638536
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.0698216   0.0359545   0.1036886
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0712615   0.0370305   0.1054925
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0584002   0.0294862   0.0873143
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1041479   0.0653495   0.1429464
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0990727   0.0630115   0.1351339
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0660225   0.0464878   0.0855573
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0853659   0.0248738   0.1458579
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0653595   0.0535488   0.0771701
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1193831   0.0493368   0.1894294
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2795577   0.2360702   0.3230451
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2059251   0.1233994   0.2884508
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0709532   0.0403523   0.1015542
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0788937   0.0476090   0.1101784
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0770549   0.0435136   0.1105962
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0847766   0.0791375   0.0904158
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0991682   0.0899026   0.1084337
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0985530   0.0900818   0.1070241
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0740504   0.0431065   0.1049944
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0624682   0.0427956   0.0821407
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0801887   0.0536738   0.1067036
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0514711   0.0342698   0.0686725
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1332794   0.1173721   0.1491867
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0929081   0.0822647   0.1035516
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1137515   0.0965283   0.1309748
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.1349856   0.1128435   0.1571276
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.1325624   0.1121891   0.1529358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0561899   0.0509751   0.0614048
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0640452   0.0585842   0.0695063
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0573032   0.0519185   0.0626879
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.1622042   0.1049777   0.2194306
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.2310815   0.1493715   0.3127916
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.1909030   0.1134744   0.2683316
0-6 months    ki1000108-IRC              INDIA                          High                 NA                0.2956914   0.2169742   0.3744086
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                0.3460149   0.2689916   0.4230383
0-6 months    ki1000108-IRC              INDIA                          Medium               NA                0.2728690   0.1991413   0.3465967
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0374781   0.0194491   0.0555071
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.0814501   0.0527516   0.1101486
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0649343   0.0292718   0.1005967
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.0729412   0.0346041   0.1112782
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.1006690   0.0614769   0.1398611
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.0899837   0.0520866   0.1278807
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0340426   0.0108411   0.0572440
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.0327103   0.0088612   0.0565594
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0557769   0.0273659   0.0841879
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0548921   0.0269611   0.0828231
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0744759   0.0423531   0.1065987
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0744913   0.0432046   0.1057781
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.0800000   0.0185504   0.1414496
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.0973872   0.0690425   0.1257318
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.0873786   0.0327978   0.1419595
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0702055   0.0395988   0.1008121
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0772385   0.0454419   0.1090351
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0757638   0.0422519   0.1092758
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0660086   0.0612376   0.0707796
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0716021   0.0649362   0.0782679
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0736427   0.0675377   0.0797478
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0616013   0.0300372   0.0931655
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0433594   0.0259418   0.0607770
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0853524   0.0544896   0.1162153
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.0477988   0.0324925   0.0631052
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.0860754   0.0733533   0.0987975
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.0675280   0.0584797   0.0765764
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0746850   0.0615572   0.0878128
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0636844   0.0487647   0.0786041
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0661299   0.0522021   0.0800577
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0389676   0.0346976   0.0432376
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0432690   0.0386126   0.0479254
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0385477   0.0341119   0.0429836
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.0696203   0.0298828   0.1093577
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.0566038   0.0125536   0.1006540
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.1192661   0.0583406   0.1801915
6-24 months   ki1000108-IRC              INDIA                          High                 NA                0.0403226   0.0056565   0.0749886
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.0544218   0.0177058   0.0911377
6-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.0935252   0.0450619   0.1419885
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0339302   0.0117025   0.0561579
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1321763   0.0994027   0.1649498
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0824715   0.0470559   0.1178871
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.0382166   0.0081998   0.0682334
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.1377551   0.0894613   0.1860489
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.0744681   0.0369058   0.1120303
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0330739   0.0176102   0.0485377
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0694444   0.0107118   0.1281771
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0428070   0.0322945   0.0533195
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.0985916   0.0291899   0.1679932
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2173913   0.1776253   0.2571573
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1568627   0.0862266   0.2274989
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0270077   0.0227890   0.0312264
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0382598   0.0298239   0.0466956
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0372879   0.0294631   0.0451127
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0330579   0.0105228   0.0555929
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0298770   0.0158826   0.0438714
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0129199   0.0016640   0.0241758
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0066667   0.0008422   0.0124912
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.0634744   0.0521974   0.0747514
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0289806   0.0229090   0.0350521
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0469221   0.0336194   0.0602249
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0845893   0.0654078   0.1037708
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0751590   0.0576167   0.0927013
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0263585   0.0216543   0.0310627
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0350811   0.0300441   0.0401180
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0324102   0.0268851   0.0379353


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0909091   0.0528347   0.1289835
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2546917   0.2104174   0.2989660
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3414634   0.2955068   0.3874201
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1473893   0.1184132   0.1763654
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1570513   0.1284803   0.1856223
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0600000   0.0423945   0.0776055
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0870712   0.0669870   0.1071555
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0662196   0.0562399   0.0761994
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2604341   0.2252590   0.2956091
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0774648   0.0450418   0.1098878
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0916014   0.0868091   0.0963938
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0711044   0.0572455   0.0849633
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1030116   0.0952175   0.1108057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1254516   0.1136848   0.1372183
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0609820   0.0575074   0.0644565
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1902174   0.1500638   0.2303710
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.3073171   0.2626027   0.3520314
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0664452   0.0425975   0.0902929
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0900322   0.0675202   0.1125442
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0414286   0.0266555   0.0562017
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0659631   0.0482810   0.0836451
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0934891   0.0701565   0.1168218
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0760580   0.0435003   0.1086157
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0687062   0.0644898   0.0729225
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0608944   0.0464300   0.0753587
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0718095   0.0650627   0.0785562
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0693167   0.0602923   0.0783411
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0413359   0.0383591   0.0443126
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0804290   0.0527929   0.1080650
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.0634146   0.0397960   0.0870333
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0964723   0.0729872   0.1199573
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0868762   0.0631205   0.1106318
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0412730   0.0325768   0.0499692
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1925043   0.1605823   0.2244262
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0325873   0.0292196   0.0359550
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0250417   0.0161900   0.0338934
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0372331   0.0322193   0.0422468
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0669277   0.0576848   0.0761707
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0319444   0.0290509   0.0348380


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.3263158   0.4555241    3.861735
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.0888889   0.3617706    3.277433
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.2462211   0.8147715    1.906138
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.2293552   0.7994315    1.890486
0-24 months   ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1000108-IRC              INDIA                          Low                  High              1.1359425   0.8349000    1.545533
0-24 months   ki1000108-IRC              INDIA                          Medium               High              0.9991463   0.7197185    1.387061
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              2.7938850   1.8516583    4.215569
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.9571172   1.1568454    3.310994
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.8814029   1.1431710    3.096367
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.3659822   0.8011088    2.329156
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.7625517   0.8070362    3.849379
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.7989014   0.8260324    3.917578
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.7833485   0.9595371    3.314444
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.6964437   0.9177729    3.135766
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.2929804   0.5999184    2.786709
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              0.9899570   0.6999193    1.400183
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              2.3416856   1.2756947    4.298436
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.7249100   0.8493138    3.503198
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.1119111   0.9843142    1.256048
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.0859953   0.9607553    1.227561
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.1697582   1.0571776    1.294328
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1625017   1.0579687    1.277363
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.8435892   0.5003627    1.422254
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.0828927   0.6357028    1.844662
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              2.5894003   1.8156806    3.692827
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.8050529   1.2677713    2.570035
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.1866701   0.9560722    1.472887
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.1653682   0.9477485    1.432957
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1397994   1.0144863    1.280592
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0198121   0.9010510    1.154226
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.4246337   0.8641458    2.348656
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.1769303   0.6869269    2.016466
0-6 months    ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1000108-IRC              INDIA                          Low                  High              1.1701894   0.8307645    1.648293
0-6 months    ki1000108-IRC              INDIA                          Medium               High              0.9228168   0.6343749    1.342410
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              2.1732714   1.3557857    3.483669
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.7325923   1.0990549    2.731325
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.3801401   0.7177697    2.653757
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.2336472   0.6282768    2.422317
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              0.9608645   0.3541751    2.606791
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.6384462   0.6996975    3.836667
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.3567689   0.6957351    2.645866
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.3570496   0.7018121    2.624041
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.2173397   0.5353978    2.767878
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.0922330   0.4058292    2.939593
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              1.1001778   1.0000096    1.210380
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.0791730   0.9723529    1.197728
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.0847385   0.9905103    1.187931
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1156536   1.0288034    1.209836
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              0.7038719   0.3690747    1.342372
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              1.3855622   0.7417204    2.588284
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              1.8007831   1.2655071    2.562467
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.4127547   0.9983537    1.999167
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              0.8527065   0.6495649    1.119378
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.8854512   0.6914056    1.133957
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1103836   0.9683636    1.273232
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              0.9892255   0.8576756    1.140953
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
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              3.6045918   1.5251318    8.519318
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.9485816   0.7661667    4.955802
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000    1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              2.0996732   0.7988343    5.518826
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.2942828   0.7632538    2.194772
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000    1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              2.2049689   1.0654565    4.563197
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.5910364   0.6898684    3.669391
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.4166257   1.0812989    1.855943
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.3806408   1.0629102    1.793349
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9037786   0.3952360    2.066653
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.3908269   0.1292899    1.181420
6-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Low                  High              9.5211577   3.9038372   23.221369
6-24 months   ki1135781-COHORTS          INDIA                          Medium               High              4.3470847   1.7701456   10.675475
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.8027587   1.2539682    2.591724
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.6017806   1.1096550    2.312161
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.3309213   1.0570030    1.675825
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.2295923   0.9580863    1.578039


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0115440   -0.0464384   0.0695264
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0307324   -0.0202124   0.0816771
0-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0162462   -0.0485265   0.0810189
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0769749    0.0440844   0.1098654
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0485993    0.0067135   0.0904852
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0203861   -0.0015131   0.0422853
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0286710    0.0026207   0.0547214
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0001971   -0.0166125   0.0170066
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1410510    0.0714192   0.2106827
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0065116   -0.0010312   0.0140543
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0068248    0.0033692   0.0102804
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0029461   -0.0306056   0.0247134
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0515405    0.0343970   0.0686840
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0117000   -0.0018759   0.0252759
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0047920    0.0005230   0.0090611
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0280132   -0.0174104   0.0734368
0-6 months    ki1000108-IRC              INDIA                          High                 NA                 0.0116257   -0.0540040   0.0772554
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0289671    0.0105758   0.0473584
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0170910   -0.0166864   0.0508684
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0073860   -0.0124915   0.0272636
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0110710   -0.0128074   0.0349493
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0134891   -0.0446046   0.0715829
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0058525   -0.0003059   0.0120110
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0026976    0.0002400   0.0051552
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0007069   -0.0288018   0.0273879
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0240106    0.0092901   0.0387311
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0053683   -0.0144602   0.0037236
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0023683   -0.0009648   0.0057013
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0108087   -0.0208939   0.0425113
6-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0230920   -0.0090432   0.0552273
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0625421    0.0394497   0.0856345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0486596    0.0179613   0.0793579
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0081991   -0.0056758   0.0220739
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0939127    0.0255722   0.1622532
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0055796    0.0023637   0.0087956
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0080161   -0.0275357   0.0115035
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0305664    0.0235113   0.0376215
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0200056    0.0080410   0.0319702
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0055860    0.0013349   0.0098370


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.1269841   -0.8088255   0.5786455
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.1206650   -0.1032702   0.2991471
0-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0475780   -0.1622681   0.2195367
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.5222557    0.3107629   0.6688518
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.3094487   -0.0094417   0.5275992
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.3397682   -0.1256813   0.6127625
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.3292825   -0.0348340   0.5652811
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0029760   -0.2861107   0.2270830
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.5415995    0.1923141   0.7398358
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0840583   -0.0118115   0.1708445
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0745051    0.0361731   0.1113126
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0414329   -0.5131538   0.2832305
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.5003365    0.3085001   0.6389536
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0932632   -0.0212677   0.1949499
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0785811    0.0061996   0.1456908
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.1472695   -0.1264727   0.3544901
0-6 months    ki1000108-IRC              INDIA                          High                 NA                 0.0378297   -0.2012418   0.2293211
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.4359547    0.1831366   0.6105260
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.1898320   -0.2832585   0.4885113
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1782832   -0.4663291   0.5395178
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.1678356   -0.2815279   0.4596313
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1442857   -0.7671143   0.5856256
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0769484   -0.0002559   0.1481937
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0392623    0.0028614   0.0743343
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0116090   -0.5962123   0.3588868
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.3343655    0.0970439   0.5093125
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0774462   -0.2167951   0.0459443
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0572933   -0.0266104   0.1343395
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.1343882   -0.3612271   0.4495527
6-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.3641439   -0.3738866   0.7057159
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.6482909    0.3742772   0.8023098
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.5601030    0.0863807   0.7881947
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1986545   -0.2153224   0.4716180
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.4878474   -0.0103504   0.7403868
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1712209    0.0682202   0.2628358
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.3201102   -1.3687346   0.2642946
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.8209477    0.5757823   0.9244262
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.2989134    0.1016331   0.4528711
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1748650    0.0326260   0.2961898
