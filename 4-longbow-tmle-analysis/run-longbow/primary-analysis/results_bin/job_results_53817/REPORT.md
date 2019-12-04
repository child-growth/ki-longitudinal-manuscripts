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

**Outcome Variable:** ever_co

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

agecat        studyid                    country                        mwtkg         ever_co   n_cell       n
------------  -------------------------  -----------------------------  -----------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             0       45     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             1        3     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg              0      129     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg              1       33     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          0       41     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          1        3     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg             0      142     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg             1        1     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg              0       42     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg              1        0     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          0       35     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          1        1     221
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg             0       38     242
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg             1        4     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg              0      109     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg              1       41     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg          0       42     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg          1        8     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg             0       76     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg             1        4     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg              0       61     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg              1       15     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg          0       79     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg          1        3     238
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg             0      100     290
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg             1        4     290
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg              0      108     290
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg              1        7     290
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg          0       70     290
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg          1        1     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             0      180     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             1       14     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              0       28     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              1        2     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          0       41     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          1        5     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             0       95     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             1        3     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              0       83     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              1       16     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0       55     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1        4     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg             0      104    1498
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg             1        9    1498
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg              0      839    1498
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg              1      305    1498
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg          0      207    1498
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg          1       34    1498
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             0       71     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             1       11     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg              0      336     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg              1      112     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          0       80     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          1       14     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             0      115     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             1        5     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg              0      356     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg              1       76     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          0      108     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          1        9     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             0      182     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             1       10     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              0      354     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              1       52     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          0      148     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          1        9     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             0     1408    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             1       68    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              0      370    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              1       23    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0      458    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1       25    2352
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg             0      868    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg             1       69    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg              0      995    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg              1      206    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg          0      967    3216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg          1      111    3216
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg             0    10263   13772
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg             1       16   13772
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg              0     1128   13772
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg              1        3   13772
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg          0     2358   13772
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg          1        4   13772
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             0     5615   11164
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             1      204   11164
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              0     2208   11164
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              1      190   11164
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          0     2808   11164
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          1      139   11164
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg             0      112     838
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg             1        2     838
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg              0      475     838
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg              1       29     838
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg          0      209     838
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg          1       11     838
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg             0      614   26892
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg             1       46   26892
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg              0    22271   26892
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg              1     2204   26892
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg          0     1617   26892
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg          1      140   26892
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             0       46     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             1        2     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg              0      155     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg              1        7     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          0       44     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          1        0     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg             0      143     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg             1        0     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg              0       42     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg              1        0     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          0       36     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          1        0     221
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg             0       40     242
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg             1        2     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg              0      137     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg              1       13     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg          0       47     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg          1        3     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg             0       79     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg             1        1     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg              0       70     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg              1        6     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg          0       81     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg          1        1     238
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg             0      103     290
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg             1        1     290
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg              0      114     290
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg              1        1     290
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg          0       71     290
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg          1        0     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             0      191     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             1        3     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              0       30     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              1        0     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          0       46     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          1        0     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             0       97     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             1        1     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              0       98     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              1        1     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0       57     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1        2     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg             0      109    1490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg             1        4    1490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg              0     1050    1490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg              1       88    1490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg          0      227    1490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg          1       12    1490
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             0       77     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             1        5     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg              0      410     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg              1       36     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          0       90     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          1        4     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             0      117     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             1        3     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg              0      409     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg              1       23     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          0      113     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          1        4     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             0      189     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             1        3     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              0      393     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              1       13     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          0      156     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          1        1     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             0     1464    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             1       12    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              0      390    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              1        3    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0      480    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1        3    2352
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg             0    10269   13772
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg             1       10   13772
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg              0     1128   13772
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg              1        3   13772
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg          0     2360   13772
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg          1        2   13772
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             0     5744   11112
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             1       54   11112
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              0     2329   11112
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              1       50   11112
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          0     2902   11112
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          1       33   11112
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg             0       33     271
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg             1        0     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg              0      167     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg              1        0     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg          0       71     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg          1        0     271
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg             0      641   26785
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg             1       17   26785
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg              0    23392   26785
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg              1      986   26785
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg          0     1690   26785
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg          1       59   26785
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             0       42     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg             1        2     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg              0      124     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg              1       30     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          0       38     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg          1        3     239
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg             0      134     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg             1        1     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg              0       37     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg              1        0     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          0       33     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg          1        1     206
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg             0       37     234
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg             1        3     234
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg              0      108     234
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg              1       37     234
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg          0       42     234
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg          1        7     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg             0       76     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg             1        3     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg              0       64     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg              1       11     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg          0       79     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg          1        2     235
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg             0       97     269
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg             1        3     269
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg              0       98     269
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg              1        7     269
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg          0       63     269
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg          1        1     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             0      169     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg             1       13     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              0       28     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg              1        2     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          0       37     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg          1        5     254
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             0       93     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg             1        2     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              0       76     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg              1       16     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0       55     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1        3     245
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg             0       99    1382
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg             1        7    1382
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg              0      778    1382
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg              1      275    1382
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg          0      193    1382
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg          1       30    1382
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             0       64     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg             1        8     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg              0      293     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg              1       95     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          0       71     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg          1       11     542
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             0      109     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg             1        4     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg              0      326     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg              1       66     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          0      103     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg          1        5     613
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             0      181     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg             1        7     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              0      343     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg              1       48     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          0      143     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg          1        8     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             0     1191    1977
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg             1       64    1977
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              0      287    1977
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg              1       23    1977
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          0      389    1977
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg          1       23    1977
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg             0      868    3216
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg             1       69    3216
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg              0      995    3216
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg              1      206    3216
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg          0      967    3216
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg          1      111    3216
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg             0    10265   13764
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg             1        7   13764
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg              0     1131   13764
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg              1        0   13764
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg          0     2359   13764
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg          1        2   13764
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             0     4864    9742
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg             1      156    9742
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              0     1977    9742
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg              1      149    9742
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          0     2485    9742
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg          1      111    9742
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg             0      112     824
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg             1        2     824
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg              0      467     824
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg              1       29     824
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg          0      203     824
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg          1       11     824
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg             0      396   17270
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg             1       31   17270
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg              0    14282   17270
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg              1     1378   17270
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg          0     1091   17270
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg          1       92   17270


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
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
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
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
![](/tmp/03dddd52-0d14-4cf5-b9eb-18d5baa20242/20af4e42-122d-4195-83f1-f4678c151002/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/03dddd52-0d14-4cf5-b9eb-18d5baa20242/20af4e42-122d-4195-83f1-f4678c151002/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/03dddd52-0d14-4cf5-b9eb-18d5baa20242/20af4e42-122d-4195-83f1-f4678c151002/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/03dddd52-0d14-4cf5-b9eb-18d5baa20242/20af4e42-122d-4195-83f1-f4678c151002/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.0796460   0.0298616   0.1294305
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.2666084   0.2180473   0.3151695
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.1410788   0.1062814   0.1758762
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1346183   0.0576413   0.2115952
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.2512014   0.2108319   0.2915708
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.1347793   0.0674826   0.2020761
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0416667   0.0058871   0.0774462
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.1759259   0.1399941   0.2118577
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.0769231   0.0286030   0.1252431
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0520833   0.0206334   0.0835333
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.1280788   0.0955514   0.1606063
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.0573248   0.0209385   0.0937112
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0467875   0.0358479   0.0577271
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0646109   0.0393738   0.0898480
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0518090   0.0312752   0.0723428
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0733603   0.0474033   0.0993174
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.1711146   0.1413900   0.2008392
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.1026548   0.0762792   0.1290304
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0347957   0.0300373   0.0395540
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0856027   0.0738175   0.0973880
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0483734   0.0402723   0.0564746
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0720347   0.0536242   0.0904451
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                0.0898946   0.0859371   0.0938522
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                0.0797943   0.0654833   0.0941054
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0090545   0.0066143   0.0114946
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0227120   0.0161475   0.0292764
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0110155   0.0072383   0.0147926
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0260957   0.0134143   0.0387772
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                0.0403888   0.0377562   0.0430214
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                0.0338181   0.0249423   0.0426939
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.0660377   0.0197187   0.1123567
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.2611586   0.2166229   0.3056943
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.1345291   0.0934755   0.1755828
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1111111   0.0384528   0.1837694
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.2448454   0.2020204   0.2876703
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.1341463   0.0603128   0.2079799
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0372340   0.0101510   0.0643171
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.1227621   0.0902124   0.1553119
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.0529801   0.0172287   0.0887316
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0512508   0.0389387   0.0635630
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0794333   0.0469523   0.1119142
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0550029   0.0323028   0.0777029
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0733257   0.0478279   0.0988235
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.1720107   0.1421946   0.2018268
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.1018108   0.0759751   0.1276465
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0305871   0.0257954   0.0353788
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0754548   0.0635667   0.0873428
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0459490   0.0374002   0.0544978
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0771918   0.0529179   0.1014657
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                0.0878094   0.0830796   0.0925392
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                0.0805673   0.0629658   0.0981688


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2323097   0.1910149   0.2736046
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2195513   0.1870467   0.2520558
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1345291   0.1086533   0.1604050
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0940397   0.0732057   0.1148737
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0493197   0.0405669   0.0580726
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1200249   0.0999720   0.1400777
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0477427   0.0437874   0.0516981
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0888740   0.0849641   0.0927839
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0123290   0.0102772   0.0143808
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0396491   0.0371433   0.0421548
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2257598   0.1896749   0.2618446
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0556399   0.0455330   0.0657467
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1200249   0.0999720   0.1400777
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0427017   0.0386866   0.0467168
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0869137   0.0822507   0.0915768


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level    estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ---------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           3.347417   1.8965196    5.908295
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.771323   0.9040136    3.470729
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.000000   1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.866027   1.0306448    3.378523
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.001196   0.4681339    2.141255
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.000000   1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           4.222222   1.7466447   10.206516
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.846154   0.6370959    5.349718
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.000000   1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           2.459113   1.2772751    4.734484
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.100637   0.4583186    2.643143
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.000000   1.0000000    1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.380944   0.8757732    2.177510
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.107326   0.6988085    1.754661
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.000000   1.0000000    1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           2.332522   1.6328484    3.332006
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.399323   0.9358588    2.092308
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           2.460156   2.0264119    2.986741
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.390214   1.1198575    1.725840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg           1.000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           1.247936   0.9653295    1.613277
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           1.107722   0.8156587    1.504363
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.000000   1.0000000    1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           2.508371   1.6895483    3.724027
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.216578   0.7865204    1.881785
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg           1.000000   1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           1.547716   0.9461915    2.531648
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           1.295925   0.7596428    2.210805
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           3.954687   2.0214274    7.736885
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           2.037156   0.8492977    4.886394
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.000000   1.0000000    1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           2.203608   1.1198381    4.336242
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.207317   0.5135934    2.838071
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.000000   1.0000000    1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           3.297041   1.5201868    7.150750
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.422895   0.5275590    3.837732
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.000000   1.0000000    1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.549892   0.9645336    2.490494
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.073210   0.6656896    1.730204
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.000000   1.0000000    1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           2.345846   1.6503246    3.334492
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.388474   0.9379514    2.055395
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.000000   1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           2.466885   1.9754150    3.080629
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.502237   1.1779396    1.915816
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg           1.000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           1.137547   0.8311088    1.556973
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           1.043729   0.7085417    1.537481


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1526637    0.1063576   0.1989699
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0849330    0.0106758   0.1591902
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0928625    0.0542558   0.1314692
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0419564    0.0116234   0.0722894
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0025322   -0.0046047   0.0096691
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0466645    0.0266623   0.0666667
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0129471    0.0090608   0.0168333
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0168393   -0.0012444   0.0349230
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0032745    0.0012897   0.0052594
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0135533    0.0009377   0.0261689
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1597220    0.1110245   0.2084196
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0992210    0.0281155   0.1703265
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0490673    0.0212967   0.0768380
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0043890   -0.0036706   0.0124487
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0466992    0.0269798   0.0664186
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0121146    0.0081563   0.0160730
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.0097219   -0.0139763   0.0334201


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.6571559    0.4006051   0.8038988
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.3868481   -0.0595828   0.6451856
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.6902778    0.2881910   0.8652337
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.4461561    0.0326597   0.6829006
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0513433   -0.1046486   0.1853070
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.3887905    0.1942540   0.5363588
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2711844    0.1882717   0.3456281
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.1894744   -0.0417848   0.3693978
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2655968    0.0929810   0.4053619
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.3418321   -0.0659414   0.5936128
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.7074867    0.4298826   0.8499186
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.4717349    0.0102035   0.7180592
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.5685579    0.1453269   0.7822065
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0788828   -0.0772129   0.2123591
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.3890795    0.1988971   0.5341124
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2837038    0.1888758   0.3674455
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                0.1118567   -0.2076008   0.3468053
