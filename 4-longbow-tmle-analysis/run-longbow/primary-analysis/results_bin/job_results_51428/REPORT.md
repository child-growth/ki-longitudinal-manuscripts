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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** sex

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        sex       pers_wast   n_cell       n
------------  -------------------------  -----------------------------  -------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female            0      116     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female            1        9     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male              0      119     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male              1        4     248
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female            0      105     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female            1        2     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Male              0      110     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Male              1        0     217
0-24 months   ki0047075b-MAL-ED          INDIA                          Female            0      125     241
0-24 months   ki0047075b-MAL-ED          INDIA                          Female            1        8     241
0-24 months   ki0047075b-MAL-ED          INDIA                          Male              0       95     241
0-24 months   ki0047075b-MAL-ED          INDIA                          Male              1       13     241
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female            0      110     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female            1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male              0      124     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male              1        4     238
0-24 months   ki0047075b-MAL-ED          PERU                           Female            0      131     284
0-24 months   ki0047075b-MAL-ED          PERU                           Female            1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           Male              0      152     284
0-24 months   ki0047075b-MAL-ED          PERU                           Male              1        1     284
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female            0      139     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female            1        1     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male              0      132     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male              1        1     273
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female            0      128     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female            1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male              0      125     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male              1        0     253
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female            0      179     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female            1        8     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male              0      171     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male              1       15     373
0-24 months   ki1000108-IRC              INDIA                          Female            0      165     410
0-24 months   ki1000108-IRC              INDIA                          Female            1       20     410
0-24 months   ki1000108-IRC              INDIA                          Male              0      197     410
0-24 months   ki1000108-IRC              INDIA                          Male              1       28     410
0-24 months   ki1000109-EE               PAKISTAN                       Female            0      170     377
0-24 months   ki1000109-EE               PAKISTAN                       Female            1       12     377
0-24 months   ki1000109-EE               PAKISTAN                       Male              0      179     377
0-24 months   ki1000109-EE               PAKISTAN                       Male              1       16     377
0-24 months   ki1000109-ResPak           PAKISTAN                       Female            0      109     251
0-24 months   ki1000109-ResPak           PAKISTAN                       Female            1        9     251
0-24 months   ki1000109-ResPak           PAKISTAN                       Male              0      108     251
0-24 months   ki1000109-ResPak           PAKISTAN                       Male              1       25     251
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female            0      566    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female            1       48    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male              0      686    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male              1       66    1366
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female            0      166     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female            1       31     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male              0      144     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male              1       34     375
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female            0      228     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female            1       15     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male              0      259     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male              1       32     534
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female            0      299     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female            1        5     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male              0      326     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male              1       10     640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female            0      358     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female            1       11     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male              0      346     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male              1       15     730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female            0     1053    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female            1       19    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male              0     1055    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male              1       39    2166
0-24 months   ki1101329-Keneba           GAMBIA                         Female            0     1127    2441
0-24 months   ki1101329-Keneba           GAMBIA                         Female            1       55    2441
0-24 months   ki1101329-Keneba           GAMBIA                         Male              0     1182    2441
0-24 months   ki1101329-Keneba           GAMBIA                         Male              1       77    2441
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female            0      133     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female            1        1     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male              0      119     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male              1        3     256
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female            0      732    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female            1       80    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male              0      737    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male              1      120    1669
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female            0      246     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female            1       39     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male              0      261     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male              1       46     592
0-24 months   ki1114097-CMIN             BANGLADESH                     Female            0      102     257
0-24 months   ki1114097-CMIN             BANGLADESH                     Female            1        7     257
0-24 months   ki1114097-CMIN             BANGLADESH                     Male              0      135     257
0-24 months   ki1114097-CMIN             BANGLADESH                     Male              1       13     257
0-24 months   ki1114097-CMIN             BRAZIL                         Female            0       62     119
0-24 months   ki1114097-CMIN             BRAZIL                         Female            1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         Male              0       57     119
0-24 months   ki1114097-CMIN             BRAZIL                         Male              1        0     119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female            0      564    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female            1       16    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male              0      553    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male              1       20    1153
0-24 months   ki1114097-CMIN             PERU                           Female            0      389     830
0-24 months   ki1114097-CMIN             PERU                           Female            1        1     830
0-24 months   ki1114097-CMIN             PERU                           Male              0      436     830
0-24 months   ki1114097-CMIN             PERU                           Male              1        4     830
0-24 months   ki1114097-CONTENT          PERU                           Female            0      106     215
0-24 months   ki1114097-CONTENT          PERU                           Female            1        0     215
0-24 months   ki1114097-CONTENT          PERU                           Male              0      109     215
0-24 months   ki1114097-CONTENT          PERU                           Male              1        0     215
0-24 months   ki1119695-PROBIT           BELARUS                        Female            0     8550   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Female            1       40   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Male              0     7872   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Male              1      119   16581
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female            0     4573    9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female            1       61    9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male              0     4593    9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male              1      106    9333
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female            0      490    1056
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female            1       12    1056
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male              0      530    1056
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male              1       24    1056
0-24 months   ki1135781-COHORTS          INDIA                          Female            0     2511    5705
0-24 months   ki1135781-COHORTS          INDIA                          Female            1      253    5705
0-24 months   ki1135781-COHORTS          INDIA                          Male              0     2644    5705
0-24 months   ki1135781-COHORTS          INDIA                          Male              1      297    5705
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female            0     1276    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female            1       53    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male              0     1391    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male              1       91    2811
0-24 months   ki1148112-LCNI-5           MALAWI                         Female            0      358     719
0-24 months   ki1148112-LCNI-5           MALAWI                         Female            1        2     719
0-24 months   ki1148112-LCNI-5           MALAWI                         Male              0      355     719
0-24 months   ki1148112-LCNI-5           MALAWI                         Male              1        4     719
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female            0     7233   15679
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female            1      425   15679
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male              0     7548   15679
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male              1      473   15679
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female            0     2455    5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female            1      187    5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male              0     2400    5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male              1      239    5281
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female            0      120     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female            1        5     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male              0      121     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male              1        2     248
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female            0      106     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female            1        1     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Male              0      110     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Male              1        0     217
0-6 months    ki0047075b-MAL-ED          INDIA                          Female            0      121     240
0-6 months    ki0047075b-MAL-ED          INDIA                          Female            1       12     240
0-6 months    ki0047075b-MAL-ED          INDIA                          Male              0      100     240
0-6 months    ki0047075b-MAL-ED          INDIA                          Male              1        7     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female            0      109     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female            1        1     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          Male              0      123     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          Male              1        4     237
0-6 months    ki0047075b-MAL-ED          PERU                           Female            0      131     284
0-6 months    ki0047075b-MAL-ED          PERU                           Female            1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           Male              0      153     284
0-6 months    ki0047075b-MAL-ED          PERU                           Male              1        0     284
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female            0      137     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female            1        1     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male              0      132     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male              1        1     271
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female            0      128     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female            1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male              0      125     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male              1        0     253
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female            0      158     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female            1       21     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male              0      150     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male              1       29     358
0-6 months    ki1000108-IRC              INDIA                          Female            0      155     402
0-6 months    ki1000108-IRC              INDIA                          Female            1       25     402
0-6 months    ki1000108-IRC              INDIA                          Male              0      183     402
0-6 months    ki1000108-IRC              INDIA                          Male              1       39     402
0-6 months    ki1000109-EE               PAKISTAN                       Female            0      163     366
0-6 months    ki1000109-EE               PAKISTAN                       Female            1       11     366
0-6 months    ki1000109-EE               PAKISTAN                       Male              0      176     366
0-6 months    ki1000109-EE               PAKISTAN                       Male              1       16     366
0-6 months    ki1000109-ResPak           PAKISTAN                       Female            0      104     240
0-6 months    ki1000109-ResPak           PAKISTAN                       Female            1       10     240
0-6 months    ki1000109-ResPak           PAKISTAN                       Male              0      111     240
0-6 months    ki1000109-ResPak           PAKISTAN                       Male              1       15     240
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female            0       70     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female            1        4     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male              0       88     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male              1        7     169
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female            0      299     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female            1        4     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male              0      324     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male              1       10     637
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female            0      133     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female            1        2     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male              0      112     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male              1        3     250
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female            0     1000    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female            1       16    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male              0     1009    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male              1       36    2061
0-6 months    ki1101329-Keneba           GAMBIA                         Female            0      963    2037
0-6 months    ki1101329-Keneba           GAMBIA                         Female            1       25    2037
0-6 months    ki1101329-Keneba           GAMBIA                         Male              0     1023    2037
0-6 months    ki1101329-Keneba           GAMBIA                         Male              1       26    2037
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female            0      227     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female            1       32     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male              0      250     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male              1       33     542
0-6 months    ki1114097-CMIN             BANGLADESH                     Female            0       92     234
0-6 months    ki1114097-CMIN             BANGLADESH                     Female            1        3     234
0-6 months    ki1114097-CMIN             BANGLADESH                     Male              0      133     234
0-6 months    ki1114097-CMIN             BANGLADESH                     Male              1        6     234
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female            0        4      11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female            1        0      11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male              0        7      11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male              1        0      11
0-6 months    ki1114097-CMIN             PERU                           Female            0      260     558
0-6 months    ki1114097-CMIN             PERU                           Female            1        4     558
0-6 months    ki1114097-CMIN             PERU                           Male              0      286     558
0-6 months    ki1114097-CMIN             PERU                           Male              1        8     558
0-6 months    ki1114097-CONTENT          PERU                           Female            0      106     215
0-6 months    ki1114097-CONTENT          PERU                           Female            1        0     215
0-6 months    ki1114097-CONTENT          PERU                           Male              0      109     215
0-6 months    ki1114097-CONTENT          PERU                           Male              1        0     215
0-6 months    ki1119695-PROBIT           BELARUS                        Female            0     6561   13545
0-6 months    ki1119695-PROBIT           BELARUS                        Female            1      449   13545
0-6 months    ki1119695-PROBIT           BELARUS                        Male              0     5838   13545
0-6 months    ki1119695-PROBIT           BELARUS                        Male              1      697   13545
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female            0      290     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female            1        3     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male              0      306     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male              1       11     610
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female            0      397     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female            1       17     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male              0      404     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male              1       35     853
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female            0       18      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female            1        0      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male              0       26      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male              1        2      46
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female            0      116     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female            1        9     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male              0      119     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male              1        4     248
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Female            0      105     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Female            1        2     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Male              0      110     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Male              1        0     217
6-24 months   ki0047075b-MAL-ED          INDIA                          Female            0      125     241
6-24 months   ki0047075b-MAL-ED          INDIA                          Female            1        8     241
6-24 months   ki0047075b-MAL-ED          INDIA                          Male              0       95     241
6-24 months   ki0047075b-MAL-ED          INDIA                          Male              1       13     241
6-24 months   ki0047075b-MAL-ED          NEPAL                          Female            0      110     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          Female            1        0     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          Male              0      124     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          Male              1        4     238
6-24 months   ki0047075b-MAL-ED          PERU                           Female            0      131     284
6-24 months   ki0047075b-MAL-ED          PERU                           Female            1        0     284
6-24 months   ki0047075b-MAL-ED          PERU                           Male              0      152     284
6-24 months   ki0047075b-MAL-ED          PERU                           Male              1        1     284
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female            0      139     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female            1        1     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male              0      132     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male              1        1     273
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female            0      128     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female            1        0     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male              0      125     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male              1        0     253
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female            0      179     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female            1        8     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male              0      171     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male              1       15     373
6-24 months   ki1000108-IRC              INDIA                          Female            0      165     410
6-24 months   ki1000108-IRC              INDIA                          Female            1       20     410
6-24 months   ki1000108-IRC              INDIA                          Male              0      197     410
6-24 months   ki1000108-IRC              INDIA                          Male              1       28     410
6-24 months   ki1000109-EE               PAKISTAN                       Female            0      170     377
6-24 months   ki1000109-EE               PAKISTAN                       Female            1       12     377
6-24 months   ki1000109-EE               PAKISTAN                       Male              0      179     377
6-24 months   ki1000109-EE               PAKISTAN                       Male              1       16     377
6-24 months   ki1000109-ResPak           PAKISTAN                       Female            0      109     251
6-24 months   ki1000109-ResPak           PAKISTAN                       Female            1        9     251
6-24 months   ki1000109-ResPak           PAKISTAN                       Male              0      108     251
6-24 months   ki1000109-ResPak           PAKISTAN                       Male              1       25     251
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female            0      566    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female            1       48    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male              0      686    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male              1       66    1366
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female            0      166     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female            1       31     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male              0      144     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male              1       34     375
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female            0      228     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female            1       15     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male              0      259     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male              1       32     534
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female            0      299     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female            1        5     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male              0      326     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male              1       10     640
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female            0      358     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female            1       11     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male              0      346     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male              1       15     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female            0     1053    2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female            1       19    2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male              0     1055    2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male              1       39    2166
6-24 months   ki1101329-Keneba           GAMBIA                         Female            0     1127    2441
6-24 months   ki1101329-Keneba           GAMBIA                         Female            1       55    2441
6-24 months   ki1101329-Keneba           GAMBIA                         Male              0     1182    2441
6-24 months   ki1101329-Keneba           GAMBIA                         Male              1       77    2441
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female            0      133     256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female            1        1     256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male              0      119     256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male              1        3     256
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female            0      732    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female            1       80    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male              0      737    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male              1      120    1669
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female            0      246     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female            1       39     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male              0      261     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male              1       46     592
6-24 months   ki1114097-CMIN             BANGLADESH                     Female            0      102     257
6-24 months   ki1114097-CMIN             BANGLADESH                     Female            1        7     257
6-24 months   ki1114097-CMIN             BANGLADESH                     Male              0      135     257
6-24 months   ki1114097-CMIN             BANGLADESH                     Male              1       13     257
6-24 months   ki1114097-CMIN             BRAZIL                         Female            0       62     119
6-24 months   ki1114097-CMIN             BRAZIL                         Female            1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         Male              0       57     119
6-24 months   ki1114097-CMIN             BRAZIL                         Male              1        0     119
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female            0      564    1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female            1       16    1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male              0      553    1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male              1       20    1153
6-24 months   ki1114097-CMIN             PERU                           Female            0      389     830
6-24 months   ki1114097-CMIN             PERU                           Female            1        1     830
6-24 months   ki1114097-CMIN             PERU                           Male              0      436     830
6-24 months   ki1114097-CMIN             PERU                           Male              1        4     830
6-24 months   ki1114097-CONTENT          PERU                           Female            0      106     215
6-24 months   ki1114097-CONTENT          PERU                           Female            1        0     215
6-24 months   ki1114097-CONTENT          PERU                           Male              0      109     215
6-24 months   ki1114097-CONTENT          PERU                           Male              1        0     215
6-24 months   ki1119695-PROBIT           BELARUS                        Female            0     8550   16581
6-24 months   ki1119695-PROBIT           BELARUS                        Female            1       40   16581
6-24 months   ki1119695-PROBIT           BELARUS                        Male              0     7872   16581
6-24 months   ki1119695-PROBIT           BELARUS                        Male              1      119   16581
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female            0     4573    9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female            1       61    9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male              0     4593    9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male              1      106    9333
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female            0      490    1056
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female            1       12    1056
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male              0      530    1056
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male              1       24    1056
6-24 months   ki1135781-COHORTS          INDIA                          Female            0     2511    5705
6-24 months   ki1135781-COHORTS          INDIA                          Female            1      253    5705
6-24 months   ki1135781-COHORTS          INDIA                          Male              0     2644    5705
6-24 months   ki1135781-COHORTS          INDIA                          Male              1      297    5705
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female            0     1276    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female            1       53    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male              0     1391    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male              1       91    2811
6-24 months   ki1148112-LCNI-5           MALAWI                         Female            0      358     719
6-24 months   ki1148112-LCNI-5           MALAWI                         Female            1        2     719
6-24 months   ki1148112-LCNI-5           MALAWI                         Male              0      355     719
6-24 months   ki1148112-LCNI-5           MALAWI                         Male              1        4     719
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female            0     7233   15679
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female            1      425   15679
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male              0     7548   15679
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male              1      473   15679
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female            0     2455    5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female            1      187    5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male              0     2400    5281
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male              1      239    5281


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
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
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
![](/tmp/3e42e6d3-6bf4-41f9-adb6-c53de9db5d7b/a0fb1da4-8738-4e2f-aa99-60ee583253c6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3e42e6d3-6bf4-41f9-adb6-c53de9db5d7b/a0fb1da4-8738-4e2f-aa99-60ee583253c6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3e42e6d3-6bf4-41f9-adb6-c53de9db5d7b/a0fb1da4-8738-4e2f-aa99-60ee583253c6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3e42e6d3-6bf4-41f9-adb6-c53de9db5d7b/a0fb1da4-8738-4e2f-aa99-60ee583253c6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.0601504   0.0196580   0.1006428
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.1203704   0.0588741   0.1818666
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.0427808   0.0137378   0.0718237
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.0806452   0.0414615   0.1198288
0-24 months   ki1000108-IRC              INDIA                          Female               NA                0.1081081   0.0633081   0.1529081
0-24 months   ki1000108-IRC              INDIA                          Male                 NA                0.1244444   0.0812611   0.1676278
0-24 months   ki1000109-EE               PAKISTAN                       Female               NA                0.0659341   0.0298319   0.1020362
0-24 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.0820513   0.0434804   0.1206222
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                0.0762712   0.0282839   0.1242585
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                 NA                0.1879699   0.1214396   0.2545002
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.0781759   0.0600535   0.0962983
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.0877660   0.0500788   0.1254531
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.1573604   0.1064433   0.2082775
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.1910112   0.1331858   0.2488366
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.0617284   0.0314412   0.0920156
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.1099656   0.0739873   0.1459439
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.0164474   0.0021387   0.0307560
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.0297619   0.0115780   0.0479458
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.0298103   0.0124465   0.0471741
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.0415512   0.0209512   0.0621513
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0177239   0.0098235   0.0256242
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.0356490   0.0246594   0.0466386
0-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.0465313   0.0345210   0.0585416
0-24 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.0611597   0.0479207   0.0743986
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                0.0985222   0.0671712   0.1298731
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 NA                0.1400233   0.0951407   0.1849060
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.1368421   0.0969076   0.1767766
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.1498371   0.1098789   0.1897954
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.0642202   0.0181092   0.1103311
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.0878378   0.0421458   0.1335299
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.0275862   0.0142512   0.0409212
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.0349040   0.0198698   0.0499383
0-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                0.0046566   0.0023223   0.0069909
0-24 months   ki1119695-PROBIT           BELARUS                        Male                 NA                0.0148918   0.0077010   0.0220825
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.0131636   0.0098818   0.0164453
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.0225580   0.0183121   0.0268038
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.0239044   0.0105358   0.0372730
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.0433213   0.0263610   0.0602816
0-24 months   ki1135781-COHORTS          INDIA                          Female               NA                0.0915340   0.0807827   0.1022854
0-24 months   ki1135781-COHORTS          INDIA                          Male                 NA                0.1009861   0.0900954   0.1118767
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.0398796   0.0293575   0.0504017
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.0614035   0.0491788   0.0736282
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.0554975   0.0496589   0.0613361
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.0589702   0.0535129   0.0644275
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.0707797   0.0599729   0.0815865
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.0905646   0.0775939   0.1035353
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                0.0902256   0.0414322   0.1390189
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                 NA                0.0654206   0.0184714   0.1123698
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.1173184   0.0701106   0.1645263
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.1620112   0.1079581   0.2160643
0-6 months    ki1000108-IRC              INDIA                          Female               NA                0.1388889   0.0883046   0.1894732
0-6 months    ki1000108-IRC              INDIA                          Male                 NA                0.1756757   0.1255550   0.2257964
0-6 months    ki1000109-EE               PAKISTAN                       Female               NA                0.0632184   0.0270101   0.0994267
0-6 months    ki1000109-EE               PAKISTAN                       Male                 NA                0.0833333   0.0441856   0.1224811
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                0.0877193   0.0356821   0.1397565
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                 NA                0.1190476   0.0623838   0.1757115
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0157480   0.0080908   0.0234053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.0344498   0.0233892   0.0455103
0-6 months    ki1101329-Keneba           GAMBIA                         Female               NA                0.0253036   0.0155087   0.0350986
0-6 months    ki1101329-Keneba           GAMBIA                         Male                 NA                0.0247855   0.0153749   0.0341961
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.1235521   0.0834389   0.1636653
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.1166078   0.0791798   0.1540358
0-6 months    ki1119695-PROBIT           BELARUS                        Female               NA                0.0640514   0.0391218   0.0889809
0-6 months    ki1119695-PROBIT           BELARUS                        Male                 NA                0.1066565   0.0760276   0.1372853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.0410628   0.0219369   0.0601887
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.0797267   0.0543736   0.1050797
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.0601504   0.0196580   0.1006428
6-24 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.1203704   0.0588741   0.1818666
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.0427808   0.0137378   0.0718237
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.0806452   0.0414615   0.1198288
6-24 months   ki1000108-IRC              INDIA                          Female               NA                0.1081081   0.0633081   0.1529081
6-24 months   ki1000108-IRC              INDIA                          Male                 NA                0.1244444   0.0812611   0.1676278
6-24 months   ki1000109-EE               PAKISTAN                       Female               NA                0.0659341   0.0298319   0.1020362
6-24 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.0820513   0.0434804   0.1206222
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                0.0762712   0.0282839   0.1242585
6-24 months   ki1000109-ResPak           PAKISTAN                       Male                 NA                0.1879699   0.1214396   0.2545002
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.0781759   0.0600535   0.0962983
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.0877660   0.0500788   0.1254531
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.1573604   0.1064433   0.2082775
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.1910112   0.1331858   0.2488366
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.0617284   0.0314412   0.0920156
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.1099656   0.0739873   0.1459439
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.0164474   0.0021387   0.0307560
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.0297619   0.0115780   0.0479458
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.0298103   0.0124465   0.0471741
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.0415512   0.0209512   0.0621513
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0177239   0.0098235   0.0256242
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.0356490   0.0246594   0.0466386
6-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.0465313   0.0345210   0.0585416
6-24 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.0611597   0.0479207   0.0743986
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                0.0985222   0.0671712   0.1298731
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 NA                0.1400233   0.0951407   0.1849060
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.1368421   0.0969076   0.1767766
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.1498371   0.1098789   0.1897954
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.0642202   0.0181092   0.1103311
6-24 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.0878378   0.0421458   0.1335299
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.0275862   0.0142512   0.0409212
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.0349040   0.0198698   0.0499383
6-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                0.0046566   0.0023223   0.0069909
6-24 months   ki1119695-PROBIT           BELARUS                        Male                 NA                0.0148918   0.0077010   0.0220825
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.0131636   0.0098818   0.0164453
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.0225580   0.0183121   0.0268038
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.0239044   0.0105358   0.0372730
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.0433213   0.0263610   0.0602816
6-24 months   ki1135781-COHORTS          INDIA                          Female               NA                0.0915340   0.0807827   0.1022854
6-24 months   ki1135781-COHORTS          INDIA                          Male                 NA                0.1009861   0.0900954   0.1118767
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.0398796   0.0293575   0.0504017
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.0614035   0.0491788   0.0736282
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.0554975   0.0496589   0.0613361
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.0589702   0.0535129   0.0644275
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.0707797   0.0599729   0.0815865
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.0905646   0.0775939   0.1035353


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0871369   0.0514552   0.1228187
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0616622   0.0372186   0.0861058
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.0742706   0.0477670   0.1007741
0-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1354582   0.0930379   0.1778785
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0834553   0.0601989   0.1067118
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1733333   0.1349698   0.2116969
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0880150   0.0639627   0.1120673
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0234375   0.0117074   0.0351676
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0267775   0.0199775   0.0335775
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0540762   0.0451022   0.0630502
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1198322   0.0943748   0.1452897
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1435811   0.1153098   0.1718524
0-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0778210   0.0450051   0.1106369
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0312229   0.0211797   0.0412661
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0095893   0.0052864   0.0138922
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0178935   0.0152039   0.0205831
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0340909   0.0231410   0.0450408
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0964067   0.0887472   0.1040661
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0572741   0.0531873   0.0613609
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0806665   0.0720540   0.0892791
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0791667   0.0449364   0.1133970
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1396648   0.1037072   0.1756225
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.0737705   0.0469540   0.1005870
0-6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1041667   0.0654385   0.1428949
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0252305   0.0184583   0.0320026
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0250368   0.0182504   0.0318233
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1199262   0.0925504   0.1473020
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0846069   0.0570929   0.1121208
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0609613   0.0448957   0.0770269
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0871369   0.0514552   0.1228187
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0616622   0.0372186   0.0861058
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.0742706   0.0477670   0.1007741
6-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1354582   0.0930379   0.1778785
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0834553   0.0601989   0.1067118
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1733333   0.1349698   0.2116969
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0880150   0.0639627   0.1120673
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0234375   0.0117074   0.0351676
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0267775   0.0199775   0.0335775
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0540762   0.0451022   0.0630502
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1198322   0.0943748   0.1452897
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1435811   0.1153098   0.1718524
6-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0778210   0.0450051   0.1106369
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0312229   0.0211797   0.0412661
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0095893   0.0052864   0.0138922
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0178935   0.0152039   0.0205831
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0340909   0.0231410   0.0450408
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0964067   0.0887472   0.1040661
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0572741   0.0531873   0.0613609
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0806665   0.0720540   0.0892791


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            2.0011574   0.8595278   4.659106
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.8850805   0.8180218   4.344051
0-24 months   ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          Male                 Female            1.1511111   0.6704712   1.976307
0-24 months   ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE               PAKISTAN                       Male                 Female            1.2444444   0.6047338   2.560865
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                 Female            2.4644946   1.1973330   5.072719
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            1.1226729   0.7109206   1.772904
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.2138456   0.7793349   1.890614
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.7814433   0.9877665   3.212845
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.8095236   0.6249935   5.239056
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.3938555   0.6486737   2.995085
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            2.0113537   1.1698166   3.458272
0-24 months   ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         Male                 Female            1.3143765   0.9384702   1.840853
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 Female            1.4212368   0.8801757   2.294899
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.0949637   0.7374161   1.625874
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            1.3677606   0.5635671   3.319514
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.2652705   0.6622111   2.417521
0-24 months   ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Male                 Female            3.1980040   2.0369867   5.020764
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.7136677   1.2539013   2.342016
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.8122744   0.9156815   3.586769
0-24 months   ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Male                 Female            1.1032627   0.9406498   1.293987
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.5397219   1.1063554   2.142841
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.0625737   0.9267332   1.218326
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.2795278   1.0423268   1.570708
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                 Female            0.7250779   0.2952078   1.780908
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.3809524   0.8187773   2.329119
0-6 months    ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          Male                 Female            1.2648649   0.7963758   2.008955
0-6 months    ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE               PAKISTAN                       Male                 Female            1.3181818   0.6284435   2.764931
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                 Female            1.3571429   0.6343277   2.903605
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            2.1875598   1.2215434   3.917518
0-6 months    ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         Male                 Female            0.9795234   0.5695505   1.684602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 Female            0.9437942   0.5978647   1.489881
0-6 months    ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Male                 Female            1.6651711   1.4463787   1.917060
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.9415783   1.1046476   3.412605
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            2.0011574   0.8595278   4.659106
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.8850805   0.8180218   4.344051
6-24 months   ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          Male                 Female            1.1511111   0.6704712   1.976307
6-24 months   ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE               PAKISTAN                       Male                 Female            1.2444444   0.6047338   2.560865
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1000109-ResPak           PAKISTAN                       Male                 Female            2.4644946   1.1973330   5.072719
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            1.1226729   0.7109206   1.772904
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.2138456   0.7793349   1.890614
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.7814433   0.9877665   3.212845
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.8095236   0.6249935   5.239056
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.3938555   0.6486737   2.995085
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            2.0113537   1.1698166   3.458272
6-24 months   ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         Male                 Female            1.3143765   0.9384702   1.840853
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 Female            1.4212368   0.8801757   2.294899
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.0949637   0.7374161   1.625874
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            1.3677606   0.5635671   3.319514
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.2652705   0.6622111   2.417521
6-24 months   ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        Male                 Female            3.1980040   2.0369867   5.020764
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.7136677   1.2539013   2.342016
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.8122744   0.9156815   3.586769
6-24 months   ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Male                 Female            1.1032627   0.9406498   1.293987
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.5397219   1.1063554   2.142841
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.0625737   0.9267332   1.218326
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.2795278   1.0423268   1.570708


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0269866   -0.0062264   0.0601995
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0188814   -0.0055159   0.0432788
0-24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0089651   -0.0251914   0.0431215
0-24 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0083365   -0.0190018   0.0356748
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0591870    0.0151745   0.1031995
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0052794   -0.0163323   0.0268912
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0159729   -0.0206386   0.0525845
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0262866    0.0005773   0.0519959
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0069901   -0.0051685   0.0191488
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0058061   -0.0075240   0.0191363
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0090536    0.0022071   0.0159001
0-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0075449   -0.0016791   0.0167689
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0213101   -0.0078967   0.0505169
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0067390   -0.0225617   0.0360397
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0136008   -0.0238096   0.0510112
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0036367   -0.0063526   0.0136260
0-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.0049327    0.0019579   0.0079075
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0047299    0.0020264   0.0074334
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0101865   -0.0011581   0.0215311
0-24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0048727   -0.0030174   0.0127628
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0113477    0.0028348   0.0198606
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0017765   -0.0022158   0.0057688
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0098868    0.0016370   0.0181367
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0110589   -0.0412879   0.0191701
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0223464   -0.0136113   0.0583040
0-6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0203151   -0.0190506   0.0596807
0-6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0105521   -0.0174408   0.0385450
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0164474   -0.0239911   0.0568858
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0094824    0.0026496   0.0163153
0-6 months    ki1101329-Keneba           GAMBIA                         Female               NA                -0.0002668   -0.0072618   0.0067281
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0036259   -0.0322735   0.0250216
0-6 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.0205555    0.0157111   0.0254000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0198985    0.0035026   0.0362944
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0269866   -0.0062264   0.0601995
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0188814   -0.0055159   0.0432788
6-24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0089651   -0.0251914   0.0431215
6-24 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0083365   -0.0190018   0.0356748
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0591870    0.0151745   0.1031995
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0052794   -0.0163323   0.0268912
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0159729   -0.0206386   0.0525845
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0262866    0.0005773   0.0519959
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0069901   -0.0051685   0.0191488
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0058061   -0.0075240   0.0191363
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0090536    0.0022071   0.0159001
6-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0075449   -0.0016791   0.0167689
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0213101   -0.0078967   0.0505169
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0067390   -0.0225617   0.0360397
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0136008   -0.0238096   0.0510112
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0036367   -0.0063526   0.0136260
6-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.0049327    0.0019579   0.0079075
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0047299    0.0020264   0.0074334
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0101865   -0.0011581   0.0215311
6-24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0048727   -0.0030174   0.0127628
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0113477    0.0028348   0.0198606
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0017765   -0.0022158   0.0057688
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0098868    0.0016370   0.0181367


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.3097028   -0.1668719   0.5916345
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.3062078   -0.1969410   0.5978519
0-24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0765766   -0.2657912   0.3263416
0-24 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.1122449   -0.3410611   0.4123242
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.4369392    0.0402860   0.6696542
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0632608   -0.2198690   0.2806765
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0921515   -0.1448916   0.2801162
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.2986604   -0.0485677   0.5309055
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.2982456   -0.4260208   0.6546619
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.1630186   -0.3014730   0.4617346
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.3381047    0.0468217   0.5403742
0-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.1395234   -0.0473989   0.2930869
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.1778325   -0.0918924   0.3809286
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0469350   -0.1804539   0.2305223
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.1747706   -0.4689051   0.5363870
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.1164751   -0.2660807   0.3834388
0-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.5143980    0.3192074   0.6536254
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.2643375    0.1029446   0.3966936
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.2988048   -0.1056876   0.5553222
0-24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0505427   -0.0348444   0.1288843
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.2215168    0.0405422   0.3683557
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0310183   -0.0413987   0.0983995
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.1225642    0.0157982   0.2177482
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                -0.1396913   -0.5878942   0.1820007
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.1600000   -0.1380044   0.3799672
0-6 months    ki1000108-IRC              INDIA                          Female               NA                 0.1276042   -0.1567787   0.3420742
0-6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.1430396   -0.3295347   0.4476405
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.1578947   -0.3296152   0.4666568
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.3758328    0.0653954   0.5831556
0-6 months    ki1101329-Keneba           GAMBIA                         Female               NA                -0.0106573   -0.3324594   0.2334264
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0302346   -0.2989848   0.1829132
0-6 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.2429532    0.1759314   0.3045242
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.3264121    0.0148310   0.5394489
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.3097028   -0.1668719   0.5916345
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.3062078   -0.1969410   0.5978519
6-24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0765766   -0.2657912   0.3263416
6-24 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.1122449   -0.3410611   0.4123242
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.4369392    0.0402860   0.6696542
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0632608   -0.2198690   0.2806765
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0921515   -0.1448916   0.2801162
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.2986604   -0.0485677   0.5309055
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.2982456   -0.4260208   0.6546619
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.1630186   -0.3014730   0.4617346
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.3381047    0.0468217   0.5403742
6-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.1395234   -0.0473989   0.2930869
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.1778325   -0.0918924   0.3809286
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0469350   -0.1804539   0.2305223
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.1747706   -0.4689051   0.5363870
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.1164751   -0.2660807   0.3834388
6-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.5143980    0.3192074   0.6536254
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.2643375    0.1029446   0.3966936
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.2988048   -0.1056876   0.5553222
6-24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0505427   -0.0348444   0.1288843
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.2215168    0.0405422   0.3683557
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0310183   -0.0413987   0.0983995
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.1225642    0.0157982   0.2177482
