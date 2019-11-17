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

agecat      studyid                    country                        birthlen      stunted   n_cell       n
----------  -------------------------  -----------------------------  -----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             0       39     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             1        0     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm              0       69     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm              1       44     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          0       79     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          1        0     231
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm             0       30      65
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm             1        0      65
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm              0        8      65
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm              1        9      65
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          0       18      65
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          1        0      65
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm             0        9      47
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm             1        0      47
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm              0       10      47
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm              1       10      47
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm          0       18      47
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm          1        0      47
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm             0        8      27
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm             1        0      27
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm              0       10      27
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm              1        2      27
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm          0        7      27
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm          1        0      27
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm             0       52     233
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm             1        0     233
Birth       ki0047075b-MAL-ED          PERU                           <48 cm              0       62     233
Birth       ki0047075b-MAL-ED          PERU                           <48 cm              1       26     233
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm          0       93     233
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm          1        0     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             0       44     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             1        0     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              0       23     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              1       10     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          0       46     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       32     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        0     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              0       19     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              1       23     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       51     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        0     125
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             0       14      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             1        0      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              0       21      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              1       17      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          0       40      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          1        0      92
Birth       ki1000108-IRC              INDIA                          >=50 cm             0      142     388
Birth       ki1000108-IRC              INDIA                          >=50 cm             1        0     388
Birth       ki1000108-IRC              INDIA                          <48 cm              0       63     388
Birth       ki1000108-IRC              INDIA                          <48 cm              1       45     388
Birth       ki1000108-IRC              INDIA                          [48-50) cm          0      138     388
Birth       ki1000108-IRC              INDIA                          [48-50) cm          1        0     388
Birth       ki1000109-EE               PAKISTAN                       >=50 cm             0       24     240
Birth       ki1000109-EE               PAKISTAN                       >=50 cm             1        0     240
Birth       ki1000109-EE               PAKISTAN                       <48 cm              0       62     240
Birth       ki1000109-EE               PAKISTAN                       <48 cm              1      100     240
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm          0       54     240
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm          1        0     240
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm             0       12      42
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm             1        0      42
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm              0        2      42
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm              1       14      42
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm          0       14      42
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm          1        0      42
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             0      116    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             1        0    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm              0      389    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm              1      349    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          0      398    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          1        0    1252
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             0      139     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             1        0     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm              0      143     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm              1       97     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          0      229     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          1        0     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             0      121     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             1        0     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     <48 cm              0      148     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     <48 cm              1       48     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          0      222     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          1        0     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             0      161     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             1        0     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              0      186     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              1      101     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          0      284     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          1        0     732
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm             0      763    1543
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm             1        0    1543
Birth       ki1101329-Keneba           GAMBIA                         <48 cm              0      202    1543
Birth       ki1101329-Keneba           GAMBIA                         <48 cm              1       83    1543
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm          0      495    1543
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm          1        0    1543
Birth       ki1113344-GMS-Nepal        NEPAL                          >=50 cm             0      115     696
Birth       ki1113344-GMS-Nepal        NEPAL                          >=50 cm             1        0     696
Birth       ki1113344-GMS-Nepal        NEPAL                          <48 cm              0      251     696
Birth       ki1113344-GMS-Nepal        NEPAL                          <48 cm              1      122     696
Birth       ki1113344-GMS-Nepal        NEPAL                          [48-50) cm          0      208     696
Birth       ki1113344-GMS-Nepal        NEPAL                          [48-50) cm          1        0     696
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm             0        2      26
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm             1        0      26
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm              0        7      26
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm              1        9      26
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm          0        8      26
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm          1        0      26
Birth       ki1114097-CONTENT          PERU                           >=50 cm             0        1       2
Birth       ki1114097-CONTENT          PERU                           >=50 cm             1        0       2
Birth       ki1114097-CONTENT          PERU                           <48 cm              0        1       2
Birth       ki1114097-CONTENT          PERU                           <48 cm              1        0       2
Birth       ki1114097-CONTENT          PERU                           [48-50) cm          0        0       2
Birth       ki1114097-CONTENT          PERU                           [48-50) cm          1        0       2
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm             0    12623   13890
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm             1        0   13890
Birth       ki1119695-PROBIT           BELARUS                        <48 cm              0      114   13890
Birth       ki1119695-PROBIT           BELARUS                        <48 cm              1       33   13890
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm          0     1120   13890
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm          1        0   13890
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             0     4125   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             1        0   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              0     2975   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              1     1434   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          0     5341   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          1        0   13875
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm             0      437     852
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm             1        0     852
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm              0      113     852
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm              1       50     852
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm          0      252     852
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm          1        0     852
Birth       ki1135781-COHORTS          INDIA                          >=50 cm             0     1426    6640
Birth       ki1135781-COHORTS          INDIA                          >=50 cm             1        0    6640
Birth       ki1135781-COHORTS          INDIA                          <48 cm              0     1982    6640
Birth       ki1135781-COHORTS          INDIA                          <48 cm              1      792    6640
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm          0     2440    6640
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm          1        0    6640
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm             0     1129    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm             1        0    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm              0      575    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm              1      187    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          0     1159    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          1        0    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0     1258   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1        0   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0     8722   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1     7387   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     5088   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1        0   22455
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             0      178    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             1        0    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              0     1056    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              1      857    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          0      732    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          1        0    2823
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             0       38     211
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             1        1     211
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm              0       67     211
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm              1       31     211
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          0       69     211
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          1        5     211
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm             0       28      59
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm             1        0      59
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm              0       14      59
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm              1        1      59
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          0       15      59
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          1        1      59
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm             0        8      41
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm             1        0      41
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm              0       10      41
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm              1        8      41
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm          0       10      41
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm          1        5      41
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm             0        8      26
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm             1        0      26
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm              0       11      26
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm              1        0      26
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm          0        7      26
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm          1        0      26
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm             0       46     215
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm             1        2     215
6 months    ki0047075b-MAL-ED          PERU                           <48 cm              0       51     215
6 months    ki0047075b-MAL-ED          PERU                           <48 cm              1       33     215
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm          0       74     215
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm          1        9     215
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             0       32      93
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             1        2      93
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              0       14      93
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              1        7      93
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          0       31      93
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          1        7      93
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       31     118
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        0     118
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              0       19     118
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              1       20     118
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       39     118
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        9     118
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             0       11     104
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             1        5     104
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              0       31     104
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              1       17     104
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          0       32     104
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          1        8     104
6 months    ki1000108-IRC              INDIA                          >=50 cm             0      123     389
6 months    ki1000108-IRC              INDIA                          >=50 cm             1       19     389
6 months    ki1000108-IRC              INDIA                          <48 cm              0       62     389
6 months    ki1000108-IRC              INDIA                          <48 cm              1       47     389
6 months    ki1000108-IRC              INDIA                          [48-50) cm          0      109     389
6 months    ki1000108-IRC              INDIA                          [48-50) cm          1       29     389
6 months    ki1000109-EE               PAKISTAN                       >=50 cm             0       24     236
6 months    ki1000109-EE               PAKISTAN                       >=50 cm             1        0     236
6 months    ki1000109-EE               PAKISTAN                       <48 cm              0       61     236
6 months    ki1000109-EE               PAKISTAN                       <48 cm              1       99     236
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm          0       35     236
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm          1       17     236
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm             0        6      34
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm             1        4      34
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm              0        7      34
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm              1        6      34
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm          0        6      34
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm          1        5      34
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             0      184    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             1       12    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm              0      405    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm              1      304    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          0      359    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          1       60    1324
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             0      111     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             1        9     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm              0      103     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm              1       96     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          0      164     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          1       35     518
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             0      141     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             1        2     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm              0      136     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm              1       77     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          0      231     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          1       17     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             0      162     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             1        2     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              0      162     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              1      108     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          0      241     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          1       40     715
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm             0      629    1347
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm             1       48    1347
6 months    ki1101329-Keneba           GAMBIA                         <48 cm              0      176    1347
6 months    ki1101329-Keneba           GAMBIA                         <48 cm              1       58    1347
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm          0      362    1347
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm          1       74    1347
6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm             0       93     563
6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm             1        3     563
6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm              0      193     563
6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm              1      103     563
6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm          0      155     563
6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm          1       16     563
6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm             0        0      12
6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm             1        0      12
6 months    ki1114097-CMIN             BANGLADESH                     <48 cm              0        3      12
6 months    ki1114097-CMIN             BANGLADESH                     <48 cm              1        3      12
6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm          0        5      12
6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm          1        1      12
6 months    ki1114097-CONTENT          PERU                           >=50 cm             0        1       2
6 months    ki1114097-CONTENT          PERU                           >=50 cm             1        0       2
6 months    ki1114097-CONTENT          PERU                           <48 cm              0        1       2
6 months    ki1114097-CONTENT          PERU                           <48 cm              1        0       2
6 months    ki1114097-CONTENT          PERU                           [48-50) cm          0        0       2
6 months    ki1114097-CONTENT          PERU                           [48-50) cm          1        0       2
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm             0    13615   15761
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm             1      681   15761
6 months    ki1119695-PROBIT           BELARUS                        <48 cm              0      112   15761
6 months    ki1119695-PROBIT           BELARUS                        <48 cm              1       60   15761
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm          0     1046   15761
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm          1      247   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             0     2328    8577
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             1      210    8577
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              0     1969    8577
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              1      711    8577
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          0     2887    8577
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          1      472    8577
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm             0      289     688
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm             1       62     688
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm              0       28     688
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm              1      105     688
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm          0      104     688
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm          1      100     688
6 months    ki1135781-COHORTS          INDIA                          >=50 cm             0     1282    6135
6 months    ki1135781-COHORTS          INDIA                          >=50 cm             1       48    6135
6 months    ki1135781-COHORTS          INDIA                          <48 cm              0     1678    6135
6 months    ki1135781-COHORTS          INDIA                          <48 cm              1      852    6135
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm          0     2031    6135
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm          1      244    6135
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm             0      913    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm             1       77    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm              0      394    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm              1      283    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          0      822    2701
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          1      212    2701
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0      813   13924
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1       14   13924
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0     6452   13924
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1     3365   13924
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     3102   13924
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1      178   13924
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             0      959    4020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             1      142    4020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              0     1199    4020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              1      724    4020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          0      861    4020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          1      135    4020
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             0       30     187
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             1        9     187
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm              0       27     187
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm              1       53     187
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          0       39     187
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          1       29     187
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm             0       20      42
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm             1        0      42
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm              0        9      42
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm              1        1      42
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          0       11      42
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          1        1      42
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm             0        5      39
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm             1        1      39
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm              0        6      39
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm              1       12      39
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm          0        7      39
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm          1        8      39
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm             0        8      26
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm             1        0      26
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm              0        7      26
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm              1        4      26
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm          0        3      26
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm          1        4      26
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm             0       23     160
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm             1       11     160
24 months   ki0047075b-MAL-ED          PERU                           <48 cm              0       34     160
24 months   ki0047075b-MAL-ED          PERU                           <48 cm              1       33     160
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm          0       41     160
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm          1       18     160
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             0       22      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             1       10      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              0       14      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              1        7      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          0       23      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          1       15      91
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       15     104
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             1       14     104
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              0        5     104
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              1       29     104
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0        7     104
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1       34     104
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             0        5     106
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             1       11     106
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              0       14     106
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              1       36     106
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          0       10     106
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          1       30     106
24 months   ki1000108-IRC              INDIA                          >=50 cm             0       95     390
24 months   ki1000108-IRC              INDIA                          >=50 cm             1       47     390
24 months   ki1000108-IRC              INDIA                          <48 cm              0       51     390
24 months   ki1000108-IRC              INDIA                          <48 cm              1       59     390
24 months   ki1000108-IRC              INDIA                          [48-50) cm          0       84     390
24 months   ki1000108-IRC              INDIA                          [48-50) cm          1       54     390
24 months   ki1000109-EE               PAKISTAN                       >=50 cm             0        9     106
24 months   ki1000109-EE               PAKISTAN                       >=50 cm             1        1     106
24 months   ki1000109-EE               PAKISTAN                       <48 cm              0       16     106
24 months   ki1000109-EE               PAKISTAN                       <48 cm              1       55     106
24 months   ki1000109-EE               PAKISTAN                       [48-50) cm          0        8     106
24 months   ki1000109-EE               PAKISTAN                       [48-50) cm          1       17     106
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             0       66     414
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             1       33     414
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm              0       35     414
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm              1      125     414
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          0       77     414
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          1       78     414
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             0      119     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             1       20     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm              0       95     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm              1      111     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          0      174     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          1       59     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             0      120     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             1        8     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              0      124     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              1       76     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          0      138     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          1       48     514
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm             0      407    1065
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm             1      128    1065
24 months   ki1101329-Keneba           GAMBIA                         <48 cm              0      102    1065
24 months   ki1101329-Keneba           GAMBIA                         <48 cm              1       94    1065
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm          0      211    1065
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm          1      123    1065
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm             0       61     487
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm             1       23     487
24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm              0      112     487
24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm              1      137     487
24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm          0       96     487
24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm          1       58     487
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm             0        0      11
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm             1        0      11
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm              0        1      11
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm              1        4      11
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm          0        3      11
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm          1        3      11
24 months   ki1114097-CONTENT          PERU                           >=50 cm             0        1       2
24 months   ki1114097-CONTENT          PERU                           >=50 cm             1        0       2
24 months   ki1114097-CONTENT          PERU                           <48 cm              0        1       2
24 months   ki1114097-CONTENT          PERU                           <48 cm              1        0       2
24 months   ki1114097-CONTENT          PERU                           [48-50) cm          0        0       2
24 months   ki1114097-CONTENT          PERU                           [48-50) cm          1        0       2
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm             0     3385    4035
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm             1      298    4035
24 months   ki1119695-PROBIT           BELARUS                        <48 cm              0       37    4035
24 months   ki1119695-PROBIT           BELARUS                        <48 cm              1        7    4035
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm          0      269    4035
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm          1       39    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             0      243    1608
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             1       69    1608
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              0      382    1608
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              1      329    1608
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          0      426    1608
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          1      159    1608
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm             0       77     560
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm             1      186     560
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm              0        7     560
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm              1      113     560
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm          0       22     560
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm          1      155     560
24 months   ki1135781-COHORTS          INDIA                          >=50 cm             0      736    4758
24 months   ki1135781-COHORTS          INDIA                          >=50 cm             1      311    4758
24 months   ki1135781-COHORTS          INDIA                          <48 cm              0      567    4758
24 months   ki1135781-COHORTS          INDIA                          <48 cm              1     1367    4758
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm          0      909    4758
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm          1      868    4758
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm             0      485    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm             1      412    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm              0      119    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm              1      485    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          0      316    2442
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          1      625    2442
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0      334    7184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1       70    7184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0     2029    7184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1     3038    7184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     1242    7184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1      471    7184
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             0      777    3987
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             1      300    3987
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              0      935    3987
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              1     1009    3987
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          0      687    3987
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          1      279    3987


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
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/e7304131-ef92-4ce2-9624-5f0d8757b5e7/664e761c-914e-4c1b-882e-4f8672fe8885/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e7304131-ef92-4ce2-9624-5f0d8757b5e7/664e761c-914e-4c1b-882e-4f8672fe8885/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e7304131-ef92-4ce2-9624-5f0d8757b5e7/664e761c-914e-4c1b-882e-4f8672fe8885/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e7304131-ef92-4ce2-9624-5f0d8757b5e7/664e761c-914e-4c1b-882e-4f8672fe8885/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                0.3125000   0.0842832   0.5407168
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                0.3541667   0.2182134   0.4901199
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                0.2000000   0.0754407   0.3245593
6 months    ki1000108-IRC              INDIA                          >=50 cm              NA                0.1357915   0.0805035   0.1910796
6 months    ki1000108-IRC              INDIA                          <48 cm               NA                0.4428387   0.3474377   0.5382396
6 months    ki1000108-IRC              INDIA                          [48-50) cm           NA                0.2233918   0.1551529   0.2916306
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                0.0601029   0.0243827   0.0958232
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                0.4303615   0.4101815   0.4505416
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                0.1445683   0.1178334   0.1713031
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                0.0750000   0.0278286   0.1221714
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                0.4824121   0.4129189   0.5519053
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                0.1758794   0.1229321   0.2288267
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                0.0671668   0.0480826   0.0862510
6 months    ki1101329-Keneba           GAMBIA                         <48 cm               NA                0.2529516   0.1985807   0.3073225
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                0.1749092   0.1397380   0.2100804
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                0.0487634   0.0350775   0.0624494
6 months    ki1119695-PROBIT           BELARUS                        <48 cm               NA                0.3080294   0.2670038   0.3490550
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                0.1582741   0.1220940   0.1944543
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                0.0805404   0.0698292   0.0912515
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                0.2721430   0.2551905   0.2890955
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                0.1413211   0.1294682   0.1531739
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                0.1707274   0.1307961   0.2106587
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                0.7919987   0.7218242   0.8621732
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                0.4985342   0.4297762   0.5672922
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                0.0345583   0.0244224   0.0446942
6 months    ki1135781-COHORTS          INDIA                          <48 cm               NA                0.3450464   0.3265133   0.3635795
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm           NA                0.1075318   0.0946368   0.1204269
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                0.0732040   0.0568383   0.0895698
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                0.4299710   0.3934573   0.4664846
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                0.2082346   0.1836276   0.2328415
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                0.0156668   0.0049806   0.0263530
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                0.3418968   0.3309444   0.3528491
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                0.0550277   0.0463368   0.0637186
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                0.1282142   0.1046139   0.1518145
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                0.3825895   0.3564448   0.4087342
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                0.1334767   0.1080153   0.1589382
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                0.2307692   0.0981833   0.3633551
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                0.6625000   0.5586044   0.7663956
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                0.4264706   0.3086068   0.5443344
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                0.3245597   0.1616000   0.4875194
24 months   ki0047075b-MAL-ED          PERU                           <48 cm               NA                0.4961142   0.3753457   0.6168826
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                0.2811507   0.1574380   0.4048634
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                0.3125000   0.1510144   0.4739856
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                0.3333333   0.1305970   0.5360697
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                0.3947368   0.2384647   0.5510090
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                0.4827586   0.3000080   0.6655092
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                0.8529412   0.7333190   0.9725634
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                0.8292683   0.7135349   0.9450017
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                0.6875000   0.4593041   0.9156959
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                0.7200000   0.5949549   0.8450451
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                0.7500000   0.6151730   0.8848270
24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                0.3189913   0.2411229   0.3968597
24 months   ki1000108-IRC              INDIA                          <48 cm               NA                0.5312946   0.4376118   0.6249775
24 months   ki1000108-IRC              INDIA                          [48-50) cm           NA                0.3765391   0.2941745   0.4589037
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                0.3280629   0.2347480   0.4213779
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                0.7825586   0.7172963   0.8478210
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                0.5206238   0.4404678   0.6007798
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                0.1387369   0.0797694   0.1977043
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                0.5457100   0.4774985   0.6139214
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                0.2508914   0.1945552   0.3072277
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                0.0625000   0.0205249   0.1044751
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                0.3800000   0.3126646   0.4473354
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                0.2580645   0.1951194   0.3210096
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                0.2352036   0.1989559   0.2714513
24 months   ki1101329-Keneba           GAMBIA                         <48 cm               NA                0.4886168   0.4193122   0.5579215
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                0.3694346   0.3190276   0.4198417
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                0.2502475   0.1523521   0.3481429
24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                0.5499685   0.4884450   0.6114919
24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                0.3612208   0.2846630   0.4377787
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                0.0809123   0.0513729   0.1104517
24 months   ki1119695-PROBIT           BELARUS                        <48 cm               NA                0.1590909   0.0327881   0.2853937
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                0.1266234   0.0879311   0.1653157
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                0.2146479   0.1686572   0.2606386
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                0.4634491   0.4268640   0.5000342
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                0.2772029   0.2414258   0.3129800
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                0.7072243   0.6521810   0.7622676
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                0.9416667   0.8996954   0.9836380
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                0.8757062   0.8270595   0.9243529
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              NA                0.2990612   0.2718332   0.3262893
24 months   ki1135781-COHORTS          INDIA                          <48 cm               NA                0.7088327   0.6886743   0.7289910
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           NA                0.4864323   0.4634046   0.5094600
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                0.4545382   0.4223409   0.4867355
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                0.8027795   0.7714601   0.8340988
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                0.6642939   0.6345183   0.6940695
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                0.1610083   0.1125025   0.2095140
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                0.6020217   0.5862058   0.6178376
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                0.2683521   0.2451755   0.2915287
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                0.2776842   0.2444441   0.3109242
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                0.5219579   0.4945161   0.5493997
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                0.2864532   0.2492948   0.3236116


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2884615   0.2009687   0.3759544
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2442159   0.2014677   0.2869642
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2839879   0.2652870   0.3026888
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2702703   0.2319893   0.3085512
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1336303   0.1154530   0.1518076
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765238
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1624111   0.1546051   0.1702171
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3880814   0.3516414   0.4245214
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1864711   0.1767241   0.1962180
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2117734   0.1963625   0.2271843
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2554582   0.2465868   0.2643296
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2490050   0.2328619   0.2651480
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4866310   0.4148009   0.5584611
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3875000   0.3117751   0.4632249
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3516484   0.2530008   0.4502959
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7403846   0.6557158   0.8250534
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7264151   0.6411459   0.8116842
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4102564   0.3613763   0.4591366
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5700483   0.5223021   0.6177945
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3239437   0.2958244   0.3520629
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4476386   0.4034301   0.4918471
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0852540   0.0554439   0.1150642
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3463930   0.3231291   0.3696570
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8107143   0.7782403   0.8431882
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.5350988   0.5209252   0.5492723
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6232596   0.6040367   0.6424826
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4981904   0.4842373   0.5121435
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3982945   0.3795521   0.4170368


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            1.1333333    0.4966487    2.586223
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.6400000    0.2451020    1.671141
6 months    ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
6 months    ki1000108-IRC              INDIA                          <48 cm               >=50 cm            3.2611653    2.0521022    5.182588
6 months    ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            1.6451082    0.9900829    2.733489
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            7.1604072    3.8347754   13.370126
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            2.4053449    1.1378268    5.084855
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            6.4321608    3.3739117   12.262530
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            2.3450586    1.1676868    4.709568
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            3.7660210    2.6385344    5.375300
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            2.6041022    1.8396561    3.686204
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            6.3168096    4.7923295    8.326239
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            3.2457536    2.5072314    4.201812
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            3.3789638    2.9178104    3.913002
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            1.7546612    1.4995703    2.053145
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            4.6389668    3.6130384    5.956209
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            2.9200599    2.2267014    3.829319
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            9.9844639    7.4113787   13.450874
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            3.1116042    2.2671544    4.270587
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm            5.8735964    4.6276439    7.455011
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm            2.8445777    2.2110194    3.659679
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm           21.8229870   11.0341127   43.160948
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            3.5123720    1.7440348    7.073687
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            2.9839866    2.4506897    3.633335
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            1.0410448    0.8030777    1.349526
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            2.8708333    1.5825618    5.207812
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            1.8480392    0.9768432    3.496210
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            1.5285759    0.8732888    2.675569
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.8662524    0.4435857    1.691653
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               >=50 cm            1.0666667    0.4801989    2.369388
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           >=50 cm            1.2631579    0.6587862    2.421981
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            1.7668067    1.1799532    2.645534
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            1.7177700    1.1474771    2.571497
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            1.0472727    0.7200585    1.523182
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            1.0909091    0.7479154    1.591200
24 months   ki1000108-IRC              INDIA                          >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
24 months   ki1000108-IRC              INDIA                          <48 cm               >=50 cm            1.6655460    1.2324182    2.250894
24 months   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            1.1804057    0.8496348    1.639949
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            2.3853917    1.7730742    3.209168
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            1.5869632    1.1471056    2.195484
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            3.9334175    2.5244421    6.128789
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            1.8083979    1.1186955    2.923318
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            6.0800000    3.0356333   12.177492
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            4.1290323    2.0208559    8.436479
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            2.0774208    1.6849919    2.561245
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            1.5707016    1.2802053    1.927115
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm            2.1976983    1.4616889    3.304313
24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            1.4434544    0.9269125    2.247850
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
24 months   ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            1.9662142    0.9709023    3.981861
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            1.5649460    1.0753775    2.277392
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            2.1591131    1.7185492    2.712619
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            1.2914309    1.0060194    1.657815
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            1.3314964    1.2172746    1.456436
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            1.2382298    1.1253130    1.362477
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            2.3701923    2.1554367    2.606345
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            1.6265307    1.4689530    1.801012
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm            1.7661430    1.6297662    1.913932
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm            1.4614699    1.3450434    1.587974
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            3.7390738    2.7615114    5.062689
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            1.6666978    1.2215326    2.274095
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            1.8796819    1.6515894    2.139275
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            1.0315792    0.8652038    1.229948


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0240385   -0.2331135   0.1850366
6 months    ki1000108-IRC              INDIA                          >=50 cm              NA                 0.1084244    0.0570971   0.1597517
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.2238850    0.1786904   0.2690795
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.1952703    0.1436988   0.2468418
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.0664635    0.0485972   0.0843298
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0139229    0.0102659   0.0175800
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0818707    0.0714804   0.0922611
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.2173540    0.1812278   0.2534802
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.1519127    0.1394859   0.1643396
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.1385694    0.1211485   0.1559903
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.2397914    0.2265622   0.2530205
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.1207908    0.0984810   0.1431005
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.2558618    0.1317402   0.3799833
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0629403   -0.0838632   0.2097437
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.0391484   -0.0930207   0.1713174
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.2576260    0.1095014   0.4057506
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0389151   -0.1699483   0.2477785
24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0912651    0.0271671   0.1553632
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.2419854    0.1588621   0.3251086
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.1899829    0.1325381   0.2474276
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.1943093    0.1462097   0.2424089
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.0887401    0.0609868   0.1164934
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.1973911    0.1062231   0.2885591
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0043417   -0.0002862   0.0089697
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.1317451    0.0890233   0.1744669
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.1034900    0.0682975   0.1386824
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.2360375    0.2113878   0.2606873
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.1687214    0.1436268   0.1938160
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.3371822    0.2890428   0.3853216
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.1206103    0.0917375   0.1494831


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0833333   -1.1149548   0.4450893
6 months    ki1000108-IRC              INDIA                          >=50 cm              NA                 0.4439694    0.2041601   0.6115172
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.7883609    0.6073484   0.8859266
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.7225000    0.4923498   0.8483084
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.4973685    0.3612867   0.6044572
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.2221046    0.1495216   0.2884931
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.5040957    0.4398951   0.5609375
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.5600732    0.4638710   0.6390130
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.8146719    0.7532082   0.8608280
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.6543285    0.5754408   0.7185580
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.9386717    0.8789825   0.9689205
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.4850938    0.3911852   0.5645171
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.5257819    0.1900215   0.7223595
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.1624265   -0.3170748   0.4673579
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.1113281   -0.3564367   0.4177851
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.3479624    0.0994439   0.5278994
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0535714   -0.2827855   0.3017328
24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                 0.2224587    0.0489141   0.3643367
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.4244997    0.2557535   0.5549854
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.5779479    0.3718332   0.7164320
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.7566288    0.5354111   0.8725119
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.2739368    0.1835273   0.3543351
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.4409609    0.1938582   0.6123204
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0509269   -0.0054685   0.1041592
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.3803342    0.2445837   0.4916900
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.1276528    0.0811386   0.1718124
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.4411102    0.3927040   0.4856581
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.2707081    0.2280726   0.3109887
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.6768138    0.5647103   0.7600465
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.3028169    0.2260388   0.3719785
