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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        birthlen      stunted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -----------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             0       39     231  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             1        0     231  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm              0       69     231  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     <48 cm              1       44     231  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          0       79     231  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          1        0     231  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm             0       30      65  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         >=50 cm             1        0      65  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm              0        8      65  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         <48 cm              1        9      65  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          0       18      65  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          1        0      65  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm             0        9      47  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          >=50 cm             1        0      47  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm              0       10      47  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          <48 cm              1       10      47  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm          0       18      47  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          [48-50) cm          1        0      47  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm             0        8      27  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          >=50 cm             1        0      27  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm              0       10      27  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          <48 cm              1        2      27  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm          0        7      27  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          [48-50) cm          1        0      27  stunted          
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm             0       52     233  stunted          
Birth       ki0047075b-MAL-ED          PERU                           >=50 cm             1        0     233  stunted          
Birth       ki0047075b-MAL-ED          PERU                           <48 cm              0       62     233  stunted          
Birth       ki0047075b-MAL-ED          PERU                           <48 cm              1       26     233  stunted          
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm          0       93     233  stunted          
Birth       ki0047075b-MAL-ED          PERU                           [48-50) cm          1        0     233  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             0       44     123  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             1        0     123  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              0       23     123  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              1       10     123  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          0       46     123  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          1        0     123  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       32     125  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        0     125  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              0       19     125  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              1       23     125  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       51     125  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        0     125  stunted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             0       14      92  stunted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             1        0      92  stunted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              0       21      92  stunted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              1       17      92  stunted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          0       40      92  stunted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          1        0      92  stunted          
Birth       ki1000108-IRC              INDIA                          >=50 cm             0      142     388  stunted          
Birth       ki1000108-IRC              INDIA                          >=50 cm             1        0     388  stunted          
Birth       ki1000108-IRC              INDIA                          <48 cm              0       63     388  stunted          
Birth       ki1000108-IRC              INDIA                          <48 cm              1       45     388  stunted          
Birth       ki1000108-IRC              INDIA                          [48-50) cm          0      138     388  stunted          
Birth       ki1000108-IRC              INDIA                          [48-50) cm          1        0     388  stunted          
Birth       ki1000109-EE               PAKISTAN                       >=50 cm             0       24     240  stunted          
Birth       ki1000109-EE               PAKISTAN                       >=50 cm             1        0     240  stunted          
Birth       ki1000109-EE               PAKISTAN                       <48 cm              0       62     240  stunted          
Birth       ki1000109-EE               PAKISTAN                       <48 cm              1      100     240  stunted          
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm          0       54     240  stunted          
Birth       ki1000109-EE               PAKISTAN                       [48-50) cm          1        0     240  stunted          
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm             0       12      42  stunted          
Birth       ki1000109-ResPak           PAKISTAN                       >=50 cm             1        0      42  stunted          
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm              0        2      42  stunted          
Birth       ki1000109-ResPak           PAKISTAN                       <48 cm              1       14      42  stunted          
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm          0       14      42  stunted          
Birth       ki1000109-ResPak           PAKISTAN                       [48-50) cm          1        0      42  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             0      116    1252  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             1        0    1252  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm              0      389    1252  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          <48 cm              1      349    1252  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          0      398    1252  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          1        0    1252  stunted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             0      139     608  stunted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             1        0     608  stunted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm              0      143     608  stunted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     <48 cm              1       97     608  stunted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          0      229     608  stunted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          1        0     608  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             0      121     539  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             1        0     539  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     <48 cm              0      148     539  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     <48 cm              1       48     539  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          0      222     539  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          1        0     539  stunted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             0      161     732  stunted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             1        0     732  stunted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              0      186     732  stunted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              1      101     732  stunted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          0      284     732  stunted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          1        0     732  stunted          
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm             0      763    1543  stunted          
Birth       ki1101329-Keneba           GAMBIA                         >=50 cm             1        0    1543  stunted          
Birth       ki1101329-Keneba           GAMBIA                         <48 cm              0      202    1543  stunted          
Birth       ki1101329-Keneba           GAMBIA                         <48 cm              1       83    1543  stunted          
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm          0      495    1543  stunted          
Birth       ki1101329-Keneba           GAMBIA                         [48-50) cm          1        0    1543  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          >=50 cm             0      115     696  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          >=50 cm             1        0     696  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          <48 cm              0      251     696  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          <48 cm              1      122     696  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          [48-50) cm          0      208     696  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          [48-50) cm          1        0     696  stunted          
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm             0        2      26  stunted          
Birth       ki1114097-CMIN             BANGLADESH                     >=50 cm             1        0      26  stunted          
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm              0        7      26  stunted          
Birth       ki1114097-CMIN             BANGLADESH                     <48 cm              1        9      26  stunted          
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm          0        8      26  stunted          
Birth       ki1114097-CMIN             BANGLADESH                     [48-50) cm          1        0      26  stunted          
Birth       ki1114097-CONTENT          PERU                           >=50 cm             0        1       2  stunted          
Birth       ki1114097-CONTENT          PERU                           >=50 cm             1        0       2  stunted          
Birth       ki1114097-CONTENT          PERU                           <48 cm              0        1       2  stunted          
Birth       ki1114097-CONTENT          PERU                           <48 cm              1        0       2  stunted          
Birth       ki1114097-CONTENT          PERU                           [48-50) cm          0        0       2  stunted          
Birth       ki1114097-CONTENT          PERU                           [48-50) cm          1        0       2  stunted          
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm             0    12623   13890  stunted          
Birth       ki1119695-PROBIT           BELARUS                        >=50 cm             1        0   13890  stunted          
Birth       ki1119695-PROBIT           BELARUS                        <48 cm              0      114   13890  stunted          
Birth       ki1119695-PROBIT           BELARUS                        <48 cm              1       33   13890  stunted          
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm          0     1120   13890  stunted          
Birth       ki1119695-PROBIT           BELARUS                        [48-50) cm          1        0   13890  stunted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             0     4125   13875  stunted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             1        0   13875  stunted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              0     2975   13875  stunted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              1     1434   13875  stunted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          0     5341   13875  stunted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          1        0   13875  stunted          
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm             0      437     852  stunted          
Birth       ki1135781-COHORTS          GUATEMALA                      >=50 cm             1        0     852  stunted          
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm              0      113     852  stunted          
Birth       ki1135781-COHORTS          GUATEMALA                      <48 cm              1       50     852  stunted          
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm          0      252     852  stunted          
Birth       ki1135781-COHORTS          GUATEMALA                      [48-50) cm          1        0     852  stunted          
Birth       ki1135781-COHORTS          INDIA                          >=50 cm             0     1426    6640  stunted          
Birth       ki1135781-COHORTS          INDIA                          >=50 cm             1        0    6640  stunted          
Birth       ki1135781-COHORTS          INDIA                          <48 cm              0     1982    6640  stunted          
Birth       ki1135781-COHORTS          INDIA                          <48 cm              1      792    6640  stunted          
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm          0     2440    6640  stunted          
Birth       ki1135781-COHORTS          INDIA                          [48-50) cm          1        0    6640  stunted          
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm             0     1129    3050  stunted          
Birth       ki1135781-COHORTS          PHILIPPINES                    >=50 cm             1        0    3050  stunted          
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm              0      575    3050  stunted          
Birth       ki1135781-COHORTS          PHILIPPINES                    <48 cm              1      187    3050  stunted          
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          0     1159    3050  stunted          
Birth       ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          1        0    3050  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0     1258   22455  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1        0   22455  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0     8722   22455  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1     7387   22455  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     5088   22455  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1        0   22455  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             0      178    2823  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             1        0    2823  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              0     1056    2823  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              1      857    2823  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          0      732    2823  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          1        0    2823  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             0       38     211  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             1        1     211  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm              0       67     211  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     <48 cm              1       31     211  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          0       69     211  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          1        5     211  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm             0       28      59  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         >=50 cm             1        0      59  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm              0       14      59  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         <48 cm              1        1      59  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          0       15      59  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          1        1      59  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm             0        8      41  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          >=50 cm             1        0      41  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm              0       10      41  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          <48 cm              1        8      41  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm          0       10      41  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          [48-50) cm          1        5      41  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm             0        8      26  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          >=50 cm             1        0      26  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm              0       11      26  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          <48 cm              1        0      26  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm          0        7      26  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          [48-50) cm          1        0      26  stunted          
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm             0       46     215  stunted          
6 months    ki0047075b-MAL-ED          PERU                           >=50 cm             1        2     215  stunted          
6 months    ki0047075b-MAL-ED          PERU                           <48 cm              0       51     215  stunted          
6 months    ki0047075b-MAL-ED          PERU                           <48 cm              1       33     215  stunted          
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm          0       74     215  stunted          
6 months    ki0047075b-MAL-ED          PERU                           [48-50) cm          1        9     215  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             0       32      93  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             1        2      93  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              0       14      93  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              1        7      93  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          0       31      93  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          1        7      93  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       31     118  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             1        0     118  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              0       19     118  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              1       20     118  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0       39     118  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1        9     118  stunted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             0       11     104  stunted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             1        5     104  stunted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              0       31     104  stunted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              1       17     104  stunted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          0       32     104  stunted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          1        8     104  stunted          
6 months    ki1000108-IRC              INDIA                          >=50 cm             0      123     389  stunted          
6 months    ki1000108-IRC              INDIA                          >=50 cm             1       19     389  stunted          
6 months    ki1000108-IRC              INDIA                          <48 cm              0       62     389  stunted          
6 months    ki1000108-IRC              INDIA                          <48 cm              1       47     389  stunted          
6 months    ki1000108-IRC              INDIA                          [48-50) cm          0      109     389  stunted          
6 months    ki1000108-IRC              INDIA                          [48-50) cm          1       29     389  stunted          
6 months    ki1000109-EE               PAKISTAN                       >=50 cm             0       24     236  stunted          
6 months    ki1000109-EE               PAKISTAN                       >=50 cm             1        0     236  stunted          
6 months    ki1000109-EE               PAKISTAN                       <48 cm              0       61     236  stunted          
6 months    ki1000109-EE               PAKISTAN                       <48 cm              1       99     236  stunted          
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm          0       35     236  stunted          
6 months    ki1000109-EE               PAKISTAN                       [48-50) cm          1       17     236  stunted          
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm             0        6      34  stunted          
6 months    ki1000109-ResPak           PAKISTAN                       >=50 cm             1        4      34  stunted          
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm              0        7      34  stunted          
6 months    ki1000109-ResPak           PAKISTAN                       <48 cm              1        6      34  stunted          
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm          0        6      34  stunted          
6 months    ki1000109-ResPak           PAKISTAN                       [48-50) cm          1        5      34  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             0      184    1324  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm             1       12    1324  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm              0      405    1324  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm              1      304    1324  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          0      359    1324  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm          1       60    1324  stunted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             0      111     518  stunted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             1        9     518  stunted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm              0      103     518  stunted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm              1       96     518  stunted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          0      164     518  stunted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          1       35     518  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             0      141     604  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             1        2     604  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm              0      136     604  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     <48 cm              1       77     604  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          0      231     604  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          1       17     604  stunted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             0      162     715  stunted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             1        2     715  stunted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              0      162     715  stunted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              1      108     715  stunted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          0      241     715  stunted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          1       40     715  stunted          
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm             0      629    1347  stunted          
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm             1       48    1347  stunted          
6 months    ki1101329-Keneba           GAMBIA                         <48 cm              0      176    1347  stunted          
6 months    ki1101329-Keneba           GAMBIA                         <48 cm              1       58    1347  stunted          
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm          0      362    1347  stunted          
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm          1       74    1347  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm             0       93     563  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          >=50 cm             1        3     563  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm              0      193     563  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          <48 cm              1      103     563  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm          0      155     563  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          [48-50) cm          1       16     563  stunted          
6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm             0        0      12  stunted          
6 months    ki1114097-CMIN             BANGLADESH                     >=50 cm             1        0      12  stunted          
6 months    ki1114097-CMIN             BANGLADESH                     <48 cm              0        3      12  stunted          
6 months    ki1114097-CMIN             BANGLADESH                     <48 cm              1        3      12  stunted          
6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm          0        5      12  stunted          
6 months    ki1114097-CMIN             BANGLADESH                     [48-50) cm          1        1      12  stunted          
6 months    ki1114097-CONTENT          PERU                           >=50 cm             0        1       2  stunted          
6 months    ki1114097-CONTENT          PERU                           >=50 cm             1        0       2  stunted          
6 months    ki1114097-CONTENT          PERU                           <48 cm              0        1       2  stunted          
6 months    ki1114097-CONTENT          PERU                           <48 cm              1        0       2  stunted          
6 months    ki1114097-CONTENT          PERU                           [48-50) cm          0        0       2  stunted          
6 months    ki1114097-CONTENT          PERU                           [48-50) cm          1        0       2  stunted          
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm             0    13615   15761  stunted          
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm             1      681   15761  stunted          
6 months    ki1119695-PROBIT           BELARUS                        <48 cm              0      112   15761  stunted          
6 months    ki1119695-PROBIT           BELARUS                        <48 cm              1       60   15761  stunted          
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm          0     1046   15761  stunted          
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm          1      247   15761  stunted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             0     2328    8577  stunted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             1      210    8577  stunted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              0     1969    8577  stunted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              1      711    8577  stunted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          0     2887    8577  stunted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          1      472    8577  stunted          
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm             0      289     688  stunted          
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm             1       62     688  stunted          
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm              0       28     688  stunted          
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm              1      105     688  stunted          
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm          0      104     688  stunted          
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm          1      100     688  stunted          
6 months    ki1135781-COHORTS          INDIA                          >=50 cm             0     1282    6135  stunted          
6 months    ki1135781-COHORTS          INDIA                          >=50 cm             1       48    6135  stunted          
6 months    ki1135781-COHORTS          INDIA                          <48 cm              0     1678    6135  stunted          
6 months    ki1135781-COHORTS          INDIA                          <48 cm              1      852    6135  stunted          
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm          0     2031    6135  stunted          
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm          1      244    6135  stunted          
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm             0      913    2701  stunted          
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm             1       77    2701  stunted          
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm              0      394    2701  stunted          
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm              1      283    2701  stunted          
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          0      822    2701  stunted          
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          1      212    2701  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0      813   13924  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1       14   13924  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0     6452   13924  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1     3365   13924  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     3102   13924  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1      178   13924  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             0      959    4020  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             1      142    4020  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              0     1199    4020  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              1      724    4020  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          0      861    4020  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          1      135    4020  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             0       30     187  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm             1        9     187  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm              0       27     187  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm              1       53     187  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          0       39     187  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm          1       29     187  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm             0       20      42  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         >=50 cm             1        0      42  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm              0        9      42  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         <48 cm              1        1      42  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          0       11      42  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         [48-50) cm          1        1      42  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm             0        5      39  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          >=50 cm             1        1      39  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm              0        6      39  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          <48 cm              1       12      39  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm          0        7      39  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          [48-50) cm          1        8      39  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm             0        8      26  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          >=50 cm             1        0      26  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm              0        7      26  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          <48 cm              1        4      26  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm          0        3      26  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          [48-50) cm          1        4      26  stunted          
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm             0       23     160  stunted          
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm             1       11     160  stunted          
24 months   ki0047075b-MAL-ED          PERU                           <48 cm              0       34     160  stunted          
24 months   ki0047075b-MAL-ED          PERU                           <48 cm              1       33     160  stunted          
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm          0       41     160  stunted          
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm          1       18     160  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             0       22      91  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm             1       10      91  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              0       14      91  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm              1        7      91  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          0       23      91  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm          1       15      91  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             0       15     104  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm             1       14     104  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              0        5     104  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm              1       29     104  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          0        7     104  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm          1       34     104  stunted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             0        5     106  stunted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm             1       11     106  stunted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              0       14     106  stunted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm              1       36     106  stunted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          0       10     106  stunted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm          1       30     106  stunted          
24 months   ki1000108-IRC              INDIA                          >=50 cm             0       95     390  stunted          
24 months   ki1000108-IRC              INDIA                          >=50 cm             1       47     390  stunted          
24 months   ki1000108-IRC              INDIA                          <48 cm              0       51     390  stunted          
24 months   ki1000108-IRC              INDIA                          <48 cm              1       59     390  stunted          
24 months   ki1000108-IRC              INDIA                          [48-50) cm          0       84     390  stunted          
24 months   ki1000108-IRC              INDIA                          [48-50) cm          1       54     390  stunted          
24 months   ki1000109-EE               PAKISTAN                       >=50 cm             0        9     106  stunted          
24 months   ki1000109-EE               PAKISTAN                       >=50 cm             1        1     106  stunted          
24 months   ki1000109-EE               PAKISTAN                       <48 cm              0       16     106  stunted          
24 months   ki1000109-EE               PAKISTAN                       <48 cm              1       55     106  stunted          
24 months   ki1000109-EE               PAKISTAN                       [48-50) cm          0        8     106  stunted          
24 months   ki1000109-EE               PAKISTAN                       [48-50) cm          1       17     106  stunted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             0       66     414  stunted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm             1       33     414  stunted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm              0       35     414  stunted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm              1      125     414  stunted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          0       77     414  stunted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm          1       78     414  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             0      119     578  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm             1       20     578  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm              0       95     578  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm              1      111     578  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          0      174     578  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm          1       59     578  stunted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             0      120     514  stunted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm             1        8     514  stunted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              0      124     514  stunted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm              1       76     514  stunted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          0      138     514  stunted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm          1       48     514  stunted          
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm             0      407    1065  stunted          
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm             1      128    1065  stunted          
24 months   ki1101329-Keneba           GAMBIA                         <48 cm              0      102    1065  stunted          
24 months   ki1101329-Keneba           GAMBIA                         <48 cm              1       94    1065  stunted          
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm          0      211    1065  stunted          
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm          1      123    1065  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm             0       61     487  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm             1       23     487  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm              0      112     487  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm              1      137     487  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm          0       96     487  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm          1       58     487  stunted          
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm             0        0      11  stunted          
24 months   ki1114097-CMIN             BANGLADESH                     >=50 cm             1        0      11  stunted          
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm              0        1      11  stunted          
24 months   ki1114097-CMIN             BANGLADESH                     <48 cm              1        4      11  stunted          
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm          0        3      11  stunted          
24 months   ki1114097-CMIN             BANGLADESH                     [48-50) cm          1        3      11  stunted          
24 months   ki1114097-CONTENT          PERU                           >=50 cm             0        1       2  stunted          
24 months   ki1114097-CONTENT          PERU                           >=50 cm             1        0       2  stunted          
24 months   ki1114097-CONTENT          PERU                           <48 cm              0        1       2  stunted          
24 months   ki1114097-CONTENT          PERU                           <48 cm              1        0       2  stunted          
24 months   ki1114097-CONTENT          PERU                           [48-50) cm          0        0       2  stunted          
24 months   ki1114097-CONTENT          PERU                           [48-50) cm          1        0       2  stunted          
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm             0     3385    4035  stunted          
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm             1      298    4035  stunted          
24 months   ki1119695-PROBIT           BELARUS                        <48 cm              0       37    4035  stunted          
24 months   ki1119695-PROBIT           BELARUS                        <48 cm              1        7    4035  stunted          
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm          0      269    4035  stunted          
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm          1       39    4035  stunted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             0      243    1608  stunted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm             1       69    1608  stunted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              0      382    1608  stunted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm              1      329    1608  stunted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          0      426    1608  stunted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm          1      159    1608  stunted          
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm             0       77     560  stunted          
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm             1      186     560  stunted          
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm              0        7     560  stunted          
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm              1      113     560  stunted          
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm          0       22     560  stunted          
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm          1      155     560  stunted          
24 months   ki1135781-COHORTS          INDIA                          >=50 cm             0      736    4758  stunted          
24 months   ki1135781-COHORTS          INDIA                          >=50 cm             1      311    4758  stunted          
24 months   ki1135781-COHORTS          INDIA                          <48 cm              0      567    4758  stunted          
24 months   ki1135781-COHORTS          INDIA                          <48 cm              1     1367    4758  stunted          
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm          0      909    4758  stunted          
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm          1      868    4758  stunted          
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm             0      485    2442  stunted          
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm             1      412    2442  stunted          
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm              0      119    2442  stunted          
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm              1      485    2442  stunted          
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          0      316    2442  stunted          
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm          1      625    2442  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             0      334    7184  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm             1       70    7184  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              0     2029    7184  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm              1     3038    7184  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          0     1242    7184  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm          1      471    7184  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             0      777    3987  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm             1      300    3987  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              0      935    3987  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm              1     1009    3987  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          0      687    3987  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm          1      279    3987  stunted          


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/bea9331a-df33-42f7-9b15-0234a5871fca/24fe4fd5-c1cb-4f85-b6df-ecab9cee1795/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bea9331a-df33-42f7-9b15-0234a5871fca/24fe4fd5-c1cb-4f85-b6df-ecab9cee1795/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bea9331a-df33-42f7-9b15-0234a5871fca/24fe4fd5-c1cb-4f85-b6df-ecab9cee1795/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bea9331a-df33-42f7-9b15-0234a5871fca/24fe4fd5-c1cb-4f85-b6df-ecab9cee1795/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                0.3125000   0.0842832   0.5407168
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                0.3541667   0.2182134   0.4901199
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                0.2000000   0.0754407   0.3245593
6 months    ki1000108-IRC              INDIA                          >=50 cm              NA                0.1338028   0.0777363   0.1898694
6 months    ki1000108-IRC              INDIA                          <48 cm               NA                0.4311927   0.3381007   0.5242846
6 months    ki1000108-IRC              INDIA                          [48-50) cm           NA                0.2101449   0.1420836   0.2782063
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                0.0612245   0.0254605   0.0969884
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               NA                0.4287729   0.4084589   0.4490869
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           NA                0.1431981   0.1127119   0.1736842
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                0.0750000   0.0278286   0.1221714
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                0.4824121   0.4129189   0.5519053
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                0.1758794   0.1229321   0.2288267
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                0.0709010   0.0515603   0.0902417
6 months    ki1101329-Keneba           GAMBIA                         <48 cm               NA                0.2478632   0.1925211   0.3032054
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                0.1697248   0.1344755   0.2049740
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                0.0476357   0.0340369   0.0612345
6 months    ki1119695-PROBIT           BELARUS                        <48 cm               NA                0.3488372   0.3068832   0.3907912
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                0.1910286   0.1538624   0.2281948
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                0.0827423   0.0720237   0.0934609
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                0.2652985   0.2485826   0.2820144
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                0.1405180   0.1287649   0.1522711
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                0.1766382   0.1367129   0.2165635
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                0.7894737   0.7201375   0.8588099
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                0.4901961   0.4215469   0.5588453
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                0.0360902   0.0260655   0.0461149
6 months    ki1135781-COHORTS          INDIA                          <48 cm               NA                0.3367589   0.3183419   0.3551759
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm           NA                0.1072527   0.0945364   0.1199691
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                0.0777778   0.0610916   0.0944639
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                0.4180207   0.3808597   0.4551816
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                0.2050290   0.1804168   0.2296413
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                0.0169287   0.0054005   0.0284568
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                0.3427727   0.3318015   0.3537440
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                0.0542683   0.0457505   0.0627861
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                0.1289737   0.1050809   0.1528664
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                0.3764951   0.3504663   0.4025239
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                0.1355422   0.1099866   0.1610977
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                0.2307692   0.0981833   0.3633551
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               NA                0.6625000   0.5586044   0.7663956
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           NA                0.4264706   0.3086068   0.5443344
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                0.3235294   0.1657859   0.4812729
24 months   ki0047075b-MAL-ED          PERU                           <48 cm               NA                0.4925373   0.3724509   0.6126237
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           NA                0.3050847   0.1872266   0.4229429
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                0.3125000   0.1510144   0.4739856
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <48 cm               NA                0.3333333   0.1305970   0.5360697
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [48-50) cm           NA                0.3947368   0.2384647   0.5510090
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                0.4827586   0.3000080   0.6655092
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                0.8529412   0.7333190   0.9725634
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                0.8292683   0.7135349   0.9450017
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                0.6875000   0.4593041   0.9156959
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <48 cm               NA                0.7200000   0.5949549   0.8450451
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                0.7500000   0.6151730   0.8848270
24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                0.3309859   0.2534891   0.4084827
24 months   ki1000108-IRC              INDIA                          <48 cm               NA                0.5363636   0.4430538   0.6296735
24 months   ki1000108-IRC              INDIA                          [48-50) cm           NA                0.3913043   0.3097732   0.4728355
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                0.3333333   0.2403619   0.4263047
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               NA                0.7812500   0.7171169   0.8453831
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           NA                0.5032258   0.4244182   0.5820335
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                0.1438849   0.0854879   0.2022819
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               NA                0.5388350   0.4707037   0.6069662
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           NA                0.2532189   0.1973345   0.3091033
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                0.0625000   0.0205249   0.1044751
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               NA                0.3800000   0.3126646   0.4473354
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           NA                0.2580645   0.1951194   0.3210096
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                0.2392523   0.2030844   0.2754203
24 months   ki1101329-Keneba           GAMBIA                         <48 cm               NA                0.4795918   0.4096186   0.5495651
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           NA                0.3682635   0.3165116   0.4200154
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                0.2738095   0.1783533   0.3692658
24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               NA                0.5502008   0.4883472   0.6120544
24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           NA                0.3766234   0.3000173   0.4532294
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                0.0809123   0.0513729   0.1104517
24 months   ki1119695-PROBIT           BELARUS                        <48 cm               NA                0.1590909   0.0327881   0.2853937
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           NA                0.1266234   0.0879311   0.1653157
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                0.2211538   0.1750880   0.2672197
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               NA                0.4627286   0.4260672   0.4993899
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                0.2717949   0.2357326   0.3078571
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                0.7072243   0.6521810   0.7622676
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               NA                0.9416667   0.8996954   0.9836380
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           NA                0.8757062   0.8270595   0.9243529
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              NA                0.2970392   0.2693575   0.3247209
24 months   ki1135781-COHORTS          INDIA                          <48 cm               NA                0.7068252   0.6865351   0.7271154
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           NA                0.4884637   0.4652200   0.5117074
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                0.4593088   0.4266900   0.4919276
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               NA                0.8029801   0.7712534   0.8347069
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           NA                0.6641870   0.6340059   0.6943682
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                0.1732673   0.1253461   0.2211886
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               NA                0.5995658   0.5836976   0.6154341
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           NA                0.2749562   0.2517444   0.2981680
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                0.2785515   0.2454367   0.3116664
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               NA                0.5190329   0.4917817   0.5462841
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           NA                0.2888199   0.2523024   0.3253374


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2884615   0.2009687   0.3759544
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2442159   0.2014677   0.2869642
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2839879   0.2652870   0.3026888
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2702703   0.2319893   0.3085512
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1336303   0.1154530   0.1518076
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765239
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
6 months    ki1000108-IRC              INDIA                          <48 cm               >=50 cm            3.2225978    2.0113704    5.163214
6 months    ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            1.5705568    0.9248058    2.667207
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <48 cm               >=50 cm            7.0032910    3.7970374   12.916935
6 months    ki1000304b-SAS-CompFeed    INDIA                          [48-50) cm           >=50 cm            2.3389021    1.1000366    4.972983
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            6.4321608    3.3739117   12.262530
6 months    ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            2.3450586    1.1676868    4.709568
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            3.4959046    2.4573443    4.973397
6 months    ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            2.3938265    1.6990100    3.372791
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            7.3230201    5.5406084    9.678833
6 months    ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            4.0101983    3.1403696    5.120955
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            3.2063220    2.7761702    3.703123
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            1.6982605    1.4555836    1.981397
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            4.4694397    3.5070357    5.695948
6 months    ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            2.7751423    2.1271962    3.620453
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            9.3310277    7.0304119   12.384492
6 months    ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            2.9717949    2.1971317    4.019588
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm            5.3745516    4.2607697    6.779481
6 months    ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm            2.6360873    2.0615500    3.370744
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm           20.2480740   10.2470579   40.009972
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            3.2057053    1.5879786    6.471464
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            2.9191624    2.3929660    3.561066
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            1.0509291    0.8110880    1.361692
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <48 cm               >=50 cm            2.8708333    1.5825618    5.207812
24 months   ki0047075b-MAL-ED          BANGLADESH                     [48-50) cm           >=50 cm            1.8480392    0.9768432    3.496210
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          PERU                           <48 cm               >=50 cm            1.5223881    0.8826273    2.625871
24 months   ki0047075b-MAL-ED          PERU                           [48-50) cm           >=50 cm            0.9429892    0.5062302    1.756570
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
24 months   ki1000108-IRC              INDIA                          <48 cm               >=50 cm            1.6205029    1.2105098    2.169358
24 months   ki1000108-IRC              INDIA                          [48-50) cm           >=50 cm            1.1822387    0.8641463    1.617421
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            2.3437500    1.7524388    3.134583
24 months   ki1017093-NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            1.5096774    1.0963909    2.078753
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <48 cm               >=50 cm            3.7449029    2.4480623    5.728734
24 months   ki1017093b-PROVIDE         BANGLADESH                     [48-50) cm           >=50 cm            1.7598712    1.1087770    2.793300
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <48 cm               >=50 cm            6.0800000    3.0356333   12.177492
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [48-50) cm           >=50 cm            4.1290323    2.0208559    8.436479
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA                         <48 cm               >=50 cm            2.0045440    1.6246977    2.473197
24 months   ki1101329-Keneba           GAMBIA                         [48-50) cm           >=50 cm            1.5392262    1.2521718    1.892087
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          <48 cm               >=50 cm            2.0094290    1.3931259    2.898378
24 months   ki1113344-GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            1.3754941    0.9186882    2.059441
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
24 months   ki1119695-PROBIT           BELARUS                        <48 cm               >=50 cm            1.9662142    0.9709023    3.981861
24 months   ki1119695-PROBIT           BELARUS                        [48-50) cm           >=50 cm            1.5649460    1.0753775    2.277392
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            2.0923378    1.6743505    2.614672
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            1.2289855    0.9600429    1.573269
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      <48 cm               >=50 cm            1.3314964    1.2172746    1.456436
24 months   ki1135781-COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            1.2382298    1.1253130    1.362477
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA                          <48 cm               >=50 cm            2.3795692    2.1584845    2.623299
24 months   ki1135781-COHORTS          INDIA                          [48-50) cm           >=50 cm            1.6444421    1.4810675    1.825838
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <48 cm               >=50 cm            1.7482359    1.6117792    1.896245
24 months   ki1135781-COHORTS          PHILIPPINES                    [48-50) cm           >=50 cm            1.4460577    1.3291376    1.573263
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <48 cm               >=50 cm            3.4603513    2.6193772    4.571327
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [48-50) cm           >=50 cm            1.5868902    1.1944212    2.108319
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              >=50 cm            1.0000000    1.0000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <48 cm               >=50 cm            1.8633282    1.6383821    2.119159
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [48-50) cm           >=50 cm            1.0368634    0.8723121    1.232455


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0240385   -0.2331135   0.1850366
6 months    ki1000108-IRC              INDIA                          >=50 cm              NA                 0.1104131    0.0586840   0.1621422
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.2227634    0.1778331   0.2676937
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.1952703    0.1436988   0.2468418
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.0627293    0.0446055   0.0808530
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0150507    0.0111680   0.0189333
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0796688    0.0692847   0.0900529
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.2114432    0.1754511   0.2474354
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.1503808    0.1380551   0.1627066
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.1339956    0.1163373   0.1516540
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.2385295    0.2246019   0.2524572
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.1200313    0.0975747   0.1424879
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.2558618    0.1317402   0.3799833
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.0639706   -0.0775991   0.2055403
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.0391484   -0.0930207   0.1713174
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.2576260    0.1095014   0.4057506
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0389151   -0.1699483   0.2477785
24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                 0.0792705    0.0158544   0.1426866
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.2367150    0.1543169   0.3191131
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.1848348    0.1279217   0.2417479
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.1943093    0.1462097   0.2424089
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.0846913    0.0566815   0.1127011
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.1738291    0.0848181   0.2628401
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0043417   -0.0002862   0.0089697
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.1252392    0.0823465   0.1681319
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.1034900    0.0682975   0.1386824
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.2380596    0.2129613   0.2631580
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.1639508    0.1384193   0.1894823
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.3249231    0.2777866   0.3720596
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.1197429    0.0909992   0.1484866


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0833333   -1.1149548   0.4450893
6 months    ki1000108-IRC              INDIA                          >=50 cm              NA                 0.4521127    0.2077826   0.6210882
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=50 cm              NA                 0.7844116    0.6045629   0.8824634
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.7225000    0.4923498   0.8483084
6 months    ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.4694239    0.3317404   0.5787401
6 months    ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.2400948    0.1635108   0.3096673
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.4905378    0.4264699   0.5474488
6 months    ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.5448425    0.4494865   0.6236815
6 months    ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.8064567    0.7462249   0.8523929
6 months    ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.6327312    0.5526235   0.6984947
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.9337322    0.8693424   0.9663898
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.4820438    0.3870893   0.5622876
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=50 cm              NA                 0.5257819    0.1900215   0.7223595
24 months   ki0047075b-MAL-ED          PERU                           >=50 cm              NA                 0.1650854   -0.2933678   0.4610331
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=50 cm              NA                 0.1113281   -0.3564367   0.4177851
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.3479624    0.0994439   0.5278994
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0535714   -0.2827855   0.3017328
24 months   ki1000108-IRC              INDIA                          >=50 cm              NA                 0.1932218    0.0225898   0.3340657
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.4152542    0.2483428   0.5451017
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=50 cm              NA                 0.5622870    0.3605805   0.7003647
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=50 cm              NA                 0.7566288    0.5354111   0.8725119
24 months   ki1101329-Keneba           GAMBIA                         >=50 cm              NA                 0.2614384    0.1706913   0.3422556
24 months   ki1113344-GMS-Nepal        NEPAL                          >=50 cm              NA                 0.3883246    0.1533956   0.5580618
24 months   ki1119695-PROBIT           BELARUS                        >=50 cm              NA                 0.0509269   -0.0054685   0.1041592
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.3615523    0.2258388   0.4734747
24 months   ki1135781-COHORTS          GUATEMALA                      >=50 cm              NA                 0.1276528    0.0811386   0.1718124
24 months   ki1135781-COHORTS          INDIA                          >=50 cm              NA                 0.4448891    0.3955006   0.4902425
24 months   ki1135781-COHORTS          PHILIPPINES                    >=50 cm              NA                 0.2630538    0.2197236   0.3039778
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=50 cm              NA                 0.6522066    0.5433450   0.7351168
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=50 cm              NA                 0.3006392    0.2242581   0.3694997
