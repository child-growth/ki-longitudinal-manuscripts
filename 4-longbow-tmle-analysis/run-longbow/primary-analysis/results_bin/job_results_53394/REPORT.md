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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          0      163     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          1       14     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                     0       24     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                     1       30     231
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          0       55      65
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          1        6      65
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birthweight                     0        1      65
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birthweight                     1        3      65
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          0       34      47
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          1        5      47
Birth       ki0047075b-MAL-ED          INDIA                          Low birthweight                     0        3      47
Birth       ki0047075b-MAL-ED          INDIA                          Low birthweight                     1        5      47
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          0       24      27
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          1        0      27
Birth       ki0047075b-MAL-ED          NEPAL                          Low birthweight                     0        1      27
Birth       ki0047075b-MAL-ED          NEPAL                          Low birthweight                     1        2      27
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight          0      205     233
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight          1       16     233
Birth       ki0047075b-MAL-ED          PERU                           Low birthweight                     0        2     233
Birth       ki0047075b-MAL-ED          PERU                           Low birthweight                     1       10     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          0      109     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          1        6     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                     0        4     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                     1        4     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      102     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1       16     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        0     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        7     125
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0       71      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1       10      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                     0        4      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                     1        7      92
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight          0      292     383
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight          1       25     383
Birth       ki1000108-IRC              INDIA                          Low birthweight                     0       47     383
Birth       ki1000108-IRC              INDIA                          Low birthweight                     1       19     383
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight          0      112     240
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight          1       48     240
Birth       ki1000109-EE               PAKISTAN                       Low birthweight                     0       28     240
Birth       ki1000109-EE               PAKISTAN                       Low birthweight                     1       52     240
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          0       28      42
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          1        7      42
Birth       ki1000109-ResPak           PAKISTAN                       Low birthweight                     0        0      42
Birth       ki1000109-ResPak           PAKISTAN                       Low birthweight                     1        7      42
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          0      793    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          1      121    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                     0      110    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                     1      228    1252
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          0      409     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          1       14     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                     0      102     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                     1       83     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          0      397     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          1        5     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                     0       94     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                     1       43     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          0      519     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          1       41     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                     0      112     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                     1       60     732
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight          0     1269    1529
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight          1       39    1529
Birth       ki1101329-Keneba           GAMBIA                         Low birthweight                     0      177    1529
Birth       ki1101329-Keneba           GAMBIA                         Low birthweight                     1       44    1529
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight          0      453     696
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight          1       23     696
Birth       ki1113344-GMS-Nepal        NEPAL                          Low birthweight                     0      121     696
Birth       ki1113344-GMS-Nepal        NEPAL                          Low birthweight                     1       99     696
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          0       13      26
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          1        1      26
Birth       ki1114097-CMIN             BANGLADESH                     Low birthweight                     0        4      26
Birth       ki1114097-CMIN             BANGLADESH                     Low birthweight                     1        8      26
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight          0        2       2
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight          1        0       2
Birth       ki1114097-CONTENT          PERU                           Low birthweight                     0        0       2
Birth       ki1114097-CONTENT          PERU                           Low birthweight                     1        0       2
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight          0    13857   13890
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight          1       33   13890
Birth       ki1119695-PROBIT           BELARUS                        Low birthweight                     0        0   13890
Birth       ki1119695-PROBIT           BELARUS                        Low birthweight                     1        0   13890
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0    11231   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1      698   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                     0     1167   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                     1      734   13830
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          0      695     784
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          1       22     784
Birth       ki1135781-COHORTS          GUATEMALA                      Low birthweight                     0       43     784
Birth       ki1135781-COHORTS          GUATEMALA                      Low birthweight                     1       24     784
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight          0     5059    6638
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight          1      209    6638
Birth       ki1135781-COHORTS          INDIA                          Low birthweight                     0      787    6638
Birth       ki1135781-COHORTS          INDIA                          Low birthweight                     1      583    6638
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          0     2643    3004
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          1       66    3004
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birthweight                     0      181    3004
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birthweight                     1      114    3004
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          0    11711   22454
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          1     1147   22454
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                     0     3357   22454
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                     1     6239   22454
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          0     1617    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          1      182    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                     0      349    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                     1      675    2823
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          0      165     238
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          1       23     238
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                     0       29     238
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                     1       21     238
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          0      194     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          1        5     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                     0        9     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                     1        1     209
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          0      162     227
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          1       31     227
6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight                     0       26     227
6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight                     1        8     227
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          0      204     229
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          1        6     229
6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight                     0       15     229
6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight                     1        4     229
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight          0      208     270
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight          1       46     270
6 months    ki0047075b-MAL-ED          PERU                           Low birthweight                     0        5     270
6 months    ki0047075b-MAL-ED          PERU                           Low birthweight                     1       11     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          0      193     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          1       45     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                     0       10     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                     1        5     253
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      143     186
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1       34     186
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        2     186
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        7     186
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0      243     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1       84     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                     0       15     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                     1       27     369
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight          0      268     401
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight          1       67     401
6 months    ki1000108-IRC              INDIA                          Low birthweight                     0       38     401
6 months    ki1000108-IRC              INDIA                          Low birthweight                     1       28     401
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight          0      155     372
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight          1       87     372
6 months    ki1000109-EE               PAKISTAN                       Low birthweight                     0       35     372
6 months    ki1000109-EE               PAKISTAN                       Low birthweight                     1       95     372
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          0       18      34
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          1       11      34
6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight                     0        1      34
6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight                     1        4      34
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          0      803    1326
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          1      200    1326
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                     0      146    1326
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                     1      177    1326
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          0      306     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          1       61     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                     0       72     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                     1       79     518
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          0      417     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          1       44     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                     0       91     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                     1       52     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          0      467     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          1       78     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                     0       98     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                     1       72     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0     1770    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1      174    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0       47    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1       20    2011
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight          0     1029    1334
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight          1      117    1334
6 months    ki1101329-Keneba           GAMBIA                         Low birthweight                     0      127    1334
6 months    ki1101329-Keneba           GAMBIA                         Low birthweight                     1       61    1334
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight          0      344     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight          1       53     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                     0       97     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                     1       69     563
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          0        6      12
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          1        3      12
6 months    ki1114097-CMIN             BANGLADESH                     Low birthweight                     0        2      12
6 months    ki1114097-CMIN             BANGLADESH                     Low birthweight                     1        1      12
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight          0        2       2
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight          1        0       2
6 months    ki1114097-CONTENT          PERU                           Low birthweight                     0        0       2
6 months    ki1114097-CONTENT          PERU                           Low birthweight                     1        0       2
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight          0    14773   15761
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight          1      988   15761
6 months    ki1119695-PROBIT           BELARUS                        Low birthweight                     0        0   15761
6 months    ki1119695-PROBIT           BELARUS                        Low birthweight                     1        0   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0     6601    8636
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1      965    8636
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                     0      630    8636
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                     1      440    8636
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          0      446     771
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          1      257     771
6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight                     0       16     771
6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight                     1       52     771
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight          0     4360    6261
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight          1      645    6261
6 months    ki1135781-COHORTS          INDIA                          Low birthweight                     0      741    6261
6 months    ki1135781-COHORTS          INDIA                          Low birthweight                     1      515    6261
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          0     1979    2666
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          1      439    2666
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight                     0      125    2666
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight                     1      123    2666
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          0     7292   14130
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          1     1067   14130
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                     0     3217   14130
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                     1     2554   14130
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          0     2493    4041
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          1      511    4041
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                     0      539    4041
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                     1      498    4041
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          0       94     210
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          1       71     210
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                     0       16     210
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                     1       29     210
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          0      154     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          1        7     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                     0        8     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                     1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          0      109     218
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          1       76     218
24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                     0       18     218
24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                     1       15     218
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          0      163     221
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          1       40     221
24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                     0       11     221
24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                     1        7     221
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight          0      124     199
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight          1       63     199
24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                     0        2     199
24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                     1       10     199
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          0      144     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          1       80     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                     0        9     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                     1        4     237
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0       48     162
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1      106     162
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        1     162
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        7     162
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0       99     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1      229     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                     0        6     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                     1       37     371
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight          0      208     403
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight          1      127     403
24 months   ki1000108-IRC              INDIA                          Low birthweight                     0       27     403
24 months   ki1000108-IRC              INDIA                          Low birthweight                     1       41     403
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight          0       34     167
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight          1       66     167
24 months   ki1000109-EE               PAKISTAN                       Low birthweight                     0       15     167
24 months   ki1000109-EE               PAKISTAN                       Low birthweight                     1       52     167
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          0      150     414
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          1      137     414
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                     0       28     414
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                     1       99     414
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          0      319     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          1      120     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                     0       69     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                     1       70     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          0      315     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          1       73     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                     0       67     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                     1       59     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                     1        0       6
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight          0      646    1056
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight          1      259    1056
24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                     0       69    1056
24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                     1       82    1056
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight          0      211     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight          1      144     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                     0       58     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                     1       74     487
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          0        3      11
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          1        5      11
24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                     0        1      11
24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                     1        2      11
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight          0        2       2
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight          1        0       2
24 months   ki1114097-CONTENT          PERU                           Low birthweight                     0        0       2
24 months   ki1114097-CONTENT          PERU                           Low birthweight                     1        0       2
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight          0     3691    4035
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight          1      344    4035
24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                     0        0    4035
24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                     1        0    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0      991    1635
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1      451    1635
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                     0       78    1635
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                     1      115    1635
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          0      119     650
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          1      470     650
24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                     0        2     650
24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                     1       59     650
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight          0     2020    4858
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight          1     1929    4858
24 months   ki1135781-COHORTS          INDIA                          Low birthweight                     0      244    4858
24 months   ki1135781-COHORTS          INDIA                          Low birthweight                     1      665    4858
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          0      875    2406
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          1     1319    2406
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                     0       38    2406
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                     1      174    2406
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          0     2578    7307
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          1     1663    7307
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                     0     1077    7307
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                     1     1989    7307
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          0     1966    4010
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          1      989    4010
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                     0      444    4010
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                     1      611    4010


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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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




