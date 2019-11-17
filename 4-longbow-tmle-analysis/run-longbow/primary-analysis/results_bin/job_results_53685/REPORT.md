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
* W_nchldlt5
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity

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
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                 0       31     242
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                 1       11     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                  0       66     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                  1       84     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg              0       28     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg              1       22     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                 0       66     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                 1       14     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                  0       37     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                  1       39     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg              0       61     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg              1       21     238
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                 0       96     290
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                 1        8     290
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                  0      101     290
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                  1       14     290
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg              0       66     290
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg              1        5     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 0      155     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 1       39     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  0       25     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  1        5     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              0       33     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              1       13     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0       90     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1        8     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  0       77     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  1       22     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0       53     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1        6     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 0       83    1498
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 1       30    1498
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  0      628    1498
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  1      516    1498
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              0      162    1498
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              1       79    1498
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
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                 0      149     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                 1       43     755
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
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                 0      764    3217
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                 1      173    3217
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                  0      865    3217
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                  1      336    3217
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg              0      855    3217
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg              1      224    3217
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                 0     7427   13772
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                 1     2852   13772
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                  0      796   13772
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                  1      335   13772
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg              0     1670   13772
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg              1      692   13772
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 0     4539   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 1     1283   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  0     1680   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  1      719   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              0     2204   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              1      743   11168
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                 0      109     838
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                 1        5     838
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                  0      457     838
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                  1       47     838
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg              0      206     838
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg              1       14     838
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg                 0      506   26925
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg                 1      155   26925
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                  0    18166   26925
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                  1     6340   26925
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg              0     1306   26925
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg              1      452   26925
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                 0       41     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                 1        7     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  0      121     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  1       41     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg              0       34     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg              1       10     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg                 0      134     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg                 1        9     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg                  0       40     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg                  1        2     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg              0       33     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg              1        3     221
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg                 0       32     242
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg                 1       10     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg                  0       97     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg                  1       53     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg              0       34     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg              1       16     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg                 0       72     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg                 1        8     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                  0       50     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                  1       26     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg              0       68     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg              1       14     238
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
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              0       38     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              1        8     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0       92     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1        6     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  0       94     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  1        5     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0       57     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1        2     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 0       95    1491
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 1       18    1491
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  0      873    1491
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  1      266    1491
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              0      194    1491
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              1       45    1491
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
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                 0      159     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                 1       33     755
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
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 0     4849   11118
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 1      953   11118
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  0     1868   11118
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  1      513   11118
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              0     2395   11118
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              1      540   11118
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg                 0       33     271
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg                 1        0     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg                  0      164     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg                  1        3     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg              0       70     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg              1        1     271
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg                 0      551   26828
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg                 1      108   26828
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                  0    20107   26828
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                  1     4310   26828
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg              0     1443   26828
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg              1      309   26828
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                 0       41     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                 1        3     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  0      119     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  1       36     240
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
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                  0       95     269
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                  1       10     269
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg              0       60     269
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg              1        4     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 0      156     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 1       26     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  0       26     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  1        4     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              0       35     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              1        7     254
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0       91     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1        4     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  0       74     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  1       18     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0       52     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1        6     245
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 0       92    1382
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 1       14    1382
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  0      691    1382
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  1      362    1382
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              0      176    1382
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              1       47    1382
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                 0       55     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                 1       17     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                  0      265     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                  1      123     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg              0       63     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg              1       19     542
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
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                 0      764    3217
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                 1      173    3217
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                  0      865    3217
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                  1      336    3217
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg              0      855    3217
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg              1      224    3217
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                 0    10177   13764
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                 1       95   13764
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                  0     1117   13764
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                  1       14   13764
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg              0     2328   13764
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg              1       33   13764
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 0     4608    9744
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 1      413    9744
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  0     1842    9744
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  1      285    9744
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              0     2324    9744
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              1      272    9744
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                 0      109     824
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                 1        5     824
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                  0      451     824
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                  1       45     824
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg              0      201     824
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg              1       13     824
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg                 0      367   17288
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg                 1       61   17288
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                  0    13083   17288
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg                  1     2594   17288
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg              0     1005   17288
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg              1      178   17288


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
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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
![](/tmp/fc5d5a2c-5994-4c53-b782-1b070662206b/a4750e19-adaa-47e8-a9ee-bdce1a69ddbf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fc5d5a2c-5994-4c53-b782-1b070662206b/a4750e19-adaa-47e8-a9ee-bdce1a69ddbf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fc5d5a2c-5994-4c53-b782-1b070662206b/a4750e19-adaa-47e8-a9ee-bdce1a69ddbf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fc5d5a2c-5994-4c53-b782-1b070662206b/a4750e19-adaa-47e8-a9ee-bdce1a69ddbf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.1875000   0.0768640   0.2981360
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                0.4012346   0.3256079   0.4768612
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                0.2500000   0.1218027   0.3781973
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.2650093   0.1315685   0.3984502
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                0.5597172   0.4796471   0.6397873
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                0.4450242   0.3044029   0.5856455
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.1816206   0.0968936   0.2663476
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                0.4952869   0.3801953   0.6103785
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                0.2555624   0.1608245   0.3503002
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.0769231   0.0256217   0.1282244
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.1217391   0.0618737   0.1816046
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.0704225   0.0108059   0.1300392
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.2010309   0.1445308   0.2575311
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                0.1666667   0.0330604   0.3002730
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                0.2826087   0.1522483   0.4129691
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0816327   0.0273170   0.1359483
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.2222222   0.1401678   0.3042766
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.1016949   0.0244209   0.1789689
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.2586036   0.1847781   0.3324291
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.4510314   0.3861031   0.5159597
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.3280433   0.2652501   0.3908365
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.4090002   0.2994168   0.5185837
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.5001012   0.4536486   0.5465538
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.4282818   0.3287694   0.5277941
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.2658729   0.1831145   0.3486312
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.4037881   0.3574754   0.4501008
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.2958157   0.2104769   0.3811546
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.2198127   0.1587626   0.2808629
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.4112390   0.3628464   0.4596315
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.2478769   0.1760476   0.3197062
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.2232837   0.2019527   0.2446146
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.2755299   0.2303865   0.3206734
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2652816   0.2248404   0.3057228
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.1821774   0.1346968   0.2296580
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.2809963   0.2556946   0.3062980
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.2080036   0.1759986   0.2400087
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.2780324   0.2154152   0.3406495
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.3009824   0.2370893   0.3648756
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.2874478   0.2262302   0.3486654
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2222194   0.2114179   0.2330208
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.3060182   0.2870647   0.3249716
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.2536277   0.2374713   0.2697840
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.0438597   0.0062458   0.0814735
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                0.0932540   0.0678519   0.1186560
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                0.0636364   0.0313610   0.0959117
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.2347225   0.2030186   0.2664265
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                0.2587456   0.2521409   0.2653503
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                0.2560599   0.2327730   0.2793468
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.1458333   0.0457910   0.2458757
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                0.2530864   0.1860028   0.3201701
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                0.2272727   0.1032032   0.3513423
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.2292808   0.0984600   0.3601017
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               NA                0.3556065   0.2783739   0.4328392
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                0.3228782   0.1891039   0.4566525
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.1000000   0.0341223   0.1658777
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                0.3421053   0.2352210   0.4489895
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                0.1707317   0.0891186   0.2523448
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1630601   0.0962722   0.2298480
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.2337021   0.1844236   0.2829805
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.1858174   0.1266617   0.2449731
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2742240   0.1753993   0.3730487
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.3845293   0.3392255   0.4298330
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.2873183   0.1952833   0.3793533
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.2213375   0.1433643   0.2993107
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.2910923   0.2480316   0.3341531
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.2093056   0.1326093   0.2860020
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.1684521   0.1137158   0.2231884
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.3211134   0.2751188   0.3671080
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.1776653   0.1157762   0.2395545
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1304176   0.1131452   0.1476900
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.1627604   0.1251383   0.2003826
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.1633235   0.1293400   0.1973069
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.2717855   0.2084524   0.3351186
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.2934420   0.2269109   0.3599732
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.2791885   0.2175672   0.3408098
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1676697   0.1579188   0.1774207
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.2187244   0.2015016   0.2359473
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1840012   0.1695910   0.1984114
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.1639019   0.1349751   0.1928287
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                0.1766710   0.1709449   0.1823971
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                0.1750700   0.1541805   0.1959596
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.0886076   0.0258092   0.1514060
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                0.2400000   0.1431375   0.3368625
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                0.1358025   0.0610386   0.2105664
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1227735   0.0799770   0.1655700
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.3442306   0.2925434   0.3959177
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.2154400   0.1429075   0.2879725
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2367296   0.1338388   0.3396204
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.3182764   0.2718711   0.3646817
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.2225163   0.1323552   0.3126774
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0614035   0.0172987   0.1055083
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.2015306   0.1617878   0.2412734
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.1203704   0.0589518   0.1817890
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0728291   0.0348924   0.1107659
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.1754945   0.1378235   0.2131654
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.0982648   0.0498045   0.1467251
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1483851   0.1287082   0.1680620
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.2171629   0.1699705   0.2643553
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.1599694   0.1233918   0.1965470
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.1817933   0.1335732   0.2300134
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.2809908   0.2556965   0.3062851
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.2084746   0.1765144   0.2404348
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0092628   0.0055237   0.0130018
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.0127825   0.0063018   0.0192631
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0126182   0.0072358   0.0180007
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0806319   0.0730566   0.0882071
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.1407866   0.1252992   0.1562740
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1054185   0.0932896   0.1175475
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.0438597   0.0062454   0.0814739
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                0.0907258   0.0654338   0.1160178
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                0.0607477   0.0287248   0.0927706
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.1462065   0.1139364   0.1784766
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                0.1653872   0.1590831   0.1716914
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                0.1515189   0.1270380   0.1759998


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3346457   0.2765014   0.3927899
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4834711   0.4203794   0.5465628
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.3109244   0.2519946   0.3698541
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0931034   0.0596022   0.1266047
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2111111   0.1623431   0.2598792
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1406250   0.0979572   0.1832928
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4172230   0.3585449   0.4759011
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3602392   0.3238339   0.3966444
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3298013   0.2962438   0.3633589
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2372449   0.2200495   0.2544403
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2278520   0.2008644   0.2548397
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2816584   0.2197582   0.3435586
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2457915   0.2378059   0.2537772
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0787590   0.0605107   0.0970072
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2580130   0.2515531   0.2644729
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2283465   0.1766220   0.2800709
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3264463   0.2672449   0.3856476
0-6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2016807   0.1505956   0.2527658
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2206573   0.1756202   0.2656944
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2630792   0.2296894   0.2964690
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2569536   0.2257649   0.2881424
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1403061   0.1262673   0.1543450
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.2746152   0.2119692   0.3372611
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1804281   0.1732799   0.1875764
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1761965   0.1705789   0.1818141
6-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1531915   0.1070438   0.1993392
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3060781   0.2622443   0.3499120
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2933579   0.2549918   0.3317241
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612378   0.1321259   0.1903497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1612740   0.1450620   0.1774860
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2278520   0.2008644   0.2548397
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0103168   0.0071373   0.0134962
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0995484   0.0936035   0.1054934
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0764563   0.0583018   0.0946108
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1638709   0.1577615   0.1699803


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           2.1399177   1.1518112   3.975693
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           1.3333333   0.6101437   2.913704
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           2.1120659   1.2507943   3.566391
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           1.6792775   0.9252854   3.047679
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           2.7270415   1.6202732   4.589816
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           1.4071223   0.7766734   2.549325
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           1.5826087   0.6910535   3.624394
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           0.9154930   0.3116133   2.689640
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           0.8290598   0.3545375   1.938695
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           1.4057971   0.8191006   2.412726
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           2.7222222   1.2718747   5.826434
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2457627   0.4537299   3.420371
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           1.7441033   1.3925500   2.184407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.2685180   0.9307742   1.728817
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.2227406   0.9207889   1.623711
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.0471430   0.7345536   1.492755
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           1.5187262   1.0900920   2.115903
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.1126210   0.7273414   1.701987
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           1.8708606   1.3834362   2.530019
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.1276730   0.7544441   1.685541
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.2339904   1.0209053   1.491551
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.1880923   0.9925576   1.422147
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.5424325   1.1977221   1.986352
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.1417643   0.8960309   1.454889
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.0825446   0.9719279   1.205751
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.0338646   0.9749429   1.096347
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.3770995   1.2728303   1.489910
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.1413392   1.0534501   1.236561
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           2.1261904   0.8646020   5.228632
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.4509090   0.5357128   3.929600
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           1.1023467   0.9609123   1.264599
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           1.0909046   0.9220506   1.290681
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           1.7354497   0.8317982   3.620813
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           1.5584416   0.6485470   3.744895
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           1.5509650   0.8420251   2.856794
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           1.4082216   0.6952681   2.852264
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           3.4210526   1.6501048   7.092641
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           1.7073170   0.7565308   3.853024
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           1.4332264   1.0713939   1.917258
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.1395638   0.6976245   1.861468
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.4022451   0.9595692   2.049140
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.0477505   0.6473250   1.695873
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           1.3151513   0.8973479   1.927483
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           0.9456401   0.5688321   1.572055
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           1.9062596   1.3364029   2.719110
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.0546937   0.6547388   1.698966
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.2479947   0.9561491   1.628920
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2523117   0.9785544   1.602654
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.0796825   0.9559602   1.219417
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.0272384   0.9698333   1.088041
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.3044956   1.1827771   1.438740
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.0974027   0.9954382   1.209812
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           1.0779075   0.9019693   1.288164
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           1.0681394   0.8624999   1.322808
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           2.7085714   1.1982188   6.122721
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           1.5326279   0.6247240   3.759977
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           2.8037848   2.0925951   3.756679
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.7547758   1.0379996   2.966512
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.3444725   0.8502993   2.125847
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           0.9399598   0.5189854   1.702407
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           3.2820700   1.5583331   6.912504
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.9603175   0.8122410   4.731163
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           2.4096735   1.3717419   4.232958
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.3492511   0.6583533   2.765200
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.4635090   1.1345546   1.887841
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.0780690   0.8276310   1.404289
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.5456609   1.1948678   1.999441
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.1467671   0.8945067   1.470168
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.3799791   0.7573503   2.514480
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.3622471   0.7742890   2.396672
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.7460414   1.5109540   2.017706
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.3074054   1.1269047   1.516818
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           2.0685483   0.8395155   5.096859
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.3850467   0.5061464   3.790117
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           1.1311893   0.9041154   1.415294
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           1.0363348   0.7801942   1.376567


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.1471457    0.0422895   0.2520018
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.2184617    0.0931577   0.3437658
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.1293038    0.0528533   0.2057543
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.0161804   -0.0270227   0.0593834
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.0100802   -0.0212756   0.0414360
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0589923    0.0088725   0.1091122
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1586194    0.1043427   0.2128961
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0685639   -0.0338928   0.1710205
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0943663    0.0170925   0.1716401
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.1099886    0.0544182   0.1655590
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0139612    0.0003525   0.0275699
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0456747    0.0162953   0.0750540
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0036261   -0.0006282   0.0078803
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0235722    0.0157066   0.0314378
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.0348993   -0.0020178   0.0718164
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0232905   -0.0083084   0.0548893
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.0825131   -0.0118328   0.1768591
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.0971655   -0.0245607   0.2188916
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.1016807    0.0381826   0.1651787
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.0575972    0.0126409   0.1025534
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0826892   -0.0106403   0.1760187
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0417417   -0.0307005   0.1141839
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0885016    0.0380535   0.1389496
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0098885   -0.0013196   0.0210967
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0028297   -0.0018319   0.0074912
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0127584    0.0056703   0.0198466
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0122947   -0.0162148   0.0408042
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.0645839    0.0060879   0.1230799
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1833046    0.1406184   0.2259908
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0566284   -0.0402268   0.1534836
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0998343    0.0543326   0.1453359
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0586777    0.0224774   0.0948780
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0128889    0.0002895   0.0254884
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0460587    0.0159653   0.0761521
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0010540   -0.0004858   0.0025937
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0189166    0.0130709   0.0247622
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.0325967   -0.0041856   0.0693789
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0176644   -0.0144857   0.0498145


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.4397059    0.0269915   0.6773620
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.4518610    0.1209545   0.6582016
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.4158689    0.1194668   0.6124972
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.1737892   -0.4426530   0.5268271
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.0477482   -0.1127541   0.1850999
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.4195011   -0.0382341   0.6754307
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.3801789    0.2316320   0.5000076
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1435699   -0.1005982   0.3335693
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.2619546    0.0136552   0.4477479
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.3334995    0.1430995   0.4815934
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0588473   -0.0002161   0.1144229
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.2004575    0.0468194   0.3293315
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0128740   -0.0029904   0.0284874
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0959032    0.0634023   0.1272762
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.4431153   -0.2685075   0.7555233
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0902686   -0.0406293   0.2047012
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.3613506   -0.2099737   0.6629075
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.2976461   -0.1932815   0.5866013
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.5041667    0.1014472   0.7263926
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.2610255    0.0104655   0.4481412
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2316787   -0.0796478   0.4532313
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.1586659   -0.1664927   0.3931869
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.3444262    0.1188882   0.5122333
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0704783   -0.0126817   0.1468094
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0103042   -0.0072430   0.0275456
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0707119    0.0306608   0.1091080
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0697781   -0.1069076   0.2182610
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.4215893   -0.0867215   0.6921392
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.5988817    0.4579735   0.7031587
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1930350   -0.2149931   0.4640361
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.6191742    0.2410369   0.8089126
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.4461951    0.1055162   0.6571208
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0799194   -0.0013306   0.1545766
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.2021431    0.0444453   0.3338157
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.1021614   -0.0696202   0.2463547
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1900238    0.1300782   0.2458386
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.4263436   -0.3046507   0.7477626
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.1077945   -0.1113139   0.2837032
