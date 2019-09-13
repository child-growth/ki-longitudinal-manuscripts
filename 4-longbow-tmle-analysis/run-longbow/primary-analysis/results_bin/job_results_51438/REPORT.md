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
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)            0      127     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)            1        1     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                0       40     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30               0       48     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30               1        1     217
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
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)            0      133     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)            1        1     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                0       42     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30               0       96     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30               1        1     273
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
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)            0      152     374
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)            1        9     374
0-24 months   ki1000109-EE               PAKISTAN                       <20                0        1     374
0-24 months   ki1000109-EE               PAKISTAN                       <20                1        0     374
0-24 months   ki1000109-EE               PAKISTAN                       >=30               0      193     374
0-24 months   ki1000109-EE               PAKISTAN                       >=30               1       19     374
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
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)            0      439     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)            1        9     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                0       73     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                1        1     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30               0      113     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30               1        5     640
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
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)            0     1109    2419
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)            1       51    2419
0-24 months   ki1101329-Keneba           GAMBIA                         <20                0      338    2419
0-24 months   ki1101329-Keneba           GAMBIA                         <20                1       16    2419
0-24 months   ki1101329-Keneba           GAMBIA                         >=30               0      842    2419
0-24 months   ki1101329-Keneba           GAMBIA                         >=30               1       63    2419
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)            0      335     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)            1       48     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                0      100     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                1       20     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30               0       72     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30               1       17     592
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)            0    11771   16581
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)            1      112   16581
0-24 months   ki1119695-PROBIT           BELARUS                        <20                0     1698   16581
0-24 months   ki1119695-PROBIT           BELARUS                        <20                1       17   16581
0-24 months   ki1119695-PROBIT           BELARUS                        >=30               0     2953   16581
0-24 months   ki1119695-PROBIT           BELARUS                        >=30               1       30   16581
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)            0     6073    9311
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)            1      117    9311
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                0     1395    9311
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                1       19    9311
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30               0     1677    9311
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30               1       30    9311
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)            0     6899   15673
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)            1      398   15673
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                0     6792   15673
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                1      420   15673
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30               0     1085   15673
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30               1       79   15673
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)            0      164     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)            1        5     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                0       33     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                1        2     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30               0       44     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30               1        0     248
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)            0      128     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)            1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                0       40     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30               0       48     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30               1        1     217
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)            0      168     238
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)            1       15     238
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                0       32     238
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                1        2     238
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30               0       19     238
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30               1        2     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)            0      181     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)            1        5     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20                0        5     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20                1        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30               0       46     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30               1        0     237
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)            0      143     284
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)            1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           <20                0       78     284
0-6 months    ki0047075b-MAL-ED          PERU                           <20                1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           >=30               0       63     284
0-6 months    ki0047075b-MAL-ED          PERU                           >=30               1        0     284
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)            0      133     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)            1        1     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                0       40     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30               0       96     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30               1        1     271
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
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)            0      145     364
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)            1       14     364
0-6 months    ki1000109-EE               PAKISTAN                       <20                0        1     364
0-6 months    ki1000109-EE               PAKISTAN                       <20                1        0     364
0-6 months    ki1000109-EE               PAKISTAN                       >=30               0      191     364
0-6 months    ki1000109-EE               PAKISTAN                       >=30               1       13     364
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)            0      101     168
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)            1       10     168
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                0       20     168
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                1        0     168
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30               0       36     168
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30               1        1     168
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)            0      437     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)            1       10     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                0       73     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                1        0     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30               0      113     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30               1        4     637
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
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)            0      944    2031
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)            1       11    2031
0-6 months    ki1101329-Keneba           GAMBIA                         <20                0      295    2031
0-6 months    ki1101329-Keneba           GAMBIA                         <20                1        4    2031
0-6 months    ki1101329-Keneba           GAMBIA                         >=30               0      741    2031
0-6 months    ki1101329-Keneba           GAMBIA                         >=30               1       36    2031
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)            0      315     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)            1       38     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                0       89     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                1       13     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30               0       73     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30               1       14     542
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)            0     8852   13545
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)            1      847   13545
0-6 months    ki1119695-PROBIT           BELARUS                        <20                0     1274   13545
0-6 months    ki1119695-PROBIT           BELARUS                        <20                1      102   13545
0-6 months    ki1119695-PROBIT           BELARUS                        >=30               0     2273   13545
0-6 months    ki1119695-PROBIT           BELARUS                        >=30               1      197   13545
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)            0      394     609
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)            1       11     609
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                0       97     609
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                1        1     609
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30               0      104     609
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30               1        2     609
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)            0      476     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)            1       31     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                0       83     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                1        6     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30               0      242     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30               1       15     853
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)            0       21      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)            1        1      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                0       20      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                1        1      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30               0        3      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30               1        0      46
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)            0      162     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)            1        7     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                0       31     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                1        4     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30               0       42     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30               1        2     248
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)            0      127     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)            1        1     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                0       40     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                1        0     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30               0       48     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30               1        1     217
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
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)            0      133     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)            1        1     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                0       42     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                1        0     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30               0       96     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30               1        1     273
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
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)            0      152     374
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)            1        9     374
6-24 months   ki1000109-EE               PAKISTAN                       <20                0        1     374
6-24 months   ki1000109-EE               PAKISTAN                       <20                1        0     374
6-24 months   ki1000109-EE               PAKISTAN                       >=30               0      193     374
6-24 months   ki1000109-EE               PAKISTAN                       >=30               1       19     374
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
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)            0      439     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)            1        9     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                0       73     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                1        1     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30               0      113     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30               1        5     640
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
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)            0     1109    2419
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)            1       51    2419
6-24 months   ki1101329-Keneba           GAMBIA                         <20                0      338    2419
6-24 months   ki1101329-Keneba           GAMBIA                         <20                1       16    2419
6-24 months   ki1101329-Keneba           GAMBIA                         >=30               0      842    2419
6-24 months   ki1101329-Keneba           GAMBIA                         >=30               1       63    2419
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)            0      335     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)            1       48     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                0      100     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                1       20     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30               0       72     592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30               1       17     592
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)            0    11771   16581
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)            1      112   16581
6-24 months   ki1119695-PROBIT           BELARUS                        <20                0     1698   16581
6-24 months   ki1119695-PROBIT           BELARUS                        <20                1       17   16581
6-24 months   ki1119695-PROBIT           BELARUS                        >=30               0     2953   16581
6-24 months   ki1119695-PROBIT           BELARUS                        >=30               1       30   16581
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)            0     6073    9311
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)            1      117    9311
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                0     1395    9311
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                1       19    9311
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30               0     1677    9311
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30               1       30    9311
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)            0     6899   15673
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)            1      398   15673
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                0     6792   15673
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                1      420   15673
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30               0     1085   15673
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30               1       79   15673


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
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
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
![](/tmp/14093ccb-a210-4c6e-a242-8044f6293903/c39d2ee0-213f-4674-96d7-3727b94abba6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/14093ccb-a210-4c6e-a242-8044f6293903/c39d2ee0-213f-4674-96d7-3727b94abba6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/14093ccb-a210-4c6e-a242-8044f6293903/c39d2ee0-213f-4674-96d7-3727b94abba6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/14093ccb-a210-4c6e-a242-8044f6293903/c39d2ee0-213f-4674-96d7-3727b94abba6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.0439630   0.0321237   0.0558024
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.0445859   0.0212395   0.0679324
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0720105   0.0548222   0.0891989
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.0907794   0.0654033   0.1161555
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.1307211   0.0159420   0.2455002
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.1538534   0.1198394   0.1878675
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.1258570   0.0925216   0.1591924
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.1692387   0.1011891   0.2372883
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1907106   0.1082291   0.2731922
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0094437   0.0054456   0.0134419
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.0096341   0.0021598   0.0171084
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0101114   0.0038467   0.0163761
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0189096   0.0155147   0.0223045
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0134723   0.0074478   0.0194968
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0175235   0.0112965   0.0237505
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.0310680   0.0160762   0.0460598
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0375940   0.0052520   0.0699360
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0370370   0.0186357   0.0554384
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0924025   0.0815439   0.1032610
0-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.1504133   0.1073179   0.1935087
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.1038782   0.0852658   0.1224907
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0520167   0.0413573   0.0626760
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0465844   0.0250288   0.0681399
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0506070   0.0352115   0.0660025
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0549931   0.0491741   0.0608120
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0575814   0.0517072   0.0634556
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0676734   0.0537633   0.0815834
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                0.1568047   0.1179920   0.1956175
0-6 months    ki1000108-IRC              INDIA                          <20                  NA                0.1428571   0.0267838   0.2589305
0-6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.2068966   0.0592812   0.3545119
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.0201794   0.0126432   0.0277156
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0419580   0.0090891   0.0748270
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0337478   0.0188278   0.0486678
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.1084134   0.0759256   0.1409013
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.1291158   0.0640260   0.1942055
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1619621   0.0839575   0.2399668
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0875694   0.0576291   0.1175096
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                0.0743878   0.0436602   0.1051154
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0779027   0.0536201   0.1021853
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
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.0439638   0.0320912   0.0558364
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.0450180   0.0221993   0.0678367
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0721632   0.0549328   0.0893937
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                0.0901737   0.0647605   0.1155868
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.1312946   0.0320588   0.2305303
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.1545133   0.1194955   0.1895311
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.1248725   0.0916778   0.1580672
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.1676987   0.1000648   0.2353325
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1939294   0.1105923   0.2772665
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.0094285   0.0054270   0.0134301
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.0096613   0.0023361   0.0169865
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0101717   0.0038486   0.0164948
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0189134   0.0155179   0.0223089
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0133691   0.0073813   0.0193570
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0175982   0.0113495   0.0238469
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.0310680   0.0160762   0.0460598
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0375940   0.0052520   0.0699360
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.0370370   0.0186357   0.0554384
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.0926276   0.0817255   0.1035296
6-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.1512062   0.1078853   0.1945272
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.1038752   0.0852740   0.1224764
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.0521830   0.0415266   0.0628393
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0476175   0.0254334   0.0698016
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0505113   0.0352054   0.0658172
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.0550102   0.0491905   0.0608298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.0576692   0.0517825   0.0635559
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.0668760   0.0530732   0.0806788


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0834553   0.0601989   0.1067118
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1733333   0.1349698   0.2116969
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0270019   0.0201456   0.0338581
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0537412   0.0447529   0.0627295
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1169626   0.0922087   0.1417166
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1435811   0.1153098   0.1718524
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0095893   0.0052864   0.0138922
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0178284   0.0151404   0.0205163
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0341880   0.0232075   0.0451686
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0995575   0.0903557   0.1087594
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0572322   0.0531458   0.0613186
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0254403   0.0186125   0.0322681
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1199262   0.0925504   0.1473020
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0846069   0.0570929   0.1121208
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0609613   0.0448957   0.0770269
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0834553   0.0601989   0.1067118
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1733333   0.1349698   0.2116969
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0270019   0.0201456   0.0338581
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0537412   0.0447529   0.0627295
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1169626   0.0922087   0.1417166
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1435811   0.1153098   0.1718524
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0095893   0.0052864   0.0138922
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0178284   0.0151404   0.0205163
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0341880   0.0232075   0.0451686
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0995575   0.0903557   0.1087594
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0572322   0.0531458   0.0613186


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
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.0141688   0.5642463   1.822853
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.6379786   1.1455276   2.342129
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.4399860   0.6202016   3.343364
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.6948055   1.2144714   2.365116
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.3446903   0.8307486   2.176581
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.5152963   0.9128249   2.515403
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.0201594   0.5078299   2.049358
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           1.0707000   0.7374965   1.554446
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.7124572   0.4400350   1.153534
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9266955   0.6223526   1.379868
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.2100564   0.4512550   3.244810
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           1.1921296   0.5963889   2.382964
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.6278061   1.1943773   2.218522
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.1241936   0.9074316   1.392735
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           0.8955666   0.5399431   1.485415
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           0.9729000   0.6741041   1.404137
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0470667   0.9106670   1.203896
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.2305799   0.9740195   1.554719
0-6 months    ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          <20                  [20-30)           0.9110512   0.3896386   2.130216
0-6 months    ki1000108-IRC              INDIA                          >=30                 [20-30)           1.3194535   0.6200390   2.807819
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           2.0792541   0.8729867   4.952306
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.6723900   0.9375588   2.983160
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.1909573   0.6624185   2.141213
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.4939307   0.8473943   2.633755
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)           0.8494728   0.6040575   1.194595
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.8896112   0.7609779   1.039988
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
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.0239786   0.5782915   1.813155
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           1.6414242   1.1478463   2.347242
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  [20-30)           1.4560188   0.7079644   2.994488
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 [20-30)           1.7135077   1.2131563   2.420223
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           1.3429591   0.8283826   2.177182
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           1.5530193   0.9369278   2.574231
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.0246856   0.5198990   2.019585
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           1.0788176   0.7397524   1.573293
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.7068611   0.4362947   1.145218
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9304609   0.6250353   1.385134
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.2100564   0.4512550   3.244810
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           1.1921296   0.5963889   2.382964
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           1.6324108   1.1975567   2.225168
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           1.1214288   0.9051567   1.389376
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           0.9125098   0.5487677   1.517353
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           0.9679650   0.6716323   1.395043
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0483373   0.9117044   1.205447
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.2157025   0.9611924   1.537603


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0020901   -0.0078075   0.0036274
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0337984    0.0055533   0.0620436
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0018612   -0.0082359   0.0119582
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0020731   -0.0030809   0.0072270
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0097782    0.0004911   0.0190653
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0261832    0.0095310   0.0428355
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0177241   -0.0041540   0.0396021
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0001455   -0.0010856   0.0013766
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0010813   -0.0029351   0.0007726
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0031201   -0.0080818   0.0143219
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0071551    0.0005312   0.0137789
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0007893   -0.0075132   0.0059345
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0022391   -0.0018368   0.0063151
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0023992   -0.0135867   0.0183852
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0052609   -0.0001296   0.0106515
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0115128   -0.0093696   0.0323951
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0029625   -0.0066237   0.0006987
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0001827   -0.0134459   0.0130805
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0020901   -0.0078075   0.0036274
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0337984    0.0055533   0.0620436
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0018612   -0.0082359   0.0119582
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0020731   -0.0030809   0.0072270
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0097774    0.0004696   0.0190852
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.0267890    0.0096108   0.0439671
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0187086   -0.0031104   0.0405276
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0001607   -0.0010746   0.0013960
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0010850   -0.0029394   0.0007693
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0031201   -0.0080818   0.0143219
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0069299    0.0002732   0.0135867
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0009557   -0.0076685   0.0057572
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0022220   -0.0018526   0.0062967


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0250442   -0.0953544   0.0407528
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.1949911    0.0190527   0.3393739
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0522558   -0.2773402   0.2968051
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0767757   -0.1340989   0.2484402
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.1819492   -0.0077174   0.3359179
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.2238599    0.0752549   0.3485843
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.1234431   -0.0413812   0.2621798
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0151773   -0.1191684   0.1333959
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0606484   -0.1694672   0.0380448
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0912621   -0.3014881   0.3654921
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0718687    0.0031602   0.1358414
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0154086   -0.1555000   0.1076983
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0391236   -0.0349079   0.1078592
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0150703   -0.0905985   0.1105008
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.2067954   -0.0268777   0.3872947
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0959988   -0.0946749   0.2534604
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0350148   -0.0729208   0.0015519
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0029965   -0.2459623   0.1925903
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0250442   -0.0953544   0.0407528
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.1949911    0.0190527   0.3393739
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0522558   -0.2773402   0.2968051
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0767757   -0.1340989   0.2484402
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.1819353   -0.0083034   0.3362812
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              NA                 0.2290387    0.0758077   0.3568640
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.1302998   -0.0340246   0.2685102
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0167626   -0.1178511   0.1351659
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0608596   -0.1697080   0.0378598
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0912621   -0.3014881   0.3654921
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0696075    0.0005221   0.1339176
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0186553   -0.1584718   0.1042867
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0388248   -0.0351818   0.1075405
