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

**Intervention Variable:** birthlen

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

agecat      studyid                    country                        birthlen      sstunted   n_cell       n
----------  -------------------------  -----------------------------  -----------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              0       39     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              1        0     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm               0      104     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm               1        9     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           0       79     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           1        0     231
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              0       30      65
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              1        0      65
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm               0       14      65
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm               1        3      65
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           0       18      65
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           1        0      65
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              0        9      47
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              1        0      47
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm               0       18      47
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm               1        2      47
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm           0       18      47
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm           1        0      47
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              0        8      27
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              1        0      27
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm               0       11      27
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm               1        1      27
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm           0        7      27
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm           1        0      27
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              0       52     233
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              1        0     233
Birth       ki0047075b-MAL-ED          PERU                           <48 cm               0       84     233
Birth       ki0047075b-MAL-ED          PERU                           <48 cm               1        4     233
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm           0       93     233
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm           1        0     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              0       44     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              1        0     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               0       31     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               1        2     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           0       46     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              0       32     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              1        0     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               0       32     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               1       10     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           0       51     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           1        0     125
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              0       14      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              1        0      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               0       34      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               1        4      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           0       40      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           1        0      92
Birth       ki1000108-IRC              INDIA                          >=50 cm              0      142     388
Birth       ki1000108-IRC              INDIA                          >=50 cm              1        0     388
Birth       ki1000108-IRC              INDIA                          <48 cm               0       92     388
Birth       ki1000108-IRC              INDIA                          <48 cm               1       16     388
Birth       ki1000108-IRC              INDIA                          [48-50) cm           0      138     388
Birth       ki1000108-IRC              INDIA                          [48-50) cm           1        0     388
Birth       ki1000109-EE               PAKISTAN                       >=50 cm              0       24     240
Birth       ki1000109-EE               PAKISTAN                       >=50 cm              1        0     240
Birth       ki1000109-EE               PAKISTAN                       <48 cm               0      114     240
Birth       ki1000109-EE               PAKISTAN                       <48 cm               1       48     240
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm           0       54     240
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm           1        0     240
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm              0       12      42
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm              1        0      42
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm               0       14      42
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm               1        2      42
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm           0       14      42
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm           1        0      42
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              0      116    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              1        0    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm               0      647    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm               1       91    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           0      398    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           1        0    1252
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              0      139     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              1        0     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm               0      221     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm               1       19     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           0      229     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           1        0     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              0      121     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              1        0     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     <48 cm               0      192     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     <48 cm               1        4     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           0      222     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           1        0     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              0      161     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              1        0     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               0      277     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               1       10     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           0      284     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           1        0     732
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm              0      763    1543
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm              1        0    1543
Birth       ki1101329-Keneba           GAMBIA                         <48 cm               0      256    1543
Birth       ki1101329-Keneba           GAMBIA                         <48 cm               1       29    1543
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm           0      495    1543
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm           1        0    1543
Birth       ki1113344-GMS-Nepal        NEPAL                          >=50 cm              0      115     696
Birth       ki1113344-GMS-Nepal        NEPAL                          >=50 cm              1        0     696
Birth       ki1113344-GMS-Nepal        NEPAL                          <48 cm               0      342     696
Birth       ki1113344-GMS-Nepal        NEPAL                          <48 cm               1       31     696
Birth       ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           0      208     696
Birth       ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           1        0     696
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm              0        2      26
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm              1        0      26
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm               0       10      26
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm               1        6      26
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm           0        8      26
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm           1        0      26
Birth       ki1114097-CONTENT          PERU                           >=50 cm              0        1       2
Birth       ki1114097-CONTENT          PERU                           >=50 cm              1        0       2
Birth       ki1114097-CONTENT          PERU                           <48 cm               0        1       2
Birth       ki1114097-CONTENT          PERU                           <48 cm               1        0       2
Birth       ki1114097-CONTENT          PERU                           [48-50) cm           0        0       2
Birth       ki1114097-CONTENT          PERU                           [48-50) cm           1        0       2
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              0    12623   13890
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              1        0   13890
Birth       ki1119695-PROBIT           BELARUS                        <48 cm               0      142   13890
Birth       ki1119695-PROBIT           BELARUS                        <48 cm               1        5   13890
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm           0     1120   13890
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm           1        0   13890
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              0     4125   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              1        0   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               0     3967   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               1      442   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           0     5341   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           1        0   13875
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              0      437     852
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              1        0     852
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm               0      152     852
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm               1       11     852
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm           0      252     852
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm           1        0     852
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              0     1426    6640
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              1        0    6640
Birth       ki1135781-COHORTS          INDIA                          <48 cm               0     2568    6640
Birth       ki1135781-COHORTS          INDIA                          <48 cm               1      206    6640
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm           0     2440    6640
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm           1        0    6640
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              0     1129    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              1        0    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm               0      716    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm               1       46    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           0     1159    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           1        0    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              0     1258   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              1        0   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               0    13661   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               1     2448   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           0     5088   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           1        0   22455
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              0      178    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              1        0    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               0     1680    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               1      233    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           0      732    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           1        0    2823
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              0       39     211
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              1        0     211
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               0       91     211
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               1        7     211
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           0       74     211
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           1        0     211
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              0       28      59
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              1        0      59
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               0       15      59
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               1        0      59
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           0       16      59
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           1        0      59
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              0        8      41
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              1        0      41
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm               0       17      41
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm               1        1      41
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           0       15      41
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           1        0      41
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              0        8      26
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              1        0      26
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               0       11      26
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               1        0      26
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           0        7      26
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           1        0      26
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              0       48     215
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              1        0     215
6 months    ki0047075b-MAL-ED          PERU                           <48 cm               0       78     215
6 months    ki0047075b-MAL-ED          PERU                           <48 cm               1        6     215
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           0       82     215
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           1        1     215
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              0       34      93
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              1        0      93
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               0       18      93
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               1        3      93
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           0       38      93
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           1        0      93
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              0       31     118
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              1        0     118
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               0       34     118
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               1        5     118
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           0       48     118
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           1        0     118
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              0       15     104
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              1        1     104
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               0       43     104
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               1        5     104
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           0       37     104
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           1        3     104
6 months    ki1000108-IRC              INDIA                          >=50 cm              0      140     389
6 months    ki1000108-IRC              INDIA                          >=50 cm              1        2     389
6 months    ki1000108-IRC              INDIA                          <48 cm               0       91     389
6 months    ki1000108-IRC              INDIA                          <48 cm               1       18     389
6 months    ki1000108-IRC              INDIA                          [48-50) cm           0      130     389
6 months    ki1000108-IRC              INDIA                          [48-50) cm           1        8     389
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              0       24     236
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              1        0     236
6 months    ki1000109-EE               PAKISTAN                       <48 cm               0      110     236
6 months    ki1000109-EE               PAKISTAN                       <48 cm               1       50     236
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm           0       49     236
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm           1        3     236
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              0        8      34
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              1        2      34
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm               0        8      34
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm               1        5      34
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm           0        9      34
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm           1        2      34
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              0      191    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              1        5    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               0      600    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               1      109    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           0      407    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           1       12    1324
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              0      117     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              1        3     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               0      170     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               1       29     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           0      196     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           1        3     518
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              0      143     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              1        0     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               0      202     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               1       11     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           0      245     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           1        3     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              0      164     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               0      253     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               1       17     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           0      275     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           1        6     715
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              0      666    1347
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              1       11    1347
6 months    ki1101329-Keneba           GAMBIA                         <48 cm               0      219    1347
6 months    ki1101329-Keneba           GAMBIA                         <48 cm               1       15    1347
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           0      428    1347
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           1        8    1347
6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              0       96     563
6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm               0      276     563
6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm               1       20     563
6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           0      170     563
6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           1        1     563
6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm              0        0      12
6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm              1        0      12
6 months    ki1114097-CMIN             BANGLADESH                     <48 cm               0        5      12
6 months    ki1114097-CMIN             BANGLADESH                     <48 cm               1        1      12
6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm           0        6      12
6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm           1        0      12
6 months    ki1114097-CONTENT          PERU                           >=50 cm              0        1       2
6 months    ki1114097-CONTENT          PERU                           >=50 cm              1        0       2
6 months    ki1114097-CONTENT          PERU                           <48 cm               0        1       2
6 months    ki1114097-CONTENT          PERU                           <48 cm               1        0       2
6 months    ki1114097-CONTENT          PERU                           [48-50) cm           0        0       2
6 months    ki1114097-CONTENT          PERU                           [48-50) cm           1        0       2
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              0    14134   15761
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              1      162   15761
6 months    ki1119695-PROBIT           BELARUS                        <48 cm               0      156   15761
6 months    ki1119695-PROBIT           BELARUS                        <48 cm               1       16   15761
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           0     1228   15761
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           1       65   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              0     2502    8577
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              1       36    8577
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               0     2486    8577
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               1      194    8577
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           0     3242    8577
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           1      117    8577
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              0      341     688
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              1       10     688
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               0       90     688
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               1       43     688
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           0      180     688
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           1       24     688
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              0     1324    6135
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              1        6    6135
6 months    ki1135781-COHORTS          INDIA                          <48 cm               0     2302    6135
6 months    ki1135781-COHORTS          INDIA                          <48 cm               1      228    6135
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm           0     2238    6135
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm           1       37    6135
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              0      977    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              1       13    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               0      593    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               1       84    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           0      999    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           1       35    2701
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              0      824   13924
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              1        3   13924
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               0     9004   13924
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               1      813   13924
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           0     3263   13924
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           1       17   13924
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              0     1073    4020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              1       28    4020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               0     1750    4020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               1      173    4020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           0      982    4020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           1       14    4020
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              0       38     187
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              1        1     187
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               0       63     187
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               1       17     187
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           0       64     187
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           1        4     187
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              0       20      42
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              1        0      42
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               0       10      42
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               1        0      42
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           0       12      42
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           1        0      42
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              0        6      39
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              1        0      39
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               0       12      39
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               1        6      39
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           0       13      39
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           1        2      39
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              0        8      26
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              1        0      26
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               0       11      26
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               1        0      26
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           0        7      26
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           1        0      26
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              0       33     160
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              1        1     160
24 months   ki0047075b-MAL-ED          PERU                           <48 cm               0       58     160
24 months   ki0047075b-MAL-ED          PERU                           <48 cm               1        9     160
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           0       58     160
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           1        1     160
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              0       31      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              1        1      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               0       18      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               1        3      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           0       33      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           1        5      91
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              0       26     104
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              1        3     104
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               0       22     104
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               1       12     104
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           0       29     104
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           1       12     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              0       14     106
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              1        2     106
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               0       32     106
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               1       18     106
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           0       28     106
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           1       12     106
24 months   ki1000108-IRC              INDIA                          >=50 cm              0      130     390
24 months   ki1000108-IRC              INDIA                          >=50 cm              1       12     390
24 months   ki1000108-IRC              INDIA                          <48 cm               0       91     390
24 months   ki1000108-IRC              INDIA                          <48 cm               1       19     390
24 months   ki1000108-IRC              INDIA                          [48-50) cm           0      130     390
24 months   ki1000108-IRC              INDIA                          [48-50) cm           1        8     390
24 months   ki1000109-EE               PAKISTAN                       >=50 cm              0       10     106
24 months   ki1000109-EE               PAKISTAN                       >=50 cm              1        0     106
24 months   ki1000109-EE               PAKISTAN                       <48 cm               0       41     106
24 months   ki1000109-EE               PAKISTAN                       <48 cm               1       30     106
24 months   ki1000109-EE               PAKISTAN                       [48-50) cm           0       16     106
24 months   ki1000109-EE               PAKISTAN                       [48-50) cm           1        9     106
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              0       89     414
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              1       10     414
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               0       98     414
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               1       62     414
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           0      133     414
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           1       22     414
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              0      137     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              1        2     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               0      165     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               1       41     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           0      224     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           1        9     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              0      128     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              1        0     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               0      172     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               1       28     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           0      178     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           1        8     514
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              0      514    1065
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              1       21    1065
24 months   ki1101329-Keneba           GAMBIA                         <48 cm               0      172    1065
24 months   ki1101329-Keneba           GAMBIA                         <48 cm               1       24    1065
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           0      296    1065
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           1       38    1065
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              0       80     487
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              1        4     487
24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               0      208     487
24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               1       41     487
24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           0      146     487
24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           1        8     487
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm              0        0      11
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm              1        0      11
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm               0        1      11
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm               1        4      11
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm           0        6      11
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm           1        0      11
24 months   ki1114097-CONTENT          PERU                           >=50 cm              0        1       2
24 months   ki1114097-CONTENT          PERU                           >=50 cm              1        0       2
24 months   ki1114097-CONTENT          PERU                           <48 cm               0        1       2
24 months   ki1114097-CONTENT          PERU                           <48 cm               1        0       2
24 months   ki1114097-CONTENT          PERU                           [48-50) cm           0        0       2
24 months   ki1114097-CONTENT          PERU                           [48-50) cm           1        0       2
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              0     3628    4035
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              1       55    4035
24 months   ki1119695-PROBIT           BELARUS                        <48 cm               0       41    4035
24 months   ki1119695-PROBIT           BELARUS                        <48 cm               1        3    4035
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           0      301    4035
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           1        7    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              0      296    1608
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              1       16    1608
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               0      599    1608
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               1      112    1608
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           0      539    1608
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           1       46    1608
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              0      180     560
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              1       83     560
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               0       40     560
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               1       80     560
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           0       78     560
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           1       99     560
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              0      973    4758
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              1       74    4758
24 months   ki1135781-COHORTS          INDIA                          <48 cm               0     1215    4758
24 months   ki1135781-COHORTS          INDIA                          <48 cm               1      719    4758
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           0     1474    4758
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           1      303    4758
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              0      752    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              1      145    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               0      329    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               1      275    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           0      655    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           1      286    2442
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              0      398    7184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              1        6    7184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               0     3994    7184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               1     1073    7184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           0     1649    7184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           1       64    7184
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              0     1030    3987
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              1       47    3987
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               0     1671    3987
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               1      273    3987
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           0      914    3987
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           1       52    3987


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
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/a4db98cc-09b5-4d0a-94dc-7e06de46d184/b159b84a-8ce2-4537-9dec-eb92d5d64ea7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a4db98cc-09b5-4d0a-94dc-7e06de46d184/b159b84a-8ce2-4537-9dec-eb92d5d64ea7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a4db98cc-09b5-4d0a-94dc-7e06de46d184/b159b84a-8ce2-4537-9dec-eb92d5d64ea7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a4db98cc-09b5-4d0a-94dc-7e06de46d184/b159b84a-8ce2-4537-9dec-eb92d5d64ea7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.0255102    0.0084713   0.0425492
6 months    ki1000304b-SAS-CompFeed   INDIA         <48 cm               NA                0.1537377    0.1251875   0.1822879
6 months    ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           NA                0.0286396    0.0129545   0.0443247
6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0162482    0.0067211   0.0257752
6 months    ki1101329-Keneba          GAMBIA        <48 cm               NA                0.0641026    0.0327081   0.0954970
6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.0183486    0.0057464   0.0309508
6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                0.0115919    0.0065924   0.0165915
6 months    ki1119695-PROBIT          BELARUS       <48 cm               NA                0.0843304    0.0637329   0.1049278
6 months    ki1119695-PROBIT          BELARUS       [48-50) cm           NA                0.0412032    0.0255108   0.0568956
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0136846    0.0090916   0.0182776
6 months    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0754000    0.0655330   0.0852670
6 months    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0348668    0.0286444   0.0410893
6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0281561    0.0107702   0.0455420
6 months    ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.3247488    0.2450762   0.4044214
6 months    ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.1178621    0.0733491   0.1623750
6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0045113    0.0009094   0.0081131
6 months    ki1135781-COHORTS         INDIA         <48 cm               NA                0.0901186    0.0789596   0.1012775
6 months    ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.0162637    0.0110657   0.0214618
6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0129031    0.0058942   0.0199120
6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.1265095    0.1014334   0.1515856
6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.0336696    0.0226501   0.0446890
6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0246465    0.0157105   0.0335826
6 months    kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.0932553    0.0771589   0.1093518
6 months    kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.0137974    0.0063599   0.0212349
24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.0845070    0.0386997   0.1303144
24 months   ki1000108-IRC             INDIA         <48 cm               NA                0.1727273    0.1019956   0.2434590
24 months   ki1000108-IRC             INDIA         [48-50) cm           NA                0.0579710    0.0189316   0.0970105
24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.1015595    0.0419831   0.1611358
24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               NA                0.3910659    0.3152192   0.4669125
24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           NA                0.1453254    0.0899045   0.2007464
24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0385358    0.0219804   0.0550913
24 months   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.1299325    0.0841606   0.1757044
24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.1132249    0.0799407   0.1465091
24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0506738    0.0261196   0.0752279
24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.1574889    0.1306703   0.1843076
24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0789573    0.0569770   0.1009375
24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.2916647    0.2365394   0.3467901
24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.6965135    0.6138304   0.7791966
24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.5756315    0.5045653   0.6466978
24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0713027    0.0555749   0.0870305
24 months   ki1135781-COHORTS         INDIA         <48 cm               NA                0.3772041    0.3558528   0.3985554
24 months   ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.1693339    0.1518700   0.1867978
24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.1585309    0.1345577   0.1825041
24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.4582560    0.4193258   0.4971862
24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.3047827    0.2757486   0.3338168
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0148515   -0.0004421   0.0301450
24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.2117624    0.1987696   0.2247552
24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.0373614    0.0276804   0.0470423
24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0435369    0.0282652   0.0588085
24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.1428626    0.1251021   0.1606230
24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.0530035    0.0368874   0.0691196


