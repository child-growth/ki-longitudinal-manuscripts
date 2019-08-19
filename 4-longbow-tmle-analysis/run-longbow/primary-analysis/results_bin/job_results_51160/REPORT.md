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
* single
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mwtkg         ever_sstunted   n_cell       n
------------  -------------------------  -----------------------------  -----------  --------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                   0       46     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                   1        2     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                    0      113     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                    1       49     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg                0       40     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg                1        4     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                   0      134     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                   1        9     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                    0       38     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                    1        4     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg                0       31     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg                1        5     221
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                   0       37     242
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                   1        5     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                    0      114     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                    1       36     242
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
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                   0      155     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                   1       39     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                    0       16     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                    1       14     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg                0       30     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg                1       16     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                   0       52     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                   1       46     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                    0       38     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                    1       61     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg                0       32     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg                1       27     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                   0       97    1514
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                   1       12    1514
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                    0      726    1514
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                    1      442    1514
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg                0      190    1514
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg                1       47    1514
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                   0       64     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                   1       18     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                    0      295     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                    1      158     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg                0       74     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg                1       20     629
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                   0      112     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                   1        8     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                    0      357     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                    1       75     669
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
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                   0      867    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                   1       64    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                    0     1025    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                    1      164    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg                0      957    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg                1      100    3177
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                   0     9900   13772
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                   1      379   13772
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                    0     1067   13772
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                    1       64   13772
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg                0     2270   13772
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg                1       92   13772
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                   0     5040   11204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                   1      803   11204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                    0     1801   11204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                    1      607   11204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg                0     2388   11204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg                1      565   11204
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                   0      102     838
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                   1       12     838
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                    0      370     838
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                    1      134     838
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg                0      189     838
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg                1       31     838
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
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg                0       31     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg                1        5     221
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg                   0       41     242
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg                   1        1     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg                    0      136     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg                    1       14     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg                0       46     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg                1        4     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg                   0       78     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg                   1        2     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                    0       69     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                    1        7     238
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
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg                0       52     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg                1        7     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                   0      107    1511
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                   1        2    1511
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg                    0      962    1511
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg                    1      203    1511
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg                0      217    1511
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg                1       20    1511
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
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                   0     5383   11188
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                   1      452   11188
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                    0     2064   11188
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                    1      341   11188
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg                0     2636   11188
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg                1      312   11188
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg                   0       30     271
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg                   1        3     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg                    0      151     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg                    1       16     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg                0       70     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg                1        1     271


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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/d357e495-619e-42ad-a721-94e26b3fb924/15d8dcb3-8efa-47bc-855f-5706908f378e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d357e495-619e-42ad-a721-94e26b3fb924/15d8dcb3-8efa-47bc-855f-5706908f378e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d357e495-619e-42ad-a721-94e26b3fb924/15d8dcb3-8efa-47bc-855f-5706908f378e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d357e495-619e-42ad-a721-94e26b3fb924/15d8dcb3-8efa-47bc-855f-5706908f378e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.1190476   0.0209047   0.2171906
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                0.2400000   0.1715121   0.3084879
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                0.2800000   0.1552882   0.4047118
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.1356299   0.0720732   0.1991865
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.2272835   0.1510294   0.3035376
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.2572116   0.1442663   0.3701568
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.1997840   0.1429669   0.2566010
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                0.4987815   0.3221939   0.6753691
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                0.3383513   0.1940255   0.4826770
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.4669638   0.3674687   0.5664588
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.6084625   0.5081632   0.7087619
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.4631461   0.3345815   0.5917107
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1058933   0.0335505   0.1782361
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.3781920   0.3393520   0.4170319
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.2022986   0.1421686   0.2624286
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2146687   0.1191000   0.3102374
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.3529378   0.3086808   0.3971949
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.1990873   0.1184960   0.2796786
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0666667   0.0220029   0.1113304
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.1736111   0.1378664   0.2093558
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.0854701   0.0347726   0.1361675
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0556922   0.0217038   0.0896806
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.1662991   0.1298164   0.2027819
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.1331086   0.0770185   0.1891988
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0857989   0.0713425   0.1002553
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.1521481   0.1154352   0.1888610
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.1004967   0.0727087   0.1282847
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0688091   0.0441760   0.0934422
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.1376704   0.1106557   0.1646852
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.0942582   0.0652615   0.1232550
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0369909   0.0286839   0.0452980
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.0558097   0.0362184   0.0754009
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0405391   0.0266953   0.0543830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1374996   0.1285776   0.1464217
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.2559475   0.2380021   0.2738930
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1943372   0.1796985   0.2089758
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.0991113   0.0412898   0.1569329
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                0.2661155   0.2275137   0.3047174
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                0.1354563   0.0891503   0.1817622
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.1346154   0.0689051   0.2003257
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.1217391   0.0618737   0.1816046
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.1267606   0.0492381   0.2042831
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1122449   0.0496246   0.1748652
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.1818182   0.1056938   0.2579426
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.1186441   0.0359697   0.2013184
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0731707   0.0167608   0.1295806
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.1015453   0.0737083   0.1293823
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.0744681   0.0213539   0.1275823
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0260417   0.0034998   0.0485835
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.0738916   0.0484291   0.0993541
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.0764331   0.0348458   0.1180205
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0331124   0.0238533   0.0423714
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0737631   0.0462058   0.1013205
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0505162   0.0304960   0.0705364
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0114655   0.0080048   0.0149262
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.0251180   0.0141051   0.0361309
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0155122   0.0066522   0.0243722
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0778042   0.0708466   0.0847618
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.1419796   0.1276382   0.1563210
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1093391   0.0976023   0.1210760


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2272727   0.1743641   0.2801813
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.2172414   0.1696986   0.2647841
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2555556   0.2034324   0.3076787
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5234375   0.4621361   0.5847389
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3309115   0.3019486   0.3598744
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3116057   0.2753823   0.3478292
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1390135   0.1127781   0.1652488
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1311258   0.1070332   0.1552185
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0990646   0.0869885   0.1111408
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1032421   0.0833685   0.1231156
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0388469   0.0306142   0.0470797
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1762763   0.1692202   0.1833325
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2112172   0.1835650   0.2388693
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.1275862   0.0891215   0.1660509
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1406250   0.0979572   0.1832928
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0937997   0.0709973   0.1166021
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0622517   0.0450059   0.0794974
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0429422   0.0347475   0.0511369
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0129974   0.0096142   0.0163806
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0987665   0.0932379   0.1042951


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           2.0160000   0.8425870   4.823545
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           2.3520000   0.9214933   6.003195
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           1.6757631   0.9401711   2.986884
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           1.8964230   0.9957431   3.611795
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           2.4966044   1.5870323   3.927477
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           1.6935858   1.0139270   2.828836
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.3030187   0.9943240   1.707550
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           0.9918245   0.6990068   1.407305
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           3.5714429   1.7244402   7.396722
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.9104000   1.0100225   3.613412
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.6441048   1.0350595   2.611522
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           0.9274163   0.5078305   1.693677
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           2.6041667   1.2920544   5.248760
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.2820513   0.5239569   3.137005
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           2.9860403   1.5609016   5.712363
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           2.3900768   1.1390132   5.015277
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.7733103   1.3209832   2.380522
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.1713049   0.8472328   1.619337
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           2.0007605   1.4360447   2.787547
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.3698522   0.9259833   2.026489
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.5087390   1.1174887   2.036972
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.0959208   0.8213956   1.462197
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.8614414   1.6917994   2.048094
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.4133650   1.2796786   1.561017
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           2.6850167   1.4712057   4.900276
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.3667085   0.6949730   2.687719
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           0.9043478   0.4522910   1.808228
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           0.9416499   0.4305852   2.059301
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.6198347   0.8063817   3.253874
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.0570108   0.4329227   2.580765
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.3877851   0.6123111   3.145374
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.0177305   0.3560469   2.909098
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           2.8374384   1.1176468   7.203579
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           2.9350318   1.0558100   8.159055
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           2.2276594   1.3967447   3.552880
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.5255983   0.9391545   2.478240
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           2.1907453   1.3707161   3.501356
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.3529459   0.8249298   2.218931
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.8248323   1.5944948   2.088444
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.4053118   1.2220714   1.616028


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                 0.1082251    0.0128941   0.2035562
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.0816115    0.0248675   0.1383556
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.0557716    0.0191665   0.0923767
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0564737   -0.0224018   0.1353492
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.2250182    0.1429422   0.3070942
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.0969370    0.0061069   0.1877671
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.0723468    0.0279903   0.1167033
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.0754336    0.0406434   0.1102239
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0132657    0.0033317   0.0231997
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.0344330    0.0184422   0.0504238
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0018560   -0.0006965   0.0044085
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0387767    0.0318405   0.0457129
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.1121059    0.0552919   0.1689199
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.0070292   -0.0589949   0.0449366
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0283801   -0.0239611   0.0807213
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.0206290   -0.0329654   0.0742233
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.0362100    0.0128197   0.0596003
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0098298    0.0028735   0.0167860
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0015319    0.0001092   0.0029546
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0209624    0.0155049   0.0264198


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                 0.4761905   -0.1440392   0.7601687
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.3756721    0.0651814   0.5830364
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.2182367    0.0643659   0.3468025
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1078901   -0.0567747   0.2468971
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.6799950    0.3540571   0.8414671
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.3110887   -0.0515969   0.5486875
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.5204301    0.0921838   0.7466587
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.5752767    0.2428152   0.7617624
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1339095    0.0288237   0.2276246
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                 0.3335171    0.1481916   0.4785219
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0477775   -0.0197189   0.1108062
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.2199767    0.1803194   0.2577153
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.5307611    0.1771593   0.7324086
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.0550936   -0.5518361   0.2826418
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.2018141   -0.2664440   0.4969372
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                 0.2199256   -0.6183339   0.6239861
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.5816711    0.0535431   0.8151009
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.2289075    0.0555658   0.3704341
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.1178609    0.0018444   0.2203927
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.2122415    0.1561638   0.2645924
