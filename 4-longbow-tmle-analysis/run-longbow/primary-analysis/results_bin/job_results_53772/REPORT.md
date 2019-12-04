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

* arm
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single

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




# Results Detail

## Results Plots
![](/tmp/71ab225e-5fd6-41f5-be15-7fd0405812a4/a4832e79-a36a-40ef-81a3-ae454bbc8710/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/71ab225e-5fd6-41f5-be15-7fd0405812a4/a4832e79-a36a-40ef-81a3-ae454bbc8710/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/71ab225e-5fd6-41f5-be15-7fd0405812a4/a4832e79-a36a-40ef-81a3-ae454bbc8710/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/71ab225e-5fd6-41f5-be15-7fd0405812a4/a4832e79-a36a-40ef-81a3-ae454bbc8710/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.0855454   0.0609226   0.1101682
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.0600739   0.0248504   0.0952974
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.0907863   0.0491566   0.1324160
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                0.1395349   0.0971973   0.1818725
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.1515152   0.0290194   0.2740109
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.2857143   0.1889778   0.3824508
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.0337553   0.0174859   0.0500247
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.0375940   0.0052452   0.0699428
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.0406504   0.0057272   0.0755736
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0249288   0.0167717   0.0330858
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0392157   0.0084514   0.0699799
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0287648   0.0152861   0.0422435
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.0479254   0.0355031   0.0603477
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.0496831   0.0248171   0.0745492
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0799312   0.0619435   0.0979189
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.0910391   0.0660856   0.1159927
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.1300648   0.0270214   0.2331082
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.1530551   0.1150988   0.1910113
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.1241771   0.0912334   0.1571208
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.1654926   0.0986111   0.2323741
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1336048   0.0620957   0.2051139
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0094142   0.0054139   0.0134144
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.0096912   0.0023476   0.0170347
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0102129   0.0039332   0.0164925
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0186004   0.0152680   0.0219328
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0136990   0.0076711   0.0197268
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0169338   0.0108707   0.0229969
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.0310680   0.0160762   0.0460598
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0375940   0.0052520   0.0699360
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0370370   0.0186357   0.0554384
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0926630   0.0817652   0.1035607
0-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.1493365   0.1060587   0.1926143
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.1047142   0.0859947   0.1234337
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0520409   0.0413543   0.0627275
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0464911   0.0248186   0.0681636
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0511051   0.0355774   0.0666328
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0546706   0.0488461   0.0604950
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0569116   0.0510095   0.0628137
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0689318   0.0552229   0.0826408
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                0.1568047   0.1179920   0.1956175
0-6 months    ki1000108-IRC              INDIA                          <20                  NA                0.1428571   0.0267838   0.2589305
0-6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.2068966   0.0592812   0.3545119
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0201794   0.0126432   0.0277156
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0419580   0.0090891   0.0748270
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0337478   0.0188278   0.0486678
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.0146290   0.0070204   0.0222377
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.0265781   0.0084027   0.0447535
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0524968   0.0368514   0.0681422
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.1045464   0.0732834   0.1358093
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.1108447   0.0533771   0.1683124
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1492009   0.0773892   0.2210126
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0876212   0.0577974   0.1174450
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                0.0734962   0.0438250   0.1031674
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0778047   0.0531986   0.1024108
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0611440   0.0402763   0.0820117
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0674157   0.0152924   0.1195391
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0583658   0.0296873   0.0870443
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.0855454   0.0609226   0.1101682
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.0600739   0.0248504   0.0952974
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.0907863   0.0491566   0.1324160
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                0.1395349   0.0971973   0.1818725
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.1515152   0.0290194   0.2740109
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.2857143   0.1889778   0.3824508
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.0337553   0.0174859   0.0500247
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.0375940   0.0052452   0.0699428
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.0406504   0.0057272   0.0755736
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0249288   0.0167717   0.0330858
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0392157   0.0084514   0.0699799
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0287648   0.0152861   0.0422435
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.0489579   0.0363734   0.0615423
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.0490234   0.0250816   0.0729652
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0789976   0.0611178   0.0968774
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.0911064   0.0654617   0.1167511
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.1269365   0.0228842   0.2309888
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.1543550   0.1188804   0.1898296
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.1237199   0.0907938   0.1566461
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.1614685   0.0942519   0.2286851
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1324497   0.0613871   0.2035123
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0094329   0.0054298   0.0134359
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.0096484   0.0022955   0.0170013
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0101312   0.0038756   0.0163868
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0186077   0.0152748   0.0219407
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0137470   0.0077504   0.0197436
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0167905   0.0107553   0.0228257
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.0310680   0.0160762   0.0460598
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0375940   0.0052520   0.0699360
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0370370   0.0186357   0.0554384
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0928793   0.0819573   0.1038014
6-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.1474458   0.1047901   0.1901016
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.1047099   0.0859659   0.1234538
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0520544   0.0413983   0.0627105
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0459650   0.0245570   0.0673730
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0508651   0.0354083   0.0663218
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0545975   0.0488237   0.0603712
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0569456   0.0510413   0.0628500
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0688456   0.0551397   0.0825515


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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.7022460   0.3707454   1.330156
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.0612648   0.8188401   1.375461
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
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.0366767   0.5911091   1.818105
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.6678255   1.1852193   2.346943
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.4286691   0.6735560   3.030327
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.6812011   1.1749010   2.405681
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.3327139   0.8218450   2.161145
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.0759210   0.5920810   1.955148
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.0294233   0.5219240   2.030396
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           1.0848412   0.7528808   1.563170
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.7364886   0.4580173   1.184268
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9103984   0.6100233   1.358678
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.2100564   0.4512550   3.244810
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           1.1921296   0.5963889   2.382964
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.6116093   1.1788610   2.203215
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.1300546   0.9124502   1.399554
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           0.8933563   0.5367873   1.486781
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           0.9820178   0.6804704   1.417195
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0409921   0.9052507   1.197088
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.2608583   1.0039384   1.583527
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.0602449   0.5829076   1.928469
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.4271267   0.8099925   2.514456
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)           0.8387947   0.6025912   1.167585
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.8879662   0.7535656   1.046337
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.1025734   0.4735529   2.567122
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           0.9545626   0.5247893   1.736296
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.7022460   0.3707454   1.330156
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.0612648   0.8188401   1.375461
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
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.0013384   0.5778527   1.735180
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.6135831   1.1481457   2.267700
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.3932772   0.6354399   3.054925
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.6942277   1.1890823   2.413969
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.3051133   0.7960987   2.139585
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.0705609   0.5882023   1.948480
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.0228467   0.5168936   2.024044
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           1.0740292   0.7420739   1.554480
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.7387783   0.4610693   1.183756
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9023406   0.6038632   1.348349
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.2100564   0.4512550   3.244810
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           1.1921296   0.5963889   2.382964
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.5874987   1.1617578   2.169258
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.1273752   0.9100773   1.396557
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           0.8830190   0.5309741   1.468476
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           0.9771531   0.6773312   1.409692
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0430091   0.9072772   1.199047
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.2609675   1.0043948   1.583082


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0020901   -0.0078075   0.0036274
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0337984    0.0055533   0.0620436
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0018612   -0.0082359   0.0119582
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0020731   -0.0030809   0.0072270
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0111167    0.0013540   0.0208794
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0259235    0.0089655   0.0428815
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0098262   -0.0108958   0.0305483
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0001751   -0.0010543   0.0014045
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0010307   -0.0028447   0.0007833
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0031201   -0.0080818   0.0143219
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0068946    0.0002482   0.0135409
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0008136   -0.0075553   0.0059281
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0021124   -0.0019446   0.0061694
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0023992   -0.0135867   0.0183852
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0052609   -0.0001296   0.0106515
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0162684    0.0085232   0.0240137
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0048011   -0.0145740   0.0241762
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0030144   -0.0065773   0.0005486
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0001827   -0.0134459   0.0130805
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0020901   -0.0078075   0.0036274
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0337984    0.0055533   0.0620436
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0018612   -0.0082359   0.0119582
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0020731   -0.0030809   0.0072270
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0100843    0.0002241   0.0199444
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0258562    0.0084995   0.0432130
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0102834   -0.0104487   0.0310156
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0001564   -0.0010761   0.0013889
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0010380   -0.0028525   0.0007764
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0031201   -0.0080818   0.0143219
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0066782    0.0000155   0.0133408
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0008271   -0.0075480   0.0058939
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0021855   -0.0018461   0.0062170


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0250442   -0.0953544    0.0407528
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.1949911    0.0190527    0.3393739
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0522558   -0.2773402    0.2968051
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0767757   -0.1340989    0.2484402
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.1882848    0.0074133    0.3361974
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.2216394    0.0720431    0.3471192
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0733282   -0.0943797    0.2153358
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0182619   -0.1154033    0.1359092
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0586631   -0.1666754    0.0393493
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0912621   -0.3014881    0.3654921
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0692520    0.0002787    0.1334666
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0158822   -0.1563568    0.1075274
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0372009   -0.0370694    0.1061523
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0150703   -0.0905985    0.1105008
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.2067954   -0.0268777    0.3872947
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.5265297    0.2517815    0.7003894
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0439068   -0.1503887    0.2053866
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0356279   -0.0724851   -0.0000374
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0029965   -0.2459623    0.1925903
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0250442   -0.0953544    0.0407528
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.1949911    0.0190527    0.3393739
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0522558   -0.2773402    0.2968051
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0767757   -0.1340989    0.2484402
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.1707976   -0.0120572    0.3206149
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.2210641    0.0657050    0.3505893
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0767401   -0.0910991    0.2187613
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0163108   -0.1180559    0.1345294
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0590810   -0.1671157    0.0389533
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0912621   -0.3014881    0.3654921
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0670786   -0.0020801    0.1314643
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0161447   -0.1561669    0.1069196
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0384884   -0.0352746    0.1069958
