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

**Outcome Variable:** y_rate_haz

## Predictor Variables

**Intervention Variable:** hfoodsec

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid      country        hfoodsec                n_cell     n
-------------  -----------  -------------  ---------------------  -------  ----
0-3 months     GMS-Nepal    NEPAL          Food Secure                361   493
0-3 months     GMS-Nepal    NEPAL          Mildly Food Insecure        71   493
0-3 months     GMS-Nepal    NEPAL          Food Insecure               61   493
0-3 months     MAL-ED       BANGLADESH     Food Secure                160   192
0-3 months     MAL-ED       BANGLADESH     Mildly Food Insecure         4   192
0-3 months     MAL-ED       BANGLADESH     Food Insecure               28   192
0-3 months     MAL-ED       BRAZIL         Food Secure                  0   101
0-3 months     MAL-ED       BRAZIL         Mildly Food Insecure        10   101
0-3 months     MAL-ED       BRAZIL         Food Insecure               91   101
0-3 months     MAL-ED       INDIA          Food Secure                146   158
0-3 months     MAL-ED       INDIA          Mildly Food Insecure         2   158
0-3 months     MAL-ED       INDIA          Food Insecure               10   158
0-3 months     MAL-ED       NEPAL          Food Secure                 65    86
0-3 months     MAL-ED       NEPAL          Mildly Food Insecure         8    86
0-3 months     MAL-ED       NEPAL          Food Insecure               13    86
0-3 months     MAL-ED       PERU           Food Secure                 27   105
0-3 months     MAL-ED       PERU           Mildly Food Insecure        26   105
0-3 months     MAL-ED       PERU           Food Insecure               52   105
0-3 months     MAL-ED       SOUTH AFRICA   Food Secure                 94   177
0-3 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17   177
0-3 months     MAL-ED       SOUTH AFRICA   Food Insecure               66   177
0-3 months     NIH-Birth    BANGLADESH     Food Secure                 83   566
0-3 months     NIH-Birth    BANGLADESH     Mildly Food Insecure       444   566
0-3 months     NIH-Birth    BANGLADESH     Food Insecure               39   566
0-3 months     NIH-Crypto   BANGLADESH     Food Secure                428   721
0-3 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure       207   721
0-3 months     NIH-Crypto   BANGLADESH     Food Insecure               86   721
3-6 months     GMS-Nepal    NEPAL          Food Secure                335   453
3-6 months     GMS-Nepal    NEPAL          Mildly Food Insecure        62   453
3-6 months     GMS-Nepal    NEPAL          Food Insecure               56   453
3-6 months     MAL-ED       BANGLADESH     Food Secure                156   189
3-6 months     MAL-ED       BANGLADESH     Mildly Food Insecure         4   189
3-6 months     MAL-ED       BANGLADESH     Food Insecure               29   189
3-6 months     MAL-ED       BRAZIL         Food Secure                  3   129
3-6 months     MAL-ED       BRAZIL         Mildly Food Insecure        11   129
3-6 months     MAL-ED       BRAZIL         Food Insecure              115   129
3-6 months     MAL-ED       INDIA          Food Secure                186   207
3-6 months     MAL-ED       INDIA          Mildly Food Insecure         5   207
3-6 months     MAL-ED       INDIA          Food Insecure               16   207
3-6 months     MAL-ED       NEPAL          Food Secure                 93   127
3-6 months     MAL-ED       NEPAL          Mildly Food Insecure        15   127
3-6 months     MAL-ED       NEPAL          Food Insecure               19   127
3-6 months     MAL-ED       PERU           Food Secure                 27   111
3-6 months     MAL-ED       PERU           Mildly Food Insecure        28   111
3-6 months     MAL-ED       PERU           Food Insecure               56   111
3-6 months     MAL-ED       SOUTH AFRICA   Food Secure                125   222
3-6 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18   222
3-6 months     MAL-ED       SOUTH AFRICA   Food Insecure               79   222
3-6 months     NIH-Birth    BANGLADESH     Food Secure                 77   523
3-6 months     NIH-Birth    BANGLADESH     Mildly Food Insecure       407   523
3-6 months     NIH-Birth    BANGLADESH     Food Insecure               39   523
3-6 months     NIH-Crypto   BANGLADESH     Food Secure                413   695
3-6 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure       198   695
3-6 months     NIH-Crypto   BANGLADESH     Food Insecure               84   695
6-9 months     GMS-Nepal    NEPAL          Food Secure                340   466
6-9 months     GMS-Nepal    NEPAL          Mildly Food Insecure        64   466
6-9 months     GMS-Nepal    NEPAL          Food Insecure               62   466
6-9 months     MAL-ED       BANGLADESH     Food Secure                155   187
6-9 months     MAL-ED       BANGLADESH     Mildly Food Insecure         4   187
6-9 months     MAL-ED       BANGLADESH     Food Insecure               28   187
6-9 months     MAL-ED       BRAZIL         Food Secure                  3   129
6-9 months     MAL-ED       BRAZIL         Mildly Food Insecure        11   129
6-9 months     MAL-ED       BRAZIL         Food Insecure              115   129
6-9 months     MAL-ED       INDIA          Food Secure                189   210
6-9 months     MAL-ED       INDIA          Mildly Food Insecure         5   210
6-9 months     MAL-ED       INDIA          Food Insecure               16   210
6-9 months     MAL-ED       NEPAL          Food Secure                 93   127
6-9 months     MAL-ED       NEPAL          Mildly Food Insecure        15   127
6-9 months     MAL-ED       NEPAL          Food Insecure               19   127
6-9 months     MAL-ED       PERU           Food Secure                 27   110
6-9 months     MAL-ED       PERU           Mildly Food Insecure        28   110
6-9 months     MAL-ED       PERU           Food Insecure               55   110
6-9 months     MAL-ED       SOUTH AFRICA   Food Secure                121   213
6-9 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17   213
6-9 months     MAL-ED       SOUTH AFRICA   Food Insecure               75   213
6-9 months     NIH-Birth    BANGLADESH     Food Secure                 75   498
6-9 months     NIH-Birth    BANGLADESH     Mildly Food Insecure       384   498
6-9 months     NIH-Birth    BANGLADESH     Food Insecure               39   498
6-9 months     NIH-Crypto   BANGLADESH     Food Secure                416   688
6-9 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure       193   688
6-9 months     NIH-Crypto   BANGLADESH     Food Insecure               79   688
9-12 months    GMS-Nepal    NEPAL          Food Secure                330   455
9-12 months    GMS-Nepal    NEPAL          Mildly Food Insecure        67   455
9-12 months    GMS-Nepal    NEPAL          Food Insecure               58   455
9-12 months    MAL-ED       BANGLADESH     Food Secure                157   188
9-12 months    MAL-ED       BANGLADESH     Mildly Food Insecure         4   188
9-12 months    MAL-ED       BANGLADESH     Food Insecure               27   188
9-12 months    MAL-ED       BRAZIL         Food Secure                  3   129
9-12 months    MAL-ED       BRAZIL         Mildly Food Insecure        11   129
9-12 months    MAL-ED       BRAZIL         Food Insecure              115   129
9-12 months    MAL-ED       INDIA          Food Secure                188   210
9-12 months    MAL-ED       INDIA          Mildly Food Insecure         5   210
9-12 months    MAL-ED       INDIA          Food Insecure               17   210
9-12 months    MAL-ED       NEPAL          Food Secure                 93   127
9-12 months    MAL-ED       NEPAL          Mildly Food Insecure        15   127
9-12 months    MAL-ED       NEPAL          Food Insecure               19   127
9-12 months    MAL-ED       PERU           Food Secure                 27   108
9-12 months    MAL-ED       PERU           Mildly Food Insecure        26   108
9-12 months    MAL-ED       PERU           Food Insecure               55   108
9-12 months    MAL-ED       SOUTH AFRICA   Food Secure                119   213
9-12 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18   213
9-12 months    MAL-ED       SOUTH AFRICA   Food Insecure               76   213
9-12 months    NIH-Birth    BANGLADESH     Food Secure                 74   482
9-12 months    NIH-Birth    BANGLADESH     Mildly Food Insecure       370   482
9-12 months    NIH-Birth    BANGLADESH     Food Insecure               38   482
9-12 months    NIH-Crypto   BANGLADESH     Food Secure                408   674
9-12 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure       189   674
9-12 months    NIH-Crypto   BANGLADESH     Food Insecure               77   674
12-15 months   GMS-Nepal    NEPAL          Food Secure                335   456
12-15 months   GMS-Nepal    NEPAL          Mildly Food Insecure        68   456
12-15 months   GMS-Nepal    NEPAL          Food Insecure               53   456
12-15 months   MAL-ED       BANGLADESH     Food Secure                153   185
12-15 months   MAL-ED       BANGLADESH     Mildly Food Insecure         4   185
12-15 months   MAL-ED       BANGLADESH     Food Insecure               28   185
12-15 months   MAL-ED       BRAZIL         Food Secure                  3   129
12-15 months   MAL-ED       BRAZIL         Mildly Food Insecure        11   129
12-15 months   MAL-ED       BRAZIL         Food Insecure              115   129
12-15 months   MAL-ED       INDIA          Food Secure                188   210
12-15 months   MAL-ED       INDIA          Mildly Food Insecure         5   210
12-15 months   MAL-ED       INDIA          Food Insecure               17   210
12-15 months   MAL-ED       NEPAL          Food Secure                 94   128
12-15 months   MAL-ED       NEPAL          Mildly Food Insecure        15   128
12-15 months   MAL-ED       NEPAL          Food Insecure               19   128
12-15 months   MAL-ED       PERU           Food Secure                 26   106
12-15 months   MAL-ED       PERU           Mildly Food Insecure        25   106
12-15 months   MAL-ED       PERU           Food Insecure               55   106
12-15 months   MAL-ED       SOUTH AFRICA   Food Secure                115   212
12-15 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17   212
12-15 months   MAL-ED       SOUTH AFRICA   Food Insecure               80   212
12-15 months   NIH-Birth    BANGLADESH     Food Secure                 69   461
12-15 months   NIH-Birth    BANGLADESH     Mildly Food Insecure       357   461
12-15 months   NIH-Birth    BANGLADESH     Food Insecure               35   461
12-15 months   NIH-Crypto   BANGLADESH     Food Secure                390   660
12-15 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure       190   660
12-15 months   NIH-Crypto   BANGLADESH     Food Insecure               80   660
15-18 months   GMS-Nepal    NEPAL          Food Secure                339   466
15-18 months   GMS-Nepal    NEPAL          Mildly Food Insecure        67   466
15-18 months   GMS-Nepal    NEPAL          Food Insecure               60   466
15-18 months   MAL-ED       BANGLADESH     Food Secure                155   187
15-18 months   MAL-ED       BANGLADESH     Mildly Food Insecure         4   187
15-18 months   MAL-ED       BANGLADESH     Food Insecure               28   187
15-18 months   MAL-ED       BRAZIL         Food Secure                  3   128
15-18 months   MAL-ED       BRAZIL         Mildly Food Insecure        10   128
15-18 months   MAL-ED       BRAZIL         Food Insecure              115   128
15-18 months   MAL-ED       INDIA          Food Secure                190   211
15-18 months   MAL-ED       INDIA          Mildly Food Insecure         5   211
15-18 months   MAL-ED       INDIA          Food Insecure               16   211
15-18 months   MAL-ED       NEPAL          Food Secure                 92   126
15-18 months   MAL-ED       NEPAL          Mildly Food Insecure        15   126
15-18 months   MAL-ED       NEPAL          Food Insecure               19   126
15-18 months   MAL-ED       PERU           Food Secure                 26   106
15-18 months   MAL-ED       PERU           Mildly Food Insecure        27   106
15-18 months   MAL-ED       PERU           Food Insecure               53   106
15-18 months   MAL-ED       SOUTH AFRICA   Food Secure                117   216
15-18 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17   216
15-18 months   MAL-ED       SOUTH AFRICA   Food Insecure               82   216
15-18 months   NIH-Birth    BANGLADESH     Food Secure                 68   449
15-18 months   NIH-Birth    BANGLADESH     Mildly Food Insecure       345   449
15-18 months   NIH-Birth    BANGLADESH     Food Insecure               36   449
15-18 months   NIH-Crypto   BANGLADESH     Food Secure                368   604
15-18 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure       165   604
15-18 months   NIH-Crypto   BANGLADESH     Food Insecure               71   604
18-21 months   GMS-Nepal    NEPAL          Food Secure                315   430
18-21 months   GMS-Nepal    NEPAL          Mildly Food Insecure        61   430
18-21 months   GMS-Nepal    NEPAL          Food Insecure               54   430
18-21 months   MAL-ED       BANGLADESH     Food Secure                157   189
18-21 months   MAL-ED       BANGLADESH     Mildly Food Insecure         4   189
18-21 months   MAL-ED       BANGLADESH     Food Insecure               28   189
18-21 months   MAL-ED       BRAZIL         Food Secure                  3   128
18-21 months   MAL-ED       BRAZIL         Mildly Food Insecure        10   128
18-21 months   MAL-ED       BRAZIL         Food Insecure              115   128
18-21 months   MAL-ED       INDIA          Food Secure                189   210
18-21 months   MAL-ED       INDIA          Mildly Food Insecure         5   210
18-21 months   MAL-ED       INDIA          Food Insecure               16   210
18-21 months   MAL-ED       NEPAL          Food Secure                 92   126
18-21 months   MAL-ED       NEPAL          Mildly Food Insecure        15   126
18-21 months   MAL-ED       NEPAL          Food Insecure               19   126
18-21 months   MAL-ED       PERU           Food Secure                 26   103
18-21 months   MAL-ED       PERU           Mildly Food Insecure        26   103
18-21 months   MAL-ED       PERU           Food Insecure               51   103
18-21 months   MAL-ED       SOUTH AFRICA   Food Secure                125   223
18-21 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18   223
18-21 months   MAL-ED       SOUTH AFRICA   Food Insecure               80   223
18-21 months   NIH-Birth    BANGLADESH     Food Secure                 63   422
18-21 months   NIH-Birth    BANGLADESH     Mildly Food Insecure       326   422
18-21 months   NIH-Birth    BANGLADESH     Food Insecure               33   422
18-21 months   NIH-Crypto   BANGLADESH     Food Secure                341   546
18-21 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure       141   546
18-21 months   NIH-Crypto   BANGLADESH     Food Insecure               64   546
21-24 months   GMS-Nepal    NEPAL          Food Secure                245   339
21-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure        49   339
21-24 months   GMS-Nepal    NEPAL          Food Insecure               45   339
21-24 months   MAL-ED       BANGLADESH     Food Secure                156   189
21-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure         4   189
21-24 months   MAL-ED       BANGLADESH     Food Insecure               29   189
21-24 months   MAL-ED       BRAZIL         Food Secure                  3   129
21-24 months   MAL-ED       BRAZIL         Mildly Food Insecure        11   129
21-24 months   MAL-ED       BRAZIL         Food Insecure              115   129
21-24 months   MAL-ED       INDIA          Food Secure                189   211
21-24 months   MAL-ED       INDIA          Mildly Food Insecure         5   211
21-24 months   MAL-ED       INDIA          Food Insecure               17   211
21-24 months   MAL-ED       NEPAL          Food Secure                 94   128
21-24 months   MAL-ED       NEPAL          Mildly Food Insecure        15   128
21-24 months   MAL-ED       NEPAL          Food Insecure               19   128
21-24 months   MAL-ED       PERU           Food Secure                 25   102
21-24 months   MAL-ED       PERU           Mildly Food Insecure        26   102
21-24 months   MAL-ED       PERU           Food Insecure               51   102
21-24 months   MAL-ED       SOUTH AFRICA   Food Secure                128   226
21-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18   226
21-24 months   MAL-ED       SOUTH AFRICA   Food Insecure               80   226
21-24 months   NIH-Birth    BANGLADESH     Food Secure                 64   411
21-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure       317   411
21-24 months   NIH-Birth    BANGLADESH     Food Insecure               30   411
21-24 months   NIH-Crypto   BANGLADESH     Food Secure                315   490
21-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure       120   490
21-24 months   NIH-Crypto   BANGLADESH     Food Insecure               55   490