### Parameter: E(Y)


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.0951662   0.0766361   0.1136962
6 months    ki1101329-Keneba          GAMBIA        NA                   NA                0.0252413   0.0168616   0.0336210
6 months    ki1119695-PROBIT          BELARUS       NA                   NA                0.0154178   0.0100323   0.0208033
6 months    ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0404570   0.0362870   0.0446270
6 months    ki1135781-COHORTS         GUATEMALA     NA                   NA                0.1119186   0.0883438   0.1354934
6 months    ki1135781-COHORTS         INDIA         NA                   NA                0.0441728   0.0390306   0.0493149
6 months    ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0488708   0.0407385   0.0570030
6 months    kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.0534826   0.0450763   0.0618888
24 months   ki1000108-IRC             INDIA         NA                   NA                0.1000000   0.0701878   0.1298122
24 months   ki1017093-NIH-Birth       BANGLADESH    NA                   NA                0.2270531   0.1866503   0.2674560
24 months   ki1101329-Keneba          GAMBIA        NA                   NA                0.0779343   0.0618270   0.0940416
24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.1082090   0.0930209   0.1233971
24 months   ki1135781-COHORTS         GUATEMALA     NA                   NA                0.4678571   0.4264941   0.5092202
24 months   ki1135781-COHORTS         INDIA         NA                   NA                0.2303489   0.2183836   0.2423141
24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.2891073   0.2711229   0.3070917
24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.1591036   0.1492688   0.1689383
24 months   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.0933032   0.0829251   0.1036813


