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

**Intervention Variable:** mage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mage       sstunted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  --------  ---------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)           0      154     231  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)           1        6     231  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20               0       29     231  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20               1        1     231  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30              0       39     231  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30              1        2     231  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)           0       39      65  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)           1        2      65  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         <20               0        8      65  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         <20               1        0      65  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30              0       15      65  sstunted         
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30              1        1      65  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)           0       36      47  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)           1        1      47  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          <20               0        7      47  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          <20               1        1      47  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          >=30              0        2      47  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          >=30              1        0      47  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          [20-30)           0       21      27  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          [20-30)           1        1      27  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          <20               0        0      27  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          <20               1        0      27  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          >=30              0        5      27  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          >=30              1        0      27  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           [20-30)           0      114     233  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           [20-30)           1        0     233  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           <20               0       63     233  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           <20               1        3     233  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           >=30              0       52     233  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           >=30              1        1     233  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)           0       66     123  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)           1        1     123  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20               0       22     123  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20               1        1     123  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30              0       33     123  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30              1        0     123  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)           0       66     125  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)           1        6     125  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20               0        7     125  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20               1        0     125  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30              0       42     125  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30              1        4     125  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)           0       77      92  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)           1        2      92  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20               0        7      92  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20               1        2      92  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30              0        4      92  sstunted         
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30              1        0      92  sstunted         
Birth       ki1000108-IRC              INDIA                          [20-30)           0      313     388  sstunted         
Birth       ki1000108-IRC              INDIA                          [20-30)           1       12     388  sstunted         
Birth       ki1000108-IRC              INDIA                          <20               0       31     388  sstunted         
Birth       ki1000108-IRC              INDIA                          <20               1        4     388  sstunted         
Birth       ki1000108-IRC              INDIA                          >=30              0       28     388  sstunted         
Birth       ki1000108-IRC              INDIA                          >=30              1        0     388  sstunted         
Birth       ki1000109-EE               PAKISTAN                       [20-30)           0       76     239  sstunted         
Birth       ki1000109-EE               PAKISTAN                       [20-30)           1       18     239  sstunted         
Birth       ki1000109-EE               PAKISTAN                       <20               0        1     239  sstunted         
Birth       ki1000109-EE               PAKISTAN                       <20               1        0     239  sstunted         
Birth       ki1000109-EE               PAKISTAN                       >=30              0      115     239  sstunted         
Birth       ki1000109-EE               PAKISTAN                       >=30              1       29     239  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)           0      882    1252  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)           1       71    1252  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20               0      150    1252  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20               1       11    1252  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30              0      129    1252  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30              1        9    1252  sstunted         
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)           0      398     606  sstunted         
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)           1       12     606  sstunted         
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20               0       67     606  sstunted         
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20               1        3     606  sstunted         
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30              0      122     606  sstunted         
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30              1        4     606  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)           0      370     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)           1        1     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20               0       67     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20               1        0     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30              0       98     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30              1        3     539  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)           0      478     732  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)           1        5     732  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20               0      127     732  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20               1        3     732  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30              0      117     732  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30              1        2     732  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         [20-30)           0      694    1543  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         [20-30)           1       11    1543  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         <20               0      231    1543  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         <20               1        7    1543  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         >=30              0      589    1543  sstunted         
Birth       ki1101329-Keneba           GAMBIA                         >=30              1       11    1543  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)           0      432     696  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)           1       14     696  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          <20               0      136     696  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          <20               1       13     696  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30              0       97     696  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30              1        4     696  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        [20-30)           0     9937   13890  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        [20-30)           1        3   13890  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        <20               0     1407   13890  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        <20               1        1   13890  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        >=30              0     2541   13890  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        >=30              1        1   13890  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)           0     9021   13835  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)           1      278   13835  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20               0     2122   13835  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20               1       83   13835  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30              0     2252   13835  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30              1       79   13835  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)           0      400     852  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)           1        5     852  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      <20               0      120     852  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      <20               1        1     852  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      >=30              0      321     852  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      >=30              1        5     852  sstunted         
Birth       ki1135781-COHORTS          INDIA                          [20-30)           0     3087    4715  sstunted         
Birth       ki1135781-COHORTS          INDIA                          [20-30)           1       93    4715  sstunted         
Birth       ki1135781-COHORTS          INDIA                          <20               0      352    4715  sstunted         
Birth       ki1135781-COHORTS          INDIA                          <20               1       16    4715  sstunted         
Birth       ki1135781-COHORTS          INDIA                          >=30              0     1138    4715  sstunted         
Birth       ki1135781-COHORTS          INDIA                          >=30              1       29    4715  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)           0     1802    3050  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)           1       19    3050  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    <20               0      368    3050  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    <20               1       10    3050  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30              0      834    3050  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30              1       17    3050  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)           0     9880   22444  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)           1      973   22444  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20               0     8221   22444  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20               1     1251   22444  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30              0     1896   22444  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30              1      223   22444  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)           0      160     241  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)           1        5     241  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20               0       32     241  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20               1        3     241  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30              0       41     241  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30              1        0     241  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)           0      125     209  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)           1        0     209  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         <20               0       37     209  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         <20               1        0     209  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30              0       47     209  sstunted         
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30              1        0     209  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)           0      170     234  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)           1        9     234  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          <20               0       34     234  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          <20               1        0     234  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          >=30              0       21     234  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          >=30              1        0     234  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)           0      185     236  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)           1        0     236  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          <20               0        4     236  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          <20               1        1     236  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          >=30              0       46     236  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          >=30              1        0     236  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           [20-30)           0      133     273  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           [20-30)           1        3     273  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           <20               0       72     273  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           <20               1        4     273  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           >=30              0       58     273  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           >=30              1        3     273  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)           0      116     254  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)           1        2     254  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20               0       40     254  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20               1        2     254  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30              0       92     254  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30              1        2     254  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)           0      118     247  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)           1       10     247  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20               0       15     247  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20               1        0     247  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30              0      100     247  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30              1        4     247  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)           0      261     369  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)           1       32     369  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20               0       30     369  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20               1        3     369  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30              0       36     369  sstunted         
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30              1        7     369  sstunted         
6 months    ki1000108-IRC              INDIA                          [20-30)           0      317     407  sstunted         
6 months    ki1000108-IRC              INDIA                          [20-30)           1       25     407  sstunted         
6 months    ki1000108-IRC              INDIA                          <20               0       34     407  sstunted         
6 months    ki1000108-IRC              INDIA                          <20               1        2     407  sstunted         
6 months    ki1000108-IRC              INDIA                          >=30              0       27     407  sstunted         
6 months    ki1000108-IRC              INDIA                          >=30              1        2     407  sstunted         
6 months    ki1000109-EE               PAKISTAN                       [20-30)           0      125     371  sstunted         
6 months    ki1000109-EE               PAKISTAN                       [20-30)           1       34     371  sstunted         
6 months    ki1000109-EE               PAKISTAN                       <20               0        1     371  sstunted         
6 months    ki1000109-EE               PAKISTAN                       <20               1        0     371  sstunted         
6 months    ki1000109-EE               PAKISTAN                       >=30              0      165     371  sstunted         
6 months    ki1000109-EE               PAKISTAN                       >=30              1       46     371  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)           0      924    1336  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)           1       93    1336  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20               0      156    1336  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20               1       15    1336  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30              0      128    1336  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30              1       20    1336  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)           0      228     380  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)           1       33     380  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20               0       31     380  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20               1        5     380  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30              0       67     380  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30              1       16     380  sstunted         
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)           0      334     535  sstunted         
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)           1       23     535  sstunted         
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20               0       59     535  sstunted         
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20               1        2     535  sstunted         
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30              0      107     535  sstunted         
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30              1       10     535  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)           0      414     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)           1       10     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20               0       65     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20               1        1     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30              0      111     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30              1        3     604  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)           0      452     715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)           1       10     715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20               0      124     715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20               1        7     715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30              0      116     715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30              1        6     715  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)           0     1307    2012  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)           1       11    2012  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20               0      145    2012  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20               1        1    2012  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30              0      542    2012  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30              1        6    2012  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         [20-30)           0      960    2080  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         [20-30)           1       27    2080  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         <20               0      284    2080  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         <20               1        4    2080  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         >=30              0      766    2080  sstunted         
6 months    ki1101329-Keneba           GAMBIA                         >=30              1       39    2080  sstunted         
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)           0      157     276  sstunted         
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)           1       14     276  sstunted         
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20               0       42     276  sstunted         
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20               1        4     276  sstunted         
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30              0       52     276  sstunted         
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30              1        7     276  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)           0      365     564  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)           1        6     564  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          <20               0      100     564  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          <20               1        8     564  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30              0       78     564  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30              1        7     564  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        [20-30)           0    11160   15761  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        [20-30)           1      156   15761  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        <20               0     1582   15761  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        <20               1       38   15761  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        >=30              0     2776   15761  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        >=30              1       49   15761  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)           0     5516    8653  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)           1      222    8653  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20               0     1251    8653  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20               1       64    8653  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30              0     1536    8653  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30              1       64    8653  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)           0      412     961  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)           1       58     961  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      <20               0      109     961  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      <20               1        9     961  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      >=30              0      316     961  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      >=30              1       57     961  sstunted         
6 months    ki1135781-COHORTS          INDIA                          [20-30)           0     3174    4904  sstunted         
6 months    ki1135781-COHORTS          INDIA                          [20-30)           1      157    4904  sstunted         
6 months    ki1135781-COHORTS          INDIA                          <20               0      352    4904  sstunted         
6 months    ki1135781-COHORTS          INDIA                          <20               1       19    4904  sstunted         
6 months    ki1135781-COHORTS          INDIA                          >=30              0     1139    4904  sstunted         
6 months    ki1135781-COHORTS          INDIA                          >=30              1       63    4904  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)           0     1545    2708  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)           1       56    2708  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    <20               0      310    2708  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    <20               1       21    2708  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30              0      721    2708  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30              1       55    2708  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)           0      333     669  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)           1       31     669  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         <20               0      103     669  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         <20               1        4     669  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         >=30              0      180     669  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         >=30              1       18     669  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)           0     7286   16805  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)           1      393   16805  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20               0     7348   16805  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20               1      557   16805  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30              0     1151   16805  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30              1       70   16805  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)           0      132     212  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)           1       14     212  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20               0       24     212  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20               1        5     212  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30              0       28     212  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30              1        9     212  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)           0      101     169  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)           1        1     169  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         <20               0       27     169  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         <20               1        0     169  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30              0       40     169  sstunted         
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30              1        0     169  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)           0      145     225  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)           1       27     225  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          <20               0       31     225  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          <20               1        2     225  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          >=30              0       19     225  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          >=30              1        1     225  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)           0      172     228  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)           1        7     228  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          <20               0        4     228  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          <20               1        0     228  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          >=30              0       45     228  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          >=30              1        0     228  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           [20-30)           0       88     201  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           [20-30)           1       10     201  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           <20               0       50     201  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           <20               1        5     201  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           >=30              0       48     201  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           >=30              1        0     201  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)           0       92     238  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)           1       14     238  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20               0       38     238  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20               1        1     238  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30              0       81     238  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30              1       12     238  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)           0       71     214  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)           1       42     214  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20               0        6     214  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20               1        3     214  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30              0       67     214  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30              1       25     214  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)           0      193     371  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)           1      102     371  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20               0       25     371  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20               1        9     371  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30              0       28     371  sstunted         
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30              1       14     371  sstunted         
24 months   ki1000108-IRC              INDIA                          [20-30)           0      309     409  sstunted         
24 months   ki1000108-IRC              INDIA                          [20-30)           1       34     409  sstunted         
24 months   ki1000108-IRC              INDIA                          <20               0       33     409  sstunted         
24 months   ki1000108-IRC              INDIA                          <20               1        4     409  sstunted         
24 months   ki1000108-IRC              INDIA                          >=30              0       26     409  sstunted         
24 months   ki1000108-IRC              INDIA                          >=30              1        3     409  sstunted         
24 months   ki1000109-EE               PAKISTAN                       [20-30)           0       42     167  sstunted         
24 months   ki1000109-EE               PAKISTAN                       [20-30)           1       23     167  sstunted         
24 months   ki1000109-EE               PAKISTAN                       <20               0        1     167  sstunted         
24 months   ki1000109-EE               PAKISTAN                       <20               1        0     167  sstunted         
24 months   ki1000109-EE               PAKISTAN                       >=30              0       65     167  sstunted         
24 months   ki1000109-EE               PAKISTAN                       >=30              1       36     167  sstunted         
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)           0      218     427  sstunted         
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)           1       71     427  sstunted         
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20               0       41     427  sstunted         
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20               1        3     427  sstunted         
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30              0       73     427  sstunted         
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30              1       21     427  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)           0      372     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)           1       37     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20               0       59     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20               1        5     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30              0       95     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30              1       10     578  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)           0      311     514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)           1       23     514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20               0       91     514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20               1       10     514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30              0       76     514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30              1        3     514  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)           0        2       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)           1        1       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20               0        1       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20               1        0       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30              0        2       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30              1        0       6  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         [20-30)           0      734    1714  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         [20-30)           1       56    1714  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         <20               0      201    1714  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         <20               1       16    1714  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         >=30              0      639    1714  sstunted         
24 months   ki1101329-Keneba           GAMBIA                         >=30              1       68    1714  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)           0      286     488  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)           1       32     488  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          <20               0       81     488  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          <20               1       13     488  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30              0       68     488  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30              1        8     488  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        [20-30)           0     2845    4035  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        [20-30)           1       48    4035  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        <20               0      360    4035  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        <20               1        9    4035  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        >=30              0      765    4035  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        >=30              1        8    4035  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)           0      989    1638  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)           1      112    1638  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20               0      185    1638  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20               1       34    1638  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30              0      286    1638  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30              1       32    1638  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)           0      269    1064  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)           1      258    1064  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      <20               0       70    1064  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      <20               1       82    1064  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      >=30              0      204    1064  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      >=30              1      181    1064  sstunted         
24 months   ki1135781-COHORTS          INDIA                          [20-30)           0     1882    3692  sstunted         
24 months   ki1135781-COHORTS          INDIA                          [20-30)           1      581    3692  sstunted         
24 months   ki1135781-COHORTS          INDIA                          <20               0      163    3692  sstunted         
24 months   ki1135781-COHORTS          INDIA                          <20               1       84    3692  sstunted         
24 months   ki1135781-COHORTS          INDIA                          >=30              0      697    3692  sstunted         
24 months   ki1135781-COHORTS          INDIA                          >=30              1      285    3692  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)           0     1060    2445  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)           1      400    2445  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    <20               0      205    2445  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    <20               1       87    2445  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30              0      473    2445  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30              1      220    2445  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)           0      217     475  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)           1       33     475  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         <20               0       73     475  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         <20               1        7     475  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         >=30              0      125     475  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         >=30              1       20     475  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)           0     3452    8627  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)           1      606    8627  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20               0     3229    8627  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20               1      626    8627  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30              0      600    8627  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30              1      114    8627  sstunted         


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
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/b050e740-06bc-448e-9579-713713327631/7e480314-f9cd-4615-b052-b116696a78cb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b050e740-06bc-448e-9579-713713327631/7e480314-f9cd-4615-b052-b116696a78cb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b050e740-06bc-448e-9579-713713327631/7e480314-f9cd-4615-b052-b116696a78cb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b050e740-06bc-448e-9579-713713327631/7e480314-f9cd-4615-b052-b116696a78cb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA         [20-30)              NA                0.0745016    0.0544113   0.0945918
Birth       ki1000304b-SAS-CompFeed    INDIA         <20                  NA                0.0683230    0.0354638   0.1011821
Birth       ki1000304b-SAS-CompFeed    INDIA         >=30                 NA                0.0652174    0.0097255   0.1207093
Birth       ki1101329-Keneba           GAMBIA        [20-30)              NA                0.0156028    0.0064516   0.0247541
Birth       ki1101329-Keneba           GAMBIA        <20                  NA                0.0294118    0.0079395   0.0508841
Birth       ki1101329-Keneba           GAMBIA        >=30                 NA                0.0183333    0.0075955   0.0290711
Birth       ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              NA                0.0298957    0.0264342   0.0333571
Birth       ki1126311-ZVITAMBO         ZIMBABWE      <20                  NA                0.0376417    0.0296973   0.0455862
Birth       ki1126311-ZVITAMBO         ZIMBABWE      >=30                 NA                0.0338910    0.0265451   0.0412370
Birth       ki1135781-COHORTS          INDIA         [20-30)              NA                0.0292453    0.0233884   0.0351021
Birth       ki1135781-COHORTS          INDIA         <20                  NA                0.0434783    0.0226404   0.0643162
Birth       ki1135781-COHORTS          INDIA         >=30                 NA                0.0248500    0.0159179   0.0337822
Birth       ki1135781-COHORTS          PHILIPPINES   [20-30)              NA                0.0104338    0.0057661   0.0151016
Birth       ki1135781-COHORTS          PHILIPPINES   <20                  NA                0.0264550    0.0102740   0.0426360
Birth       ki1135781-COHORTS          PHILIPPINES   >=30                 NA                0.0199765    0.0105742   0.0293788
Birth       kiGH5241-JiVitA-3          BANGLADESH    [20-30)              NA                0.0896526    0.0837917   0.0955135
Birth       kiGH5241-JiVitA-3          BANGLADESH    <20                  NA                0.1320735    0.1246129   0.1395340
Birth       kiGH5241-JiVitA-3          BANGLADESH    >=30                 NA                0.1052383    0.0909693   0.1195073
6 months    ki1000304b-SAS-CompFeed    INDIA         [20-30)              NA                0.0914454    0.0734609   0.1094299
6 months    ki1000304b-SAS-CompFeed    INDIA         <20                  NA                0.0877193    0.0592971   0.1161415
6 months    ki1000304b-SAS-CompFeed    INDIA         >=30                 NA                0.1351351    0.0869951   0.1832751
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [20-30)              NA                0.1264368    0.0860644   0.1668091
6 months    ki1000304b-SAS-FoodSuppl   INDIA         <20                  NA                0.1388889    0.0257707   0.2520071
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=30                 NA                0.1927711    0.1077943   0.2777479
6 months    ki1017093c-NIH-Crypto      BANGLADESH    [20-30)              NA                0.0216450    0.0083662   0.0349238
6 months    ki1017093c-NIH-Crypto      BANGLADESH    <20                  NA                0.0534351    0.0148957   0.0919745
6 months    ki1017093c-NIH-Crypto      BANGLADESH    >=30                 NA                0.0491803    0.0107816   0.0875791
6 months    ki1113344-GMS-Nepal        NEPAL         [20-30)              NA                0.0161725    0.0033257   0.0290193
6 months    ki1113344-GMS-Nepal        NEPAL         <20                  NA                0.0740741    0.0246381   0.1235100
6 months    ki1113344-GMS-Nepal        NEPAL         >=30                 NA                0.0823529    0.0238603   0.1408456
6 months    ki1119695-PROBIT           BELARUS       [20-30)              NA                0.0137858    0.0092672   0.0183043
6 months    ki1119695-PROBIT           BELARUS       <20                  NA                0.0234568    0.0127731   0.0341404
6 months    ki1119695-PROBIT           BELARUS       >=30                 NA                0.0173451    0.0087742   0.0259161
6 months    ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              NA                0.0386894    0.0336992   0.0436797
6 months    ki1126311-ZVITAMBO         ZIMBABWE      <20                  NA                0.0486692    0.0370386   0.0602998
6 months    ki1126311-ZVITAMBO         ZIMBABWE      >=30                 NA                0.0400000    0.0303976   0.0496024
6 months    ki1135781-COHORTS          GUATEMALA     [20-30)              NA                0.1234043    0.0936540   0.1531545
6 months    ki1135781-COHORTS          GUATEMALA     <20                  NA                0.0762712    0.0283546   0.1241877
6 months    ki1135781-COHORTS          GUATEMALA     >=30                 NA                0.1528150    0.1162815   0.1893486
6 months    ki1135781-COHORTS          INDIA         [20-30)              NA                0.0471330    0.0399355   0.0543305
6 months    ki1135781-COHORTS          INDIA         <20                  NA                0.0512129    0.0287803   0.0736455
6 months    ki1135781-COHORTS          INDIA         >=30                 NA                0.0524126    0.0398127   0.0650126
6 months    ki1135781-COHORTS          PHILIPPINES   [20-30)              NA                0.0349781    0.0259770   0.0439793
6 months    ki1135781-COHORTS          PHILIPPINES   <20                  NA                0.0634441    0.0371791   0.0897091
6 months    ki1135781-COHORTS          PHILIPPINES   >=30                 NA                0.0708763    0.0528177   0.0889349
6 months    kiGH5241-JiVitA-3          BANGLADESH    [20-30)              NA                0.0511785    0.0458949   0.0564622
6 months    kiGH5241-JiVitA-3          BANGLADESH    <20                  NA                0.0704617    0.0645518   0.0763717
6 months    kiGH5241-JiVitA-3          BANGLADESH    >=30                 NA                0.0573301    0.0438190   0.0708411
24 months   ki0047075b-MAL-ED          BANGLADESH    [20-30)              NA                0.0958904    0.0480168   0.1437641
24 months   ki0047075b-MAL-ED          BANGLADESH    <20                  NA                0.1724138    0.0346077   0.3102199
24 months   ki0047075b-MAL-ED          BANGLADESH    >=30                 NA                0.2432432    0.1046722   0.3818143
24 months   ki1000108-CMC-V-BCS-2002   INDIA         [20-30)              NA                0.3457627    0.2914152   0.4001103
24 months   ki1000108-CMC-V-BCS-2002   INDIA         <20                  NA                0.2647059    0.1162125   0.4131993
24 months   ki1000108-CMC-V-BCS-2002   INDIA         >=30                 NA                0.3333333    0.1905744   0.4760923
24 months   ki1017093b-PROVIDE         BANGLADESH    [20-30)              NA                0.0904645    0.0626411   0.1182880
24 months   ki1017093b-PROVIDE         BANGLADESH    <20                  NA                0.0781250    0.0123191   0.1439309
24 months   ki1017093b-PROVIDE         BANGLADESH    >=30                 NA                0.0952381    0.0390425   0.1514336
24 months   ki1101329-Keneba           GAMBIA        [20-30)              NA                0.0708861    0.0529851   0.0887870
24 months   ki1101329-Keneba           GAMBIA        <20                  NA                0.0737327    0.0389516   0.1085138
24 months   ki1101329-Keneba           GAMBIA        >=30                 NA                0.0961810    0.0744415   0.1179206
24 months   ki1113344-GMS-Nepal        NEPAL         [20-30)              NA                0.1006289    0.0675302   0.1337276
24 months   ki1113344-GMS-Nepal        NEPAL         <20                  NA                0.1382979    0.0684399   0.2081558
24 months   ki1113344-GMS-Nepal        NEPAL         >=30                 NA                0.1052632    0.0361958   0.1743305
24 months   ki1119695-PROBIT           BELARUS       [20-30)              NA                0.0165918    0.0054891   0.0276944
24 months   ki1119695-PROBIT           BELARUS       <20                  NA                0.0243902   -0.0363550   0.0851355
24 months   ki1119695-PROBIT           BELARUS       >=30                 NA                0.0103493    0.0006900   0.0200086
24 months   ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              NA                0.1017257    0.0838647   0.1195868
24 months   ki1126311-ZVITAMBO         ZIMBABWE      <20                  NA                0.1552511    0.1072734   0.2032289
24 months   ki1126311-ZVITAMBO         ZIMBABWE      >=30                 NA                0.1006289    0.0675541   0.1337038
24 months   ki1135781-COHORTS          GUATEMALA     [20-30)              NA                0.4895636    0.4468641   0.5322630
24 months   ki1135781-COHORTS          GUATEMALA     <20                  NA                0.5394737    0.4601975   0.6187499
24 months   ki1135781-COHORTS          GUATEMALA     >=30                 NA                0.4701299    0.4202511   0.5200086
24 months   ki1135781-COHORTS          INDIA         [20-30)              NA                0.2358912    0.2191222   0.2526602
24 months   ki1135781-COHORTS          INDIA         <20                  NA                0.3400810    0.2809936   0.3991684
24 months   ki1135781-COHORTS          INDIA         >=30                 NA                0.2902240    0.2618332   0.3186149
24 months   ki1135781-COHORTS          PHILIPPINES   [20-30)              NA                0.2739726    0.2510908   0.2968544
24 months   ki1135781-COHORTS          PHILIPPINES   <20                  NA                0.2979452    0.2454766   0.3504138
24 months   ki1135781-COHORTS          PHILIPPINES   >=30                 NA                0.3174603    0.2827963   0.3521243
24 months   ki1148112-LCNI-5           MALAWI        [20-30)              NA                0.1320000    0.0899968   0.1740032
24 months   ki1148112-LCNI-5           MALAWI        <20                  NA                0.0875000    0.0255158   0.1494842
24 months   ki1148112-LCNI-5           MALAWI        >=30                 NA                0.1379310    0.0817456   0.1941165
24 months   kiGH5241-JiVitA-3          BANGLADESH    [20-30)              NA                0.1493346    0.1378118   0.1608575
24 months   kiGH5241-JiVitA-3          BANGLADESH    <20                  NA                0.1623865    0.1493251   0.1754479
24 months   kiGH5241-JiVitA-3          BANGLADESH    >=30                 NA                0.1596639    0.1313048   0.1880229


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0726837   0.0523147   0.0930527
Birth       ki1101329-Keneba           GAMBIA        NA                   NA                0.0187946   0.0120166   0.0255726
Birth       ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0318034   0.0288793   0.0347275
Birth       ki1135781-COHORTS          INDIA         NA                   NA                0.0292683   0.0244566   0.0340800
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0150820   0.0107558   0.0194081
Birth       kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1090269   0.1044770   0.1135768
6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0958084   0.0774939   0.1141229
6 months    ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1421053   0.1069532   0.1772573
6 months    ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0321678   0.0192256   0.0451101
6 months    ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.0372340   0.0215945   0.0528736
6 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.0154178   0.0100323   0.0208033
6 months    ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0404484   0.0362972   0.0445996
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.1290323   0.1078261   0.1502384
6 months    ki1135781-COHORTS          INDIA         NA                   NA                0.0487357   0.0427089   0.0547626
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0487445   0.0406327   0.0568562
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0606962   0.0568440   0.0645485
24 months   ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.1320755   0.0863920   0.1777589
24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.3369272   0.2887662   0.3850883
24 months   ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0899654   0.0666186   0.1133122
24 months   ki1101329-Keneba           GAMBIA        NA                   NA                0.0816803   0.0687107   0.0946498
24 months   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1086066   0.0809724   0.1362407
24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.0161090   0.0034156   0.0288025
24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.1086691   0.0935928   0.1237455
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.4896617   0.4596107   0.5197126
24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.2573131   0.2432102   0.2714161
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2891616   0.2711872   0.3071359
24 months   ki1148112-LCNI-5           MALAWI        NA                   NA                0.1263158   0.0964093   0.1562223
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1560218   0.1472599   0.1647837


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA         <20                  [20-30)           0.9170676   0.5472881    1.536692
Birth       ki1000304b-SAS-CompFeed    INDIA         >=30                 [20-30)           0.8753827   0.4108343    1.865216
Birth       ki1101329-Keneba           GAMBIA        [20-30)              [20-30)           1.0000000   1.0000000    1.000000
Birth       ki1101329-Keneba           GAMBIA        <20                  [20-30)           1.8850267   0.7389454    4.808645
Birth       ki1101329-Keneba           GAMBIA        >=30                 [20-30)           1.1750000   0.5129324    2.691632
Birth       ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              [20-30)           1.0000000   1.0000000    1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      <20                  [20-30)           1.2591021   0.9897244    1.601797
Birth       ki1126311-ZVITAMBO         ZIMBABWE      >=30                 [20-30)           1.1336429   0.8866522    1.449437
Birth       ki1135781-COHORTS          INDIA         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          INDIA         <20                  [20-30)           1.4866760   0.8843633    2.499205
Birth       ki1135781-COHORTS          INDIA         >=30                 [20-30)           0.8497111   0.5630836    1.282241
Birth       ki1135781-COHORTS          PHILIPPINES   [20-30)              [20-30)           1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          PHILIPPINES   <20                  [20-30)           2.5355054   1.1883955    5.409637
Birth       ki1135781-COHORTS          PHILIPPINES   >=30                 [20-30)           1.9145896   1.0001460    3.665118
Birth       kiGH5241-JiVitA-3          BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    <20                  [20-30)           1.4731690   1.3554402    1.601123
Birth       kiGH5241-JiVitA-3          BANGLADESH    >=30                 [20-30)           1.1738453   1.0074256    1.367756
6 months    ki1000304b-SAS-CompFeed    INDIA         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA         <20                  [20-30)           0.9592530   0.6450962    1.426402
6 months    ki1000304b-SAS-CompFeed    INDIA         >=30                 [20-30)           1.4777681   1.1753098    1.858062
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA         <20                  [20-30)           1.0984848   0.4580048    2.634621
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=30                 [20-30)           1.5246440   0.8846589    2.627611
6 months    ki1017093c-NIH-Crypto      BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH    <20                  [20-30)           2.4687023   0.9577527    6.363324
6 months    ki1017093c-NIH-Crypto      BANGLADESH    >=30                 [20-30)           2.2721311   0.8417772    6.132953
6 months    ki1113344-GMS-Nepal        NEPAL         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    ki1113344-GMS-Nepal        NEPAL         <20                  [20-30)           4.5802463   1.6229586   12.926181
6 months    ki1113344-GMS-Nepal        NEPAL         >=30                 [20-30)           5.0921562   1.7543677   14.780285
6 months    ki1119695-PROBIT           BELARUS       [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS       <20                  [20-30)           1.7015195   1.2177129    2.377546
6 months    ki1119695-PROBIT           BELARUS       >=30                 [20-30)           1.2581892   0.9074593    1.744475
6 months    ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      <20                  [20-30)           1.2579454   0.9587935    1.650435
6 months    ki1126311-ZVITAMBO         ZIMBABWE      >=30                 [20-30)           1.0338739   0.7872551    1.357749
6 months    ki1135781-COHORTS          GUATEMALA     [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA     <20                  [20-30)           0.6180596   0.3153483    1.211351
6 months    ki1135781-COHORTS          GUATEMALA     >=30                 [20-30)           1.2383286   0.8818286    1.738952
6 months    ki1135781-COHORTS          INDIA         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA         <20                  [20-30)           1.0865624   0.6832717    1.727889
6 months    ki1135781-COHORTS          INDIA         >=30                 [20-30)           1.1120161   0.8364195    1.478420
6 months    ki1135781-COHORTS          PHILIPPINES   [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES   <20                  [20-30)           1.8138218   1.1140330    2.953188
6 months    ki1135781-COHORTS          PHILIPPINES   >=30                 [20-30)           2.0263025   1.4106900    2.910563
6 months    kiGH5241-JiVitA-3          BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    <20                  [20-30)           1.3767828   1.2053866    1.572550
6 months    kiGH5241-JiVitA-3          BANGLADESH    >=30                 [20-30)           1.1201972   0.8685066    1.444827
24 months   ki0047075b-MAL-ED          BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH    <20                  [20-30)           1.7980295   0.7006851    4.613927
24 months   ki0047075b-MAL-ED          BANGLADESH    >=30                 [20-30)           2.5366794   1.1893016    5.410522
24 months   ki1000108-CMC-V-BCS-2002   INDIA         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         <20                  [20-30)           0.7655709   0.4275376    1.370871
24 months   ki1000108-CMC-V-BCS-2002   INDIA         >=30                 [20-30)           0.9640523   0.6109017    1.521353
24 months   ki1017093b-PROVIDE         BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH    <20                  [20-30)           0.8635980   0.3522694    2.117134
24 months   ki1017093b-PROVIDE         BANGLADESH    >=30                 [20-30)           1.0527671   0.5411936    2.047915
24 months   ki1101329-Keneba           GAMBIA        [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA        <20                  [20-30)           1.0401580   0.6091513    1.776125
24 months   ki1101329-Keneba           GAMBIA        >=30                 [20-30)           1.3568398   0.9668108    1.904213
24 months   ki1113344-GMS-Nepal        NEPAL         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL         <20                  [20-30)           1.3743351   0.7521593    2.511166
24 months   ki1113344-GMS-Nepal        NEPAL         >=30                 [20-30)           1.0460526   0.5021068    2.179270
24 months   ki1119695-PROBIT           BELARUS       [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki1119695-PROBIT           BELARUS       <20                  [20-30)           1.4700203   0.1869392   11.559692
24 months   ki1119695-PROBIT           BELARUS       >=30                 [20-30)           0.6237602   0.1955718    1.989433
24 months   ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      <20                  [20-30)           1.5261742   1.0696535    2.177535
24 months   ki1126311-ZVITAMBO         ZIMBABWE      >=30                 [20-30)           0.9892183   0.6814861    1.435910
24 months   ki1135781-COHORTS          GUATEMALA     [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA     <20                  [20-30)           1.1019482   0.9288521    1.307301
24 months   ki1135781-COHORTS          GUATEMALA     >=30                 [20-30)           0.9603040   0.8370681    1.101683
24 months   ki1135781-COHORTS          INDIA         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA         <20                  [20-30)           1.4416858   1.1949300    1.739397
24 months   ki1135781-COHORTS          INDIA         >=30                 [20-30)           1.2303301   1.0901952    1.388478
24 months   ki1135781-COHORTS          PHILIPPINES   [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES   <20                  [20-30)           1.0875000   0.8949198    1.321522
24 months   ki1135781-COHORTS          PHILIPPINES   >=30                 [20-30)           1.1587302   1.0099028    1.329490
24 months   ki1148112-LCNI-5           MALAWI        [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ki1148112-LCNI-5           MALAWI        <20                  [20-30)           0.6628789   0.3049094    1.441112
24 months   ki1148112-LCNI-5           MALAWI        >=30                 [20-30)           1.0449321   0.6231630    1.752163
24 months   kiGH5241-JiVitA-3          BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    <20                  [20-30)           1.0874001   0.9775563    1.209586
24 months   kiGH5241-JiVitA-3          BANGLADESH    >=30                 [20-30)           1.0691683   0.8854246    1.291042


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA         [20-30)              NA                -0.0018179   -0.0093166   0.0056808
Birth       ki1101329-Keneba           GAMBIA        [20-30)              NA                 0.0031917   -0.0040994   0.0104828
Birth       ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              NA                 0.0019077   -0.0001960   0.0040114
Birth       ki1135781-COHORTS          INDIA         [20-30)              NA                 0.0000230   -0.0033214   0.0033674
Birth       ki1135781-COHORTS          PHILIPPINES   [20-30)              NA                 0.0046481    0.0008421   0.0084542
Birth       kiGH5241-JiVitA-3          BANGLADESH    [20-30)              NA                 0.0193743    0.0149228   0.0238257
6 months    ki1000304b-SAS-CompFeed    INDIA         [20-30)              NA                 0.0043630   -0.0003452   0.0090711
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [20-30)              NA                 0.0156685   -0.0093633   0.0407002
6 months    ki1017093c-NIH-Crypto      BANGLADESH    [20-30)              NA                 0.0105228   -0.0002457   0.0212913
6 months    ki1113344-GMS-Nepal        NEPAL         [20-30)              NA                 0.0210615    0.0071868   0.0349363
6 months    ki1119695-PROBIT           BELARUS       [20-30)              NA                 0.0016320   -0.0000795   0.0033435
6 months    ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              NA                 0.0017590   -0.0012590   0.0047769
6 months    ki1135781-COHORTS          GUATEMALA     [20-30)              NA                 0.0056280   -0.0160294   0.0272854
6 months    ki1135781-COHORTS          INDIA         [20-30)              NA                 0.0016027   -0.0026106   0.0058161
6 months    ki1135781-COHORTS          PHILIPPINES   [20-30)              NA                 0.0137663    0.0066235   0.0209092
6 months    kiGH5241-JiVitA-3          BANGLADESH    [20-30)              NA                 0.0095177    0.0054090   0.0136264
24 months   ki0047075b-MAL-ED          BANGLADESH    [20-30)              NA                 0.0361851    0.0012263   0.0711438
24 months   ki1000108-CMC-V-BCS-2002   INDIA         [20-30)              NA                -0.0088355   -0.0328345   0.0151635
24 months   ki1017093b-PROVIDE         BANGLADESH    [20-30)              NA                -0.0004991   -0.0154533   0.0144550
24 months   ki1101329-Keneba           GAMBIA        [20-30)              NA                 0.0107942   -0.0031076   0.0246961
24 months   ki1113344-GMS-Nepal        NEPAL         [20-30)              NA                 0.0079776   -0.0127925   0.0287478
24 months   ki1119695-PROBIT           BELARUS       [20-30)              NA                -0.0004827   -0.0048602   0.0038948
24 months   ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              NA                 0.0069434   -0.0038941   0.0177809
24 months   ki1135781-COHORTS          GUATEMALA     [20-30)              NA                 0.0000981   -0.0302367   0.0304328
24 months   ki1135781-COHORTS          INDIA         [20-30)              NA                 0.0214219    0.0111796   0.0316643
24 months   ki1135781-COHORTS          PHILIPPINES   [20-30)              NA                 0.0151890    0.0003108   0.0300671
24 months   ki1148112-LCNI-5           MALAWI        [20-30)              NA                -0.0056842   -0.0339957   0.0226273
24 months   kiGH5241-JiVitA-3          BANGLADESH    [20-30)              NA                 0.0066871   -0.0016170   0.0149913


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA         [20-30)              NA                -0.0250107   -0.1355116   0.0747370
Birth       ki1101329-Keneba           GAMBIA        [20-30)              NA                 0.1698215   -0.3171959   0.4767700
Birth       ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              NA                 0.0599845   -0.0083126   0.1236555
Birth       ki1135781-COHORTS          INDIA         [20-30)              NA                 0.0007862   -0.1202711   0.1087619
Birth       ki1135781-COHORTS          PHILIPPINES   [20-30)              NA                 0.3081919    0.0259290   0.5086616
Birth       kiGH5241-JiVitA-3          BANGLADESH    [20-30)              NA                 0.1777018    0.1363236   0.2170976
6 months    ki1000304b-SAS-CompFeed    INDIA         [20-30)              NA                 0.0455383   -0.0038779   0.0925221
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [20-30)              NA                 0.1102597   -0.0827152   0.2688402
6 months    ki1017093c-NIH-Crypto      BANGLADESH    [20-30)              NA                 0.3271222   -0.0651509   0.5749291
6 months    ki1113344-GMS-Nepal        NEPAL         [20-30)              NA                 0.5656526    0.1524749   0.7774017
6 months    ki1119695-PROBIT           BELARUS       [20-30)              NA                 0.1058525    0.0083628   0.1937578
6 months    ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              NA                 0.0434865   -0.0339812   0.1151503
6 months    ki1135781-COHORTS          GUATEMALA     [20-30)              NA                 0.0436170   -0.1397263   0.1974666
6 months    ki1135781-COHORTS          INDIA         [20-30)              NA                 0.0328862   -0.0574538   0.1155083
6 months    ki1135781-COHORTS          PHILIPPINES   [20-30)              NA                 0.2824182    0.1285816   0.4090971
6 months    kiGH5241-JiVitA-3          BANGLADESH    [20-30)              NA                 0.1568085    0.0868292   0.2214250
24 months   ki0047075b-MAL-ED          BANGLADESH    [20-30)              NA                 0.2739726   -0.0260551   0.4862695
24 months   ki1000108-CMC-V-BCS-2002   INDIA         [20-30)              NA                -0.0262237   -0.0999876   0.0425936
24 months   ki1017093b-PROVIDE         BANGLADESH    [20-30)              NA                -0.0055482   -0.1862916   0.1476570
24 months   ki1101329-Keneba           GAMBIA        [20-30)              NA                 0.1321519   -0.0545481   0.2857981
24 months   ki1113344-GMS-Nepal        NEPAL         [20-30)              NA                 0.0734544   -0.1380845   0.2456739
24 months   ki1119695-PROBIT           BELARUS       [20-30)              NA                -0.0299662   -0.3577463   0.2186829
24 months   ki1126311-ZVITAMBO         ZIMBABWE      [20-30)              NA                 0.0638949   -0.0410021   0.1582220
24 months   ki1135781-COHORTS          GUATEMALA     [20-30)              NA                 0.0002003   -0.0637097   0.0602705
24 months   ki1135781-COHORTS          INDIA         [20-30)              NA                 0.0832523    0.0426703   0.1221141
24 months   ki1135781-COHORTS          PHILIPPINES   [20-30)              NA                 0.0525276   -0.0003229   0.1025857
24 months   ki1148112-LCNI-5           MALAWI        [20-30)              NA                -0.0450000   -0.2947642   0.1565839
24 months   kiGH5241-JiVitA-3          BANGLADESH    [20-30)              NA                 0.0428603   -0.0117025   0.0944805
