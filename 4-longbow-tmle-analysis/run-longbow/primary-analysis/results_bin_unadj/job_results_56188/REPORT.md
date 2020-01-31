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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        birthlen      sstunted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -----------  ---------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              0       39     231  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              1        0     231  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm               0      104     231  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm               1        9     231  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           0       79     231  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           1        0     231  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              0       30      65  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm              1        0      65  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm               0       14      65  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm               1        3      65  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           0       18      65  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           1        0      65  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              0        9      47  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm              1        0      47  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm               0       18      47  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm               1        2      47  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm           0       18      47  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm           1        0      47  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              0        8      27  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm              1        0      27  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm               0       11      27  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm               1        1      27  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm           0        7      27  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm           1        0      27  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              0       52     233  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm              1        0     233  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           <48 cm               0       84     233  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           <48 cm               1        4     233  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm           0       93     233  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm           1        0     233  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              0       44     123  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              1        0     123  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               0       31     123  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               1        2     123  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           0       46     123  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           1        0     123  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              0       32     125  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              1        0     125  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               0       32     125  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               1       10     125  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           0       51     125  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           1        0     125  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              0       14      92  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              1        0      92  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               0       34      92  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               1        4      92  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           0       40      92  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           1        0      92  sstunted         
Birth       ki1000108-IRC              INDIA                          >=50 cm              0      142     388  sstunted         
Birth       ki1000108-IRC              INDIA                          >=50 cm              1        0     388  sstunted         
Birth       ki1000108-IRC              INDIA                          <48 cm               0       92     388  sstunted         
Birth       ki1000108-IRC              INDIA                          <48 cm               1       16     388  sstunted         
Birth       ki1000108-IRC              INDIA                          [48-50) cm           0      138     388  sstunted         
Birth       ki1000108-IRC              INDIA                          [48-50) cm           1        0     388  sstunted         
Birth       ki1000109-EE               PAKISTAN                       >=50 cm              0       24     240  sstunted         
Birth       ki1000109-EE               PAKISTAN                       >=50 cm              1        0     240  sstunted         
Birth       ki1000109-EE               PAKISTAN                       <48 cm               0      114     240  sstunted         
Birth       ki1000109-EE               PAKISTAN                       <48 cm               1       48     240  sstunted         
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm           0       54     240  sstunted         
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm           1        0     240  sstunted         
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm              0       12      42  sstunted         
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm              1        0      42  sstunted         
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm               0       14      42  sstunted         
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm               1        2      42  sstunted         
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm           0       14      42  sstunted         
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm           1        0      42  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              0      116    1252  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              1        0    1252  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm               0      647    1252  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm               1       91    1252  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           0      398    1252  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           1        0    1252  sstunted         
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              0      139     608  sstunted         
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              1        0     608  sstunted         
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm               0      221     608  sstunted         
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm               1       19     608  sstunted         
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           0      229     608  sstunted         
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           1        0     608  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              0      121     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              1        0     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     <48 cm               0      192     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     <48 cm               1        4     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           0      222     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           1        0     539  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              0      161     732  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              1        0     732  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               0      277     732  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               1       10     732  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           0      284     732  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           1        0     732  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm              0      763    1543  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm              1        0    1543  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         <48 cm               0      256    1543  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         <48 cm               1       29    1543  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm           0      495    1543  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm           1        0    1543  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          >=50 cm              0      115     696  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          >=50 cm              1        0     696  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          <48 cm               0      342     696  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          <48 cm               1       31     696  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           0      208     696  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           1        0     696  sstunted         
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm              0        2      26  sstunted         
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm              1        0      26  sstunted         
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm               0       10      26  sstunted         
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm               1        6      26  sstunted         
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm           0        8      26  sstunted         
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm           1        0      26  sstunted         
Birth       ki1114097-CONTENT          PERU                           >=50 cm              0        1       2  sstunted         
Birth       ki1114097-CONTENT          PERU                           >=50 cm              1        0       2  sstunted         
Birth       ki1114097-CONTENT          PERU                           <48 cm               0        1       2  sstunted         
Birth       ki1114097-CONTENT          PERU                           <48 cm               1        0       2  sstunted         
Birth       ki1114097-CONTENT          PERU                           [48-50) cm           0        0       2  sstunted         
Birth       ki1114097-CONTENT          PERU                           [48-50) cm           1        0       2  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              0    12623   13890  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm              1        0   13890  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        <48 cm               0      142   13890  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        <48 cm               1        5   13890  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm           0     1120   13890  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm           1        0   13890  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              0     4125   13875  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              1        0   13875  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               0     3967   13875  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               1      442   13875  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           0     5341   13875  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           1        0   13875  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              0      437     852  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm              1        0     852  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm               0      152     852  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm               1       11     852  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm           0      252     852  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm           1        0     852  sstunted         
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              0     1426    6640  sstunted         
Birth       ki1135781-COHORTS          INDIA                          >=50 cm              1        0    6640  sstunted         
Birth       ki1135781-COHORTS          INDIA                          <48 cm               0     2568    6640  sstunted         
Birth       ki1135781-COHORTS          INDIA                          <48 cm               1      206    6640  sstunted         
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm           0     2440    6640  sstunted         
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm           1        0    6640  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              0     1129    3050  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm              1        0    3050  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm               0      716    3050  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm               1       46    3050  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           0     1159    3050  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           1        0    3050  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              0     1258   22455  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              1        0   22455  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               0    13661   22455  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               1     2448   22455  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           0     5088   22455  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           1        0   22455  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              0      178    2823  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              1        0    2823  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               0     1680    2823  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               1      233    2823  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           0      732    2823  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           1        0    2823  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              0       39     211  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              1        0     211  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               0       91     211  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm               1        7     211  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           0       74     211  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           1        0     211  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              0       28      59  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm              1        0      59  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               0       15      59  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm               1        0      59  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           0       16      59  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           1        0      59  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              0        8      41  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm              1        0      41  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm               0       17      41  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm               1        1      41  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           0       15      41  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm           1        0      41  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              0        8      26  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm              1        0      26  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               0       11      26  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm               1        0      26  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           0        7      26  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm           1        0      26  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              0       48     215  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm              1        0     215  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           <48 cm               0       78     215  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           <48 cm               1        6     215  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           0       82     215  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm           1        1     215  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              0       34      93  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              1        0      93  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               0       18      93  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               1        3      93  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           0       38      93  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           1        0      93  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              0       31     118  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              1        0     118  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               0       34     118  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               1        5     118  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           0       48     118  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           1        0     118  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              0       15     104  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              1        1     104  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               0       43     104  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               1        5     104  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           0       37     104  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           1        3     104  sstunted         
6 months    ki1000108-IRC              INDIA                          >=50 cm              0      140     389  sstunted         
6 months    ki1000108-IRC              INDIA                          >=50 cm              1        2     389  sstunted         
6 months    ki1000108-IRC              INDIA                          <48 cm               0       91     389  sstunted         
6 months    ki1000108-IRC              INDIA                          <48 cm               1       18     389  sstunted         
6 months    ki1000108-IRC              INDIA                          [48-50) cm           0      130     389  sstunted         
6 months    ki1000108-IRC              INDIA                          [48-50) cm           1        8     389  sstunted         
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              0       24     236  sstunted         
6 months    ki1000109-EE               PAKISTAN                       >=50 cm              1        0     236  sstunted         
6 months    ki1000109-EE               PAKISTAN                       <48 cm               0      110     236  sstunted         
6 months    ki1000109-EE               PAKISTAN                       <48 cm               1       50     236  sstunted         
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm           0       49     236  sstunted         
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm           1        3     236  sstunted         
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              0        8      34  sstunted         
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm              1        2      34  sstunted         
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm               0        8      34  sstunted         
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm               1        5      34  sstunted         
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm           0        9      34  sstunted         
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm           1        2      34  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              0      191    1324  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              1        5    1324  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               0      600    1324  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               1      109    1324  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           0      407    1324  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           1       12    1324  sstunted         
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              0      117     518  sstunted         
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              1        3     518  sstunted         
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               0      170     518  sstunted         
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               1       29     518  sstunted         
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           0      196     518  sstunted         
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           1        3     518  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              0      143     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              1        0     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               0      202     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm               1       11     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           0      245     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           1        3     604  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              0      164     715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              1        0     715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               0      253     715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               1       17     715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           0      275     715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           1        6     715  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              0      666    1347  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              1       11    1347  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         <48 cm               0      219    1347  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         <48 cm               1       15    1347  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           0      428    1347  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           1        8    1347  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              0       96     563  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm              1        0     563  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm               0      276     563  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm               1       20     563  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           0      170     563  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           1        1     563  sstunted         
6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm              0        0      12  sstunted         
6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm              1        0      12  sstunted         
6 months    ki1114097-CMIN             BANGLADESH                     <48 cm               0        5      12  sstunted         
6 months    ki1114097-CMIN             BANGLADESH                     <48 cm               1        1      12  sstunted         
6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm           0        6      12  sstunted         
6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm           1        0      12  sstunted         
6 months    ki1114097-CONTENT          PERU                           >=50 cm              0        1       2  sstunted         
6 months    ki1114097-CONTENT          PERU                           >=50 cm              1        0       2  sstunted         
6 months    ki1114097-CONTENT          PERU                           <48 cm               0        1       2  sstunted         
6 months    ki1114097-CONTENT          PERU                           <48 cm               1        0       2  sstunted         
6 months    ki1114097-CONTENT          PERU                           [48-50) cm           0        0       2  sstunted         
6 months    ki1114097-CONTENT          PERU                           [48-50) cm           1        0       2  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              0    14134   15761  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              1      162   15761  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        <48 cm               0      156   15761  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        <48 cm               1       16   15761  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           0     1228   15761  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           1       65   15761  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              0     2502    8577  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              1       36    8577  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               0     2486    8577  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               1      194    8577  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           0     3242    8577  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           1      117    8577  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              0      341     688  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              1       10     688  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               0       90     688  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               1       43     688  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           0      180     688  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           1       24     688  sstunted         
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              0     1324    6135  sstunted         
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              1        6    6135  sstunted         
6 months    ki1135781-COHORTS          INDIA                          <48 cm               0     2302    6135  sstunted         
6 months    ki1135781-COHORTS          INDIA                          <48 cm               1      228    6135  sstunted         
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm           0     2238    6135  sstunted         
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm           1       37    6135  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              0      977    2701  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              1       13    2701  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               0      593    2701  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               1       84    2701  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           0      999    2701  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           1       35    2701  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              0      824   13924  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              1        3   13924  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               0     9004   13924  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               1      813   13924  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           0     3263   13924  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           1       17   13924  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              0     1073    4020  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              1       28    4020  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               0     1750    4020  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               1      173    4020  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           0      982    4020  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           1       14    4020  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              0       38     187  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              1        1     187  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               0       63     187  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               1       17     187  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           0       64     187  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           1        4     187  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              0       20      42  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm              1        0      42  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               0       10      42  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm               1        0      42  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           0       12      42  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm           1        0      42  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              0        6      39  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm              1        0      39  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               0       12      39  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm               1        6      39  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           0       13      39  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm           1        2      39  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              0        8      26  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm              1        0      26  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               0       11      26  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm               1        0      26  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           0        7      26  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm           1        0      26  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              0       33     160  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              1        1     160  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           <48 cm               0       58     160  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           <48 cm               1        9     160  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           0       58     160  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           1        1     160  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              0       31      91  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              1        1      91  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               0       18      91  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               1        3      91  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           0       33      91  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           1        5      91  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              0       26     104  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              1        3     104  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               0       22     104  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               1       12     104  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           0       29     104  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           1       12     104  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              0       14     106  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              1        2     106  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               0       32     106  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               1       18     106  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           0       28     106  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           1       12     106  sstunted         
24 months   ki1000108-IRC              INDIA                          >=50 cm              0      130     390  sstunted         
24 months   ki1000108-IRC              INDIA                          >=50 cm              1       12     390  sstunted         
24 months   ki1000108-IRC              INDIA                          <48 cm               0       91     390  sstunted         
24 months   ki1000108-IRC              INDIA                          <48 cm               1       19     390  sstunted         
24 months   ki1000108-IRC              INDIA                          [48-50) cm           0      130     390  sstunted         
24 months   ki1000108-IRC              INDIA                          [48-50) cm           1        8     390  sstunted         
24 months   ki1000109-EE               PAKISTAN                       >=50 cm              0       10     106  sstunted         
24 months   ki1000109-EE               PAKISTAN                       >=50 cm              1        0     106  sstunted         
24 months   ki1000109-EE               PAKISTAN                       <48 cm               0       41     106  sstunted         
24 months   ki1000109-EE               PAKISTAN                       <48 cm               1       30     106  sstunted         
24 months   ki1000109-EE               PAKISTAN                       [48-50) cm           0       16     106  sstunted         
24 months   ki1000109-EE               PAKISTAN                       [48-50) cm           1        9     106  sstunted         
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              0       89     414  sstunted         
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              1       10     414  sstunted         
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               0       98     414  sstunted         
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               1       62     414  sstunted         
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           0      133     414  sstunted         
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           1       22     414  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              0      137     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              1        2     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               0      165     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               1       41     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           0      224     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           1        9     578  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              0      128     514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              1        0     514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               0      172     514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               1       28     514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           0      178     514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           1        8     514  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              0      514    1065  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              1       21    1065  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         <48 cm               0      172    1065  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         <48 cm               1       24    1065  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           0      296    1065  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           1       38    1065  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              0       80     487  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              1        4     487  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               0      208     487  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               1       41     487  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           0      146     487  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           1        8     487  sstunted         
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm              0        0      11  sstunted         
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm              1        0      11  sstunted         
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm               0        1      11  sstunted         
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm               1        4      11  sstunted         
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm           0        6      11  sstunted         
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm           1        0      11  sstunted         
24 months   ki1114097-CONTENT          PERU                           >=50 cm              0        1       2  sstunted         
24 months   ki1114097-CONTENT          PERU                           >=50 cm              1        0       2  sstunted         
24 months   ki1114097-CONTENT          PERU                           <48 cm               0        1       2  sstunted         
24 months   ki1114097-CONTENT          PERU                           <48 cm               1        0       2  sstunted         
24 months   ki1114097-CONTENT          PERU                           [48-50) cm           0        0       2  sstunted         
24 months   ki1114097-CONTENT          PERU                           [48-50) cm           1        0       2  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              0     3628    4035  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              1       55    4035  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        <48 cm               0       41    4035  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        <48 cm               1        3    4035  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           0      301    4035  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           1        7    4035  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              0      296    1608  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              1       16    1608  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               0      599    1608  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               1      112    1608  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           0      539    1608  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           1       46    1608  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              0      180     560  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              1       83     560  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               0       40     560  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               1       80     560  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           0       78     560  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           1       99     560  sstunted         
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              0      973    4758  sstunted         
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              1       74    4758  sstunted         
24 months   ki1135781-COHORTS          INDIA                          <48 cm               0     1215    4758  sstunted         
24 months   ki1135781-COHORTS          INDIA                          <48 cm               1      719    4758  sstunted         
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           0     1474    4758  sstunted         
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           1      303    4758  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              0      752    2442  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              1      145    2442  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               0      329    2442  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               1      275    2442  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           0      655    2442  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           1      286    2442  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              0      398    7184  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              1        6    7184  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               0     3994    7184  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               1     1073    7184  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           0     1649    7184  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           1       64    7184  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              0     1030    3987  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              1       47    3987  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               0     1671    3987  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               1      273    3987  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           0      914    3987  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           1       52    3987  sstunted         


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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/e1cea9c7-83c5-42d5-95b2-d95141f7ca1f/bdab73d1-cb22-4136-9b99-382332feed25/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e1cea9c7-83c5-42d5-95b2-d95141f7ca1f/bdab73d1-cb22-4136-9b99-382332feed25/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e1cea9c7-83c5-42d5-95b2-d95141f7ca1f/bdab73d1-cb22-4136-9b99-382332feed25/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e1cea9c7-83c5-42d5-95b2-d95141f7ca1f/bdab73d1-cb22-4136-9b99-382332feed25/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                0.0113318    0.0063909   0.0162728
6 months    ki1119695-PROBIT          BELARUS       <48 cm               NA                0.0930233    0.0715043   0.1145422
6 months    ki1119695-PROBIT          BELARUS       [48-50) cm           NA                0.0502707    0.0337764   0.0667650
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0141844    0.0095836   0.0187852
6 months    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.0723881    0.0625768   0.0821993
6 months    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0348318    0.0286309   0.0410327
6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0284900    0.0110727   0.0459073
6 months    ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.3233083    0.2437579   0.4028586
6 months    ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.1176471    0.0734024   0.1618917
6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0045113    0.0009094   0.0081131
6 months    ki1135781-COHORTS         INDIA         <48 cm               NA                0.0901186    0.0789596   0.1012775
6 months    ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.0162637    0.0110657   0.0214618
6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0131313    0.0060389   0.0202237
6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.1240768    0.0992390   0.1489146
6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.0338491    0.0228245   0.0448738
6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0254314    0.0162510   0.0346118
6 months    kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.0899636    0.0740404   0.1058868
6 months    kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.0140562    0.0066198   0.0214927
24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.0845070    0.0386997   0.1303144
24 months   ki1000108-IRC             INDIA         <48 cm               NA                0.1727273    0.1019956   0.2434590
24 months   ki1000108-IRC             INDIA         [48-50) cm           NA                0.0579710    0.0189316   0.0970105
24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.1010101    0.0415788   0.1604414
24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               NA                0.3875000    0.3119208   0.4630792
24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           NA                0.1419355    0.0869291   0.1969418
24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0392523    0.0227892   0.0557155
24 months   ki1101329-Keneba          GAMBIA        <48 cm               NA                0.1224490    0.0765358   0.1683622
24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           NA                0.1137725    0.0797026   0.1478423
24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0512821    0.0267995   0.0757646
24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               NA                0.1575246    0.1307390   0.1843102
24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           NA                0.0786325    0.0568141   0.1004509
24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.3155894    0.2593710   0.3718077
24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               NA                0.6666667    0.5822478   0.7510855
24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           NA                0.5593220    0.4861170   0.6325271
24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0706781    0.0551526   0.0862036
24 months   ki1135781-COHORTS         INDIA         <48 cm               NA                0.3717684    0.3502276   0.3933091
24 months   ki1135781-COHORTS         INDIA         [48-50) cm           NA                0.1705121    0.1530244   0.1879998
24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.1616499    0.1375541   0.1857457
24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               NA                0.4552980    0.4155747   0.4950214
24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           NA                0.3039320    0.2745382   0.3333258
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.0148515   -0.0004421   0.0301450
24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               NA                0.2117624    0.1987696   0.2247552
24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           NA                0.0373614    0.0276804   0.0470423
24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0436397    0.0283323   0.0589472
24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               NA                0.1404321    0.1228982   0.1579660
24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           NA                0.0538302    0.0376008   0.0700596


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
6 months    ki1119695-PROBIT          BELARUS       <48 cm               >=50 cm            8.2090152   5.5059079   12.239204
6 months    ki1119695-PROBIT          BELARUS       [48-50) cm           >=50 cm            4.4362331   3.0055082    6.548032
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm            5.1033582   3.5907642    7.253126
6 months    ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm            2.4556416   1.6961984    3.555112
6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm           11.3481203   5.8711376   21.934392
6 months    ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm            4.1294118   2.0145065    8.464625
6 months    ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS         INDIA         <48 cm               >=50 cm           19.9762846   8.9048026   44.813115
6 months    ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm            3.6051282   1.5255447    8.519547
6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm            9.4489263   5.3115465   16.809080
6 months    ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm            2.5777414   1.3718991    4.843469
6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm            3.5374972   2.3727885    5.273916
6 months    kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm            0.5527108   0.2895371    1.055095
24 months   ki1000108-IRC             INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   ki1000108-IRC             INDIA         <48 cm               >=50 cm            2.0439394   1.0361710    4.031852
24 months   ki1000108-IRC             INDIA         [48-50) cm           >=50 cm            0.6859903   0.2889866    1.628389
24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth       BANGLADESH    <48 cm               >=50 cm            3.8362500   2.0639869    7.130284
24 months   ki1017093-NIH-Birth       BANGLADESH    [48-50) cm           >=50 cm            1.4051613   0.6946248    2.842511
24 months   ki1101329-Keneba          GAMBIA        >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba          GAMBIA        <48 cm               >=50 cm            3.1195335   1.7773006    5.475432
24 months   ki1101329-Keneba          GAMBIA        [48-50) cm           >=50 cm            2.8984887   1.7312432    4.852719
24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE      <48 cm               >=50 cm            3.0717299   1.8504940    5.098922
24 months   ki1126311-ZVITAMBO        ZIMBABWE      [48-50) cm           >=50 cm            1.5333333   0.8827227    2.663476
24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS         GUATEMALA     <48 cm               >=50 cm            2.1124498   1.6977266    2.628482
24 months   ki1135781-COHORTS         GUATEMALA     [48-50) cm           >=50 cm            1.7723096   1.4208193    2.210754
24 months   ki1135781-COHORTS         INDIA         >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS         INDIA         <48 cm               >=50 cm            5.2600198   4.1910722    6.601606
24 months   ki1135781-COHORTS         INDIA         [48-50) cm           >=50 cm            2.4125158   1.8931503    3.074364
24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS         PHILIPPINES   <48 cm               >=50 cm            2.8165677   2.3697901    3.347577
24 months   ki1135781-COHORTS         PHILIPPINES   [48-50) cm           >=50 cm            1.8801862   1.5741007    2.245790
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3         BANGLADESH    <48 cm               >=50 cm           14.2586623   5.0919529   39.927599
24 months   kiGH5241-JiVitA-3         BANGLADESH    [48-50) cm           >=50 cm            2.5156637   0.8759202    7.225046
24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              >=50 cm            1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4         BANGLADESH    <48 cm               >=50 cm            3.2179865   2.2232727    4.657745
24 months   kiGH5241-JiVitA-4         BANGLADESH    [48-50) cm           >=50 cm            1.2335139   0.7735872    1.966884