### Parameter: RR


agecat      studyid                   country       intervention_level   baseline_level      estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  -----------  ----------  ----------
6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed   INDIA         <48 cm               >=50 cm            6.0265162   3.2342085   11.229609
6 months    ki1000304b-SAS-CompFeed   INDIA         [48-50) cm           >=50 cm            1.1226730   0.4128721    3.052748
6 months    ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm            3.9452214   1.8377214    8.469604
6 months    ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm            1.1292744   0.4577236    2.786093
6 months    ki1119695-PROBIT          BELARUS       >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    ki1119695-PROBIT          BELARUS       <48 cm               >=50 cm            7.2749307   4.9786359   10.630345
6 months    ki1119695-PROBIT          BELARUS       [48-50) cm           >=50 cm            3.5544778   2.3313898    5.419219
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm            5.5098422   3.8435305    7.898561
6 months    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm            2.5478864   1.7423846    3.725770
6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm           11.5338821   5.9364414   22.409122
6 months    ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm            4.1860268   2.0317446    8.624519
6 months    ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS         INDIA         <48 cm               >=50 cm           19.9762846   8.9048026   44.813115
6 months    ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm            3.6051282   1.5255447    8.519547
6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm            9.8045759   5.5026453   17.469726
6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm            2.6094161   1.3849829    4.916344
6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm            3.7837105   2.5387962    5.639076
6 months    kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm            0.5598118   0.2906254    1.078327
24 months   ki1000108-IRC             INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   ki1000108-IRC             INDIA         <48 cm               >=50 cm            2.0439394   1.0361710    4.031852
24 months   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm            0.6859903   0.2889866    1.628389
24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               >=50 cm            3.8506103   2.0748572    7.146130
24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           >=50 cm            1.4309394   0.7107142    2.881028
24 months   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm            3.3717331   1.9339053    5.878563
24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm            2.9381709   1.7470120    4.941493
24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm            3.1078987   1.8593370    5.194881
24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm            1.5581488   0.8910747    2.724606
24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm            2.3880621   1.9149791    2.978017
24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm            1.9736068   1.5800768    2.465149
24 months   ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS         INDIA         <48 cm               >=50 cm            5.2901775   4.2142112    6.640858
24 months   ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm            2.3748585   1.8627903    3.027691
24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm            2.8906413   2.4320100    3.435762
24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm            1.9225445   1.6094966    2.296480
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm           14.2586623   5.0919529   39.927599
24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm            2.5156637   0.8759202    7.225046
24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm            3.2814171   2.2685372    4.746538
24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm            1.2174391   0.7629801    1.942591


