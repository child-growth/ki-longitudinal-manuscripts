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

**Intervention Variable:** mage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mage       pers_wast   n_cell       n
------------  -------------------------  -----------------------------  --------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)            0      162     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)            1        7     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                0       31     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                1        4     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30               0       42     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30               1        2     248
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)            0      127     218
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)            1        1     218
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                0       40     218
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                1        0     218
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30               0       49     218
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30               1        1     218
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)            0      165     239
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)            1       19     239
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                0       32     239
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                1        2     239
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30               0       21     239
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30               1        0     239
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)            0      183     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)            1        4     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20                0        5     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20                1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30               0       46     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30               1        0     238
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)            0      143     284
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)            1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           <20                0       77     284
0-24 months   ki0047075b-MAL-ED          PERU                           <20                1        1     284
0-24 months   ki0047075b-MAL-ED          PERU                           >=30               0       63     284
0-24 months   ki0047075b-MAL-ED          PERU                           >=30               1        0     284
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)            0      135     275
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)            1        1     275
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                0       42     275
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                1        0     275
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30               0       96     275
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30               1        1     275
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)            0      132     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)            1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                0       15     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30               0      106     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30               1        0     253
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)            0      277     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)            1       19     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                0       33     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                1        1     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30               0       40     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30               1        3     373
0-24 months   ki1000108-IRC              INDIA                          [20-30)            0      307     410
0-24 months   ki1000108-IRC              INDIA                          [20-30)            1       37     410
0-24 months   ki1000108-IRC              INDIA                          <20                0       33     410
0-24 months   ki1000108-IRC              INDIA                          <20                1        4     410
0-24 months   ki1000108-IRC              INDIA                          >=30               0       22     410
0-24 months   ki1000108-IRC              INDIA                          >=30               1        7     410
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)            0      148     374
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)            1       13     374
0-24 months   ki1000109-EE               PAKISTAN                       <20                0        1     374
0-24 months   ki1000109-EE               PAKISTAN                       <20                1        0     374
0-24 months   ki1000109-EE               PAKISTAN                       >=30               0      192     374
0-24 months   ki1000109-EE               PAKISTAN                       >=30               1       20     374
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)            0      951    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)            1       89    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                0      169    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                1       11    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30               0      132    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30               1       14    1366
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)            0      222     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)            1       36     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                0       28     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                1        5     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30               0       60     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30               1       24     375
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)            0      322     532
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)            1       36     532
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                0       58     532
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                1        3     532
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30               0      105     532
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30               1        8     532
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)            0      440     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)            1        9     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                0       73     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                1        1     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30               0      113     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30               1        5     641
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)            0      458     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)            1       16     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                0      128     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                1        5     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30               0      118     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30               1        5     730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)            0     1369    2148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)            1       35    2148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                0      147    2148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                1        6    2148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30               0      574    2148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30               1       17    2148
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)            0     1104    2422
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)            1       56    2422
0-24 months   ki1101329-Keneba           GAMBIA                         <20                0      336    2422
0-24 months   ki1101329-Keneba           GAMBIA                         <20                1       18    2422
0-24 months   ki1101329-Keneba           GAMBIA                         >=30               0      839    2422
0-24 months   ki1101329-Keneba           GAMBIA                         >=30               1       69    2422
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)            0      159     250
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)            1        2     250
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                0       35     250
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                1        1     250
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30               0       52     250
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30               1        1     250
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)            0      800    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)            1       82    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                0      171    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                1       29    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30               0      471    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30               1       80    1633
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)            0      339     597
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)            1       48     597
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                0      101     597
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                1       20     597
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30               0       77     597
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30               1       12     597
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)            0    11771   16581
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)            1      112   16581
0-24 months   ki1119695-PROBIT           BELARUS                        <20                0     1698   16581
0-24 months   ki1119695-PROBIT           BELARUS                        <20                1       17   16581
0-24 months   ki1119695-PROBIT           BELARUS                        >=30               0     2953   16581
0-24 months   ki1119695-PROBIT           BELARUS                        >=30               1       30   16581
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)            0     6213    9505
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)            1      118    9505
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                0     1421    9505
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                1       20    9505
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30               0     1704    9505
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30               1       29    9505
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)            0      499    1053
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)            1       16    1053
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                0      128    1053
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                1        5    1053
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30               0      390    1053
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30               1       15    1053
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)            0     2483    4068
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)            1      254    4068
0-24 months   ki1135781-COHORTS          INDIA                          <20                0      233    4068
0-24 months   ki1135781-COHORTS          INDIA                          <20                1       40    4068
0-24 months   ki1135781-COHORTS          INDIA                          >=30               0      947    4068
0-24 months   ki1135781-COHORTS          INDIA                          >=30               1      111    4068
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)            0     1589    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)            1       87    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                0      327    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                1       17    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30               0      751    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30               1       40    2811
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)            0      311     581
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)            1        1     581
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                0       93     581
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                1        2     581
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30               0      172     581
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30               1        2     581
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)            0     6922   15797
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)            1      397   15797
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                0     6890   15797
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                1      420   15797
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30               0     1088   15797
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30               1       80   15797
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)            0      164     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)            1        5     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                0       33     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                1        2     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30               0       44     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30               1        0     248
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)            0      128     218
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)            1        0     218
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                0       40     218
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                1        0     218
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30               0       49     218
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30               1        1     218
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)            0      168     238
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)            1       15     238
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                0       32     238
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                1        2     238
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30               0       19     238
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30               1        2     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)            0      180     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)            1        7     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20                0        5     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20                1        0     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30               0       46     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30               1        0     238
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)            0      143     284
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)            1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           <20                0       78     284
0-6 months    ki0047075b-MAL-ED          PERU                           <20                1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           >=30               0       63     284
0-6 months    ki0047075b-MAL-ED          PERU                           >=30               1        0     284
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)            0      135     274
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)            1        1     274
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                0       41     274
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                1        0     274
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30               0       96     274
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30               1        1     274
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)            0      132     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)            1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                0       15     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30               0      106     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30               1        0     253
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)            0      242     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)            1       42     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                0       29     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                1        4     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30               0       37     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30               1        4     358
0-6 months    ki1000108-IRC              INDIA                          [20-30)            0      285     402
0-6 months    ki1000108-IRC              INDIA                          [20-30)            1       53     402
0-6 months    ki1000108-IRC              INDIA                          <20                0       30     402
0-6 months    ki1000108-IRC              INDIA                          <20                1        5     402
0-6 months    ki1000108-IRC              INDIA                          >=30               0       23     402
0-6 months    ki1000108-IRC              INDIA                          >=30               1        6     402
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)            0      149     368
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)            1       11     368
0-6 months    ki1000109-EE               PAKISTAN                       <20                0        1     368
0-6 months    ki1000109-EE               PAKISTAN                       <20                1        0     368
0-6 months    ki1000109-EE               PAKISTAN                       >=30               0      193     368
0-6 months    ki1000109-EE               PAKISTAN                       >=30               1       14     368
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)            0      101     168
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)            1       10     168
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                0       20     168
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                1        0     168
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30               0       36     168
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30               1        1     168
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)            0      438     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)            1       10     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                0       73     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                1        0     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30               0      113     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30               1        4     638
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)            0      164     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)            1        0     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                0       40     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                1        2     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30               0       41     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30               1        3     250
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)            0     1311    2044
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)            1       27    2044
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                0      137    2044
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                1        6    2044
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30               0      544    2044
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30               1       19    2044
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)            0      943    2039
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)            1       14    2039
0-6 months    ki1101329-Keneba           GAMBIA                         <20                0      293    2039
0-6 months    ki1101329-Keneba           GAMBIA                         <20                1        8    2039
0-6 months    ki1101329-Keneba           GAMBIA                         >=30               0      740    2039
0-6 months    ki1101329-Keneba           GAMBIA                         >=30               1       41    2039
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)            0      329     567
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)            1       38     567
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                0      101     567
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                1       12     567
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30               0       75     567
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30               1       12     567
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)            0     8852   13545
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)            1      847   13545
0-6 months    ki1119695-PROBIT           BELARUS                        <20                0     1274   13545
0-6 months    ki1119695-PROBIT           BELARUS                        <20                1      102   13545
0-6 months    ki1119695-PROBIT           BELARUS                        >=30               0     2273   13545
0-6 months    ki1119695-PROBIT           BELARUS                        >=30               1      197   13545
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)            0      411     630
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)            1       11     630
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                0      100     630
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                1        1     630
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30               0      105     630
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30               1        2     630
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)            0      476     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)            1       31     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                0       83     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                1        6     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30               0      242     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30               1       15     853
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)            0       21      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)            1        1      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                0       24      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                1        1      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30               0        3      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30               1        0      50
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)            0      162     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)            1        7     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                0       31     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                1        4     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30               0       42     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30               1        2     248
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)            0      127     218
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)            1        1     218
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                0       40     218
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                1        0     218
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30               0       49     218
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30               1        1     218
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)            0      165     239
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)            1       19     239
6-24 months   ki0047075b-MAL-ED          INDIA                          <20                0       32     239
6-24 months   ki0047075b-MAL-ED          INDIA                          <20                1        2     239
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30               0       21     239
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30               1        0     239
6-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)            0      183     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)            1        4     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          <20                0        5     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          <20                1        0     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30               0       46     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30               1        0     238
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)            0      143     284
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)            1        0     284
6-24 months   ki0047075b-MAL-ED          PERU                           <20                0       77     284
6-24 months   ki0047075b-MAL-ED          PERU                           <20                1        1     284
6-24 months   ki0047075b-MAL-ED          PERU                           >=30               0       63     284
6-24 months   ki0047075b-MAL-ED          PERU                           >=30               1        0     284
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)            0      135     275
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)            1        1     275
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                0       42     275
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                1        0     275
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30               0       96     275
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30               1        1     275
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)            0      132     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)            1        0     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                0       15     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                1        0     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30               0      106     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30               1        0     253
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)            0      277     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)            1       19     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                0       33     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                1        1     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30               0       40     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30               1        3     373
6-24 months   ki1000108-IRC              INDIA                          [20-30)            0      307     410
6-24 months   ki1000108-IRC              INDIA                          [20-30)            1       37     410
6-24 months   ki1000108-IRC              INDIA                          <20                0       33     410
6-24 months   ki1000108-IRC              INDIA                          <20                1        4     410
6-24 months   ki1000108-IRC              INDIA                          >=30               0       22     410
6-24 months   ki1000108-IRC              INDIA                          >=30               1        7     410
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)            0      148     374
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)            1       13     374
6-24 months   ki1000109-EE               PAKISTAN                       <20                0        1     374
6-24 months   ki1000109-EE               PAKISTAN                       <20                1        0     374
6-24 months   ki1000109-EE               PAKISTAN                       >=30               0      192     374
6-24 months   ki1000109-EE               PAKISTAN                       >=30               1       20     374
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)            0      951    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)            1       89    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                0      169    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                1       11    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30               0      132    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30               1       14    1366
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)            0      222     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)            1       36     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                0       28     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                1        5     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30               0       60     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30               1       24     375
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)            0      322     532
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)            1       36     532
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                0       58     532
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                1        3     532
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30               0      105     532
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30               1        8     532
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)            0      440     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)            1        9     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                0       73     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                1        1     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30               0      113     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30               1        5     641
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)            0      458     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)            1       16     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                0      128     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                1        5     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30               0      118     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30               1        5     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)            0     1369    2148
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)            1       35    2148
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                0      147    2148
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                1        6    2148
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30               0      574    2148
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30               1       17    2148
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)            0     1104    2422
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)            1       56    2422
6-24 months   ki1101329-Keneba           GAMBIA                         <20                0      336    2422
6-24 months   ki1101329-Keneba           GAMBIA                         <20                1       18    2422
6-24 months   ki1101329-Keneba           GAMBIA                         >=30               0      839    2422
6-24 months   ki1101329-Keneba           GAMBIA                         >=30               1       69    2422
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)            0      159     250
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)            1        2     250
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                0       35     250
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                1        1     250
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30               0       52     250
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30               1        1     250
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)            0      800    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)            1       82    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                0      171    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                1       29    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30               0      471    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30               1       80    1633
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)            0      339     597
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)            1       48     597
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                0      101     597
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                1       20     597
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30               0       77     597
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30               1       12     597
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)            0    11771   16581
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)            1      112   16581
6-24 months   ki1119695-PROBIT           BELARUS                        <20                0     1698   16581
6-24 months   ki1119695-PROBIT           BELARUS                        <20                1       17   16581
6-24 months   ki1119695-PROBIT           BELARUS                        >=30               0     2953   16581
6-24 months   ki1119695-PROBIT           BELARUS                        >=30               1       30   16581
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)            0     6213    9505
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)            1      118    9505
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                0     1421    9505
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                1       20    9505
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30               0     1704    9505
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30               1       29    9505
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)            0      499    1053
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)            1       16    1053
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                0      128    1053
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                1        5    1053
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30               0      390    1053
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30               1       15    1053
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)            0     2483    4068
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)            1      254    4068
6-24 months   ki1135781-COHORTS          INDIA                          <20                0      233    4068
6-24 months   ki1135781-COHORTS          INDIA                          <20                1       40    4068
6-24 months   ki1135781-COHORTS          INDIA                          >=30               0      947    4068
6-24 months   ki1135781-COHORTS          INDIA                          >=30               1      111    4068
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)            0     1589    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)            1       87    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                0      327    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                1       17    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30               0      751    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30               1       40    2811
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)            0      311     581
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)            1        1     581
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                0       93     581
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                1        2     581
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30               0      172     581
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30               1        2     581
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)            0     6922   15797
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)            1      397   15797
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                0     6890   15797
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                1      420   15797
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30               0     1088   15797
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30               1       80   15797


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
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

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
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/b94867d3-57e8-41af-b55a-e9d96eef9ee4/2367f243-6528-4c36-99f5-6092a7a90fba/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b94867d3-57e8-41af-b55a-e9d96eef9ee4/2367f243-6528-4c36-99f5-6092a7a90fba/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b94867d3-57e8-41af-b55a-e9d96eef9ee4/2367f243-6528-4c36-99f5-6092a7a90fba/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b94867d3-57e8-41af-b55a-e9d96eef9ee4/2367f243-6528-4c36-99f5-6092a7a90fba/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.0855769   0.0604595   0.1106943
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.0611111   0.0262514   0.0959708
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.0958904   0.0577106   0.1340702
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                0.1395349   0.0971973   0.1818725
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.1515152   0.0290194   0.2740109
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.2857143   0.1889778   0.3824508
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.0337553   0.0174859   0.0500247
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.0375940   0.0052452   0.0699428
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.0406504   0.0057272   0.0755736
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0249288   0.0167717   0.0330858
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0392157   0.0084514   0.0699799
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0287648   0.0152861   0.0422435
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.0482759   0.0359383   0.0606134
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.0508475   0.0279578   0.0737371
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0759912   0.0587521   0.0932303
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.0929705   0.0646422   0.1212988
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.1450000   0.0548187   0.2351813
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.1451906   0.1082806   0.1821006
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.1240310   0.0911635   0.1568985
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.1652893   0.0990509   0.2315276
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1348315   0.0638143   0.2058486
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0094252   0.0054317   0.0134188
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.0099125   0.0024663   0.0173588
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0100570   0.0038000   0.0163140
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0186384   0.0153068   0.0219701
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0138793   0.0078386   0.0199199
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0167340   0.0106944   0.0227736
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.0310680   0.0160762   0.0460598
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0375940   0.0052520   0.0699360
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0370370   0.0186357   0.0554384
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0928023   0.0819307   0.1036740
0-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.1465201   0.1045669   0.1884734
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.1049149   0.0864474   0.1233825
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0519093   0.0412866   0.0625320
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0494186   0.0265107   0.0723265
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0505689   0.0352964   0.0658414
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0542424   0.0485022   0.0599825
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0574555   0.0515277   0.0633834
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0684932   0.0544948   0.0824915
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                0.1568047   0.1179920   0.1956175
0-6 months    ki1000108-IRC              INDIA                          <20                  NA                0.1428571   0.0267838   0.2589305
0-6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.2068966   0.0592812   0.3545119
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0201794   0.0126432   0.0277156
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0419580   0.0090891   0.0748270
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0337478   0.0188278   0.0486678
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.0146290   0.0070204   0.0222377
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.0265781   0.0084027   0.0447535
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0524968   0.0368514   0.0681422
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.1035422   0.0723446   0.1347399
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.1061947   0.0493402   0.1630492
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1379310   0.0654084   0.2104537
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0873286   0.0575764   0.1170808
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                0.0741279   0.0453971   0.1028587
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0797571   0.0539517   0.1055624
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0611440   0.0402763   0.0820117
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0674157   0.0152924   0.1195391
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0583658   0.0296873   0.0870443
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.0855769   0.0604595   0.1106943
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.0611111   0.0262514   0.0959708
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.0958904   0.0577106   0.1340702
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                0.1395349   0.0971973   0.1818725
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.1515152   0.0290194   0.2740109
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.2857143   0.1889778   0.3824508
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.0337553   0.0174859   0.0500247
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.0375940   0.0052452   0.0699428
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.0406504   0.0057272   0.0755736
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0249288   0.0167717   0.0330858
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0392157   0.0084514   0.0699799
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0287648   0.0152861   0.0422435
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.0482759   0.0359383   0.0606134
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.0508475   0.0279578   0.0737371
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0759912   0.0587521   0.0932303
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.0929705   0.0646422   0.1212988
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.1450000   0.0548187   0.2351813
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.1451906   0.1082806   0.1821006
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.1240310   0.0911635   0.1568985
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.1652893   0.0990509   0.2315276
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1348315   0.0638143   0.2058486
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0094252   0.0054317   0.0134188
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.0099125   0.0024663   0.0173588
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0100570   0.0038000   0.0163140
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0186384   0.0153068   0.0219701
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0138793   0.0078386   0.0199199
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0167340   0.0106944   0.0227736
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.0310680   0.0160762   0.0460598
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0375940   0.0052520   0.0699360
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0370370   0.0186357   0.0554384
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0928023   0.0819307   0.1036740
6-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.1465201   0.1045669   0.1884734
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.1049149   0.0864474   0.1233825
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0519093   0.0412866   0.0625320
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0494186   0.0265107   0.0723265
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0505689   0.0352964   0.0658414
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0542424   0.0485022   0.0599825
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0574555   0.0515277   0.0633834
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0684932   0.0544948   0.0824915


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0834553   0.0601989   0.1067118
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1733333   0.1349698   0.2116969
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0270019   0.0201456   0.0338581
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0590421   0.0496532   0.0684311
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1169626   0.0922087   0.1417166
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1340034   0.1066544   0.1613523
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0095893   0.0052864   0.0138922
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0175697   0.0149283   0.0202111
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0341880   0.0232075   0.0451686
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0995575   0.0903557   0.1087594
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0567829   0.0526732   0.0608927
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0254403   0.0186125   0.0322681
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0308975   0.0233849   0.0384101
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1093474   0.0836377   0.1350572
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0846069   0.0570929   0.1121208
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0609613   0.0448957   0.0770269
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0834553   0.0601989   0.1067118
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1733333   0.1349698   0.2116969
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0270019   0.0201456   0.0338581
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0590421   0.0496532   0.0684311
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1169626   0.0922087   0.1417166
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1340034   0.1066544   0.1613523
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0095893   0.0052864   0.0138922
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0175697   0.0149283   0.0202111
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0341880   0.0232075   0.0451686
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0995575   0.0903557   0.1087594
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0567829   0.0526732   0.0608927


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.7141074   0.3774183   1.351152
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.1205172   0.8928854   1.406181
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)           1.0858586   0.4578734   2.575142
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           2.0476190   1.2995746   3.226243
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.1137218   0.4153797   2.986127
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.2042683   0.4496864   3.225052
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.5731092   0.6723736   3.680502
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.1538796   0.6515543   2.043480
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.0532688   0.6276645   1.767465
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.5741032   1.1184677   2.215353
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.5596341   0.8284917   2.936008
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.5616839   1.0614039   2.297765
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.3326446   0.8242612   2.154586
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.0870787   0.6028295   1.960322
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.0517024   0.5383081   2.054730
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           1.0670286   0.7311286   1.557250
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.7446571   0.4651757   1.192053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.8978210   0.6001710   1.343088
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.2100564   0.4512550   3.244810
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           1.1921296   0.5963889   2.382964
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.5788411   1.1587274   2.151273
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.1305204   0.9150605   1.396712
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           0.9520182   0.5735666   1.580180
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           0.9741779   0.6763961   1.403057
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0592370   0.9213302   1.217786
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.2627239   1.0010205   1.592846
0-6 months    ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          <20                  [20-30)           0.9110512   0.3896386   2.130216
0-6 months    ki1000108-IRC              INDIA                          >=30                 [20-30)           1.3194535   0.6200390   2.807819
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           2.0792541   0.8729867   4.952306
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.6723900   0.9375588   2.983160
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.8168011   0.7694465   4.289793
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           3.5885312   1.9705321   6.535065
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.0256171   0.5548557   1.895791
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.3321234   0.7267100   2.441899
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)           0.8488389   0.6122010   1.176946
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.9132987   0.7917333   1.053530
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.1025734   0.4735529   2.567122
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           0.9545626   0.5247893   1.736296
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.7141074   0.3774183   1.351152
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.1205172   0.8928854   1.406181
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)           1.0858586   0.4578734   2.575142
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           2.0476190   1.2995746   3.226243
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           1.1137218   0.4153797   2.986127
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           1.2042683   0.4496864   3.225052
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           1.5731092   0.6723736   3.680502
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.1538796   0.6515543   2.043480
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.0532688   0.6276645   1.767465
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.5741032   1.1184677   2.215353
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.5596341   0.8284917   2.936008
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.5616839   1.0614039   2.297765
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.3326446   0.8242612   2.154586
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.0870787   0.6028295   1.960322
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.0517024   0.5383081   2.054730
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           1.0670286   0.7311286   1.557250
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.7446571   0.4651757   1.192053
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.8978210   0.6001710   1.343088
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.2100564   0.4512550   3.244810
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           1.1921296   0.5963889   2.382964
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.5788411   1.1587274   2.151273
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.1305204   0.9150605   1.396712
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           0.9520182   0.5735666   1.580180
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           0.9741779   0.6763961   1.403057
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0592370   0.9213302   1.217786
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.2627239   1.0010205   1.592846


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0021216   -0.0078686   0.0036254
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0337984    0.0055533   0.0620436
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0018612   -0.0082359   0.0119582
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0020731   -0.0030809   0.0072270
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0107663    0.0010419   0.0204906
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0239921    0.0056930   0.0422913
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0099723   -0.0107082   0.0306529
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0001641   -0.0010722   0.0014003
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0010687   -0.0028826   0.0007451
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0031201   -0.0080818   0.0143219
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0067552    0.0001352   0.0133752
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0006820   -0.0073698   0.0060058
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0025406   -0.0014794   0.0065605
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0023992   -0.0135867   0.0183852
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0052609   -0.0001296   0.0106515
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0162684    0.0085232   0.0240137
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0058052   -0.0135423   0.0251527
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0027217   -0.0062732   0.0008297
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0001827   -0.0134459   0.0130805
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0021216   -0.0078686   0.0036254
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0337984    0.0055533   0.0620436
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0018612   -0.0082359   0.0119582
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0020731   -0.0030809   0.0072270
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0107663    0.0010419   0.0204906
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0239921    0.0056930   0.0422913
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0099723   -0.0107082   0.0306529
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0001641   -0.0010722   0.0014003
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0010687   -0.0028826   0.0007451
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0031201   -0.0080818   0.0143219
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0067552    0.0001352   0.0133752
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0006820   -0.0073698   0.0060058
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0025406   -0.0014794   0.0065605


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0254217   -0.0954148   0.0400990
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.1949911    0.0190527   0.3393739
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0522558   -0.2773402   0.2968051
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0767757   -0.1340989   0.2484402
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.1823487    0.0027043   0.3296334
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.2051264    0.0333508   0.3463770
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0744186   -0.0928910   0.2161150
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0171086   -0.1175098   0.1355106
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0608289   -0.1688282   0.0371913
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0912621   -0.3014881   0.3654921
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0678521   -0.0008186   0.1318109
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0133129   -0.1526293   0.1091644
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0447414   -0.0288122   0.1130364
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0150703   -0.0905985   0.1105008
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.2067954   -0.0268777   0.3872947
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.5265297    0.2517815   0.7003894
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0530896   -0.1410492   0.2141974
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0321691   -0.0696026   0.0039544
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0029965   -0.2459623   0.1925903
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0254217   -0.0954148   0.0400990
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.1949911    0.0190527   0.3393739
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0522558   -0.2773402   0.2968051
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0767757   -0.1340989   0.2484402
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.1823487    0.0027043   0.3296334
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.2051264    0.0333508   0.3463770
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0744186   -0.0928910   0.2161150
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0171086   -0.1175098   0.1355106
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0608289   -0.1688282   0.0371913
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0912621   -0.3014881   0.3654921
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0678521   -0.0008186   0.1318109
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0133129   -0.1526293   0.1091644
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0447414   -0.0288122   0.1130364
