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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** hfoodsec

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* vagbrth
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_sex
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_vagbrth
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid      country        hfoodsec                ever_stunted   n_cell       n  outcome_variable 
------------  -----------  -------------  ---------------------  -------------  -------  ------  -----------------
0-24 months   GMS-Nepal    NEPAL          Food Secure                        0      181     674  ever_stunted     
0-24 months   GMS-Nepal    NEPAL          Food Secure                        1      298     674  ever_stunted     
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure               0       38     674  ever_stunted     
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure               1       68     674  ever_stunted     
0-24 months   GMS-Nepal    NEPAL          Food Insecure                      0       26     674  ever_stunted     
0-24 months   GMS-Nepal    NEPAL          Food Insecure                      1       63     674  ever_stunted     
0-24 months   JiVitA-3     BANGLADESH     Food Secure                        0     4441   17380  ever_stunted     
0-24 months   JiVitA-3     BANGLADESH     Food Secure                        1     4258   17380  ever_stunted     
0-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure               0     2618   17380  ever_stunted     
0-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure               1     3167   17380  ever_stunted     
0-24 months   JiVitA-3     BANGLADESH     Food Insecure                      0     1212   17380  ever_stunted     
0-24 months   JiVitA-3     BANGLADESH     Food Insecure                      1     1684   17380  ever_stunted     
0-24 months   JiVitA-4     BANGLADESH     Food Secure                        0     1143    5398  ever_stunted     
0-24 months   JiVitA-4     BANGLADESH     Food Secure                        1     1606    5398  ever_stunted     
0-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure               0      812    5398  ever_stunted     
0-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure               1     1135    5398  ever_stunted     
0-24 months   JiVitA-4     BANGLADESH     Food Insecure                      0      305    5398  ever_stunted     
0-24 months   JiVitA-4     BANGLADESH     Food Insecure                      1      397    5398  ever_stunted     
0-24 months   MAL-ED       BANGLADESH     Food Secure                        0       61     194  ever_stunted     
0-24 months   MAL-ED       BANGLADESH     Food Secure                        1      100     194  ever_stunted     
0-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure               0        1     194  ever_stunted     
0-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure               1        3     194  ever_stunted     
0-24 months   MAL-ED       BANGLADESH     Food Insecure                      0       10     194  ever_stunted     
0-24 months   MAL-ED       BANGLADESH     Food Insecure                      1       19     194  ever_stunted     
0-24 months   MAL-ED       BRAZIL         Food Secure                        0        3     129  ever_stunted     
0-24 months   MAL-ED       BRAZIL         Food Secure                        1        0     129  ever_stunted     
0-24 months   MAL-ED       BRAZIL         Mildly Food Insecure               0        7     129  ever_stunted     
0-24 months   MAL-ED       BRAZIL         Mildly Food Insecure               1        4     129  ever_stunted     
0-24 months   MAL-ED       BRAZIL         Food Insecure                      0       84     129  ever_stunted     
0-24 months   MAL-ED       BRAZIL         Food Insecure                      1       31     129  ever_stunted     
0-24 months   MAL-ED       INDIA          Food Secure                        0       66     212  ever_stunted     
0-24 months   MAL-ED       INDIA          Food Secure                        1      124     212  ever_stunted     
0-24 months   MAL-ED       INDIA          Mildly Food Insecure               0        4     212  ever_stunted     
0-24 months   MAL-ED       INDIA          Mildly Food Insecure               1        1     212  ever_stunted     
0-24 months   MAL-ED       INDIA          Food Insecure                      0        7     212  ever_stunted     
0-24 months   MAL-ED       INDIA          Food Insecure                      1       10     212  ever_stunted     
0-24 months   MAL-ED       NEPAL          Food Secure                        0       63     128  ever_stunted     
0-24 months   MAL-ED       NEPAL          Food Secure                        1       31     128  ever_stunted     
0-24 months   MAL-ED       NEPAL          Mildly Food Insecure               0        9     128  ever_stunted     
0-24 months   MAL-ED       NEPAL          Mildly Food Insecure               1        6     128  ever_stunted     
0-24 months   MAL-ED       NEPAL          Food Insecure                      0        9     128  ever_stunted     
0-24 months   MAL-ED       NEPAL          Food Insecure                      1       10     128  ever_stunted     
0-24 months   MAL-ED       PERU           Food Secure                        0        6     113  ever_stunted     
0-24 months   MAL-ED       PERU           Food Secure                        1       21     113  ever_stunted     
0-24 months   MAL-ED       PERU           Mildly Food Insecure               0        8     113  ever_stunted     
0-24 months   MAL-ED       PERU           Mildly Food Insecure               1       21     113  ever_stunted     
0-24 months   MAL-ED       PERU           Food Insecure                      0       17     113  ever_stunted     
0-24 months   MAL-ED       PERU           Food Insecure                      1       40     113  ever_stunted     
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure                        0       55     233  ever_stunted     
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure                        1       77     233  ever_stunted     
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure               0       10     233  ever_stunted     
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure               1        9     233  ever_stunted     
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                      0       25     233  ever_stunted     
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                      1       57     233  ever_stunted     
0-24 months   NIH-Birth    BANGLADESH     Food Secure                        0       44     629  ever_stunted     
0-24 months   NIH-Birth    BANGLADESH     Food Secure                        1       51     629  ever_stunted     
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure               0      159     629  ever_stunted     
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure               1      333     629  ever_stunted     
0-24 months   NIH-Birth    BANGLADESH     Food Insecure                      0        8     629  ever_stunted     
0-24 months   NIH-Birth    BANGLADESH     Food Insecure                      1       34     629  ever_stunted     
0-24 months   NIH-Crypto   BANGLADESH     Food Secure                        0      243     758  ever_stunted     
0-24 months   NIH-Crypto   BANGLADESH     Food Secure                        1      210     758  ever_stunted     
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure               0      113     758  ever_stunted     
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure               1      106     758  ever_stunted     
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure                      0       40     758  ever_stunted     
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure                      1       46     758  ever_stunted     
0-6 months    GMS-Nepal    NEPAL          Food Secure                        0      337     674  ever_stunted     
0-6 months    GMS-Nepal    NEPAL          Food Secure                        1      142     674  ever_stunted     
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure               0       66     674  ever_stunted     
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure               1       40     674  ever_stunted     
0-6 months    GMS-Nepal    NEPAL          Food Insecure                      0       58     674  ever_stunted     
0-6 months    GMS-Nepal    NEPAL          Food Insecure                      1       31     674  ever_stunted     
0-6 months    JiVitA-3     BANGLADESH     Food Secure                        0     5485   17317  ever_stunted     
0-6 months    JiVitA-3     BANGLADESH     Food Secure                        1     3186   17317  ever_stunted     
0-6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure               0     3352   17317  ever_stunted     
0-6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure               1     2409   17317  ever_stunted     
0-6 months    JiVitA-3     BANGLADESH     Food Insecure                      0     1631   17317  ever_stunted     
0-6 months    JiVitA-3     BANGLADESH     Food Insecure                      1     1254   17317  ever_stunted     
0-6 months    JiVitA-4     BANGLADESH     Food Secure                        0     1662    5092  ever_stunted     
0-6 months    JiVitA-4     BANGLADESH     Food Secure                        1      933    5092  ever_stunted     
0-6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure               0     1189    5092  ever_stunted     
0-6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure               1      636    5092  ever_stunted     
0-6 months    JiVitA-4     BANGLADESH     Food Insecure                      0      467    5092  ever_stunted     
0-6 months    JiVitA-4     BANGLADESH     Food Insecure                      1      205    5092  ever_stunted     
0-6 months    MAL-ED       BANGLADESH     Food Secure                        0      109     194  ever_stunted     
0-6 months    MAL-ED       BANGLADESH     Food Secure                        1       52     194  ever_stunted     
0-6 months    MAL-ED       BANGLADESH     Mildly Food Insecure               0        2     194  ever_stunted     
0-6 months    MAL-ED       BANGLADESH     Mildly Food Insecure               1        2     194  ever_stunted     
0-6 months    MAL-ED       BANGLADESH     Food Insecure                      0       20     194  ever_stunted     
0-6 months    MAL-ED       BANGLADESH     Food Insecure                      1        9     194  ever_stunted     
0-6 months    MAL-ED       BRAZIL         Food Secure                        0        3     129  ever_stunted     
0-6 months    MAL-ED       BRAZIL         Food Secure                        1        0     129  ever_stunted     
0-6 months    MAL-ED       BRAZIL         Mildly Food Insecure               0        7     129  ever_stunted     
0-6 months    MAL-ED       BRAZIL         Mildly Food Insecure               1        4     129  ever_stunted     
0-6 months    MAL-ED       BRAZIL         Food Insecure                      0       91     129  ever_stunted     
0-6 months    MAL-ED       BRAZIL         Food Insecure                      1       24     129  ever_stunted     
0-6 months    MAL-ED       INDIA          Food Secure                        0      122     212  ever_stunted     
0-6 months    MAL-ED       INDIA          Food Secure                        1       68     212  ever_stunted     
0-6 months    MAL-ED       INDIA          Mildly Food Insecure               0        5     212  ever_stunted     
0-6 months    MAL-ED       INDIA          Mildly Food Insecure               1        0     212  ever_stunted     
0-6 months    MAL-ED       INDIA          Food Insecure                      0       13     212  ever_stunted     
0-6 months    MAL-ED       INDIA          Food Insecure                      1        4     212  ever_stunted     
0-6 months    MAL-ED       NEPAL          Food Secure                        0       81     128  ever_stunted     
0-6 months    MAL-ED       NEPAL          Food Secure                        1       13     128  ever_stunted     
0-6 months    MAL-ED       NEPAL          Mildly Food Insecure               0       12     128  ever_stunted     
0-6 months    MAL-ED       NEPAL          Mildly Food Insecure               1        3     128  ever_stunted     
0-6 months    MAL-ED       NEPAL          Food Insecure                      0       12     128  ever_stunted     
0-6 months    MAL-ED       NEPAL          Food Insecure                      1        7     128  ever_stunted     
0-6 months    MAL-ED       PERU           Food Secure                        0       13     113  ever_stunted     
0-6 months    MAL-ED       PERU           Food Secure                        1       14     113  ever_stunted     
0-6 months    MAL-ED       PERU           Mildly Food Insecure               0       17     113  ever_stunted     
0-6 months    MAL-ED       PERU           Mildly Food Insecure               1       12     113  ever_stunted     
0-6 months    MAL-ED       PERU           Food Insecure                      0       32     113  ever_stunted     
0-6 months    MAL-ED       PERU           Food Insecure                      1       25     113  ever_stunted     
0-6 months    MAL-ED       SOUTH AFRICA   Food Secure                        0       80     233  ever_stunted     
0-6 months    MAL-ED       SOUTH AFRICA   Food Secure                        1       52     233  ever_stunted     
0-6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure               0       16     233  ever_stunted     
0-6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure               1        3     233  ever_stunted     
0-6 months    MAL-ED       SOUTH AFRICA   Food Insecure                      0       49     233  ever_stunted     
0-6 months    MAL-ED       SOUTH AFRICA   Food Insecure                      1       33     233  ever_stunted     
0-6 months    NIH-Birth    BANGLADESH     Food Secure                        0       65     629  ever_stunted     
0-6 months    NIH-Birth    BANGLADESH     Food Secure                        1       30     629  ever_stunted     
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure               0      320     629  ever_stunted     
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure               1      172     629  ever_stunted     
0-6 months    NIH-Birth    BANGLADESH     Food Insecure                      0       24     629  ever_stunted     
0-6 months    NIH-Birth    BANGLADESH     Food Insecure                      1       18     629  ever_stunted     
0-6 months    NIH-Crypto   BANGLADESH     Food Secure                        0      325     758  ever_stunted     
0-6 months    NIH-Crypto   BANGLADESH     Food Secure                        1      128     758  ever_stunted     
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure               0      146     758  ever_stunted     
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure               1       73     758  ever_stunted     
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure                      0       58     758  ever_stunted     
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure                      1       28     758  ever_stunted     
6-24 months   GMS-Nepal    NEPAL          Food Secure                        0      132     387  ever_stunted     
6-24 months   GMS-Nepal    NEPAL          Food Secure                        1      156     387  ever_stunted     
6-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure               0       20     387  ever_stunted     
6-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure               1       28     387  ever_stunted     
6-24 months   GMS-Nepal    NEPAL          Food Insecure                      0       19     387  ever_stunted     
6-24 months   GMS-Nepal    NEPAL          Food Insecure                      1       32     387  ever_stunted     
6-24 months   JiVitA-3     BANGLADESH     Food Secure                        0     4411   10458  ever_stunted     
6-24 months   JiVitA-3     BANGLADESH     Food Secure                        1     1072   10458  ever_stunted     
6-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure               0     2594   10458  ever_stunted     
6-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure               1      758   10458  ever_stunted     
6-24 months   JiVitA-3     BANGLADESH     Food Insecure                      0     1193   10458  ever_stunted     
6-24 months   JiVitA-3     BANGLADESH     Food Insecure                      1      430   10458  ever_stunted     
6-24 months   JiVitA-4     BANGLADESH     Food Secure                        0     1137    3615  ever_stunted     
6-24 months   JiVitA-4     BANGLADESH     Food Secure                        1      673    3615  ever_stunted     
6-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure               0      811    3615  ever_stunted     
6-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure               1      499    3615  ever_stunted     
6-24 months   JiVitA-4     BANGLADESH     Food Insecure                      0      303    3615  ever_stunted     
6-24 months   JiVitA-4     BANGLADESH     Food Insecure                      1      192    3615  ever_stunted     
6-24 months   MAL-ED       BANGLADESH     Food Secure                        0       61     131  ever_stunted     
6-24 months   MAL-ED       BANGLADESH     Food Secure                        1       48     131  ever_stunted     
6-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure               0        1     131  ever_stunted     
6-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure               1        1     131  ever_stunted     
6-24 months   MAL-ED       BANGLADESH     Food Insecure                      0       10     131  ever_stunted     
6-24 months   MAL-ED       BANGLADESH     Food Insecure                      1       10     131  ever_stunted     
6-24 months   MAL-ED       BRAZIL         Food Secure                        0        3     101  ever_stunted     
6-24 months   MAL-ED       BRAZIL         Food Secure                        1        0     101  ever_stunted     
6-24 months   MAL-ED       BRAZIL         Mildly Food Insecure               0        7     101  ever_stunted     
6-24 months   MAL-ED       BRAZIL         Mildly Food Insecure               1        0     101  ever_stunted     
6-24 months   MAL-ED       BRAZIL         Food Insecure                      0       84     101  ever_stunted     
6-24 months   MAL-ED       BRAZIL         Food Insecure                      1        7     101  ever_stunted     
6-24 months   MAL-ED       INDIA          Food Secure                        0       66     140  ever_stunted     
6-24 months   MAL-ED       INDIA          Food Secure                        1       56     140  ever_stunted     
6-24 months   MAL-ED       INDIA          Mildly Food Insecure               0        4     140  ever_stunted     
6-24 months   MAL-ED       INDIA          Mildly Food Insecure               1        1     140  ever_stunted     
6-24 months   MAL-ED       INDIA          Food Insecure                      0        7     140  ever_stunted     
6-24 months   MAL-ED       INDIA          Food Insecure                      1        6     140  ever_stunted     
6-24 months   MAL-ED       NEPAL          Food Secure                        0       63     105  ever_stunted     
6-24 months   MAL-ED       NEPAL          Food Secure                        1       18     105  ever_stunted     
6-24 months   MAL-ED       NEPAL          Mildly Food Insecure               0        9     105  ever_stunted     
6-24 months   MAL-ED       NEPAL          Mildly Food Insecure               1        3     105  ever_stunted     
6-24 months   MAL-ED       NEPAL          Food Insecure                      0        9     105  ever_stunted     
6-24 months   MAL-ED       NEPAL          Food Insecure                      1        3     105  ever_stunted     
6-24 months   MAL-ED       PERU           Food Secure                        0        6      61  ever_stunted     
6-24 months   MAL-ED       PERU           Food Secure                        1        7      61  ever_stunted     
6-24 months   MAL-ED       PERU           Mildly Food Insecure               0        7      61  ever_stunted     
6-24 months   MAL-ED       PERU           Mildly Food Insecure               1        9      61  ever_stunted     
6-24 months   MAL-ED       PERU           Food Insecure                      0       17      61  ever_stunted     
6-24 months   MAL-ED       PERU           Food Insecure                      1       15      61  ever_stunted     
6-24 months   MAL-ED       SOUTH AFRICA   Food Secure                        0       54     144  ever_stunted     
6-24 months   MAL-ED       SOUTH AFRICA   Food Secure                        1       25     144  ever_stunted     
6-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure               0       10     144  ever_stunted     
6-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure               1        6     144  ever_stunted     
6-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                      0       25     144  ever_stunted     
6-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                      1       24     144  ever_stunted     
6-24 months   NIH-Birth    BANGLADESH     Food Secure                        0       35     345  ever_stunted     
6-24 months   NIH-Birth    BANGLADESH     Food Secure                        1       21     345  ever_stunted     
6-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure               0      106     345  ever_stunted     
6-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure               1      161     345  ever_stunted     
6-24 months   NIH-Birth    BANGLADESH     Food Insecure                      0        6     345  ever_stunted     
6-24 months   NIH-Birth    BANGLADESH     Food Insecure                      1       16     345  ever_stunted     
6-24 months   NIH-Crypto   BANGLADESH     Food Secure                        0      232     506  ever_stunted     
6-24 months   NIH-Crypto   BANGLADESH     Food Secure                        1       82     506  ever_stunted     
6-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure               0      101     506  ever_stunted     
6-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure               1       33     506  ever_stunted     
6-24 months   NIH-Crypto   BANGLADESH     Food Insecure                      0       40     506  ever_stunted     
6-24 months   NIH-Crypto   BANGLADESH     Food Insecure                      1       18     506  ever_stunted     


The following strata were considered:

* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->