### Parameter: PAR


agecat      studyid                   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.0696560    0.0518817   0.0874302
6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0089931    0.0006416   0.0173447
6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                0.0038259    0.0024537   0.0051981
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0267724    0.0216778   0.0318670
6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0837625    0.0603653   0.1071597
6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0396615    0.0338486   0.0454744
6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0359677    0.0270954   0.0448400
6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0288361    0.0187103   0.0389618
24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.0154930   -0.0227050   0.0536909
24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.1254937    0.0665223   0.1844650
24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0393984    0.0234131   0.0553838
24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0575352    0.0330264   0.0820440
24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.1761924    0.1335385   0.2188463
24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.1590462    0.1422837   0.1758086
24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.1305764    0.1089473   0.1522055
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.1442521    0.1269500   0.1615542
24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0497664    0.0353220   0.0642108


### Parameter: PAF


agecat      studyid                   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.7319404    0.5143576   0.8520394
6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.3562864   -0.0415418   0.6021598
6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                0.2481475    0.1453441   0.3385850
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.6617497    0.5354697   0.7537012
6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.7484236    0.5542936   0.8579992
6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                0.8978720    0.7751591   0.9536111
6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.7359751    0.5582988   0.8421803
6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.5391672    0.3486196   0.6739741
24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.1549296   -0.3244291   0.4607910
24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.5527062    0.2251629   0.7417887
24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.5055342    0.2862614   0.6574427
24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.5317045    0.2578482   0.7045069
24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.3765945    0.2767638   0.4626451
24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.6904577    0.6175960   0.7494366
24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.4516537    0.3744574   0.5193234
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.9066552    0.7397900   0.9665145
24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.5333832    0.3569588   0.6614040
