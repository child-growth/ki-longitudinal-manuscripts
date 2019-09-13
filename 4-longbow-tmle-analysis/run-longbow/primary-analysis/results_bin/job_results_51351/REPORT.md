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

**Outcome Variable:** ever_wasted

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

agecat        studyid                    country                        mwtkg         ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  -----------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                 0       39     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                 1        9     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  0       97     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  1       65     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg              0       33     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg              1       11     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                 0      132     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                 1       11     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                  0       40     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                  1        2     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg              0       30     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg              1        6     221
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                 0       33     242
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                 1        9     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                  0       66     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                  1       84     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg              0       28     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg              1       22     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                 0       67     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                 1       13     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                  0       39     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                  1       37     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg              0       63     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg              1       19     238
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                 0       96     290
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                 1        8     290
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                  0      102     290
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                  1       13     290
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg              0       66     290
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg              1        5     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 0      156     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 1       38     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  0       25     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  1        5     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              0       34     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              1       12     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0       92     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1        6     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  0       78     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  1       21     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0       54     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1        5     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 0       78    1497
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 1       31    1497
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  0      632    1497
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  1      520    1497
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              0      162    1497
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              1       74    1497
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                 0       49     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                 1       33     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                  0      224     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                  1      224     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg              0       53     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg              1       41     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                 0       92     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                 1       28     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                  0      256     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                  1      176     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg              0       80     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg              1       37     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                 0      148     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                 1       44     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                  0      240     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                  1      166     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg              0      117     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg              1       40     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0     1147    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1      329    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  0      292    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  1      101    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0      355    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1      128    2352
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                 0      761    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                 1      170    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                  0      855    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                  1      334    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg              0      840    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg              1      218    3178
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                 0     7427   13772
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                 1     2852   13772
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                  0      796   13772
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                  1      335   13772
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg              0     1670   13772
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg              1      692   13772
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 0     4550   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 1     1272   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  0     1684   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  1      715   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              0     2211   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              1      736   11168
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                 0      109     838
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                 1        5     838
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                  0      457     838
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                  1       47     838
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg              0      206     838
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg              1       14     838
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                 0       41     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                 1        7     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  0      122     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  1       40     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg              0       34     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg              1       10     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg                 0      134     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg                 1        9     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg                  0       40     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg                  1        2     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg              0       33     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg              1        3     221
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg                 0       34     242
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg                 1        8     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg                  0       98     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg                  1       52     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg              0       34     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg              1       16     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg                 0       73     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg                 1        7     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                  0       52     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                  1       24     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg              0       70     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg              1       12     238
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg                 0      100     290
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg                 1        4     290
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg                  0      110     290
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg                  1        5     290
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg              0       69     290
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg              1        2     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 0      177     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 1       17     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  0       27     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  1        3     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              0       40     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              1        6     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0       94     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1        4     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  0       94     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  1        5     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0       57     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1        2     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 0       90    1490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 1       19    1490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  0      875    1490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  1      271    1490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              0      196    1490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              1       39    1490
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                 0       60     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                 1       22     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg                  0      274     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg                  1      172     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg              0       66     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg              1       28     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                 0       96     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                 1       24     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg                  0      306     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg                  1      126     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg              0       91     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg              1       26     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                 0      158     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                 1       34     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                  0      275     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                  1      131     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg              0      127     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg              1       30     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0     1284    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1      192    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  0      335    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  1       58    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0      403    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1       80    2352
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg                 0     7491   13772
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg                 1     2788   13772
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg                  0      806   13772
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg                  1      325   13772
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg              0     1693   13772
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg              1      669   13772
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 0     4847   11116
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 1      953   11116
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  0     1868   11116
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  1      513   11116
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              0     2396   11116
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              1      539   11116
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg                 0       33     271
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg                 1        0     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg                  0      164     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg                  1        3     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg              0       70     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg              1        1     271
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                 0       41     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                 1        3     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  0      118     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  1       37     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg              0       37     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg              1        4     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                 0      133     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                 1        2     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                  0       37     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                  1        0     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg              0       30     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg              1        4     206
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                 0       37     234
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                 1        3     234
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                  0       94     234
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                  1       51     234
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg              0       39     234
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg              1       10     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                 0       72     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                 1        7     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                  0       57     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                  1       18     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg              0       70     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg              1       11     235
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                 0       96     269
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                 1        4     269
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                  0       96     269
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                  1        9     269
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg              0       60     269
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg              1        4     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 0      157     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 1       25     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  0       26     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  1        4     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              0       35     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              1        7     254
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0       91     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1        4     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  0       75     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  1       17     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0       53     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1        5     245
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 0       84    1381
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 1       18    1381
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  0      699    1381
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  1      361    1381
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              0      175    1381
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              1       44    1381
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                 0       55     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                 1       17     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                  0      264     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                  1      123     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg              0       63     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg              1       19     541
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                 0      107     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                 1        7     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                  0      313     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                  1       79     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg              0       95     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg              1       13     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                 0      174     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                 1       14     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                  0      324     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                  1       67     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg              0      136     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg              1       15     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0     1066    1978
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1      189    1978
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  0      246    1978
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  1       65    1978
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0      347    1978
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1       65    1978
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                 0      761    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                 1      170    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                  0      855    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                  1      334    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg              0      840    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg              1      218    3178
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                 0    10177   13764
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                 1       95   13764
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                  0     1117   13764
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                  1       14   13764
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg              0     2328   13764
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg              1       33   13764
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 0     4596    9700
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 1      400    9700
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  0     1841    9700
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  1      280    9700
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              0     2319    9700
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              1      264    9700
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                 0      109     824
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                 1        5     824
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                  0      451     824
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                  1       45     824
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg              0      201     824
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg              1       13     824


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
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/7eb44e97-d259-4f84-be6b-26d843f39d1d/0df545e4-eeed-4269-a8f4-5b435020e71c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7eb44e97-d259-4f84-be6b-26d843f39d1d/0df545e4-eeed-4269-a8f4-5b435020e71c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7eb44e97-d259-4f84-be6b-26d843f39d1d/0df545e4-eeed-4269-a8f4-5b435020e71c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7eb44e97-d259-4f84-be6b-26d843f39d1d/0df545e4-eeed-4269-a8f4-5b435020e71c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.1875000   0.0768640   0.2981360
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                0.4012346   0.3256079   0.4768612
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                0.2500000   0.1218027   0.3781973
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.2142857   0.0899341   0.3386374
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                0.5600000   0.4803984   0.6396016
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                0.4400000   0.3021259   0.5778741
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.1698161   0.0876982   0.2519340
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                0.4716478   0.3570125   0.5862831
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                0.2313987   0.1377377   0.3250596
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.0769231   0.0256217   0.1282244
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.1130435   0.0550708   0.1710161
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.0704225   0.0108059   0.1300392
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.1958763   0.1399256   0.2518270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                0.1666667   0.0330604   0.3002730
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                0.2608696   0.1337398   0.3879993
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0612245   0.0136660   0.1087830
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.2121212   0.1314345   0.2928079
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0847458   0.0135422   0.1559493
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.2888453   0.1997377   0.3779530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.4518232   0.3853422   0.5183041
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.3120798   0.2422581   0.3819015
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.4039735   0.2957139   0.5122332
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.4997674   0.4532943   0.5462406
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.4345718   0.3333341   0.5358095
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.2417730   0.1640635   0.3194826
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.4068878   0.3602115   0.4535641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.3033198   0.2175443   0.3890952
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.2224096   0.1616302   0.2831889
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.4099086   0.3613607   0.4584565
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.2537749   0.1814971   0.3260527
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.2224793   0.2011382   0.2438203
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.2765874   0.2312338   0.3219411
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2670437   0.2263756   0.3077117
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.1784073   0.1248836   0.2319309
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.2831463   0.2578980   0.3083946
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.2070451   0.1759050   0.2381852
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.2779029   0.2153273   0.3404785
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.3008263   0.2367267   0.3649259
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.2882659   0.2267165   0.3498152
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2204270   0.2096725   0.2311816
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.3019092   0.2829709   0.3208476
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.2540045   0.2378405   0.2701685
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.0438597   0.0062458   0.0814735
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                0.0932540   0.0678519   0.1186560
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                0.0636364   0.0313610   0.0959117
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.1458333   0.0457910   0.2458757
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                0.2469136   0.1803798   0.3134473
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                0.2272727   0.1032032   0.3513423
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.1904762   0.0714732   0.3094792
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               NA                0.3466667   0.2703490   0.4229843
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                0.3200000   0.1904338   0.4495662
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.0875000   0.0254506   0.1495494
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                0.3157895   0.2110647   0.4205142
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                0.1463415   0.0696793   0.2230037
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1808666   0.1208488   0.2408844
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.2365409   0.1830139   0.2900679
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.1627464   0.1266003   0.1988926
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2805239   0.1802968   0.3807510
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.3834896   0.3381466   0.4288326
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.2845731   0.1929971   0.3761490
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.2045543   0.1301562   0.2789524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.2888508   0.2461628   0.3315389
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.2141618   0.1383082   0.2900154
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.1707229   0.1164705   0.2249752
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.3227097   0.2764586   0.3689608
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.1857169   0.1224337   0.2490000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1309381   0.1135603   0.1483159
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.1638018   0.1238012   0.2038024
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.1693408   0.1348330   0.2038485
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.2713232   0.2079628   0.3346836
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.2923711   0.2270292   0.3577130
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.2805390   0.2184795   0.3425986
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1672360   0.1574992   0.1769727
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.2177967   0.2006120   0.2349815
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1862053   0.1717611   0.2006496
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.0886076   0.0258092   0.1514060
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                0.2400000   0.1431375   0.3368625
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                0.1358025   0.0610386   0.2105664
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1792169   0.0984128   0.2600210
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.3406196   0.2886668   0.3925724
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.2001769   0.1379952   0.2623585
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2379212   0.1327135   0.3431289
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.3195854   0.2729883   0.3661826
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.2267302   0.1357933   0.3176671
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0614035   0.0172987   0.1055083
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.2015306   0.1617878   0.2412734
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.1203704   0.0589518   0.1817890
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0722933   0.0343784   0.1102082
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.1794270   0.1405658   0.2182882
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.1003208   0.0481674   0.1524742
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1493379   0.1295105   0.1691653
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.2236199   0.1752797   0.2719600
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.1598067   0.1232905   0.1963229
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.1795187   0.1282752   0.2307621
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.2830279   0.2577657   0.3082900
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.2070530   0.1756666   0.2384395
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0092566   0.0055334   0.0129797
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.0130202   0.0065114   0.0195291
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0127557   0.0073634   0.0181481
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0792889   0.0717335   0.0868443
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.1366919   0.1214655   0.1519183
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1039198   0.0918660   0.1159736
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.0438597   0.0062454   0.0814739
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                0.0907258   0.0654338   0.1160178
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                0.0607477   0.0287248   0.0927706


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3346457   0.2765014   0.3927899
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4752066   0.4121581   0.5382551
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2899160   0.2321510   0.3476810
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0896552   0.0567177   0.1225926
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2037037   0.1555745   0.2518329
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1250000   0.0844083   0.1655917
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4175017   0.3589990   0.4760043
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3602392   0.3238339   0.3966444
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3311258   0.2975342   0.3647175
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2372449   0.2200495   0.2544403
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2271869   0.2003867   0.2539871
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2816584   0.2197582   0.3435586
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2438216   0.2358577   0.2517856
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0787590   0.0605107   0.0970072
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2244094   0.1730022   0.2758167
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3140496   0.2554513   0.3726479
0-6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1806723   0.1316889   0.2296556
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2208054   0.1758216   0.2657892
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2630792   0.2296894   0.2964690
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2582781   0.2270370   0.2895193
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1403061   0.1262673   0.1543450
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.2746152   0.2119692   0.3372611
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1803706   0.1732226   0.1875186
6-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1531915   0.1070438   0.1993392
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3062998   0.2626026   0.3499970
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2939002   0.2554778   0.3323226
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612378   0.1321259   0.1903497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1612740   0.1450620   0.1774860
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2271869   0.2003867   0.2539871
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0103168   0.0071373   0.0134962
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0973196   0.0914209   0.1032182
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0764563   0.0583018   0.0946108


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           2.1399177   1.1518112   3.975693
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           1.3333333   0.6101437   2.913704
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           2.6133333   1.4378705   4.749740
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           2.0533333   1.0617947   3.970803
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           2.7774031   1.6166603   4.771546
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           1.3626425   0.7255118   2.559289
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           1.4695652   0.6336052   3.408466
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           0.9154930   0.3116133   2.689640
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           0.8508772   0.3633111   1.992760
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           1.3318078   0.7570416   2.342952
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           3.4646465   1.4589079   8.227918
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.3841808   0.4408035   4.346509
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           1.5642391   1.1720497   2.087662
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.0804391   0.7103406   1.643365
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.2371292   0.9315399   1.642966
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.0757433   0.7542583   1.534254
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           1.6829331   1.1966310   2.366865
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.2545643   0.8186776   1.922529
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           1.8430348   1.3681361   2.482777
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.1410249   0.7690275   1.692967
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.2432054   1.0281346   1.503266
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2003080   1.0027257   1.436823
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.5870783   1.1837621   2.127807
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.1605194   0.8717594   1.544928
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.0824870   0.9702516   1.207705
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.0372898   0.9772516   1.101017
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.3696561   1.2649979   1.482973
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.1523291   1.0635258   1.248547
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           2.1261904   0.8646020   5.228632
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.4509090   0.5357128   3.929600
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           1.6931217   0.8102155   3.538147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           1.5584416   0.6485470   3.744895
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           1.8200000   0.9383983   3.529845
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           1.6800000   0.7979572   3.537032
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           3.6090226   1.6496917   7.895441
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           1.6724739   0.6925717   4.038815
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           1.3078198   1.0319346   1.657462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           0.8998148   0.5650172   1.432995
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.3670480   0.9383011   1.991706
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.0144343   0.6275296   1.639886
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           1.4120988   0.9533338   2.091631
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.0469683   0.6306060   1.738237
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           1.8902547   1.3338280   2.678803
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.0878264   0.6824784   1.733925
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.2509870   0.9472367   1.652141
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2932888   1.0141222   1.649304
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.0775748   0.9557833   1.214886
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.0339661   0.9730487   1.098697
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.3023319   1.1806148   1.436597
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.1134286   1.0105038   1.226837
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           2.7085714   1.1982188   6.122721
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           1.5326279   0.6247240   3.759977
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           1.9006002   1.1646644   3.101564
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.1169532   0.6262931   1.992014
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.3432407   0.8432898   2.139591
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           0.9529636   0.5246853   1.730827
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           3.2820700   1.5583331   6.912504
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.9603175   0.8122410   4.731163
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           2.4819301   1.4079565   4.375119
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.3876907   0.6630223   2.904405
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.4974090   1.1618759   1.929839
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.0701018   0.8217047   1.393588
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.5765927   1.1964412   2.077532
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.1533787   0.8832647   1.506097
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.4065911   0.7765043   2.547956
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.3780193   0.7852802   2.418165
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.7239722   1.4889226   1.996128
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.3106473   1.1279222   1.522974
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           2.0685483   0.8395155   5.096859
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.3850467   0.5061464   3.790117


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.1471457    0.0422895   0.2520018
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.2609209    0.1422996   0.3795422
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.1200999    0.0454373   0.1947624
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.0127321   -0.0300353   0.0554995
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.0078274   -0.0229668   0.0386217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0637755    0.0171086   0.1104424
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1286563    0.0433355   0.2139771
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0735906   -0.0276539   0.1748351
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.1184661    0.0457571   0.1911752
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.1087162    0.0533266   0.1641059
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0147656    0.0011238   0.0284074
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0487796    0.0137954   0.0837639
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0037555   -0.0005025   0.0080136
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0233946    0.0155619   0.0312273
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.0348993   -0.0020178   0.0718164
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.0785761   -0.0155963   0.1727486
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.1235734    0.0109686   0.2361782
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.0931723    0.0326646   0.1536799
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.0399388   -0.0044079   0.0842854
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0763893   -0.0182523   0.1710308
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0585250   -0.0106621   0.1277120
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0875553    0.0375461   0.1375645
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0093680   -0.0019544   0.0206905
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0032919   -0.0014310   0.0080149
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0131347    0.0060555   0.0202138
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.0645839    0.0060879   0.1230799
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1270829    0.0356740   0.2184918
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0559790   -0.0431163   0.1550743
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0998343    0.0543326   0.1453359
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0592135    0.0226745   0.0957526
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0119362   -0.0007564   0.0246287
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0476682    0.0152350   0.0801015
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0010602   -0.0004661   0.0025865
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0180307    0.0122020   0.0238593
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.0325967   -0.0041856   0.0693789


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.4397059    0.0269915   0.6773620
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.5490683    0.2190253   0.7396338
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.4142575    0.1025838   0.6176865
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.1420118   -0.4918851   0.5065681
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.0384255   -0.1251152   0.1781948
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.5102041    0.0189072   0.7554767
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.3081577    0.0804639   0.4794703
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1540957   -0.0871825   0.3418271
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.3288541    0.0945501   0.5025271
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.3283231    0.1398916   0.4754732
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0622379    0.0030188   0.1179394
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.2147115    0.0275052   0.3658804
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0133337   -0.0025477   0.0289635
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0959496    0.0633264   0.1274366
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.4431153   -0.2685075   0.7555233
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.3501462   -0.2304051   0.6567716
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.3934837   -0.0893866   0.6623219
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.5156977    0.0793411   0.7452382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1808778   -0.0464668   0.3588318
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2140277   -0.1012322   0.4390352
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.2224613   -0.0894551   0.4450746
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.3389961    0.1176111   0.5048371
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0667686   -0.0172887   0.1438803
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0119874   -0.0058933   0.0295503
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0728204    0.0328099   0.1111757
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.4215893   -0.0867215   0.6921392
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.4148972    0.0626207   0.6347847
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1904694   -0.2280416   0.4663537
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.6191742    0.2410369   0.8089126
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.4502695    0.1066322   0.6617254
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0740116   -0.0079079   0.1492730
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.2098194    0.0368253   0.3517423
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.1027640   -0.0673458   0.2457622
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1852728    0.1240511   0.2422156
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.4263436   -0.3046507   0.7477626
