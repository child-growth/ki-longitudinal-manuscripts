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

**Intervention Variable:** birthwt

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        birthwt                       stunted   n_cell       n
----------  -------------------------  -----------------------------  ---------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          0      186     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          1       16     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                    0       24     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                    1       31     257
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          0      168     191
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          1       15     191
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birth weight                    0        2     191
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birth weight                    1        6     191
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          0      154     206
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          1       18     206
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight                    0       19     206
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight                    1       15     206
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          0      148     173
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          1        7     173
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight                    0        7     173
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight                    1       11     173
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight          0      251     287
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight          1       18     287
Birth       ki0047075b-MAL-ED          PERU                           Low birth weight                    0        2     287
Birth       ki0047075b-MAL-ED          PERU                           Low birth weight                    1       16     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          0      227     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          1       17     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                    0        7     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                    1       11     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      104     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1       12     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                    0        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                    1        6     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0       70      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1       10      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                    0        4      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                    1        6      90
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight          0      294     386
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight          1       26     386
Birth       ki1000108-IRC              INDIA                          Low birth weight                    0       47     386
Birth       ki1000108-IRC              INDIA                          Low birth weight                    1       19     386
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight          0        1       2
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight          1        1       2
Birth       ki1000109-EE               PAKISTAN                       Low birth weight                    0        0       2
Birth       ki1000109-EE               PAKISTAN                       Low birth weight                    1        0       2
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          0        5       7
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          1        1       7
Birth       ki1000109-ResPak           PAKISTAN                       Low birth weight                    0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       Low birth weight                    1        1       7
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          0      125     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          1       22     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                    0       16     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                    1       24     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          0       21      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                    0        6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                    1        1      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          0       17      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          1        2      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                    0        5      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                    1        3      27
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight          0     1360    1541
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight          1       41    1541
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight                    0       99    1541
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight                    1       41    1541
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          0        5      13
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     Low birth weight                    0        2      13
Birth       ki1114097-CMIN             BANGLADESH                     Low birth weight                    1        6      13
Birth       ki1114097-CMIN             BRAZIL                         Normal or high birthweight          0      105     115
Birth       ki1114097-CMIN             BRAZIL                         Normal or high birthweight          1        2     115
Birth       ki1114097-CMIN             BRAZIL                         Low birth weight                    0        5     115
Birth       ki1114097-CMIN             BRAZIL                         Low birth weight                    1        3     115
Birth       ki1114097-CMIN             PERU                           Normal or high birthweight          0       10      10
Birth       ki1114097-CMIN             PERU                           Normal or high birthweight          1        0      10
Birth       ki1114097-CMIN             PERU                           Low birth weight                    0        0      10
Birth       ki1114097-CMIN             PERU                           Low birth weight                    1        0      10
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight          0        2       2
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight          1        0       2
Birth       ki1114097-CONTENT          PERU                           Low birth weight                    0        0       2
Birth       ki1114097-CONTENT          PERU                           Low birth weight                    1        0       2
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight          0    13851   13884
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight          1       33   13884
Birth       ki1119695-PROBIT           BELARUS                        Low birth weight                    0        0   13884
Birth       ki1119695-PROBIT           BELARUS                        Low birth weight                    1        0   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0    11231   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1      698   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                    0     1167   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                    1      734   13830
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          0      695     784
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          1       22     784
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight                    0       43     784
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight                    1       24     784
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight          0     5059    6638
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight          1      209    6638
Birth       ki1135781-COHORTS          INDIA                          Low birth weight                    0      787    6638
Birth       ki1135781-COHORTS          INDIA                          Low birth weight                    1      583    6638
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          0     2643    3004
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          1       66    3004
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight                    0      181    3004
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight                    1      114    3004
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          0    10315   19612
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          1      979   19612
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                    0     2960   19612
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                    1     5358   19612
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          0      488     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          1       63     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                    0       87     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                    1      184     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          0      163     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          1       24     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                    0       29     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                    1       19     235
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          0      194     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          1        5     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                    0        9     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                    1        1     209
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          0      161     229
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          1       32     229
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight                    0       26     229
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight                    1       10     229
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          0      202     229
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          1        6     229
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight                    0       16     229
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight                    1        5     229
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight          0      207     270
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight          1       46     270
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight                    0        5     270
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight                    1       12     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          0      193     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          1       45     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                    0       11     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                    1        5     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      103     126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1       17     126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                    0        2     126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                    1        4     126
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0      243     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1       84     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                    0       15     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                    1       27     369
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight          0      268     405
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight          1       71     405
6 months    ki1000108-IRC              INDIA                          Low birth weight                    0       38     405
6 months    ki1000108-IRC              INDIA                          Low birth weight                    1       28     405
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight          0      146     372
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight          1       97     372
6 months    ki1000109-EE               PAKISTAN                       Low birth weight                    0       33     372
6 months    ki1000109-EE               PAKISTAN                       Low birth weight                    1       96     372
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          0       10      17
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          1        5      17
6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                    0        0      17
6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                    1        2      17
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          0      803    1326
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          1      200    1326
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                    0      146    1326
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                    1      177    1326
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          0       98     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          1       20     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                    0       35     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                    1       25     178
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          0      402     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          1       42     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                    0       87     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                    1       52     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          0      467     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          1       78     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                    0       98     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                    1       72     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0     1770    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1      174    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                    0       47    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                    1       20    2011
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight          0     1390    1725
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight          1      181    1725
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight                    0       91    1725
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight                    1       63    1725
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          0        0       1
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          1        0       1
6 months    ki1114097-CMIN             BANGLADESH                     Low birth weight                    0        0       1
6 months    ki1114097-CMIN             BANGLADESH                     Low birth weight                    1        1       1
6 months    ki1114097-CMIN             BRAZIL                         Normal or high birthweight          0       91     104
6 months    ki1114097-CMIN             BRAZIL                         Normal or high birthweight          1        9     104
6 months    ki1114097-CMIN             BRAZIL                         Low birth weight                    0        3     104
6 months    ki1114097-CMIN             BRAZIL                         Low birth weight                    1        1     104
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight          0        1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight          1        0       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                    0        1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                    1        0       2
6 months    ki1114097-CMIN             PERU                           Normal or high birthweight          0       12      14
6 months    ki1114097-CMIN             PERU                           Normal or high birthweight          1        1      14
6 months    ki1114097-CMIN             PERU                           Low birth weight                    0        1      14
6 months    ki1114097-CMIN             PERU                           Low birth weight                    1        0      14
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight          0        2       2
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight          1        0       2
6 months    ki1114097-CONTENT          PERU                           Low birth weight                    0        0       2
6 months    ki1114097-CONTENT          PERU                           Low birth weight                    1        0       2
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight          0    14773   15761
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight          1      988   15761
6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                    0        0   15761
6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                    1        0   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0     6291    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1      944    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                    0      602    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                    1      428    8265
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          0      446     771
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          1      257     771
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight                    0       16     771
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight                    1       52     771
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight          0     4360    6261
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight          1      645    6261
6 months    ki1135781-COHORTS          INDIA                          Low birth weight                    0      741    6261
6 months    ki1135781-COHORTS          INDIA                          Low birth weight                    1      515    6261
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          0     1979    2666
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          1      439    2666
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                    0      125    2666
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                    1      123    2666
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          0     9160   16740
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          1     1500   16740
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                    0     3371   16740
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                    1     2709   16740
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          0     2494    4041
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          1      510    4041
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                    0      539    4041
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                    1      498    4041
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          0       97     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          1       68     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                    0       16     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                    1       27     208
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          0      155     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          1        6     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                    0        8     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                    1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          0      111     220
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          1       74     220
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                    0       18     220
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                    1       17     220
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          0      165     221
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          1       36     221
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                    0       11     221
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                    1        9     221
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight          0      123     198
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight          1       63     198
24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                    0        2     198
24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                    1       10     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          0      144     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          1       80     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                    0       10     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                    1        4     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0       40     108
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1       63     108
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                    0        1     108
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                    1        4     108
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0      100     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1      229     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                    0        6     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                    1       37     372
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight          0      211     407
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight          1      128     407
24 months   ki1000108-IRC              INDIA                          Low birth weight                    0       27     407
24 months   ki1000108-IRC              INDIA                          Low birth weight                    1       41     407
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          0       46     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          1       40     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                    0        9     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                    1       42     137
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          0      318     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          1      120     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                    0       69     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                    1       70     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          0      315     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          1       73     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                    0       67     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                    1       59     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                    0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                    1        0       6
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight          0      891    1436
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight          1      413    1436
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                    0       53    1436
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                    1       79    1436
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          0        0       1
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          1        0       1
24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                    0        0       1
24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                    1        1       1
24 months   ki1114097-CMIN             PERU                           Normal or high birthweight          0        3       4
24 months   ki1114097-CMIN             PERU                           Normal or high birthweight          1        0       4
24 months   ki1114097-CMIN             PERU                           Low birth weight                    0        0       4
24 months   ki1114097-CMIN             PERU                           Low birth weight                    1        1       4
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight          0        2       2
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight          1        0       2
24 months   ki1114097-CONTENT          PERU                           Low birth weight                    0        0       2
24 months   ki1114097-CONTENT          PERU                           Low birth weight                    1        0       2
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight          0     3691    4035
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight          1      344    4035
24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                    0        0    4035
24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                    1        0    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0      140     455
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1      222     455
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                    0       19     455
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                    1       74     455
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          0      132     653
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          1      460     653
24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                    0        3     653
24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                    1       58     653
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight          0     2326    4861
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight          1     1623    4861
24 months   ki1135781-COHORTS          INDIA                          Low birth weight                    0      297    4861
24 months   ki1135781-COHORTS          INDIA                          Low birth weight                    1      615    4861
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          0      888    2406
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          1     1306    2406
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                    0       38    2406
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                    1      174    2406
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          0     3234    8584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          1     2127    8584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                    0     1136    8584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                    1     2087    8584
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          0     1991    4010
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          1      964    4010
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                    0      453    4010
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                    1      602    4010


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

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