The following strata were considered:

* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL

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




# Results Detail

## Results Plots
![](/tmp/cc848c31-67c8-4bae-b4a3-fe965bac350c/a70ce95a-f8ce-42dd-b720-eef078199b0a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/cc848c31-67c8-4bae-b4a3-fe965bac350c/a70ce95a-f8ce-42dd-b720-eef078199b0a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/cc848c31-67c8-4bae-b4a3-fe965bac350c/a70ce95a-f8ce-42dd-b720-eef078199b0a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid      country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -------------  ---------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal    NEPAL          Food Secure            NA                -0.0372402   -0.0661030   -0.0083774
0-3 months     GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -0.0216378   -0.0971536    0.0538779
0-3 months     GMS-Nepal    NEPAL          Food Insecure          NA                -0.0135425   -0.0858078    0.0587228
0-3 months     MAL-ED       NEPAL          Food Secure            NA                 0.0060703   -0.0725799    0.0847205
0-3 months     MAL-ED       NEPAL          Mildly Food Insecure   NA                 0.0628501   -0.0563698    0.1820700
0-3 months     MAL-ED       NEPAL          Food Insecure          NA                 0.0427269   -0.1025753    0.1880291
0-3 months     MAL-ED       PERU           Food Secure            NA                -0.2640295   -0.3626612   -0.1653978
0-3 months     MAL-ED       PERU           Mildly Food Insecure   NA                -0.2115986   -0.2868650   -0.1363321
0-3 months     MAL-ED       PERU           Food Insecure          NA                -0.2803488   -0.3555925   -0.2051051
0-3 months     MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.1761518   -0.2459068   -0.1063967
0-3 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.2283649   -0.3872247   -0.0695051
0-3 months     MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.1910036   -0.2829113   -0.0990960
0-3 months     NIH-Birth    BANGLADESH     Food Secure            NA                -0.1884419   -0.2566507   -0.1202330
0-3 months     NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -0.2362893   -0.2667368   -0.2058419
0-3 months     NIH-Birth    BANGLADESH     Food Insecure          NA                -0.2756721   -0.3607211   -0.1906232
0-3 months     NIH-Crypto   BANGLADESH     Food Secure            NA                -0.2382033   -0.2609075   -0.2154990
0-3 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.2122488   -0.2454964   -0.1790013
0-3 months     NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.2424709   -0.2881168   -0.1968251
3-6 months     GMS-Nepal    NEPAL          Food Secure            NA                -0.1623461   -0.1850607   -0.1396315
3-6 months     GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -0.1744426   -0.2190910   -0.1297943
3-6 months     GMS-Nepal    NEPAL          Food Insecure          NA                -0.1431273   -0.1900268   -0.0962279
3-6 months     MAL-ED       INDIA          Food Secure            NA                -0.0301514   -0.0643640    0.0040611
3-6 months     MAL-ED       INDIA          Mildly Food Insecure   NA                -0.0041670   -0.0811907    0.0728568
3-6 months     MAL-ED       INDIA          Food Insecure          NA                -0.0306934   -0.1187409    0.0573541
3-6 months     MAL-ED       NEPAL          Food Secure            NA                -0.0247133   -0.0666521    0.0172256
3-6 months     MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.0648195   -0.1700907    0.0404518
3-6 months     MAL-ED       NEPAL          Food Insecure          NA                -0.0465110   -0.1359482    0.0429261
3-6 months     MAL-ED       PERU           Food Secure            NA                 0.0166716   -0.0639437    0.0972868
3-6 months     MAL-ED       PERU           Mildly Food Insecure   NA                 0.0419991   -0.0571948    0.1411930
3-6 months     MAL-ED       PERU           Food Insecure          NA                -0.0312275   -0.0988971    0.0364421
3-6 months     MAL-ED       SOUTH AFRICA   Food Secure            NA                 0.0105078   -0.0411317    0.0621474
3-6 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.0434653   -0.1440333    0.0571026
3-6 months     MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.0313201   -0.1041783    0.0415381
3-6 months     NIH-Birth    BANGLADESH     Food Secure            NA                -0.0699602   -0.1211387   -0.0187816
3-6 months     NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -0.0473091   -0.0730933   -0.0215248
3-6 months     NIH-Birth    BANGLADESH     Food Insecure          NA                -0.0507525   -0.1229011    0.0213962
3-6 months     NIH-Crypto   BANGLADESH     Food Secure            NA                 0.0251177    0.0044266    0.0458087
3-6 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                 0.0273062   -0.0043054    0.0589178
3-6 months     NIH-Crypto   BANGLADESH     Food Insecure          NA                 0.0336633   -0.0250621    0.0923886
6-9 months     GMS-Nepal    NEPAL          Food Secure            NA                -0.0458488   -0.0624942   -0.0292034
6-9 months     GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -0.0554610   -0.0895715   -0.0213505
6-9 months     GMS-Nepal    NEPAL          Food Insecure          NA                 0.0041713   -0.0845558    0.0928985
6-9 months     MAL-ED       INDIA          Food Secure            NA                -0.0725371   -0.0983169   -0.0467573
6-9 months     MAL-ED       INDIA          Mildly Food Insecure   NA                -0.0043825   -0.1293909    0.1206258
6-9 months     MAL-ED       INDIA          Food Insecure          NA                -0.0894300   -0.1574856   -0.0213743
6-9 months     MAL-ED       NEPAL          Food Secure            NA                -0.0593865   -0.0861733   -0.0325998
6-9 months     MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.0144899   -0.0875306    0.0585508
6-9 months     MAL-ED       NEPAL          Food Insecure          NA                -0.0501151   -0.1169936    0.0167633
6-9 months     MAL-ED       PERU           Food Secure            NA                -0.0941154   -0.1530557   -0.0351752
6-9 months     MAL-ED       PERU           Mildly Food Insecure   NA                -0.0718759   -0.1381203   -0.0056315
6-9 months     MAL-ED       PERU           Food Insecure          NA                -0.0295955   -0.0835114    0.0243205
6-9 months     MAL-ED       SOUTH AFRICA   Food Secure            NA                 0.0052703   -0.0327623    0.0433029
6-9 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.0968801   -0.1682796   -0.0254806
6-9 months     MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.0153150   -0.0685351    0.0379050
6-9 months     NIH-Birth    BANGLADESH     Food Secure            NA                -0.0464654   -0.0981833    0.0052525
6-9 months     NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -0.0569780   -0.0769668   -0.0369892
6-9 months     NIH-Birth    BANGLADESH     Food Insecure          NA                -0.1100984   -0.1656409   -0.0545559
6-9 months     NIH-Crypto   BANGLADESH     Food Secure            NA                -0.0212396   -0.0382733   -0.0042058
6-9 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.0426951   -0.0656430   -0.0197472
6-9 months     NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.0569931   -0.0897159   -0.0242703
9-12 months    GMS-Nepal    NEPAL          Food Secure            NA                -0.0615845   -0.0739918   -0.0491772
9-12 months    GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -0.1150919   -0.1452714   -0.0849125
9-12 months    GMS-Nepal    NEPAL          Food Insecure          NA                -0.1519849   -0.2238139   -0.0801559
9-12 months    MAL-ED       INDIA          Food Secure            NA                -0.0914195   -0.1087935   -0.0740455
9-12 months    MAL-ED       INDIA          Mildly Food Insecure   NA                -0.1200275   -0.1991801   -0.0408749
9-12 months    MAL-ED       INDIA          Food Insecure          NA                -0.1199226   -0.1825004   -0.0573448
9-12 months    MAL-ED       NEPAL          Food Secure            NA                -0.0637414   -0.0900106   -0.0374721
9-12 months    MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.0553712   -0.1054265   -0.0053160
9-12 months    MAL-ED       NEPAL          Food Insecure          NA                -0.0894696   -0.1405090   -0.0384303
9-12 months    MAL-ED       PERU           Food Secure            NA                 0.0543986   -0.0181367    0.1269340
9-12 months    MAL-ED       PERU           Mildly Food Insecure   NA                -0.1146193   -0.1638634   -0.0653752
9-12 months    MAL-ED       PERU           Food Insecure          NA                -0.0620117   -0.1070746   -0.0169489
9-12 months    MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.0894449   -0.1293094   -0.0495803
9-12 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.0693819   -0.1415312    0.0027673
9-12 months    MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.0935168   -0.1377237   -0.0493099
9-12 months    NIH-Birth    BANGLADESH     Food Secure            NA                 0.0144764   -0.0232704    0.0522231
9-12 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -0.0520867   -0.0683091   -0.0358642
9-12 months    NIH-Birth    BANGLADESH     Food Insecure          NA                -0.0597908   -0.1095550   -0.0100266
9-12 months    NIH-Crypto   BANGLADESH     Food Secure            NA                -0.0325512   -0.0465435   -0.0185590
9-12 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.0250969   -0.0458060   -0.0043878
9-12 months    NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.0661511   -0.0982116   -0.0340906
12-15 months   GMS-Nepal    NEPAL          Food Secure            NA                -0.0638834   -0.0767309   -0.0510360
12-15 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -0.0724182   -0.0996987   -0.0451378
12-15 months   GMS-Nepal    NEPAL          Food Insecure          NA                -0.0907401   -0.1250140   -0.0564662
12-15 months   MAL-ED       INDIA          Food Secure            NA                -0.0552086   -0.0721227   -0.0382945
12-15 months   MAL-ED       INDIA          Mildly Food Insecure   NA                -0.0695290   -0.1564471    0.0173891
12-15 months   MAL-ED       INDIA          Food Insecure          NA                -0.0592404   -0.1030922   -0.0153885
12-15 months   MAL-ED       NEPAL          Food Secure            NA                -0.0354062   -0.0588473   -0.0119651
12-15 months   MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.0561970   -0.1056770   -0.0067170
12-15 months   MAL-ED       NEPAL          Food Insecure          NA                -0.0219379   -0.0674613    0.0235855
12-15 months   MAL-ED       PERU           Food Secure            NA                -0.1104539   -0.1578784   -0.0630294
12-15 months   MAL-ED       PERU           Mildly Food Insecure   NA                -0.0199154   -0.0893456    0.0495148
12-15 months   MAL-ED       PERU           Food Insecure          NA                -0.0512181   -0.0889618   -0.0134745
12-15 months   MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.0385175   -0.0756901   -0.0013449
12-15 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.0971283   -0.1697183   -0.0245382
12-15 months   MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.0734610   -0.1031136   -0.0438084
12-15 months   NIH-Birth    BANGLADESH     Food Secure            NA                -0.1080200   -0.1404011   -0.0756389
12-15 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -0.1273066   -0.1478542   -0.1067590
12-15 months   NIH-Birth    BANGLADESH     Food Insecure          NA                -0.1475764   -0.1874589   -0.1076938
12-15 months   NIH-Crypto   BANGLADESH     Food Secure            NA                -0.0386122   -0.0509479   -0.0262765
12-15 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.0475038   -0.0655435   -0.0294642
12-15 months   NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.0151774   -0.0403689    0.0100141
15-18 months   GMS-Nepal    NEPAL          Food Secure            NA                -0.0674601   -0.0839052   -0.0510151
15-18 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -0.0674452   -0.0915780   -0.0433123
15-18 months   GMS-Nepal    NEPAL          Food Insecure          NA                -0.0660154   -0.0898537   -0.0421771
15-18 months   MAL-ED       INDIA          Food Secure            NA                -0.0398679   -0.0538288   -0.0259070
15-18 months   MAL-ED       INDIA          Mildly Food Insecure   NA                -0.0753306   -0.1232019   -0.0274593
15-18 months   MAL-ED       INDIA          Food Insecure          NA                -0.0420820   -0.0866725    0.0025086
15-18 months   MAL-ED       NEPAL          Food Secure            NA                -0.0515672   -0.0748461   -0.0282884
15-18 months   MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.0488846   -0.1079839    0.0102148
15-18 months   MAL-ED       NEPAL          Food Insecure          NA                -0.0733436   -0.1047062   -0.0419810
15-18 months   MAL-ED       PERU           Food Secure            NA                -0.0185262   -0.0740854    0.0370330
15-18 months   MAL-ED       PERU           Mildly Food Insecure   NA                -0.0402654   -0.0967211    0.0161904
15-18 months   MAL-ED       PERU           Food Insecure          NA                -0.0224867   -0.0500290    0.0050556
15-18 months   MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.0562375   -0.0834544   -0.0290207
15-18 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                 0.0252023   -0.0342524    0.0846569
15-18 months   MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.0061644   -0.0349565    0.0226277
15-18 months   NIH-Birth    BANGLADESH     Food Secure            NA                -0.0296613   -0.0749306    0.0156080
15-18 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -0.0564944   -0.0725498   -0.0404391
15-18 months   NIH-Birth    BANGLADESH     Food Insecure          NA                -0.1220983   -0.1664758   -0.0777208
15-18 months   NIH-Crypto   BANGLADESH     Food Secure            NA                -0.0193736   -0.0298542   -0.0088930
15-18 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.0101332   -0.0267016    0.0064353
15-18 months   NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.0198676   -0.0444102    0.0046751
18-21 months   GMS-Nepal    NEPAL          Food Secure            NA                 0.0208445    0.0055854    0.0361037
18-21 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                 0.0032404   -0.0205196    0.0270005
18-21 months   GMS-Nepal    NEPAL          Food Insecure          NA                 0.0076088   -0.0155316    0.0307492
18-21 months   MAL-ED       INDIA          Food Secure            NA                 0.0072617   -0.0051330    0.0196565
18-21 months   MAL-ED       INDIA          Mildly Food Insecure   NA                 0.0405832   -0.0250033    0.1061696
18-21 months   MAL-ED       INDIA          Food Insecure          NA                -0.0038246   -0.0452927    0.0376436
18-21 months   MAL-ED       NEPAL          Food Secure            NA                -0.0476267   -0.0666168   -0.0286366
18-21 months   MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.0309181   -0.0744598    0.0126235
18-21 months   MAL-ED       NEPAL          Food Insecure          NA                -0.0504998   -0.0900414   -0.0109582
18-21 months   MAL-ED       PERU           Food Secure            NA                -0.0062908   -0.0443418    0.0317603
18-21 months   MAL-ED       PERU           Mildly Food Insecure   NA                 0.0337779   -0.0135263    0.0810822
18-21 months   MAL-ED       PERU           Food Insecure          NA                 0.0050865   -0.0307757    0.0409486
18-21 months   MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.0272836   -0.0552516    0.0006844
18-21 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.0291370   -0.0970865    0.0388124
18-21 months   MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.0410503   -0.0712407   -0.0108598
18-21 months   NIH-Birth    BANGLADESH     Food Secure            NA                -0.0548235   -0.0893105   -0.0203364
18-21 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -0.0362451   -0.0501141   -0.0223761
18-21 months   NIH-Birth    BANGLADESH     Food Insecure          NA                -0.0281939   -0.0738877    0.0175000
18-21 months   NIH-Crypto   BANGLADESH     Food Secure            NA                -0.0280670   -0.0381630   -0.0179710
18-21 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.0307487   -0.0475107   -0.0139868
18-21 months   NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.0213205   -0.0421950   -0.0004460
21-24 months   GMS-Nepal    NEPAL          Food Secure            NA                 0.0445155    0.0248064    0.0642246
21-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                 0.0623445    0.0306247    0.0940643
21-24 months   GMS-Nepal    NEPAL          Food Insecure          NA                 0.0586373    0.0249084    0.0923662
21-24 months   MAL-ED       INDIA          Food Secure            NA                 0.0331549    0.0210271    0.0452827
21-24 months   MAL-ED       INDIA          Mildly Food Insecure   NA                 0.0283753   -0.0151527    0.0719033
21-24 months   MAL-ED       INDIA          Food Insecure          NA                -0.0059548   -0.0410314    0.0291217
21-24 months   MAL-ED       NEPAL          Food Secure            NA                 0.0078852   -0.0105801    0.0263505
21-24 months   MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.0001373   -0.0421769    0.0419024
21-24 months   MAL-ED       NEPAL          Food Insecure          NA                 0.0291971   -0.0423637    0.1007578
21-24 months   MAL-ED       PERU           Food Secure            NA                 0.0629156    0.0259283    0.0999028
21-24 months   MAL-ED       PERU           Mildly Food Insecure   NA                 0.0729940    0.0317724    0.1142156
21-24 months   MAL-ED       PERU           Food Insecure          NA                 0.0672603    0.0331653    0.1013553
21-24 months   MAL-ED       SOUTH AFRICA   Food Secure            NA                 0.0433239    0.0227209    0.0639269
21-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                 0.0074934   -0.0424982    0.0574850
21-24 months   MAL-ED       SOUTH AFRICA   Food Insecure          NA                 0.0554826    0.0215607    0.0894045
21-24 months   NIH-Birth    BANGLADESH     Food Secure            NA                 0.0521945    0.0255589    0.0788301
21-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                 0.0384061    0.0247924    0.0520197
21-24 months   NIH-Birth    BANGLADESH     Food Insecure          NA                 0.0403010   -0.0039358    0.0845377
21-24 months   NIH-Crypto   BANGLADESH     Food Secure            NA                 0.0588295    0.0485587    0.0691002
21-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                 0.0588732    0.0423184    0.0754280
21-24 months   NIH-Crypto   BANGLADESH     Food Insecure          NA                 0.0581337    0.0333936    0.0828739


### Parameter: E(Y)


agecat         studyid      country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal    NEPAL          NA                   NA                -0.0320611   -0.0574681   -0.0066541
0-3 months     MAL-ED       NEPAL          NA                   NA                 0.0168933   -0.0475781    0.0813646
0-3 months     MAL-ED       PERU           NA                   NA                -0.2591285   -0.3082030   -0.2100540
0-3 months     MAL-ED       SOUTH AFRICA   NA                   NA                -0.1867046   -0.2394747   -0.1339344
0-3 months     NIH-Birth    BANGLADESH     NA                   NA                -0.2319865   -0.2585900   -0.2053830
0-3 months     NIH-Crypto   BANGLADESH     NA                   NA                -0.2312607   -0.2486732   -0.2138483
3-6 months     GMS-Nepal    NEPAL          NA                   NA                -0.1616259   -0.1804321   -0.1428197
3-6 months     MAL-ED       INDIA          NA                   NA                -0.0295657   -0.0611153    0.0019839
3-6 months     MAL-ED       NEPAL          NA                   NA                -0.0327113   -0.0685276    0.0031050
3-6 months     MAL-ED       PERU           NA                   NA                -0.0011048   -0.0481278    0.0459182
3-6 months     MAL-ED       SOUTH AFRICA   NA                   NA                -0.0087531   -0.0486606    0.0311545
3-6 months     NIH-Birth    BANGLADESH     NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     NIH-Crypto   BANGLADESH     NA                   NA                 0.0267740    0.0099602    0.0435879
6-9 months     GMS-Nepal    NEPAL          NA                   NA                -0.0405139   -0.0581609   -0.0228669
6-9 months     MAL-ED       INDIA          NA                   NA                -0.0722015   -0.0962308   -0.0481721
6-9 months     MAL-ED       NEPAL          NA                   NA                -0.0526967   -0.0764788   -0.0289147
6-9 months     MAL-ED       PERU           NA                   NA                -0.0561945   -0.0915141   -0.0208748
6-9 months     MAL-ED       SOUTH AFRICA   NA                   NA                -0.0101309   -0.0395236    0.0192618
6-9 months     NIH-Birth    BANGLADESH     NA                   NA                -0.0595548   -0.0774135   -0.0416961
6-9 months     NIH-Crypto   BANGLADESH     NA                   NA                -0.0313638   -0.0441155   -0.0186120
9-12 months    GMS-Nepal    NEPAL          NA                   NA                -0.0809872   -0.0949069   -0.0670675
9-12 months    MAL-ED       INDIA          NA                   NA                -0.0944080   -0.1109278   -0.0778882
9-12 months    MAL-ED       NEPAL          NA                   NA                -0.0666019   -0.0881964   -0.0450073
9-12 months    MAL-ED       PERU           NA                   NA                -0.0455739   -0.0792172   -0.0119307
9-12 months    MAL-ED       SOUTH AFRICA   NA                   NA                -0.0892023   -0.1171796   -0.0612250
9-12 months    NIH-Birth    BANGLADESH     NA                   NA                -0.0424748   -0.0569242   -0.0280255
9-12 months    NIH-Crypto   BANGLADESH     NA                   NA                -0.0342995   -0.0452397   -0.0233593
12-15 months   GMS-Nepal    NEPAL          NA                   NA                -0.0682777   -0.0793293   -0.0572261
12-15 months   MAL-ED       INDIA          NA                   NA                -0.0558760   -0.0715831   -0.0401688
12-15 months   MAL-ED       NEPAL          NA                   NA                -0.0358434   -0.0552847   -0.0164020
12-15 months   MAL-ED       PERU           NA                   NA                -0.0583649   -0.0870888   -0.0296410
12-15 months   MAL-ED       SOUTH AFRICA   NA                   NA                -0.0564036   -0.0803468   -0.0324605
12-15 months   NIH-Birth    BANGLADESH     NA                   NA                -0.1259588   -0.1428870   -0.1090306
12-15 months   NIH-Crypto   BANGLADESH     NA                   NA                -0.0383313   -0.0478154   -0.0288473
15-18 months   GMS-Nepal    NEPAL          NA                   NA                -0.0672720   -0.0801009   -0.0544430
15-18 months   MAL-ED       INDIA          NA                   NA                -0.0408761   -0.0539696   -0.0277826
15-18 months   MAL-ED       NEPAL          NA                   NA                -0.0545316   -0.0735770   -0.0354862
15-18 months   MAL-ED       PERU           NA                   NA                -0.0260438   -0.0502259   -0.0018617
15-18 months   MAL-ED       SOUTH AFRICA   NA                   NA                -0.0308187   -0.0501448   -0.0114926
15-18 months   NIH-Birth    BANGLADESH     NA                   NA                -0.0576906   -0.0723785   -0.0430027
15-18 months   NIH-Crypto   BANGLADESH     NA                   NA                -0.0169074   -0.0252557   -0.0085590
18-21 months   GMS-Nepal    NEPAL          NA                   NA                 0.0166850    0.0046354    0.0287347
18-21 months   MAL-ED       INDIA          NA                   NA                 0.0072104   -0.0045271    0.0189479
18-21 months   MAL-ED       NEPAL          NA                   NA                -0.0460708   -0.0620604   -0.0300812
18-21 months   MAL-ED       PERU           NA                   NA                 0.0094570   -0.0141753    0.0330894
18-21 months   MAL-ED       SOUTH AFRICA   NA                   NA                -0.0323719   -0.0522186   -0.0125252
18-21 months   NIH-Birth    BANGLADESH     NA                   NA                -0.0383890   -0.0508204   -0.0259576
18-21 months   NIH-Crypto   BANGLADESH     NA                   NA                -0.0279687   -0.0360019   -0.0199355
21-24 months   GMS-Nepal    NEPAL          NA                   NA                 0.0489671    0.0333288    0.0646055
21-24 months   MAL-ED       INDIA          NA                   NA                 0.0298906    0.0185218    0.0412595
21-24 months   MAL-ED       NEPAL          NA                   NA                 0.0101085   -0.0078666    0.0280837
21-24 months   MAL-ED       PERU           NA                   NA                 0.0676570    0.0456639    0.0896501
21-24 months   MAL-ED       SOUTH AFRICA   NA                   NA                 0.0447741    0.0274880    0.0620602
21-24 months   NIH-Birth    BANGLADESH     NA                   NA                 0.0406915    0.0289394    0.0524435
21-24 months   NIH-Crypto   BANGLADESH     NA                   NA                 0.0587621    0.0505315    0.0669927


### Parameter: ATE


agecat         studyid      country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -------------  ---------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure        0.0156024   -0.0652413    0.0964460
0-3 months     GMS-Nepal    NEPAL          Food Insecure          Food Secure        0.0236978   -0.0541183    0.1015138
0-3 months     MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0567798   -0.0860461    0.1996057
0-3 months     MAL-ED       NEPAL          Food Insecure          Food Secure        0.0366566   -0.1285662    0.2018795
0-3 months     MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0524309   -0.0716387    0.1765004
0-3 months     MAL-ED       PERU           Food Insecure          Food Secure       -0.0163193   -0.1403751    0.1077364
0-3 months     MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0522132   -0.2257130    0.1212867
0-3 months     MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0148519   -0.1302329    0.1005291
0-3 months     NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.0478475   -0.1225435    0.0268486
0-3 months     NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.0872303   -0.1962522    0.0217917
0-3 months     NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0259544   -0.0143057    0.0662146
0-3 months     NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0042677   -0.0552483    0.0467129
3-6 months     GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.0120965   -0.0621907    0.0379976
3-6 months     GMS-Nepal    NEPAL          Food Insecure          Food Secure        0.0192188   -0.0328918    0.0713293
3-6 months     MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.0259845   -0.0582958    0.1102647
3-6 months     MAL-ED       INDIA          Food Insecure          Food Secure       -0.0005420   -0.0950029    0.0939189
3-6 months     MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0401062   -0.1534239    0.0732115
3-6 months     MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0217978   -0.1205797    0.0769841
3-6 months     MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0253276   -0.1024937    0.1531488
3-6 months     MAL-ED       PERU           Food Insecure          Food Secure       -0.0478991   -0.1531511    0.0573530
3-6 months     MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0539732   -0.1670243    0.0590780
3-6 months     MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0418279   -0.1311306    0.0474747
3-6 months     NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure        0.0226511   -0.0346558    0.0799580
3-6 months     NIH-Birth    BANGLADESH     Food Insecure          Food Secure        0.0192077   -0.0692495    0.1076649
3-6 months     NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0021885   -0.0355926    0.0399697
3-6 months     NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0085456   -0.0537182    0.0708094
6-9 months     GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.0096122   -0.0475674    0.0283430
6-9 months     GMS-Nepal    NEPAL          Food Insecure          Food Secure        0.0500202   -0.0402549    0.1402952
6-9 months     MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.0681546   -0.0594843    0.1957935
6-9 months     MAL-ED       INDIA          Food Insecure          Food Secure       -0.0168928   -0.0896676    0.0558820
6-9 months     MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0448967   -0.0329010    0.1226943
6-9 months     MAL-ED       NEPAL          Food Insecure          Food Secure        0.0092714   -0.0627721    0.0813149
6-9 months     MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0222395   -0.0664300    0.1109090
6-9 months     MAL-ED       PERU           Food Insecure          Food Secure        0.0645199   -0.0153605    0.1444004
6-9 months     MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.1021505   -0.1830477   -0.0212532
6-9 months     MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0205853   -0.0859983    0.0448276
6-9 months     NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.0105126   -0.0659589    0.0449337
6-9 months     NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.0636330   -0.1395258    0.0122597
6-9 months     NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0214555   -0.0500345    0.0071234
6-9 months     NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0357535   -0.0726443    0.0011372
9-12 months    GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.0535074   -0.0861378   -0.0208770
9-12 months    GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.0904004   -0.1632931   -0.0175077
9-12 months    MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0286080   -0.1096450    0.0524289
9-12 months    MAL-ED       INDIA          Food Insecure          Food Secure       -0.0285031   -0.0934480    0.0364418
9-12 months    MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0083701   -0.0481595    0.0648997
9-12 months    MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0257283   -0.0831312    0.0316746
9-12 months    MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.1690180   -0.2566898   -0.0813461
9-12 months    MAL-ED       PERU           Food Insecure          Food Secure       -0.1164104   -0.2018038   -0.0310170
9-12 months    MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.0200629   -0.0623670    0.1024929
9-12 months    MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0040720   -0.0635987    0.0554548
9-12 months    NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.0665630   -0.1076482   -0.0254779
9-12 months    NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.0742672   -0.1367275   -0.0118069
9-12 months    NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0074543   -0.0175387    0.0324474
9-12 months    NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0335999   -0.0685807    0.0013809
12-15 months   GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.0085348   -0.0386890    0.0216194
12-15 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.0268567   -0.0634594    0.0097460
12-15 months   MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0143204   -0.1028689    0.0742282
12-15 months   MAL-ED       INDIA          Food Insecure          Food Secure       -0.0040317   -0.0510325    0.0429691
12-15 months   MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0207908   -0.0755426    0.0339609
12-15 months   MAL-ED       NEPAL          Food Insecure          Food Secure        0.0134683   -0.0377359    0.0646724
12-15 months   MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0905385    0.0064574    0.1746196
12-15 months   MAL-ED       PERU           Food Insecure          Food Secure        0.0592358   -0.0013750    0.1198466
12-15 months   MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0586108   -0.1401651    0.0229436
12-15 months   MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0349434   -0.0824942    0.0126074
12-15 months   NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.0192866   -0.0576368    0.0190637
12-15 months   NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.0395564   -0.0909290    0.0118163
12-15 months   NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0088916   -0.0307457    0.0129624
12-15 months   NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0234348   -0.0046149    0.0514844
15-18 months   GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure        0.0000150   -0.0291884    0.0292183
15-18 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure        0.0014447   -0.0275157    0.0304051
15-18 months   MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0354627   -0.0853282    0.0144028
15-18 months   MAL-ED       INDIA          Food Insecure          Food Secure       -0.0022141   -0.0489390    0.0445109
15-18 months   MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0026827   -0.0608361    0.0662015
15-18 months   MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0217764   -0.0608342    0.0172815
15-18 months   MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.0217391   -0.1009482    0.0574699
15-18 months   MAL-ED       PERU           Food Insecure          Food Secure       -0.0039604   -0.0659717    0.0580509
15-18 months   MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.0814398    0.0160516    0.1468280
15-18 months   MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.0500731    0.0104531    0.0896931
15-18 months   NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.0268331   -0.0748653    0.0211990
15-18 months   NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.0924370   -0.1558300   -0.0290440
15-18 months   NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0092404   -0.0103646    0.0288454
15-18 months   NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0004940   -0.0271808    0.0261928
18-21 months   GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.0176041   -0.0458420    0.0106339
18-21 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.0132357   -0.0409543    0.0144828
18-21 months   MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.0333215   -0.0334259    0.1000688
18-21 months   MAL-ED       INDIA          Food Insecure          Food Secure       -0.0110863   -0.0543672    0.0321946
18-21 months   MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0167086   -0.0307940    0.0642112
18-21 months   MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0028731   -0.0467383    0.0409921
18-21 months   MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0400687   -0.0206402    0.1007776
18-21 months   MAL-ED       PERU           Food Insecure          Food Secure        0.0113772   -0.0409102    0.0636646
18-21 months   MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0018535   -0.0753337    0.0716267
18-21 months   MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0137667   -0.0549209    0.0273876
18-21 months   NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure        0.0185784   -0.0185929    0.0557497
18-21 months   NIH-Birth    BANGLADESH     Food Insecure          Food Secure        0.0266296   -0.0306180    0.0838772
18-21 months   NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0026817   -0.0222493    0.0168859
18-21 months   NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0067465   -0.0164413    0.0299343
21-24 months   GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure        0.0178290   -0.0195153    0.0551732
21-24 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure        0.0141218   -0.0249434    0.0531870
21-24 months   MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0047796   -0.0499656    0.0404063
21-24 months   MAL-ED       INDIA          Food Insecure          Food Secure       -0.0391097   -0.0762237   -0.0019958
21-24 months   MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0080225   -0.0539387    0.0378937
21-24 months   MAL-ED       NEPAL          Food Insecure          Food Secure        0.0213119   -0.0525928    0.0952165
21-24 months   MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0100785   -0.0453045    0.0654615
21-24 months   MAL-ED       PERU           Food Insecure          Food Secure        0.0043448   -0.0459595    0.0546491
21-24 months   MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0358305   -0.0899012    0.0182402
21-24 months   MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.0121587   -0.0275299    0.0518473
21-24 months   NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.0137884   -0.0437014    0.0161245
21-24 months   NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.0118935   -0.0635302    0.0397431
21-24 months   NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0000437   -0.0194383    0.0195257
21-24 months   NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0006957   -0.0274831    0.0260917


### Parameter: PAR


agecat         studyid      country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal    NEPAL          Food Secure          NA                 0.0051792   -0.0109005    0.0212589
0-3 months     MAL-ED       NEPAL          Food Secure          NA                 0.0108230   -0.0206684    0.0423143
0-3 months     MAL-ED       PERU           Food Secure          NA                 0.0049009   -0.0795587    0.0893606
0-3 months     MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0105528   -0.0603755    0.0392699
0-3 months     NIH-Birth    BANGLADESH     Food Secure          NA                -0.0435446   -0.1067562    0.0196669
0-3 months     NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0069425   -0.0074336    0.0213187
3-6 months     GMS-Nepal    NEPAL          Food Secure          NA                 0.0007202   -0.0096005    0.0110410
3-6 months     MAL-ED       INDIA          Food Secure          NA                 0.0005858   -0.0073117    0.0084832
3-6 months     MAL-ED       NEPAL          Food Secure          NA                -0.0079980   -0.0295781    0.0135820
3-6 months     MAL-ED       PERU           Food Secure          NA                -0.0177764   -0.0922639    0.0567112
3-6 months     MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0192609   -0.0547049    0.0161831
3-6 months     NIH-Birth    BANGLADESH     Food Secure          NA                 0.0190595   -0.0292810    0.0674000
3-6 months     NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0016563   -0.0125567    0.0158694
6-9 months     GMS-Nepal    NEPAL          Food Secure          NA                 0.0053349   -0.0082363    0.0189061
6-9 months     MAL-ED       INDIA          Food Secure          NA                 0.0003357   -0.0064267    0.0070980
6-9 months     MAL-ED       NEPAL          Food Secure          NA                 0.0066898   -0.0085498    0.0219294
6-9 months     MAL-ED       PERU           Food Secure          NA                 0.0379209   -0.0169975    0.0928394
6-9 months     MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0154012   -0.0412274    0.0104249
6-9 months     NIH-Birth    BANGLADESH     Food Secure          NA                -0.0130894   -0.0598658    0.0336869
6-9 months     NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0101242   -0.0202177   -0.0000307
9-12 months    GMS-Nepal    NEPAL          Food Secure          NA                -0.0194027   -0.0305562   -0.0082492
9-12 months    MAL-ED       INDIA          Food Secure          NA                -0.0029885   -0.0088446    0.0028676
9-12 months    MAL-ED       NEPAL          Food Secure          NA                -0.0028605   -0.0149328    0.0092117
9-12 months    MAL-ED       PERU           Food Secure          NA                -0.0999726   -0.1613122   -0.0386329
9-12 months    MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0002426   -0.0241747    0.0246598
9-12 months    NIH-Birth    BANGLADESH     Food Secure          NA                -0.0569512   -0.0915360   -0.0223664
9-12 months    NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0017482   -0.0106049    0.0071084
12-15 months   GMS-Nepal    NEPAL          Food Secure          NA                -0.0043942   -0.0110783    0.0022898
12-15 months   MAL-ED       INDIA          Food Secure          NA                -0.0006673   -0.0052027    0.0038680
12-15 months   MAL-ED       NEPAL          Food Secure          NA                -0.0004372   -0.0114097    0.0105352
12-15 months   MAL-ED       PERU           Food Secure          NA                 0.0520890    0.0076950    0.0964829
12-15 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0178861   -0.0392391    0.0034669
12-15 months   NIH-Birth    BANGLADESH     Food Secure          NA                -0.0179388   -0.0498953    0.0140178
12-15 months   NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0002809   -0.0076109    0.0081727
15-18 months   GMS-Nepal    NEPAL          Food Secure          NA                 0.0001882   -0.0062576    0.0066340
15-18 months   MAL-ED       INDIA          Food Secure          NA                -0.0010082   -0.0049235    0.0029070
15-18 months   MAL-ED       NEPAL          Food Secure          NA                -0.0029644   -0.0136076    0.0076789
15-18 months   MAL-ED       PERU           Food Secure          NA                -0.0075176   -0.0539644    0.0389293
15-18 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0254188    0.0077619    0.0430758
15-18 months   NIH-Birth    BANGLADESH     Food Secure          NA                -0.0280293   -0.0685795    0.0125209
15-18 months   NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0024662   -0.0042931    0.0092256
18-21 months   GMS-Nepal    NEPAL          Food Secure          NA                -0.0041595   -0.0102337    0.0019147
18-21 months   MAL-ED       INDIA          Food Secure          NA                -0.0000513   -0.0039068    0.0038042
18-21 months   MAL-ED       NEPAL          Food Secure          NA                 0.0015559   -0.0079133    0.0110251
18-21 months   MAL-ED       PERU           Food Secure          NA                 0.0157478   -0.0199650    0.0514606
18-21 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0050883   -0.0223853    0.0122086
18-21 months   NIH-Birth    BANGLADESH     Food Secure          NA                 0.0164344   -0.0150104    0.0478793
18-21 months   NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0000983   -0.0061582    0.0063547
21-24 months   GMS-Nepal    NEPAL          Food Secure          NA                 0.0044516   -0.0040060    0.0129093
21-24 months   MAL-ED       INDIA          Food Secure          NA                -0.0032643   -0.0068475    0.0003189
21-24 months   MAL-ED       NEPAL          Food Secure          NA                 0.0022233   -0.0105547    0.0150014
21-24 months   MAL-ED       PERU           Food Secure          NA                 0.0047414   -0.0296262    0.0391091
21-24 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0014502   -0.0141209    0.0170214
21-24 months   NIH-Birth    BANGLADESH     Food Secure          NA                -0.0115030   -0.0365353    0.0135293
21-24 months   NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0000674   -0.0061996    0.0060648