### Parameter: PAR


agecat      studyid                   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.0696560    0.0518817   0.0874302
6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0089931    0.0006416   0.0173447
6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                0.0040860    0.0026878   0.0054842
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0262726    0.0211708   0.0313745
6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.0834286    0.0599851   0.1068720
6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                0.0396615    0.0338486   0.0454744
6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.0357395    0.0268198   0.0446592
6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0280512    0.0177879   0.0383145
24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.0154930   -0.0227050   0.0536909
24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.1260430    0.0670921   0.1849940
24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.0386819    0.0226142   0.0547497
24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.0569269    0.0324836   0.0813702
24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.1522678    0.1086468   0.1958888
24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.1596708    0.1429936   0.1763479
24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.1274573    0.1056054   0.1493093
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.1442521    0.1269500   0.1615542
24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.0496635    0.0351996   0.0641274


### Parameter: PAF


agecat      studyid                   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki1000304b-SAS-CompFeed   INDIA         >=50 cm              NA                0.7319404    0.5143576   0.8520394
6 months    ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.3562864   -0.0415418   0.6021598
6 months    ki1119695-PROBIT          BELARUS       >=50 cm              NA                0.2650159    0.1608133   0.3562795
6 months    ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.6493960    0.5236028   0.7419734
6 months    ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.7454397    0.5513963   0.8555497
6 months    ki1135781-COHORTS         INDIA         >=50 cm              NA                0.8978720    0.7751591   0.9536111
6 months    ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.7313055    0.5517329   0.8389426
6 months    kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.5244915    0.3290569   0.6629992
24 months   ki1000108-IRC             INDIA         >=50 cm              NA                0.1549296   -0.3244291   0.4607910
24 months   ki1017093-NIH-Birth       BANGLADESH    >=50 cm              NA                0.5551257    0.2277375   0.7437230
24 months   ki1101329-Keneba          GAMBIA        >=50 cm              NA                0.4963405    0.2780782   0.6486144
24 months   ki1126311-ZVITAMBO        ZIMBABWE      >=50 cm              NA                0.5260831    0.2541095   0.6988872
24 months   ki1135781-COHORTS         GUATEMALA     >=50 cm              NA                0.3254579    0.2245259   0.4132530
24 months   ki1135781-COHORTS         INDIA         >=50 cm              NA                0.6931692    0.6211681   0.7514857
24 months   ki1135781-COHORTS         PHILIPPINES   >=50 cm              NA                0.4408652    0.3630895   0.5091434
24 months   kiGH5241-JiVitA-3         BANGLADESH    >=50 cm              NA                0.9066552    0.7397900   0.9665145
24 months   kiGH5241-JiVitA-4         BANGLADESH    >=50 cm              NA                0.5322805    0.3554973   0.6605732
