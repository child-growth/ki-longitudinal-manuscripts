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

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nchldlt5
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/a3c92b71-3148-4ef3-a77c-252a3416ac66/017285d0-1dd6-493d-82b7-ed13407ef841/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a3c92b71-3148-4ef3-a77c-252a3416ac66/017285d0-1dd6-493d-82b7-ed13407ef841/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a3c92b71-3148-4ef3-a77c-252a3416ac66/017285d0-1dd6-493d-82b7-ed13407ef841/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a3c92b71-3148-4ef3-a77c-252a3416ac66/017285d0-1dd6-493d-82b7-ed13407ef841/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.1428571   0.0368097   0.2489046
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                0.2533333   0.1835886   0.3230780
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                0.2800000   0.1552882   0.4047118
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.1462226   0.0781612   0.2142840
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.2323443   0.1541510   0.3105375
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.2419842   0.1388944   0.3450739
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.2053649   0.1480775   0.2626523
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                0.4632859   0.2741763   0.6523954
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                0.3479498   0.2038976   0.4920020
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.4822703   0.3813545   0.5831860
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.6042039   0.5034247   0.7049831
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.4893426   0.3562208   0.6224643
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1499129   0.0853480   0.2144777
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.3742805   0.3366260   0.4119349
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.2054425   0.1379984   0.2728865
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2129097   0.1192723   0.3065470
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.3520521   0.3078928   0.3962114
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.2055413   0.1236257   0.2874569
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0666667   0.0220029   0.1113304
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.1759259   0.1399941   0.2118577
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.0854701   0.0347726   0.1361675
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0507770   0.0197229   0.0818310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.1677420   0.1312037   0.2042802
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.1367022   0.0823505   0.1910539
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0852417   0.0708859   0.0995974
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.1555367   0.1185536   0.1925198
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.1014439   0.0735737   0.1293142
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0711248   0.0468061   0.0954434
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.1405564   0.1150385   0.1660742
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.0948085   0.0660918   0.1235251
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0371140   0.0287744   0.0454537
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.0562268   0.0370244   0.0754291
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0407263   0.0271225   0.0543302
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1447668   0.1356435   0.1538902
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.2646025   0.2464447   0.2827602
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.2030920   0.1881511   0.2180330
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.1045160   0.0470739   0.1619580
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                0.2667379   0.2281268   0.3053491
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                0.1408178   0.0941797   0.1874558
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.1434150   0.1194754   0.1673545
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                0.1873508   0.1815219   0.1931797
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                0.1584315   0.1401391   0.1767238
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
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0330937   0.0238219   0.0423655
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0709254   0.0446040   0.0972467
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0522177   0.0317628   0.0726726
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0115177   0.0080401   0.0149954
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.0243630   0.0136172   0.0351088
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0151159   0.0070003   0.0232315
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0782104   0.0712526   0.0851682
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.1410613   0.1266850   0.1554376
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1097528   0.0979945   0.1215110
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.1124059   0.0903377   0.1344741
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                0.1497220   0.1444886   0.1549553
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                0.1266738   0.1101194   0.1432282


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
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           1.5889764   0.8938632   2.824645
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           1.6549029   0.8802117   3.111415
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           2.2559158   1.3738848   3.704209
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           1.6943004   1.0281249   2.792126
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.2528326   0.9580387   1.638336
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.0146647   0.7201987   1.429528
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           2.4966535   1.5580118   4.000790
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.3704126   0.7967267   2.357183
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.6535282   1.0464839   2.612707
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           0.9653923   0.5332505   1.747738
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           2.6388889   1.3099126   5.316183
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.2820513   0.5239569   3.137005
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           3.3035056   1.7267743   6.319963
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           2.6922098   1.2979664   5.584115
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.8246549   1.3631690   2.442372
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.1900739   0.8622140   1.642604
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.9761938   1.4427908   2.706797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.3329877   0.9158346   1.940150
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.5149726   1.1237716   2.042356
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.0973296   0.8259983   1.457790
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.8277837   1.6651475   2.006305
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.4028906   1.2734206   1.545524
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           2.5521261   1.4455876   4.505675
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.3473324   0.7089257   2.560641
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           1.3063546   1.1050899   1.544274
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           1.1047067   0.9026153   1.352046
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
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           2.1431693   1.3458770   3.412775
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.5778744   0.9746682   2.554395
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           2.1152600   1.3216959   3.385291
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.3124013   0.8162864   2.110040
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.8036131   1.5753518   2.064948
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.4033015   1.2208747   1.612987
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           1.3319761   1.0945943   1.620838
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           1.1269318   0.8936373   1.421131


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                 0.0968123   -0.0044158   0.1980403
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.0710188    0.0108135   0.1312241
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.0538944    0.0172264   0.0905624
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0489797   -0.0309098   0.1288693
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.1807802    0.1048009   0.2567595
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.0986961    0.0097508   0.1876414
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.0738416    0.0294153   0.1182678
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.0803489    0.0479699   0.1127279
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0138229    0.0039561   0.0236898
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.0339747    0.0180219   0.0499275
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0017329   -0.0007984   0.0042642
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0388283    0.0317744   0.0458823
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.1067012    0.0502832   0.1631192
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                 0.0410607    0.0175728   0.0645486
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.0070292   -0.0589949   0.0449366
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0322864   -0.0204551   0.0850278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.1045617    0.0641514   0.1449721
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.0206290   -0.0329654   0.0742233
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.0362100    0.0128197   0.0596003
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0098485    0.0028823   0.0168147
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0014797    0.0000635   0.0028959
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0209853    0.0155411   0.0264295
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                 0.0349586    0.0133923   0.0565250


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                 0.4039409   -0.1982678   0.7034999
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.3269119   -0.0062261   0.5497556
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.2078784    0.0561278   0.3352313
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0921972   -0.0718630   0.2311462
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.5466707    0.2842558   0.7128758
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.3167338   -0.0372330   0.5499057
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.5255319    0.1015731   0.7494287
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.6127616    0.3102695   0.7825910
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1395345    0.0352907   0.2325141
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.3232623    0.1438367   0.4650858
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0446081   -0.0224329   0.1072532
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.2114888    0.1727247   0.2484364
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.5051730    0.1606070   0.7082966
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                 0.2225805    0.0843281   0.3399588
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.0550936   -0.5518361   0.2826418
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.2233867   -0.2352083   0.5117193
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.7026549    0.4061002   0.8511295
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.2199256   -0.6183339   0.6239861
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.5816711    0.0535431   0.8151009
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.2293429    0.0556482   0.3710899
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.1138431   -0.0019085   0.2162218
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.2115547    0.1558638   0.2635715
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                 0.2372256    0.0757858   0.3704655