# Results Detail

## Results Plots
![](/tmp/e5ce89db-5a1f-4554-8448-1d5e5cb1aff6/cbd37312-29b8-4f8a-a3bb-807a347ae252/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e5ce89db-5a1f-4554-8448-1d5e5cb1aff6/cbd37312-29b8-4f8a-a3bb-807a347ae252/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e5ce89db-5a1f-4554-8448-1d5e5cb1aff6/cbd37312-29b8-4f8a-a3bb-807a347ae252/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e5ce89db-5a1f-4554-8448-1d5e5cb1aff6/cbd37312-29b8-4f8a-a3bb-807a347ae252/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.0778913   0.0381324   0.1176502
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                0.5809782   0.4425694   0.7193870
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0785872   0.0488296   0.1083448
Birth       ki1000108-IRC              INDIA                          Low birthweight              NA                0.2700510   0.1563605   0.3837415
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.3035171   0.2300960   0.3769383
Birth       ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.6704069   0.5643343   0.7764794
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.1302808   0.0958299   0.1647317
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.6831806   0.6230479   0.7433133
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0328477   0.0158303   0.0498651
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.4527197   0.3807314   0.5247081
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0124378   0.0015937   0.0232819
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.3138686   0.2360885   0.3916487
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0734093   0.0517797   0.0950388
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.3509644   0.2783764   0.4235524
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0301273   0.0208262   0.0394285
Birth       ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.1904426   0.1370460   0.2438393
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0488883   0.0293354   0.0684413
Birth       ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.4404910   0.3738119   0.5071702
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0582985   0.0540908   0.0625063
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.3908460   0.3684379   0.4132541
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0305212   0.0178411   0.0432013
Birth       ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                0.3888854   0.2709361   0.5068347
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0397427   0.0344472   0.0450383
Birth       ki1135781-COHORTS          INDIA                          Low birthweight              NA                0.4255597   0.3990171   0.4521024
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0241500   0.0183646   0.0299355
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                0.3873385   0.3313416   0.4433353
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0894887   0.0837069   0.0952706
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                0.6506825   0.6401382   0.6612268
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.1002891   0.0838413   0.1167370
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.6630111   0.6277869   0.6982354
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1170194   0.0702095   0.1638293
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                0.4870884   0.3399562   0.6342205
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1606218   0.1087048   0.2125387
6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.2352941   0.0923981   0.3781901
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.1811024   0.1336548   0.2285499
6 months    ki0047075b-MAL-ED          PERU                           Low birthweight              NA                0.6875000   0.4599613   0.9150387
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.1890756   0.1392299   0.2389213
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                0.3333333   0.0943013   0.5723654
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.2576137   0.2101662   0.3050612
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.6710689   0.5188754   0.8232625
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1979105   0.1550472   0.2407739
6 months    ki1000108-IRC              INDIA                          Low birthweight              NA                0.4401280   0.3172920   0.5629639
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.3578263   0.2971836   0.4184690
6 months    ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.7339616   0.6570465   0.8108768
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.1982248   0.1804465   0.2160030
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                0.5513322   0.5076965   0.5949679
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1604587   0.1223950   0.1985225
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.5555096   0.4781058   0.6329134
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0958528   0.0686725   0.1230331
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.3789726   0.2995615   0.4583837
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.1413775   0.1119856   0.1707693
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.4319551   0.3570631   0.5068471
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0895025   0.0768115   0.1021935
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.3043977   0.1963986   0.4123969
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1020024   0.0844430   0.1195619
6 months    ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.3258754   0.2599614   0.3917893
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.1304832   0.0971270   0.1638394
6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.4282314   0.3531475   0.5033154
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.1270449   0.1195310   0.1345589
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.4198448   0.3906584   0.4490312
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.3653154   0.3296655   0.4009652
6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                0.7620997   0.6553499   0.8688496
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.1282102   0.1189276   0.1374929
6 months    ki1135781-COHORTS          INDIA                          Low birthweight              NA                0.4188216   0.3916160   0.4460272
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1806724   0.1653229   0.1960219
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                0.5069186   0.4437828   0.5700543
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.1259034   0.1177074   0.1340995
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                0.4468829   0.4322459   0.4615200
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.1692463   0.1533308   0.1851618
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.4849770   0.4484647   0.5214894
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.4259290   0.3497617   0.5020962
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                0.6524494   0.5071963   0.7977025
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.4116457   0.3404713   0.4828202
24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                0.4085162   0.2236073   0.5934251
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.1970443   0.1422024   0.2518863
24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                0.3888889   0.1631692   0.6146086
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.6981707   0.6484247   0.7479168
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.8604651   0.7567581   0.9641721
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.3777143   0.3256621   0.4297665
24 months   ki1000108-IRC              INDIA                          Low birthweight              NA                0.6082580   0.4885028   0.7280132
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.6626928   0.5686891   0.7566964
24 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                0.7794969   0.6783395   0.8806543
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.4754790   0.4175250   0.5334330
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                0.7839197   0.7120058   0.8558336
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.2718207   0.2300382   0.3136032
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                0.5136648   0.4295552   0.5977744
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.1859289   0.1470889   0.2247690
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                0.4740968   0.3865888   0.5616048
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.2859588   0.2564972   0.3154204
24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                0.5377478   0.4568799   0.6186157
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.4033683   0.3523161   0.4544205
24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                0.5714002   0.4872047   0.6555957
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.3118227   0.2878954   0.3357501
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.6047825   0.5350080   0.6745571
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.4874520   0.4719315   0.5029725
24 months   ki1135781-COHORTS          INDIA                          Low birthweight              NA                0.7336238   0.7048777   0.7623699
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.5992168   0.5787498   0.6196837
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                0.8228196   0.7709222   0.8747171
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.3883553   0.3709892   0.4057214
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                0.6548035   0.6359752   0.6736318
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.3341034   0.3132084   0.3549985
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                0.5793124   0.5427550   0.6158699


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1904762   0.1397281   0.2412242
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1148825   0.0829051   0.1468600
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                0.4166667   0.3541635   0.4791698
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2787540   0.2475949   0.3099131
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1595395   0.1304091   0.1886699
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0890538   0.0649864   0.1131212
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1379781   0.1129774   0.1629789
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0542838   0.0429232   0.0656445
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1752874   0.1470202   0.2035545
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1035430   0.0984652   0.1086208
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0586735   0.0422124   0.0751345
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1193130   0.1115144   0.1271117
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0599201   0.0514314   0.0684088
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3289392   0.3215744   0.3363039
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3035778   0.2836422   0.3235133
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1848740   0.1354515   0.2342964
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1718062   0.1226272   0.2209851
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2111111   0.1623431   0.2598792
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1976285   0.1484630   0.2467939
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2369077   0.1952403   0.2785751
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.4892473   0.4383809   0.5401137
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2843137   0.2660295   0.3025980
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2702703   0.2319893   0.3085512
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1589404   0.1297581   0.1881227
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0964694   0.0835627   0.1093762
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1334333   0.1151789   0.1516876
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2166963   0.1826342   0.2507583
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1626911   0.1549064   0.1704758
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4007782   0.3661645   0.4353920
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1852739   0.1756495   0.1948983
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2108027   0.1953170   0.2262884
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2562633   0.2474260   0.2651005
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2496907   0.2335617   0.2658197
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4761905   0.4084806   0.5439003
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4174312   0.3518190   0.4830433
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2126697   0.1585982   0.2667411
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7169811   0.6710815   0.7628807
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4168734   0.3686766   0.4650703
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.7065868   0.6373214   0.7758523
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5700483   0.5223021   0.6177945
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3229167   0.2947011   0.3511322
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4476386   0.4034301   0.4918471
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3461774   0.3231098   0.3692449
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.5339646   0.5199355   0.5479937
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6205320   0.6011383   0.6399257
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4997947   0.4858988   0.5136907
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3990025   0.3802617   0.4177433


### Parameter: RR


agecat      studyid                    country                        intervention_level           baseline_level                  estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight     7.4588325    4.2348019   13.137375
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight     3.4363226    1.9498756    6.055931
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight     2.2087940    1.6530751    2.951331
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight     5.2439089    4.1615954    6.607702
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    13.7823841    8.0202997   23.684166
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    25.2350365   10.1943721   62.466532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight     4.7809262    3.3320736    6.859769
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     6.3212574    4.1629927    9.598454
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     9.0101441    5.8756162   13.816882
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     6.7042170    6.1139233    7.351503
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    12.7414882    7.6275303   21.284153
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    10.7078683    9.2435788   12.404118
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    16.0388290   12.1270760   21.212371
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight     7.2711125    6.8107873    7.762550
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight     6.6109973    5.5622353    7.857504
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight     4.1624586    2.5321486    6.842435
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight     1.4648956    0.7362525    2.914651
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight     3.7961957    2.4890164    5.789878
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight     1.7629630    0.8211707    3.784887
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     2.6049426    1.9434479    3.491592
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight     2.2238734    1.5625669    3.165057
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight     2.0511674    1.6813626    2.502308
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight     2.7813488    2.5111012    3.080681
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     3.4620090    2.6340937    4.550144
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight     3.9536932    2.7751602    5.632716
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight     3.0553323    2.3321279    4.002806
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     3.4009965    2.3217519    4.981918
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     3.1947805    2.4533870    4.160217
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     3.2818895    2.4090689    4.470938
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     3.3046949    3.0170102    3.619811
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     2.0861419    1.7587259    2.474512
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight     3.2666785    2.9645308    3.599622
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight     2.8057333    2.4139150    3.261150
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight     3.5494109    3.3126477    3.803096
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight     2.8655102    2.5379847    3.235303
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight     1.5318267    1.1525234    2.035961
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight     0.9923975    0.6107888    1.612428
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight     1.9736111    1.0368238    3.756801
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     1.2324566    1.0714349    1.417677
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
24 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight     1.6103652    1.2654787    2.049245
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
24 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight     1.1762568    0.9701021    1.426221
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     1.6486947    1.4148456    1.921195
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight     1.8897191    1.5087523    2.366882
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight     2.5498820    1.9323290    3.364799
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     1.8805078    1.5688054    2.254142
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     1.4165719    1.1676783    1.718518
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     1.9395075    1.6889650    2.227216
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight     1.5050175    1.4316037    1.582196
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight     1.3731586    1.2786557    1.474646
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight     1.6860938    1.6023488    1.774216
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight     1.7339315    1.5887320    1.892401


### Parameter: PAR


agecat      studyid                    country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1125849    0.0708261   0.1543436
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0362953    0.0151947   0.0573959
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1131495    0.0642655   0.1620336
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.1484732    0.1272887   0.1696577
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1266918    0.0995765   0.1538070
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0766160    0.0537812   0.0994507
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0645689    0.0450608   0.0840770
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0241565    0.0158405   0.0324725
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.1263990    0.1005297   0.1522683
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0452445    0.0416465   0.0488425
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0281523    0.0163675   0.0399371
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0795703    0.0728977   0.0862430
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0357701    0.0290658   0.0424743
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.2394505    0.2327259   0.2461750
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.2032886    0.1855188   0.2210585
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.0678546    0.0332944   0.1024147
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0111844   -0.0118508   0.0342197
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.0300087    0.0101626   0.0498549
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.0085528   -0.0065226   0.0236282
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0431993    0.0218272   0.0645714
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0389972    0.0164595   0.0615349
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1314210    0.0927554   0.1700866
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0860890    0.0683644   0.1038135
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1098115    0.0802897   0.1393334
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0630876    0.0412523   0.0849228
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0684128    0.0474376   0.0893879
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0069669    0.0029740   0.0109598
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0314309    0.0210029   0.0418588
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0862131    0.0597654   0.1126608
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0356461    0.0314048   0.0398874
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0354628    0.0230610   0.0478646
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0570637    0.0506644   0.0634630
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0301303    0.0232038   0.0370568
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.1303599    0.1233330   0.1373868
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0804444    0.0690039   0.0918848
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.0502615    0.0136232   0.0868997
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0057855   -0.0227304   0.0343013
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.0156253   -0.0045245   0.0357752
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0188104    0.0044666   0.0331542
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0391591    0.0158488   0.0624695
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0438940   -0.0122861   0.1000742
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0945693    0.0625826   0.1265560
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0568990    0.0328385   0.0809595
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0708804    0.0452787   0.0964821
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0369579    0.0239519   0.0499638
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0442703    0.0168451   0.0716955
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0343546    0.0246371   0.0440722
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0465126    0.0398700   0.0531552
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0213152    0.0157883   0.0268422
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.1114394    0.1007858   0.1220930
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0648991    0.0534563   0.0763418


### Parameter: PAF


agecat      studyid                    country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.5910706    0.3831892   0.7288906
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.3159341    0.1281598   0.4632662
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.2715589    0.1430497   0.3807966
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.5326317    0.4359358   0.6127512
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.7941092    0.6691957   0.8718547
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.8603337    0.6824197   0.9385772
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.4679644    0.3356601   0.5739200
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.4450037    0.3065822   0.5557932
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.7210960    0.6021322   0.8044892
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.4369632    0.4077751   0.4647127
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.4798127    0.3004449   0.6131902
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.6669039    0.6272078   0.7023730
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.5969625    0.5132782   0.6662587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.7279475    0.7120290   0.7429861
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.6696427    0.6199417   0.7128442
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.3670315    0.1714477   0.5164468
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0650990   -0.0781515   0.1893163
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.1421467    0.0463079   0.2283544
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.0432773   -0.0356917   0.1162251
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1436085    0.0705772   0.2109012
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1646092    0.0659576   0.2528414
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.2686188    0.1828910   0.3453524
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.3027956    0.2456123   0.3556444
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.4063027    0.2956043   0.4996044
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.3969260    0.2615286   0.5074986
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.3261008    0.2261632   0.4131320
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0722188    0.0308255   0.1118442
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.2355548    0.1585863   0.3054826
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.3978522    0.2751176   0.4998057
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2191031    0.1940867   0.2433429
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0884849    0.0567799   0.1191242
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.3079963    0.2752519   0.3392613
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1429312    0.1103578   0.1743120
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.5086951    0.4837398   0.5324441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.3221761    0.2781344   0.3635307
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1055491    0.0240288   0.1802603
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0138597   -0.0568794   0.0798640
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.0734724   -0.0252655   0.1627014
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0262356    0.0057416   0.0463071
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0939353    0.0359422   0.1484398
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0621212   -0.0218558   0.1391970
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1658970    0.1057760   0.2219759
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.1730928    0.0971360   0.2426594
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.2760040    0.1735730   0.3657393
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1144501    0.0733318   0.1537439
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.0988974    0.0351001   0.1584765
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0992400    0.0707455   0.1268607
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0871080    0.0743717   0.0996691
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0343499    0.0252757   0.0433397
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.2229703    0.2005551   0.2447571
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.1626533    0.1332655   0.1910447
