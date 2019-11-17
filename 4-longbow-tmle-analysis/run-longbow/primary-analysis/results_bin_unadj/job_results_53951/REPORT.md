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

**Outcome Variable:** ever_sstunted

## Predictor Variables

**Intervention Variable:** mwtkg

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mwtkg         ever_sstunted   n_cell       n
------------  -------------------------  -----------------------------  -----------  --------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                   0       45     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                   1        3     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                    0      113     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                    1       49     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg                0       40     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg                1        4     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                   0      132     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                   1       11     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                    0       38     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                    1        4     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg                0       30     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg                1        6     221
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                   0       36     242
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                   1        6     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                    0      112     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                    1       38     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg                0       36     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg                1       14     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                   0       75     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                   1        5     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                    0       61     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                    1       15     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg                0       81     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg                1        1     238
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                   0       87     290
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                   1       17     290
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                    0       87     290
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                    1       28     290
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg                0       53     290
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg                1       18     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                   0      154     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                   1       40     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                    0       16     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                    1       14     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg                0       30     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg                1       16     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                   0       51     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                   1       47     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                    0       38     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                    1       61     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg                0       31     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg                1       28     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                   0       96    1515
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                   1       17    1515
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                    0      725    1515
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                    1      435    1515
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg                0      193    1515
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg                1       49    1515
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                   0       64     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                   1       18     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                    0      295     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                    1      158     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg                0       74     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg                1       20     629
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                   0      112     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                   1        8     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                    0      356     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                    1       76     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg                0      107     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg                1       10     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                   0      182     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                   1       10     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                    0      338     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                    1       68     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg                0      136     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg                1       21     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                   0     1351    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                   1      125    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                    0      333    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                    1       60    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg                0      435    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg                1       48    2352
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                   0      871    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                   1       66    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                    0     1032    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                    1      169    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg                0      975    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg                1      103    3216
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                   0     9900   13772
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                   1      379   13772
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                    0     1067   13772
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                    1       64   13772
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg                0     2270   13772
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg                1       92   13772
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                   0     4997   11204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                   1      846   11204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                    0     1786   11204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                    1      622   11204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg                0     2364   11204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg                1      589   11204
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                   0      102     838
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                   1       12     838
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                    0      370     838
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                    1      134     838
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg                0      189     838
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg                1       31     838
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg                   0      575   27196
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg                   1       94   27196
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                    0    20106   27196
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                    1     4647   27196
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg                0     1498   27196
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg                1      276   27196
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                   0       47     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                   1        1     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg                    0      146     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg                    1       16     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg                0       42     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg                1        2     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg                   0      135     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg                   1        8     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg                    0       40     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg                    1        2     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg                0       30     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg                1        6     221
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg                   0       41     242
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg                   1        1     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg                    0      135     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg                    1       15     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg                0       46     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg                1        4     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg                   0       78     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg                   1        2     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                    0       68     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                    1        8     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg                0       82     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg                1        0     238
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg                   0       90     290
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg                   1       14     290
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg                    0      101     290
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg                    1       14     290
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg                0       62     290
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg                1        9     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                   0      177     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                   1       17     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                    0       24     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                    1        6     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg                0       42     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg                1        4     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                   0       87     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                   1       11     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                    0       81     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                    1       18     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg                0       51     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg                1        8     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                   0      108    1512
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                   1        5    1512
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg                    0      958    1512
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg                    1      200    1512
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg                0      221    1512
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg                1       20    1512
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                   0       76     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                   1        6     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg                    0      407     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg                    1       46     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg                0       87     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg                1        7     629
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                   0      116     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                   1        4     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg                    0      411     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg                    1       21     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg                0      111     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg                1        6     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                   0      187     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                   1        5     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                    0      376     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                    1       30     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg                0      145     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg                1       12     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                   0     1428    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                   1       48    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                    0      365    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                    1       28    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg                0      458    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg                1       25    2352
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg                   0    10163   13772
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg                   1      116   13772
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg                    0     1104   13772
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg                    1       27   13772
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg                0     2326   13772
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg                1       36   13772
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                   0     5381   11190
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                   1      456   11190
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                    0     2064   11190
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                    1      341   11190
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg                0     2635   11190
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg                1      313   11190
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg                   0       30     271
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg                   1        3     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg                    0      151     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg                    1       16     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg                0       70     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg                1        1     271
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg                   0      595   27130
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg                   1       73   27130
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                    0    20989   27130
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                    1     3703   27130
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg                0     1548   27130
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg                1      222   27130


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/766bbd01-930d-4a9c-9f11-d5cfef069a50/07dbe7c2-fc7c-43c0-83e2-c689b941ca5a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/766bbd01-930d-4a9c-9f11-d5cfef069a50/07dbe7c2-fc7c-43c0-83e2-c689b941ca5a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/766bbd01-930d-4a9c-9f11-d5cfef069a50/07dbe7c2-fc7c-43c0-83e2-c689b941ca5a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/766bbd01-930d-4a9c-9f11-d5cfef069a50/07dbe7c2-fc7c-43c0-83e2-c689b941ca5a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.1428571   0.0368097   0.2489046
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                0.2533333   0.1835886   0.3230780
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                0.2800000   0.1552882   0.4047118
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.1634615   0.0922694   0.2346537
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.2434783   0.1649022   0.3220543
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.2535211   0.1521569   0.3548854
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.2061856   0.1491505   0.2632206
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                0.4666667   0.2878138   0.6455196
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                0.3478261   0.2099345   0.4857177
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.4795918   0.3804874   0.5786962
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.6161616   0.5201769   0.7121463
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.4745763   0.3469089   0.6022436
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1504425   0.0814564   0.2194285
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.3750000   0.3377822   0.4122178
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.2024793   0.1330970   0.2718617
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2195122   0.1298521   0.3091723
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.3487859   0.3048635   0.3927082
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.2127660   0.1299655   0.2955664
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0666667   0.0220029   0.1113304
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.1759259   0.1399941   0.2118577
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.0854701   0.0347726   0.1361675
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0520833   0.0206334   0.0835333
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.1674877   0.1311414   0.2038339
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.1337580   0.0804778   0.1870381
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0846883   0.0704816   0.0988951
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.1526718   0.1171046   0.1882389
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0993789   0.0726928   0.1260650
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0704376   0.0447704   0.0961048
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.1407161   0.1151957   0.1662364
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.0955473   0.0673099   0.1237847
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0368713   0.0286148   0.0451278
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.0565871   0.0400996   0.0730746
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0389500   0.0266187   0.0512814
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1447886   0.1357656   0.1538117
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.2583056   0.2408225   0.2757888
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1994582   0.1850452   0.2138712
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.1052632   0.0488941   0.1616322
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                0.2658730   0.2272795   0.3044666
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                0.1409091   0.0949062   0.1869120
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.1405082   0.1141173   0.1668992
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                0.1877348   0.1819039   0.1935657
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                0.1555806   0.1378229   0.1733383
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.1346154   0.0689051   0.2003257
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.1217391   0.0618737   0.1816046
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.1267606   0.0492381   0.2042831
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1122449   0.0496246   0.1748652
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.1818182   0.1056938   0.2579426
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.1355932   0.0480646   0.2231218
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.0442478   0.0170549   0.0714407
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.1727116   0.1479652   0.1974580
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.0829876   0.0537728   0.1122023
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0731707   0.0167608   0.1295806
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.1015453   0.0737083   0.1293823
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.0744681   0.0213539   0.1275823
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0260417   0.0034998   0.0485835
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.0738916   0.0484291   0.0993541
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.0764331   0.0348458   0.1180205
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0325203   0.0234693   0.0415713
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0712468   0.0458092   0.0966845
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0517598   0.0319982   0.0715215
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0112851   0.0078802   0.0146901
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.0238727   0.0135601   0.0341852
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0152413   0.0084409   0.0220418
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0781223   0.0712374   0.0850072
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.1417879   0.1278459   0.1557300
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1061737   0.0950528   0.1172945
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.1092814   0.0848668   0.1336961
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                0.1499676   0.1447346   0.1552006
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                0.1254237   0.1093192   0.1415282


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2396694   0.1857746   0.2935643
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.2172414   0.1696986   0.2647841
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2592593   0.2068905   0.3116280
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5312500   0.4700011   0.5924989
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3306931   0.3017014   0.3596847
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3116057   0.2753823   0.3478292
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1405082   0.1141551   0.1668613
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1311258   0.1070332   0.1552185
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0990646   0.0869885   0.1111408
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1050995   0.0855497   0.1246493
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0388469   0.0306142   0.0470797
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1835951   0.1764261   0.1907642
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2112172   0.1835650   0.2388693
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1844757   0.1788759   0.1900754
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.1275862   0.0891215   0.1660509
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1445313   0.1013733   0.1876892
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1488095   0.1307571   0.1668620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0937997   0.0709973   0.1166021
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0622517   0.0450059   0.0794974
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0429422   0.0347475   0.0511369
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0129974   0.0096142   0.0163806
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0991957   0.0936569   0.1047345
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1473645   0.1423155   0.1524136


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           1.7733333   0.8034193   3.914159
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           1.9600000   0.8246831   4.658274
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           1.4895141   0.8662205   2.561302
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           1.5509528   0.8586838   2.801327
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           2.2633333   1.4108361   3.630952
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           1.6869565   1.0403108   2.735550
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.2847625   0.9918251   1.664220
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           0.9895420   0.7048769   1.389169
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           2.4926471   1.5194763   4.089099
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.3458921   0.7711195   2.349085
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.5889134   1.0362693   2.436284
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           0.9692671   0.5513542   1.703948
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           2.6388889   1.3099126   5.316183
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.2820513   0.5239569   3.137005
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           3.2157635   1.6928533   6.108701
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           2.5681529   1.2458263   5.294004
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.8027481   1.3528782   2.402212
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.1734658   0.8549954   1.610561
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.9977418   1.4088761   2.832735
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.3564823   0.9118697   2.017881
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.5347195   1.1520415   2.044513
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.0563786   0.8109565   1.376073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.7840188   1.6272063   1.955943
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.3775817   1.2522078   1.515508
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           2.5257936   1.4502330   4.399040
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.3386364   0.7149623   2.506352
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           1.3361127   1.1070826   1.612524
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           1.1072705   0.8896356   1.378146
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           0.9043478   0.4522910   1.808228
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           0.9416499   0.4305852   2.059301
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.6198347   0.8063817   3.253874
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2080123   0.5146756   2.835366
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           3.9032814   1.9049723   7.997809
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.8755186   1.0096478   3.483958
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.3877851   0.6123111   3.145374
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.0177305   0.3560469   2.909098
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           2.8374384   1.1176468   7.203579
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           2.9350318   1.0558100   8.159055
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           2.1908397   1.3931777   3.445202
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.5916149   0.9923091   2.552872
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           2.1154075   1.2740240   3.512452
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.3505650   0.8924495   2.043842
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.8149478   1.5904428   2.071144
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.3590696   1.1852034   1.558442
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           1.3723063   1.0978853   1.715320
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           1.1477130   0.8903921   1.479399


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                 0.0968123   -0.0044158   0.1980403
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.0537798   -0.0069937   0.1145534
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.0530737    0.0167308   0.0894166
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0516582   -0.0261453   0.1294616
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.1802506    0.1009280   0.2595731
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.0920935    0.0069169   0.1772702
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.0738416    0.0294153   0.1182678
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.0790425    0.0463853   0.1116997
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0143763    0.0046631   0.0240894
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.0346619    0.0177576   0.0515663
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0019756   -0.0004476   0.0043989
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0388065    0.0318860   0.0457270
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.1059540    0.0504779   0.1614301
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                 0.0439674    0.0180641   0.0698708
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.0070292   -0.0589949   0.0449366
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0322864   -0.0204551   0.0850278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.1045617    0.0641514   0.1449721
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.0206290   -0.0329654   0.0742233
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.0362100    0.0128197   0.0596003
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0104219    0.0036207   0.0172230
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0017122    0.0003107   0.0031138
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0210734    0.0157229   0.0264239
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                 0.0380831    0.0142116   0.0619546


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                 0.4039409   -0.1982678   0.7034999
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.2475580   -0.0868432   0.4790702
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.2047128    0.0546706   0.3309404
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0972389   -0.0622908   0.2328112
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.5450692    0.2636676   0.7189285
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.2955450   -0.0372617   0.5215703
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.5255319    0.1015731   0.7494287
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.6027988    0.2977533   0.7753371
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1451202    0.0426894   0.2365911
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.3298011    0.1345557   0.4809989
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0508572   -0.0130296   0.1107149
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.2113700    0.1733765   0.2476173
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.5016354    0.1660818   0.7021684
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                 0.2383373    0.0840961   0.3666038
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.0550936   -0.5518361   0.2826418
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.2233867   -0.2352083   0.5117193
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.7026549    0.4061002   0.8511295
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.2199256   -0.6183339   0.6239861
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.5816711    0.0535431   0.8151009
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.2426950    0.0744456   0.3803597
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.1317374    0.0181930   0.2321505
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.2124425    0.1577792   0.2635580
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                 0.2584279    0.0770496   0.4041617