# Results Detail

## Results Plots
![](/tmp/4e2594a9-1056-4fdf-ac6b-deb6ae672044/21f65b9b-d352-46a7-bd33-5d5eb8fb91e6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4e2594a9-1056-4fdf-ac6b-deb6ae672044/21f65b9b-d352-46a7-bd33-5d5eb8fb91e6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4e2594a9-1056-4fdf-ac6b-deb6ae672044/21f65b9b-d352-46a7-bd33-5d5eb8fb91e6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4e2594a9-1056-4fdf-ac6b-deb6ae672044/21f65b9b-d352-46a7-bd33-5d5eb8fb91e6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.0790404   0.0417292   0.1163516
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.5801713   0.4442596   0.7160829
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1050364   0.0591642   0.1509086
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.4606238   0.2843679   0.6368797
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.0451613   0.0123752   0.0779474
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                0.6111111   0.3852489   0.8369733
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.0696721   0.0376662   0.1016781
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                0.6111111   0.3854716   0.8367506
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0814674   0.0514832   0.1114516
Birth       ki1000108-IRC              INDIA                          Low birth weight             NA                0.2869970   0.1750447   0.3989492
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.1481763   0.0875034   0.2088492
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.5889543   0.4350768   0.7428319
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0292977   0.0204502   0.0381451
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.2959203   0.2176213   0.3742193
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0583124   0.0541032   0.0625215
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.3903588   0.3680421   0.4126755
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0306231   0.0179238   0.0433224
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.3856899   0.2714508   0.4999289
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0396331   0.0343573   0.0449090
Birth       ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.4282500   0.4020181   0.4544820
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0241445   0.0183578   0.0299312
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.3933893   0.3363931   0.4503855
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0867736   0.0806337   0.0929135
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.6449378   0.6334906   0.6563850
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.1154377   0.0879335   0.1429419
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.6828409   0.6203421   0.7453397
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1285915   0.0800697   0.1771132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.3782016   0.2321743   0.5242289
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1650232   0.1123971   0.2176493
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.2546106   0.1075918   0.4016293
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.0288462   0.0060504   0.0516419
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                0.2380952   0.0555315   0.4206590
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.1818182   0.1342039   0.2294325
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight             NA                0.7058824   0.4888842   0.9228805
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.1890756   0.1392303   0.2389209
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                0.3125000   0.0849347   0.5400653
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.2573704   0.2098961   0.3048447
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.6243782   0.4725057   0.7762507
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.2070824   0.1638064   0.2503585
6 months    ki1000108-IRC              INDIA                          Low birth weight             NA                0.4387207   0.3144624   0.5629790
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.3895572   0.3277478   0.4513666
6 months    ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.7520432   0.6743242   0.8297622
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.1982248   0.1804465   0.2160030
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.5513322   0.5076965   0.5949679
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1615295   0.0947215   0.2283375
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.4319467   0.3060743   0.5578191
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0950823   0.0674893   0.1226754
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.3731404   0.2917970   0.4544838
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.1400205   0.1106028   0.1694383
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.4104410   0.3363796   0.4845024
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0894772   0.0767856   0.1021688
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.2821308   0.1757796   0.3884819
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1148666   0.0990925   0.1306407
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.4090789   0.3311784   0.4869794
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.1299667   0.1222075   0.1377258
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.4244931   0.3947069   0.4542793
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.3654411   0.3298045   0.4010777
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.7621704   0.6551503   0.8691905
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.1281773   0.1189064   0.1374482
6 months    ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.4178762   0.3906321   0.4451203
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1805249   0.1651809   0.1958689
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.5141394   0.4509924   0.5772863
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.1402228   0.1326060   0.1478396
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.4489031   0.4350434   0.4627628
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.1688577   0.1529703   0.1847451
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.4857276   0.4491303   0.5223249
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.4124129   0.3367577   0.4880681
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.6270862   0.4771298   0.7770427
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.4026484   0.3320244   0.4732725
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.4918471   0.3150594   0.6686348
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.1791045   0.1259754   0.2322335
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                0.4500000   0.2314728   0.6685272
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.6960486   0.6462799   0.7458174
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.8604651   0.7567585   0.9641717
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.3761364   0.3243663   0.4279065
24 months   ki1000108-IRC              INDIA                          Low birth weight             NA                0.5936685   0.4725293   0.7148078
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.4651163   0.3593127   0.5709198
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.8235294   0.7185197   0.9285391
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.2706487   0.2289010   0.3123964
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.5169682   0.4312650   0.6026713
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.1860362   0.1471974   0.2248751
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.4728243   0.3855723   0.5600763
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.3170157   0.2917175   0.3423139
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.5918467   0.5073102   0.6763833
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.6126091   0.5623258   0.6628923
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.7867230   0.7038541   0.8695919
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.4095813   0.3942986   0.4248640
24 months   ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.6796957   0.6496539   0.7097376
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.5934177   0.5729033   0.6139320
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.8222604   0.7713373   0.8731836
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.3958583   0.3801020   0.4116146
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.6517485   0.6334101   0.6700868
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.3260320   0.3051684   0.3468956
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.5706775   0.5346189   0.6067362


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1828794   0.1355257   0.2302330
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1601942   0.1099849   0.2104035
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1040462   0.0584174   0.1496751
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1068702   0.0693890   0.1443514
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1165803   0.0845240   0.1486366
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2459893   0.1594019   0.3325767
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0532122   0.0420018   0.0644226
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1035430   0.0984652   0.1086208
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0586735   0.0422124   0.0751345
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1193130   0.1115144   0.1271117
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0599201   0.0514314   0.0684088
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3231185   0.3154668   0.3307702
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3004866   0.2649179   0.3360553
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1829787   0.1334386   0.2325189
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1834061   0.1331729   0.2336393
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.0480349   0.0202781   0.0757918
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2148148   0.1657364   0.2638932
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1968504   0.1478551   0.2458457
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2444444   0.2025380   0.2863509
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.5188172   0.4679751   0.5696593
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2843137   0.2660295   0.3025980
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2528090   0.1887805   0.3168375
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0964694   0.0835627   0.1093762
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1414493   0.1249994   0.1578992
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1660012   0.1579791   0.1740234
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4007782   0.3661645   0.4353920
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1852739   0.1756495   0.1948983
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2108027   0.1953170   0.2262884
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2514337   0.2433229   0.2595445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2494432   0.2333112   0.2655752
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4567308   0.3888728   0.5245887
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4136364   0.3484106   0.4788621
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2036199   0.1504082   0.2568316
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7150538   0.6691221   0.7609854
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4152334   0.3673018   0.4631651
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5985401   0.5161555   0.6809248
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3426184   0.3180636   0.3671732
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6505495   0.6066910   0.6944079
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4603991   0.4463860   0.4744122
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6151288   0.5956828   0.6345749
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4909133   0.4777460   0.5040806
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3905237   0.3718471   0.4092003


### Parameter: RR


agecat      studyid                    country                        intervention_level           baseline_level                 estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight     7.340187    4.3253136   12.456519
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight     4.385374    2.4523228    7.842160
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight    13.531746    5.9918281   30.559645
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight     8.771242    4.8651927   15.813286
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight     3.522844    2.0608290    6.022058
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight     3.974686    3.2578992    4.849176
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    10.100468    6.7575158   15.097183
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight     6.694272    6.1054818    7.339843
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    12.594729    7.5707054   20.952764
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    10.805351    9.3330019   12.509974
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    16.293136   12.3146078   21.557024
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight     7.432421    6.9198481    7.982962
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight     5.915233    4.5726391    7.652031
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight     2.941110    1.7081849    5.063929
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight     1.542877    0.7970429    2.986628
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight     8.253968    2.7444706   24.823729
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight     3.882353    2.5924545    5.814052
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight     1.652778    0.7618528    3.585567
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight     2.425991    1.7868833    3.293685
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight     2.118580    1.4905616    3.011203
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight     1.930508    1.5968171    2.333931
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight     2.781349    2.5111012    3.080681
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight     2.674104    1.6218084    4.409173
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight     3.924392    2.7273432    5.646833
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight     2.931292    2.2222772    3.866517
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight     3.153102    2.1084538    4.715327
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight     3.561339    2.8182097    4.500423
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight     3.266170    2.9793684    3.580579
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight     2.085618    1.7576699    2.474754
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight     3.260142    2.9583705    3.592697
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight     2.848025    2.4535526    3.305919
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight     3.201357    3.0197824    3.393849
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight     2.876550    2.5484815    3.246851
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight     1.520530    1.1250874    2.054962
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight     1.221530    0.8191555    1.821553
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight     2.512500    1.4222349    4.438547
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight     1.236214    1.0745651    1.422180
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight     1.578333    1.2337962    2.019082
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight     1.770588    1.3641527    2.298117
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight     1.910108    1.5228920    2.395778
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight     2.541571    1.9258807    3.354093
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight     1.866932    1.5862427    2.197290
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight     1.284217    1.1226723    1.469007
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight     1.659489    1.5671946    1.757219
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight     1.385635    1.2913258    1.486833
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight     1.646419    1.5728371    1.723442
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight     1.750373    1.6023518    1.912068


### Parameter: PAR


agecat      studyid                    country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1038390    0.0656750   0.1420030
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0551578    0.0219084   0.0884072
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.0588850    0.0238029   0.0939670
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.0371981    0.0143680   0.0600282
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0351129    0.0142884   0.0559374
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0978130    0.0674229   0.1282031
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0239145    0.0160366   0.0317925
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0452307    0.0416330   0.0488283
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0280504    0.0162725   0.0398282
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0796799    0.0730141   0.0863457
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0357756    0.0290667   0.0424846
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.2363449    0.2295702   0.2431197
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.1850489    0.1542118   0.2158860
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.0543873    0.0209850   0.0877896
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0183829   -0.0069575   0.0437233
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.0191888    0.0005850   0.0377925
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.0329966    0.0123313   0.0536620
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.0077748   -0.0073579   0.0229075
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0434426    0.0220158   0.0648694
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0373620    0.0151455   0.0595786
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1292600    0.0907085   0.1678115
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0860890    0.0683644   0.1038135
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0912795    0.0412756   0.1412835
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0661526    0.0436502   0.0886551
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0697697    0.0486259   0.0909135
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0069922    0.0029935   0.0109909
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0265827    0.0185538   0.0346116
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0360346    0.0316768   0.0403923
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0353371    0.0229305   0.0477437
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0570966    0.0507041   0.0634892
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0302778    0.0233493   0.0372064
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.1112109    0.1053291   0.1170928
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0805855    0.0691647   0.0920064
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.0443179    0.0083256   0.0803101
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0109879   -0.0181920   0.0401679
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.0245154    0.0017189   0.0473120
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0190051    0.0046729   0.0333373
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0390970    0.0160895   0.0621045
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1334239    0.0707553   0.1960925
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0586407    0.0345767   0.0827048
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0707731    0.0451758   0.0963704
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0256027    0.0166770   0.0345284
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0379404    0.0167040   0.0591768
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0508178    0.0438865   0.0577491
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0217112    0.0161656   0.0272568
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0950550    0.0860637   0.1040463
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0644917    0.0531877   0.0757957


### Parameter: PAF


agecat      studyid                    country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.5678004    0.3723467   0.7023891
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.3443184    0.1303059   0.5056671
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.5659498    0.2429457   0.7511413
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.3480679    0.1383630   0.5067349
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.3011907    0.1186267   0.4459392
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.3976310    0.3335636   0.4555393
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.4494179    0.3200080   0.5541997
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.4368297    0.4076359   0.4645848
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.4780756    0.2986352   0.6116071
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.6678222    0.6282943   0.7031466
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.5970555    0.5132922   0.6664030
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.7314497    0.7144399   0.7474462
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.6158308    0.5308772   0.6854001
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.2972328    0.1045030   0.4484830
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1002307   -0.0473000   0.2269790
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.3994755   -0.0166197   0.6452659
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.1536050    0.0556376   0.2414094
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.0394958   -0.0401773   0.1130663
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1444173    0.0711646   0.2118929
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1528447    0.0586169   0.2376407
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.2491436    0.1683706   0.3220715
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.3027956    0.2456123   0.3556444
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.3610612    0.1422306   0.5240646
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.4102871    0.2731898   0.5215239
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.3325689    0.2317217   0.4201784
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0724810    0.0310261   0.1121623
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1879308    0.1323574   0.2399446
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2170740    0.1918387   0.2415214
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0881712    0.0564680   0.1188092
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.3081741    0.2754895   0.3393842
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1436310    0.1110529   0.1750153
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.4423071    0.4205775   0.4632219
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.3230617    0.2790907   0.3643506
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.0970328    0.0138211   0.1732233
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0265642   -0.0465938   0.0946084
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.1203980    0.0037939   0.2233538
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0265786    0.0060408   0.0466920
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0941567    0.0366545   0.1482266
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.2229155    0.1042131   0.3258884
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.1780826    0.1022339   0.2475232
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.2755861    0.1731840   0.3653056
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0747265    0.0482742   0.1004436
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0583205    0.0245277   0.0909427
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.1103778    0.0950054   0.1254890
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0352954    0.0261066   0.0443974
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.1936289    0.1744941   0.2123202
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.1651416    0.1353741   0.1938842
