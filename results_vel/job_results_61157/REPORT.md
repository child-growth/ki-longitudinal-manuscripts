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

**Outcome Variable:** y_rate_wtkg

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
* brthmon
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_vagbrth
* delta_W_nrooms
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid      country        hfoodsec                n_cell       n
-------------  -----------  -------------  ---------------------  -------  ------
0-3 months     GMS-Nepal    NEPAL          Food Secure                363     494
0-3 months     GMS-Nepal    NEPAL          Mildly Food Insecure        71     494
0-3 months     GMS-Nepal    NEPAL          Food Insecure               60     494
0-3 months     JiVitA-3     BANGLADESH     Food Secure               6566   13326
0-3 months     JiVitA-3     BANGLADESH     Mildly Food Insecure      4481   13326
0-3 months     JiVitA-3     BANGLADESH     Food Insecure             2279   13326
0-3 months     JiVitA-4     BANGLADESH     Food Secure                906    1785
0-3 months     JiVitA-4     BANGLADESH     Mildly Food Insecure       632    1785
0-3 months     JiVitA-4     BANGLADESH     Food Insecure              247    1785
0-3 months     MAL-ED       BANGLADESH     Food Secure                160     193
0-3 months     MAL-ED       BANGLADESH     Mildly Food Insecure         4     193
0-3 months     MAL-ED       BANGLADESH     Food Insecure               29     193
0-3 months     MAL-ED       BRAZIL         Food Secure                  3     129
0-3 months     MAL-ED       BRAZIL         Mildly Food Insecure        11     129
0-3 months     MAL-ED       BRAZIL         Food Insecure              115     129
0-3 months     MAL-ED       INDIA          Food Secure                187     209
0-3 months     MAL-ED       INDIA          Mildly Food Insecure         5     209
0-3 months     MAL-ED       INDIA          Food Insecure               17     209
0-3 months     MAL-ED       NEPAL          Food Secure                 92     126
0-3 months     MAL-ED       NEPAL          Mildly Food Insecure        15     126
0-3 months     MAL-ED       NEPAL          Food Insecure               19     126
0-3 months     MAL-ED       PERU           Food Secure                 27     112
0-3 months     MAL-ED       PERU           Mildly Food Insecure        29     112
0-3 months     MAL-ED       PERU           Food Insecure               56     112
0-3 months     MAL-ED       SOUTH AFRICA   Food Secure                131     231
0-3 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure        19     231
0-3 months     MAL-ED       SOUTH AFRICA   Food Insecure               81     231
0-3 months     NIH-Birth    BANGLADESH     Food Secure                 83     565
0-3 months     NIH-Birth    BANGLADESH     Mildly Food Insecure       443     565
0-3 months     NIH-Birth    BANGLADESH     Food Insecure               39     565
0-3 months     NIH-Crypto   BANGLADESH     Food Secure                431     725
0-3 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure       208     725
0-3 months     NIH-Crypto   BANGLADESH     Food Insecure               86     725
3-6 months     GMS-Nepal    NEPAL          Food Secure                336     454
3-6 months     GMS-Nepal    NEPAL          Mildly Food Insecure        62     454
3-6 months     GMS-Nepal    NEPAL          Food Insecure               56     454
3-6 months     JiVitA-3     BANGLADESH     Food Secure               6398   12719
3-6 months     JiVitA-3     BANGLADESH     Mildly Food Insecure      4215   12719
3-6 months     JiVitA-3     BANGLADESH     Food Insecure             2106   12719
3-6 months     JiVitA-4     BANGLADESH     Food Secure                926    1805
3-6 months     JiVitA-4     BANGLADESH     Mildly Food Insecure       636    1805
3-6 months     JiVitA-4     BANGLADESH     Food Insecure              243    1805
3-6 months     MAL-ED       BANGLADESH     Food Secure                156     189
3-6 months     MAL-ED       BANGLADESH     Mildly Food Insecure         4     189
3-6 months     MAL-ED       BANGLADESH     Food Insecure               29     189
3-6 months     MAL-ED       BRAZIL         Food Secure                  3     129
3-6 months     MAL-ED       BRAZIL         Mildly Food Insecure        11     129
3-6 months     MAL-ED       BRAZIL         Food Insecure              115     129
3-6 months     MAL-ED       INDIA          Food Secure                186     207
3-6 months     MAL-ED       INDIA          Mildly Food Insecure         5     207
3-6 months     MAL-ED       INDIA          Food Insecure               16     207
3-6 months     MAL-ED       NEPAL          Food Secure                 93     127
3-6 months     MAL-ED       NEPAL          Mildly Food Insecure        15     127
3-6 months     MAL-ED       NEPAL          Food Insecure               19     127
3-6 months     MAL-ED       PERU           Food Secure                 27     111
3-6 months     MAL-ED       PERU           Mildly Food Insecure        28     111
3-6 months     MAL-ED       PERU           Food Insecure               56     111
3-6 months     MAL-ED       SOUTH AFRICA   Food Secure                125     222
3-6 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     222
3-6 months     MAL-ED       SOUTH AFRICA   Food Insecure               79     222
3-6 months     NIH-Birth    BANGLADESH     Food Secure                 77     522
3-6 months     NIH-Birth    BANGLADESH     Mildly Food Insecure       406     522
3-6 months     NIH-Birth    BANGLADESH     Food Insecure               39     522
3-6 months     NIH-Crypto   BANGLADESH     Food Secure                417     702
3-6 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure       201     702
3-6 months     NIH-Crypto   BANGLADESH     Food Insecure               84     702
6-9 months     GMS-Nepal    NEPAL          Food Secure                336     463
6-9 months     GMS-Nepal    NEPAL          Mildly Food Insecure        64     463
6-9 months     GMS-Nepal    NEPAL          Food Insecure               63     463
6-9 months     JiVitA-4     BANGLADESH     Food Secure               1560    3048
6-9 months     JiVitA-4     BANGLADESH     Mildly Food Insecure      1102    3048
6-9 months     JiVitA-4     BANGLADESH     Food Insecure              386    3048
6-9 months     MAL-ED       BANGLADESH     Food Secure                155     187
6-9 months     MAL-ED       BANGLADESH     Mildly Food Insecure         4     187
6-9 months     MAL-ED       BANGLADESH     Food Insecure               28     187
6-9 months     MAL-ED       BRAZIL         Food Secure                  3     129
6-9 months     MAL-ED       BRAZIL         Mildly Food Insecure        11     129
6-9 months     MAL-ED       BRAZIL         Food Insecure              115     129
6-9 months     MAL-ED       INDIA          Food Secure                189     210
6-9 months     MAL-ED       INDIA          Mildly Food Insecure         5     210
6-9 months     MAL-ED       INDIA          Food Insecure               16     210
6-9 months     MAL-ED       NEPAL          Food Secure                 93     127
6-9 months     MAL-ED       NEPAL          Mildly Food Insecure        15     127
6-9 months     MAL-ED       NEPAL          Food Insecure               19     127
6-9 months     MAL-ED       PERU           Food Secure                 27     110
6-9 months     MAL-ED       PERU           Mildly Food Insecure        28     110
6-9 months     MAL-ED       PERU           Food Insecure               55     110
6-9 months     MAL-ED       SOUTH AFRICA   Food Secure                121     213
6-9 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17     213
6-9 months     MAL-ED       SOUTH AFRICA   Food Insecure               75     213
6-9 months     NIH-Birth    BANGLADESH     Food Secure                 75     498
6-9 months     NIH-Birth    BANGLADESH     Mildly Food Insecure       384     498
6-9 months     NIH-Birth    BANGLADESH     Food Insecure               39     498
6-9 months     NIH-Crypto   BANGLADESH     Food Secure                417     693
6-9 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure       195     693
6-9 months     NIH-Crypto   BANGLADESH     Food Insecure               81     693
9-12 months    GMS-Nepal    NEPAL          Food Secure                316     440
9-12 months    GMS-Nepal    NEPAL          Mildly Food Insecure        67     440
9-12 months    GMS-Nepal    NEPAL          Food Insecure               57     440
9-12 months    JiVitA-4     BANGLADESH     Food Secure               1787    3492
9-12 months    JiVitA-4     BANGLADESH     Mildly Food Insecure      1265    3492
9-12 months    JiVitA-4     BANGLADESH     Food Insecure              440    3492
9-12 months    MAL-ED       BANGLADESH     Food Secure                157     188
9-12 months    MAL-ED       BANGLADESH     Mildly Food Insecure         4     188
9-12 months    MAL-ED       BANGLADESH     Food Insecure               27     188
9-12 months    MAL-ED       BRAZIL         Food Secure                  3     129
9-12 months    MAL-ED       BRAZIL         Mildly Food Insecure        11     129
9-12 months    MAL-ED       BRAZIL         Food Insecure              115     129
9-12 months    MAL-ED       INDIA          Food Secure                188     210
9-12 months    MAL-ED       INDIA          Mildly Food Insecure         5     210
9-12 months    MAL-ED       INDIA          Food Insecure               17     210
9-12 months    MAL-ED       NEPAL          Food Secure                 93     127
9-12 months    MAL-ED       NEPAL          Mildly Food Insecure        15     127
9-12 months    MAL-ED       NEPAL          Food Insecure               19     127
9-12 months    MAL-ED       PERU           Food Secure                 27     108
9-12 months    MAL-ED       PERU           Mildly Food Insecure        26     108
9-12 months    MAL-ED       PERU           Food Insecure               55     108
9-12 months    MAL-ED       SOUTH AFRICA   Food Secure                119     213
9-12 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     213
9-12 months    MAL-ED       SOUTH AFRICA   Food Insecure               76     213
9-12 months    NIH-Birth    BANGLADESH     Food Secure                 74     481
9-12 months    NIH-Birth    BANGLADESH     Mildly Food Insecure       369     481
9-12 months    NIH-Birth    BANGLADESH     Food Insecure               38     481
9-12 months    NIH-Crypto   BANGLADESH     Food Secure                413     683
9-12 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure       191     683
9-12 months    NIH-Crypto   BANGLADESH     Food Insecure               79     683
12-15 months   GMS-Nepal    NEPAL          Food Secure                320     439
12-15 months   GMS-Nepal    NEPAL          Mildly Food Insecure        67     439
12-15 months   GMS-Nepal    NEPAL          Food Insecure               52     439
12-15 months   JiVitA-4     BANGLADESH     Food Secure               1797    3521
12-15 months   JiVitA-4     BANGLADESH     Mildly Food Insecure      1266    3521
12-15 months   JiVitA-4     BANGLADESH     Food Insecure              458    3521
12-15 months   MAL-ED       BANGLADESH     Food Secure                153     185
12-15 months   MAL-ED       BANGLADESH     Mildly Food Insecure         4     185
12-15 months   MAL-ED       BANGLADESH     Food Insecure               28     185
12-15 months   MAL-ED       BRAZIL         Food Secure                  3     129
12-15 months   MAL-ED       BRAZIL         Mildly Food Insecure        11     129
12-15 months   MAL-ED       BRAZIL         Food Insecure              115     129
12-15 months   MAL-ED       INDIA          Food Secure                188     210
12-15 months   MAL-ED       INDIA          Mildly Food Insecure         5     210
12-15 months   MAL-ED       INDIA          Food Insecure               17     210
12-15 months   MAL-ED       NEPAL          Food Secure                 94     128
12-15 months   MAL-ED       NEPAL          Mildly Food Insecure        15     128
12-15 months   MAL-ED       NEPAL          Food Insecure               19     128
12-15 months   MAL-ED       PERU           Food Secure                 26     106
12-15 months   MAL-ED       PERU           Mildly Food Insecure        25     106
12-15 months   MAL-ED       PERU           Food Insecure               55     106
12-15 months   MAL-ED       SOUTH AFRICA   Food Secure                115     212
12-15 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17     212
12-15 months   MAL-ED       SOUTH AFRICA   Food Insecure               80     212
12-15 months   NIH-Birth    BANGLADESH     Food Secure                 69     461
12-15 months   NIH-Birth    BANGLADESH     Mildly Food Insecure       357     461
12-15 months   NIH-Birth    BANGLADESH     Food Insecure               35     461
12-15 months   NIH-Crypto   BANGLADESH     Food Secure                395     666
12-15 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure       191     666
12-15 months   NIH-Crypto   BANGLADESH     Food Insecure               80     666
15-18 months   GMS-Nepal    NEPAL          Food Secure                337     463
15-18 months   GMS-Nepal    NEPAL          Mildly Food Insecure        66     463
15-18 months   GMS-Nepal    NEPAL          Food Insecure               60     463
15-18 months   JiVitA-4     BANGLADESH     Food Secure               1793    3484
15-18 months   JiVitA-4     BANGLADESH     Mildly Food Insecure      1235    3484
15-18 months   JiVitA-4     BANGLADESH     Food Insecure              456    3484
15-18 months   MAL-ED       BANGLADESH     Food Secure                155     187
15-18 months   MAL-ED       BANGLADESH     Mildly Food Insecure         4     187
15-18 months   MAL-ED       BANGLADESH     Food Insecure               28     187
15-18 months   MAL-ED       BRAZIL         Food Secure                  3     128
15-18 months   MAL-ED       BRAZIL         Mildly Food Insecure        10     128
15-18 months   MAL-ED       BRAZIL         Food Insecure              115     128
15-18 months   MAL-ED       INDIA          Food Secure                190     211
15-18 months   MAL-ED       INDIA          Mildly Food Insecure         5     211
15-18 months   MAL-ED       INDIA          Food Insecure               16     211
15-18 months   MAL-ED       NEPAL          Food Secure                 92     126
15-18 months   MAL-ED       NEPAL          Mildly Food Insecure        15     126
15-18 months   MAL-ED       NEPAL          Food Insecure               19     126
15-18 months   MAL-ED       PERU           Food Secure                 26     106
15-18 months   MAL-ED       PERU           Mildly Food Insecure        27     106
15-18 months   MAL-ED       PERU           Food Insecure               53     106
15-18 months   MAL-ED       SOUTH AFRICA   Food Secure                117     216
15-18 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17     216
15-18 months   MAL-ED       SOUTH AFRICA   Food Insecure               82     216
15-18 months   NIH-Birth    BANGLADESH     Food Secure                 68     449
15-18 months   NIH-Birth    BANGLADESH     Mildly Food Insecure       345     449
15-18 months   NIH-Birth    BANGLADESH     Food Insecure               36     449
15-18 months   NIH-Crypto   BANGLADESH     Food Secure                368     605
15-18 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure       166     605
15-18 months   NIH-Crypto   BANGLADESH     Food Insecure               71     605
18-21 months   GMS-Nepal    NEPAL          Food Secure                317     432
18-21 months   GMS-Nepal    NEPAL          Mildly Food Insecure        61     432
18-21 months   GMS-Nepal    NEPAL          Food Insecure               54     432
18-21 months   MAL-ED       BANGLADESH     Food Secure                157     189
18-21 months   MAL-ED       BANGLADESH     Mildly Food Insecure         4     189
18-21 months   MAL-ED       BANGLADESH     Food Insecure               28     189
18-21 months   MAL-ED       BRAZIL         Food Secure                  3     128
18-21 months   MAL-ED       BRAZIL         Mildly Food Insecure        10     128
18-21 months   MAL-ED       BRAZIL         Food Insecure              115     128
18-21 months   MAL-ED       INDIA          Food Secure                189     210
18-21 months   MAL-ED       INDIA          Mildly Food Insecure         5     210
18-21 months   MAL-ED       INDIA          Food Insecure               16     210
18-21 months   MAL-ED       NEPAL          Food Secure                 92     126
18-21 months   MAL-ED       NEPAL          Mildly Food Insecure        15     126
18-21 months   MAL-ED       NEPAL          Food Insecure               19     126
18-21 months   MAL-ED       PERU           Food Secure                 26     103
18-21 months   MAL-ED       PERU           Mildly Food Insecure        26     103
18-21 months   MAL-ED       PERU           Food Insecure               51     103
18-21 months   MAL-ED       SOUTH AFRICA   Food Secure                125     223
18-21 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     223
18-21 months   MAL-ED       SOUTH AFRICA   Food Insecure               80     223
18-21 months   NIH-Birth    BANGLADESH     Food Secure                 63     422
18-21 months   NIH-Birth    BANGLADESH     Mildly Food Insecure       326     422
18-21 months   NIH-Birth    BANGLADESH     Food Insecure               33     422
18-21 months   NIH-Crypto   BANGLADESH     Food Secure                342     547
18-21 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure       141     547
18-21 months   NIH-Crypto   BANGLADESH     Food Insecure               64     547
21-24 months   GMS-Nepal    NEPAL          Food Secure                247     340
21-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure        49     340
21-24 months   GMS-Nepal    NEPAL          Food Insecure               44     340
21-24 months   MAL-ED       BANGLADESH     Food Secure                156     189
21-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure         4     189
21-24 months   MAL-ED       BANGLADESH     Food Insecure               29     189
21-24 months   MAL-ED       BRAZIL         Food Secure                  3     129
21-24 months   MAL-ED       BRAZIL         Mildly Food Insecure        11     129
21-24 months   MAL-ED       BRAZIL         Food Insecure              115     129
21-24 months   MAL-ED       INDIA          Food Secure                189     211
21-24 months   MAL-ED       INDIA          Mildly Food Insecure         5     211
21-24 months   MAL-ED       INDIA          Food Insecure               17     211
21-24 months   MAL-ED       NEPAL          Food Secure                 94     128
21-24 months   MAL-ED       NEPAL          Mildly Food Insecure        15     128
21-24 months   MAL-ED       NEPAL          Food Insecure               19     128
21-24 months   MAL-ED       PERU           Food Secure                 25     102
21-24 months   MAL-ED       PERU           Mildly Food Insecure        26     102
21-24 months   MAL-ED       PERU           Food Insecure               51     102
21-24 months   MAL-ED       SOUTH AFRICA   Food Secure                128     226
21-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     226
21-24 months   MAL-ED       SOUTH AFRICA   Food Insecure               80     226
21-24 months   NIH-Birth    BANGLADESH     Food Secure                 64     411
21-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure       317     411
21-24 months   NIH-Birth    BANGLADESH     Food Insecure               30     411
21-24 months   NIH-Crypto   BANGLADESH     Food Secure                318     493
21-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure       120     493
21-24 months   NIH-Crypto   BANGLADESH     Food Insecure               55     493


The following strata were considered:

* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 3-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: JiVitA-4, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/2e67c699-e386-45c4-9fd3-085bad5cf85e/66027d67-a2e0-4667-bbf2-67733954fc65/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2e67c699-e386-45c4-9fd3-085bad5cf85e/66027d67-a2e0-4667-bbf2-67733954fc65/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2e67c699-e386-45c4-9fd3-085bad5cf85e/66027d67-a2e0-4667-bbf2-67733954fc65/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid      country        intervention_level     baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------  ---------------------  ---------------  ----------  -----------  ----------
0-3 months     GMS-Nepal    NEPAL          Food Secure            NA                0.8294857    0.8088542   0.8501173
0-3 months     GMS-Nepal    NEPAL          Mildly Food Insecure   NA                0.8362210    0.7782745   0.8941674
0-3 months     GMS-Nepal    NEPAL          Food Insecure          NA                0.8219238    0.7731509   0.8706967
0-3 months     JiVitA-3     BANGLADESH     Food Secure            NA                0.8792720    0.8744980   0.8840459
0-3 months     JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                0.8751989    0.8691692   0.8812286
0-3 months     JiVitA-3     BANGLADESH     Food Insecure          NA                0.8630094    0.8538283   0.8721905
0-3 months     JiVitA-4     BANGLADESH     Food Secure            NA                0.8905699    0.8764648   0.9046750
0-3 months     JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                0.8846622    0.8659241   0.9034002
0-3 months     JiVitA-4     BANGLADESH     Food Insecure          NA                0.8999430    0.8720832   0.9278028
0-3 months     MAL-ED       INDIA          Food Secure            NA                0.7583774    0.7325472   0.7842075
0-3 months     MAL-ED       INDIA          Mildly Food Insecure   NA                0.7345900    0.6098128   0.8593673
0-3 months     MAL-ED       INDIA          Food Insecure          NA                0.7766105    0.6815549   0.8716662
0-3 months     MAL-ED       NEPAL          Food Secure            NA                0.9571169    0.9124353   1.0017986
0-3 months     MAL-ED       NEPAL          Mildly Food Insecure   NA                0.9972214    0.8719937   1.1224490
0-3 months     MAL-ED       NEPAL          Food Insecure          NA                0.8868290    0.8010819   0.9725761
0-3 months     MAL-ED       PERU           Food Secure            NA                0.9479714    0.8747559   1.0211868
0-3 months     MAL-ED       PERU           Mildly Food Insecure   NA                0.9280768    0.8598255   0.9963281
0-3 months     MAL-ED       PERU           Food Insecure          NA                0.9418829    0.8778002   1.0059655
0-3 months     MAL-ED       SOUTH AFRICA   Food Secure            NA                0.9646775    0.9217956   1.0075594
0-3 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.9201317    0.8491393   0.9911241
0-3 months     MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.9179697    0.8729396   0.9629998
0-3 months     NIH-Birth    BANGLADESH     Food Secure            NA                0.8173402    0.7727536   0.8619268
0-3 months     NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                0.8244407    0.8046925   0.8441889
0-3 months     NIH-Birth    BANGLADESH     Food Insecure          NA                0.7331503    0.6706859   0.7956146
0-3 months     NIH-Crypto   BANGLADESH     Food Secure            NA                0.8938329    0.8741074   0.9135584
0-3 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.8782204    0.8520622   0.9043786
0-3 months     NIH-Crypto   BANGLADESH     Food Insecure          NA                0.8698424    0.8302847   0.9094001
3-6 months     GMS-Nepal    NEPAL          Food Secure            NA                0.4972580    0.4804103   0.5141057
3-6 months     GMS-Nepal    NEPAL          Mildly Food Insecure   NA                0.4995524    0.4641421   0.5349626
3-6 months     GMS-Nepal    NEPAL          Food Insecure          NA                0.4486620    0.4063577   0.4909663
3-6 months     JiVitA-3     BANGLADESH     Food Secure            NA                0.4430112    0.4381126   0.4479099
3-6 months     JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                0.4384563    0.4331209   0.4437917
3-6 months     JiVitA-3     BANGLADESH     Food Insecure          NA                0.4403726    0.4312683   0.4494769
3-6 months     JiVitA-4     BANGLADESH     Food Secure            NA                0.4375330    0.4274024   0.4476636
3-6 months     JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                0.4429913    0.4257762   0.4602063
3-6 months     JiVitA-4     BANGLADESH     Food Insecure          NA                0.4367468    0.4111830   0.4623105
3-6 months     MAL-ED       INDIA          Food Secure            NA                0.4470792    0.4268751   0.4672832
3-6 months     MAL-ED       INDIA          Mildly Food Insecure   NA                0.4704672    0.4215648   0.5193697
3-6 months     MAL-ED       INDIA          Food Insecure          NA                0.4545210    0.3849074   0.5241346
3-6 months     MAL-ED       NEPAL          Food Secure            NA                0.5127984    0.4810099   0.5445870
3-6 months     MAL-ED       NEPAL          Mildly Food Insecure   NA                0.4950872    0.4303969   0.5597774
3-6 months     MAL-ED       NEPAL          Food Insecure          NA                0.4576652    0.4015235   0.5138069
3-6 months     MAL-ED       PERU           Food Secure            NA                0.5358936    0.4639697   0.6078174
3-6 months     MAL-ED       PERU           Mildly Food Insecure   NA                0.4856767    0.4453456   0.5260078
3-6 months     MAL-ED       PERU           Food Insecure          NA                0.4881298    0.4403099   0.5359496
3-6 months     MAL-ED       SOUTH AFRICA   Food Secure            NA                0.4914375    0.4512417   0.5316332
3-6 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.4385504    0.3603559   0.5167449
3-6 months     MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.4294980    0.3883218   0.4706741
3-6 months     NIH-Birth    BANGLADESH     Food Secure            NA                0.4391336    0.4013740   0.4768932
3-6 months     NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                0.4596916    0.4393137   0.4800696
3-6 months     NIH-Birth    BANGLADESH     Food Insecure          NA                0.4706679    0.4028573   0.5384785
3-6 months     NIH-Crypto   BANGLADESH     Food Secure            NA                0.5037459    0.4894953   0.5179966
3-6 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.4941700    0.4720611   0.5162789
3-6 months     NIH-Crypto   BANGLADESH     Food Insecure          NA                0.4700361    0.4391791   0.5008931
6-9 months     GMS-Nepal    NEPAL          Food Secure            NA                0.1860246    0.1733061   0.1987431
6-9 months     GMS-Nepal    NEPAL          Mildly Food Insecure   NA                0.1704398    0.1305572   0.2103224
6-9 months     GMS-Nepal    NEPAL          Food Insecure          NA                0.1914670    0.1443923   0.2385417
6-9 months     JiVitA-4     BANGLADESH     Food Secure            NA                0.2378488    0.2304289   0.2452687
6-9 months     JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                0.2436232    0.2351201   0.2521264
6-9 months     JiVitA-4     BANGLADESH     Food Insecure          NA                0.2353247    0.2205886   0.2500608
6-9 months     MAL-ED       INDIA          Food Secure            NA                0.2300219    0.2130873   0.2469565
6-9 months     MAL-ED       INDIA          Mildly Food Insecure   NA                0.2193560    0.1629800   0.2757320
6-9 months     MAL-ED       INDIA          Food Insecure          NA                0.2422676    0.1886900   0.2958451
6-9 months     MAL-ED       NEPAL          Food Secure            NA                0.2683092    0.2420099   0.2946085
6-9 months     MAL-ED       NEPAL          Mildly Food Insecure   NA                0.2344412    0.2053046   0.2635777
6-9 months     MAL-ED       NEPAL          Food Insecure          NA                0.2271404    0.1783076   0.2759731
6-9 months     MAL-ED       PERU           Food Secure            NA                0.2822178    0.2359135   0.3285222
6-9 months     MAL-ED       PERU           Mildly Food Insecure   NA                0.2713884    0.2347711   0.3080057
6-9 months     MAL-ED       PERU           Food Insecure          NA                0.2459931    0.2064785   0.2855077
6-9 months     MAL-ED       SOUTH AFRICA   Food Secure            NA                0.2632826    0.2335392   0.2930260
6-9 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.1604304    0.0987724   0.2220884
6-9 months     MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.2785902    0.2422073   0.3149732
6-9 months     NIH-Birth    BANGLADESH     Food Secure            NA                0.2687181    0.2294848   0.3079514
6-9 months     NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                0.2309551    0.2167119   0.2451982
6-9 months     NIH-Birth    BANGLADESH     Food Insecure          NA                0.2380145    0.1605048   0.3155241
6-9 months     NIH-Crypto   BANGLADESH     Food Secure            NA                0.2761743    0.2619556   0.2903929
6-9 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.2530286    0.2333969   0.2726603
6-9 months     NIH-Crypto   BANGLADESH     Food Insecure          NA                0.2563464    0.2265143   0.2861784
9-12 months    GMS-Nepal    NEPAL          Food Secure            NA                0.1543144    0.1391883   0.1694405
9-12 months    GMS-Nepal    NEPAL          Mildly Food Insecure   NA                0.1449915    0.1144814   0.1755015
9-12 months    GMS-Nepal    NEPAL          Food Insecure          NA                0.1127201    0.0670439   0.1583964
9-12 months    JiVitA-4     BANGLADESH     Food Secure            NA                0.1556005    0.1496630   0.1615381
9-12 months    JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                0.1542505    0.1478423   0.1606587
9-12 months    JiVitA-4     BANGLADESH     Food Insecure          NA                0.1497043    0.1384348   0.1609737
9-12 months    MAL-ED       INDIA          Food Secure            NA                0.1784229    0.1625824   0.1942634
9-12 months    MAL-ED       INDIA          Mildly Food Insecure   NA                0.1300489    0.0622742   0.1978236
9-12 months    MAL-ED       INDIA          Food Insecure          NA                0.1675722    0.1426559   0.1924884
9-12 months    MAL-ED       NEPAL          Food Secure            NA                0.1850777    0.1587385   0.2114170
9-12 months    MAL-ED       NEPAL          Mildly Food Insecure   NA                0.2487018    0.2063991   0.2910046
9-12 months    MAL-ED       NEPAL          Food Insecure          NA                0.1958108    0.1501174   0.2415042
9-12 months    MAL-ED       PERU           Food Secure            NA                0.1551212    0.1011130   0.2091294
9-12 months    MAL-ED       PERU           Mildly Food Insecure   NA                0.2319567    0.1918859   0.2720275
9-12 months    MAL-ED       PERU           Food Insecure          NA                0.2084475    0.1724889   0.2444060
9-12 months    MAL-ED       SOUTH AFRICA   Food Secure            NA                0.2209175    0.1891357   0.2526993
9-12 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.1758571    0.1097918   0.2419223
9-12 months    MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.2147796    0.1741283   0.2554309
9-12 months    NIH-Birth    BANGLADESH     Food Secure            NA                0.2061847    0.1738009   0.2385685
9-12 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                0.1602486    0.1462678   0.1742295
9-12 months    NIH-Birth    BANGLADESH     Food Insecure          NA                0.1142572    0.0458820   0.1826325
9-12 months    NIH-Crypto   BANGLADESH     Food Secure            NA                0.1994444    0.1854588   0.2134300
9-12 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.2011265    0.1802100   0.2220431
9-12 months    NIH-Crypto   BANGLADESH     Food Insecure          NA                0.1849635    0.1574076   0.2125195
12-15 months   GMS-Nepal    NEPAL          Food Secure            NA                0.1742773    0.1580724   0.1904821
12-15 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                0.1622139    0.1298738   0.1945539
12-15 months   GMS-Nepal    NEPAL          Food Insecure          NA                0.1665167    0.1235025   0.2095309
12-15 months   JiVitA-4     BANGLADESH     Food Secure            NA                0.1290971    0.1230360   0.1351582
12-15 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                0.1319090    0.1251921   0.1386259
12-15 months   JiVitA-4     BANGLADESH     Food Insecure          NA                0.1329308    0.1242175   0.1416440
12-15 months   MAL-ED       INDIA          Food Secure            NA                0.1738987    0.1557209   0.1920766
12-15 months   MAL-ED       INDIA          Mildly Food Insecure   NA                0.1627179    0.1350688   0.1903669
12-15 months   MAL-ED       INDIA          Food Insecure          NA                0.1716918    0.1279654   0.2154182
12-15 months   MAL-ED       NEPAL          Food Secure            NA                0.1413318    0.1152888   0.1673749
12-15 months   MAL-ED       NEPAL          Mildly Food Insecure   NA                0.1167708    0.0447192   0.1888225
12-15 months   MAL-ED       NEPAL          Food Insecure          NA                0.1356329    0.0870483   0.1842175
12-15 months   MAL-ED       PERU           Food Secure            NA                0.1229945    0.0646577   0.1813314
12-15 months   MAL-ED       PERU           Mildly Food Insecure   NA                0.1397646    0.0827149   0.1968143
12-15 months   MAL-ED       PERU           Food Insecure          NA                0.1722805    0.1336242   0.2109368
12-15 months   MAL-ED       SOUTH AFRICA   Food Secure            NA                0.1863028    0.1532443   0.2193612
12-15 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.2050055    0.1010002   0.3090107
12-15 months   MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.1984003    0.1485417   0.2482590
12-15 months   NIH-Birth    BANGLADESH     Food Secure            NA                0.1511505    0.1161661   0.1861349
12-15 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                0.1272276    0.1139987   0.1404565
12-15 months   NIH-Birth    BANGLADESH     Food Insecure          NA                0.1224418    0.0757642   0.1691194
12-15 months   NIH-Crypto   BANGLADESH     Food Secure            NA                0.1643953    0.1511514   0.1776393
12-15 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.1669901    0.1442023   0.1897779
12-15 months   NIH-Crypto   BANGLADESH     Food Insecure          NA                0.1600484    0.1293899   0.1907069
15-18 months   GMS-Nepal    NEPAL          Food Secure            NA                0.2387478    0.2195838   0.2579119
15-18 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                0.2484782    0.2041502   0.2928062
15-18 months   GMS-Nepal    NEPAL          Food Insecure          NA                0.2389048    0.1996436   0.2781660
15-18 months   JiVitA-4     BANGLADESH     Food Secure            NA                0.1600480    0.1530686   0.1670273
15-18 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                0.1598487    0.1520810   0.1676163
15-18 months   JiVitA-4     BANGLADESH     Food Insecure          NA                0.1550491    0.1442708   0.1658274
15-18 months   MAL-ED       INDIA          Food Secure            NA                0.1602992    0.1434189   0.1771796
15-18 months   MAL-ED       INDIA          Mildly Food Insecure   NA                0.1739478    0.1087276   0.2391679
15-18 months   MAL-ED       INDIA          Food Insecure          NA                0.1635780    0.1220348   0.2051212
15-18 months   MAL-ED       NEPAL          Food Secure            NA                0.1710963    0.1519677   0.1902248
15-18 months   MAL-ED       NEPAL          Mildly Food Insecure   NA                0.1428961    0.0930474   0.1927449
15-18 months   MAL-ED       NEPAL          Food Insecure          NA                0.1366715    0.0809596   0.1923835
15-18 months   MAL-ED       PERU           Food Secure            NA                0.1731092    0.1232503   0.2229681
15-18 months   MAL-ED       PERU           Mildly Food Insecure   NA                0.1495046    0.0919607   0.2070485
15-18 months   MAL-ED       PERU           Food Insecure          NA                0.1207055    0.0816824   0.1597286
15-18 months   MAL-ED       SOUTH AFRICA   Food Secure            NA                0.2190454    0.1785227   0.2595681
15-18 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.2149868    0.1154187   0.3145550
15-18 months   MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.2376543    0.1882339   0.2870747
15-18 months   NIH-Birth    BANGLADESH     Food Secure            NA                0.1454458    0.1034862   0.1874055
15-18 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                0.1571570    0.1407544   0.1735595
15-18 months   NIH-Birth    BANGLADESH     Food Insecure          NA                0.1254849    0.0719119   0.1790578
15-18 months   NIH-Crypto   BANGLADESH     Food Secure            NA                0.1505406    0.1366813   0.1644000
15-18 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.1715723    0.1503157   0.1928289
15-18 months   NIH-Crypto   BANGLADESH     Food Insecure          NA                0.1834133    0.1579639   0.2088628
18-21 months   GMS-Nepal    NEPAL          Food Secure            NA                0.1318451    0.1133479   0.1503423
18-21 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                0.1555625    0.1133865   0.1977385
18-21 months   GMS-Nepal    NEPAL          Food Insecure          NA                0.1358522    0.0888359   0.1828684
18-21 months   MAL-ED       INDIA          Food Secure            NA                0.1764449    0.1597088   0.1931809
18-21 months   MAL-ED       INDIA          Mildly Food Insecure   NA                0.1299747    0.0713876   0.1885618
18-21 months   MAL-ED       INDIA          Food Insecure          NA                0.1523856    0.0987496   0.2060216
18-21 months   MAL-ED       NEPAL          Food Secure            NA                0.1848817    0.1597404   0.2100230
18-21 months   MAL-ED       NEPAL          Mildly Food Insecure   NA                0.1383347    0.0925948   0.1840746
18-21 months   MAL-ED       NEPAL          Food Insecure          NA                0.1174739    0.0715932   0.1633546
18-21 months   MAL-ED       PERU           Food Secure            NA                0.1350499    0.0693530   0.2007468
18-21 months   MAL-ED       PERU           Mildly Food Insecure   NA                0.1508879    0.1052968   0.1964790
18-21 months   MAL-ED       PERU           Food Insecure          NA                0.1762433    0.1377564   0.2147302
18-21 months   MAL-ED       SOUTH AFRICA   Food Secure            NA                0.1742047    0.1333225   0.2150869
18-21 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.1957998    0.1339635   0.2576362
18-21 months   MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.1780569    0.1357315   0.2203824
18-21 months   NIH-Birth    BANGLADESH     Food Secure            NA                0.1633953    0.1072231   0.2195674
18-21 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                0.1743737    0.1571926   0.1915548
18-21 months   NIH-Birth    BANGLADESH     Food Insecure          NA                0.1703791    0.1084006   0.2323575
18-21 months   NIH-Crypto   BANGLADESH     Food Secure            NA                0.1532299    0.1387918   0.1676681
18-21 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.1265130    0.1058819   0.1471442
18-21 months   NIH-Crypto   BANGLADESH     Food Insecure          NA                0.1179134    0.0914940   0.1443328
21-24 months   GMS-Nepal    NEPAL          Food Secure            NA                0.1771072    0.1500921   0.2041224
21-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                0.1707337    0.1030172   0.2384502
21-24 months   GMS-Nepal    NEPAL          Food Insecure          NA                0.1518392    0.0629481   0.2407302
21-24 months   MAL-ED       INDIA          Food Secure            NA                0.1610541    0.1464273   0.1756809
21-24 months   MAL-ED       INDIA          Mildly Food Insecure   NA                0.0640947   -0.0154048   0.1435943
21-24 months   MAL-ED       INDIA          Food Insecure          NA                0.1684834    0.1336166   0.2033501
21-24 months   MAL-ED       NEPAL          Food Secure            NA                0.1692102    0.1421463   0.1962742
21-24 months   MAL-ED       NEPAL          Mildly Food Insecure   NA                0.1744430    0.1125582   0.2363278
21-24 months   MAL-ED       NEPAL          Food Insecure          NA                0.2872881    0.1949085   0.3796678
21-24 months   MAL-ED       PERU           Food Secure            NA                0.1828536    0.1174036   0.2483036
21-24 months   MAL-ED       PERU           Mildly Food Insecure   NA                0.1923299    0.1510896   0.2335703
21-24 months   MAL-ED       PERU           Food Insecure          NA                0.1907910    0.1560349   0.2255471
21-24 months   MAL-ED       SOUTH AFRICA   Food Secure            NA                0.1821976    0.1468904   0.2175049
21-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.1439810    0.0516761   0.2362859
21-24 months   MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.2032575    0.1676795   0.2388355
21-24 months   NIH-Birth    BANGLADESH     Food Secure            NA                0.1483086    0.1063631   0.1902541
21-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                0.1362473    0.1189920   0.1535026
21-24 months   NIH-Birth    BANGLADESH     Food Insecure          NA                0.1917630    0.1357472   0.2477788
21-24 months   NIH-Crypto   BANGLADESH     Food Secure            NA                0.1729808    0.1562067   0.1897550
21-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.1817763    0.1584571   0.2050955
21-24 months   NIH-Crypto   BANGLADESH     Food Insecure          NA                0.1736821    0.1382908   0.2090734


### Parameter: E(Y)


agecat         studyid      country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal    NEPAL          NA                   NA                0.8272033   0.8099583   0.8444483
0-3 months     JiVitA-3     BANGLADESH     NA                   NA                0.8764023   0.8729147   0.8798899
0-3 months     JiVitA-4     BANGLADESH     NA                   NA                0.8894801   0.8788486   0.9001117
0-3 months     MAL-ED       INDIA          NA                   NA                0.7592914   0.7347074   0.7838753
0-3 months     MAL-ED       NEPAL          NA                   NA                0.9430321   0.9048227   0.9812414
0-3 months     MAL-ED       PERU           NA                   NA                0.9447947   0.9048809   0.9847084
0-3 months     MAL-ED       SOUTH AFRICA   NA                   NA                0.9452995   0.9158887   0.9747104
0-3 months     NIH-Birth    BANGLADESH     NA                   NA                0.8163500   0.7995330   0.8331670
0-3 months     NIH-Crypto   BANGLADESH     NA                   NA                0.8845220   0.8699746   0.8990694
3-6 months     GMS-Nepal    NEPAL          NA                   NA                0.4964806   0.4823933   0.5105678
3-6 months     JiVitA-3     BANGLADESH     NA                   NA                0.4413665   0.4383965   0.4443366
3-6 months     JiVitA-4     BANGLADESH     NA                   NA                0.4393291   0.4305209   0.4481373
3-6 months     MAL-ED       INDIA          NA                   NA                0.4482193   0.4292370   0.4672017
3-6 months     MAL-ED       NEPAL          NA                   NA                0.5088333   0.4833138   0.5343529
3-6 months     MAL-ED       PERU           NA                   NA                0.5019717   0.4713849   0.5325585
3-6 months     MAL-ED       SOUTH AFRICA   NA                   NA                0.4655326   0.4378428   0.4932223
3-6 months     NIH-Birth    BANGLADESH     NA                   NA                0.4593975   0.4422221   0.4765729
3-6 months     NIH-Crypto   BANGLADESH     NA                   NA                0.4980544   0.4869892   0.5091196
6-9 months     GMS-Nepal    NEPAL          NA                   NA                0.1877629   0.1753820   0.2001437
6-9 months     JiVitA-4     BANGLADESH     NA                   NA                0.2395527   0.2343020   0.2448034
6-9 months     MAL-ED       INDIA          NA                   NA                0.2307010   0.2148519   0.2465500
6-9 months     MAL-ED       NEPAL          NA                   NA                0.2618133   0.2409192   0.2827074
6-9 months     MAL-ED       PERU           NA                   NA                0.2606477   0.2361378   0.2851576
6-9 months     MAL-ED       SOUTH AFRICA   NA                   NA                0.2602443   0.2384074   0.2820812
6-9 months     NIH-Birth    BANGLADESH     NA                   NA                0.2362596   0.2225288   0.2499904
6-9 months     NIH-Crypto   BANGLADESH     NA                   NA                0.2675097   0.2569518   0.2780676
9-12 months    GMS-Nepal    NEPAL          NA                   NA                0.1447801   0.1317780   0.1577822
9-12 months    JiVitA-4     BANGLADESH     NA                   NA                0.1545249   0.1502663   0.1587836
9-12 months    MAL-ED       INDIA          NA                   NA                0.1763927   0.1619302   0.1908552
9-12 months    MAL-ED       NEPAL          NA                   NA                0.1900880   0.1689600   0.2112161
9-12 months    MAL-ED       PERU           NA                   NA                0.2027379   0.1781715   0.2273042
9-12 months    MAL-ED       SOUTH AFRICA   NA                   NA                0.2160101   0.1924536   0.2395667
9-12 months    NIH-Birth    BANGLADESH     NA                   NA                0.1636213   0.1504841   0.1767585
9-12 months    NIH-Crypto   BANGLADESH     NA                   NA                0.1978449   0.1874487   0.2082411
12-15 months   GMS-Nepal    NEPAL          NA                   NA                0.1729179   0.1594294   0.1864064
12-15 months   JiVitA-4     BANGLADESH     NA                   NA                0.1305803   0.1264067   0.1347540
12-15 months   MAL-ED       INDIA          NA                   NA                0.1734539   0.1567837   0.1901240
12-15 months   MAL-ED       NEPAL          NA                   NA                0.1367645   0.1148549   0.1586741
12-15 months   MAL-ED       PERU           NA                   NA                0.1483489   0.1228877   0.1738100
12-15 months   MAL-ED       SOUTH AFRICA   NA                   NA                0.1919076   0.1650647   0.2187506
12-15 months   NIH-Birth    BANGLADESH     NA                   NA                0.1305063   0.1184818   0.1425307
12-15 months   NIH-Crypto   BANGLADESH     NA                   NA                0.1640603   0.1535198   0.1746008
15-18 months   GMS-Nepal    NEPAL          NA                   NA                0.2366725   0.2211618   0.2521832
15-18 months   JiVitA-4     BANGLADESH     NA                   NA                0.1593626   0.1546593   0.1640658
15-18 months   MAL-ED       INDIA          NA                   NA                0.1608713   0.1452597   0.1764829
15-18 months   MAL-ED       NEPAL          NA                   NA                0.1663773   0.1495283   0.1832262
15-18 months   MAL-ED       PERU           NA                   NA                0.1412515   0.1146687   0.1678343
15-18 months   MAL-ED       SOUTH AFRICA   NA                   NA                0.2255773   0.1962117   0.2549429
15-18 months   NIH-Birth    BANGLADESH     NA                   NA                0.1529843   0.1384423   0.1675263
15-18 months   NIH-Crypto   BANGLADESH     NA                   NA                0.1611973   0.1506617   0.1717329
18-21 months   GMS-Nepal    NEPAL          NA                   NA                0.1364811   0.1212495   0.1517126
18-21 months   MAL-ED       INDIA          NA                   NA                0.1735054   0.1577790   0.1892318
18-21 months   MAL-ED       NEPAL          NA                   NA                0.1731727   0.1529675   0.1933779
18-21 months   MAL-ED       PERU           NA                   NA                0.1614004   0.1338511   0.1889497
18-21 months   MAL-ED       SOUTH AFRICA   NA                   NA                0.1795914   0.1521104   0.2070724
18-21 months   NIH-Birth    BANGLADESH     NA                   NA                0.1724392   0.1563209   0.1885575
18-21 months   NIH-Crypto   BANGLADESH     NA                   NA                0.1426609   0.1319333   0.1533885
21-24 months   GMS-Nepal    NEPAL          NA                   NA                0.1783518   0.1538068   0.2028967
21-24 months   MAL-ED       INDIA          NA                   NA                0.1593551   0.1456583   0.1730518
21-24 months   MAL-ED       NEPAL          NA                   NA                0.1795446   0.1535636   0.2055255
21-24 months   MAL-ED       PERU           NA                   NA                0.1898916   0.1619826   0.2178006
21-24 months   MAL-ED       SOUTH AFRICA   NA                   NA                0.1861341   0.1617310   0.2105371
21-24 months   NIH-Birth    BANGLADESH     NA                   NA                0.1419730   0.1267767   0.1571693
21-24 months   NIH-Crypto   BANGLADESH     NA                   NA                0.1750500   0.1624914   0.1876087


### Parameter: ATE


agecat         studyid      country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -------------  ---------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure        0.0067353   -0.0547817    0.0682522
0-3 months     GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.0075619   -0.0605586    0.0454347
0-3 months     JiVitA-3     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0040731   -0.0114566    0.0033104
0-3 months     JiVitA-3     BANGLADESH     Food Insecure          Food Secure       -0.0162626   -0.0262281   -0.0062970
0-3 months     JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0059078   -0.0290643    0.0172488
0-3 months     JiVitA-4     BANGLADESH     Food Insecure          Food Secure        0.0093731   -0.0214006    0.0401468
0-3 months     MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0237873   -0.1512101    0.1036354
0-3 months     MAL-ED       INDIA          Food Insecure          Food Secure        0.0182332   -0.0802695    0.1167358
0-3 months     MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0401044   -0.0936348    0.1738436
0-3 months     MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0702879   -0.1675237    0.0269478
0-3 months     MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.0198946   -0.1211005    0.0813114
0-3 months     MAL-ED       PERU           Food Insecure          Food Secure       -0.0060885   -0.1032419    0.0910649
0-3 months     MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0445459   -0.1275726    0.0384809
0-3 months     MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0467078   -0.1089747    0.0155590
0-3 months     NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure        0.0071005   -0.0418265    0.0560274
0-3 months     NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.0841900   -0.1611277   -0.0072522
0-3 months     NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0156125   -0.0479671    0.0167422
0-3 months     NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0239905   -0.0680446    0.0200636
3-6 months     GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure        0.0022944   -0.0370384    0.0416272
3-6 months     GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.0485960   -0.0942008   -0.0029912
3-6 months     JiVitA-3     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0045549   -0.0115989    0.0024890
3-6 months     JiVitA-3     BANGLADESH     Food Insecure          Food Secure       -0.0026386   -0.0128603    0.0075830
3-6 months     JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure        0.0054583   -0.0143215    0.0252380
3-6 months     JiVitA-4     BANGLADESH     Food Insecure          Food Secure       -0.0007863   -0.0281473    0.0265748
3-6 months     MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.0233881   -0.0295237    0.0762998
3-6 months     MAL-ED       INDIA          Food Insecure          Food Secure        0.0074418   -0.0650445    0.0799280
3-6 months     MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0177113   -0.0896393    0.0542167
3-6 months     MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0551332   -0.1201173    0.0098508
3-6 months     MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.0502169   -0.1326087    0.0321748
3-6 months     MAL-ED       PERU           Food Insecure          Food Secure       -0.0477638   -0.1343945    0.0388668
3-6 months     MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0528871   -0.1410596    0.0352854
3-6 months     MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0619395   -0.1193889   -0.0044902
3-6 months     NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure        0.0205580   -0.0225289    0.0636449
3-6 months     NIH-Birth    BANGLADESH     Food Insecure          Food Secure        0.0315343   -0.0461246    0.1091932
3-6 months     NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0095759   -0.0358998    0.0167480
3-6 months     NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0337098   -0.0676470    0.0002274
6-9 months     GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.0155848   -0.0580249    0.0268552
6-9 months     GMS-Nepal    NEPAL          Food Insecure          Food Secure        0.0054424   -0.0431690    0.0540538
6-9 months     JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure        0.0057744   -0.0053510    0.0168999
6-9 months     JiVitA-4     BANGLADESH     Food Insecure          Food Secure       -0.0025241   -0.0192616    0.0142133
6-9 months     MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0106659   -0.0695305    0.0481986
6-9 months     MAL-ED       INDIA          Food Insecure          Food Secure        0.0122457   -0.0439445    0.0684358
6-9 months     MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0338680   -0.0728011    0.0050650
6-9 months     MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0411688   -0.0970474    0.0147097
6-9 months     MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.0108295   -0.0698176    0.0481587
6-9 months     MAL-ED       PERU           Food Insecure          Food Secure       -0.0362247   -0.0972138    0.0247643
6-9 months     MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.1028522   -0.1713504   -0.0343541
6-9 months     MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.0153076   -0.0318434    0.0624586
6-9 months     NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.0377630   -0.0794574    0.0039313
6-9 months     NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.0307036   -0.1178277    0.0564205
6-9 months     NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0231457   -0.0472310    0.0009396
6-9 months     NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0198279   -0.0528422    0.0131864
9-12 months    GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.0093229   -0.0435704    0.0249245
9-12 months    GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.0415943   -0.0898653    0.0066768
9-12 months    JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0013500   -0.0099004    0.0072004
9-12 months    JiVitA-4     BANGLADESH     Food Insecure          Food Secure       -0.0058963   -0.0181681    0.0063755
9-12 months    MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0483740   -0.1179752    0.0212272
9-12 months    MAL-ED       INDIA          Food Insecure          Food Secure       -0.0108507   -0.0403760    0.0186746
9-12 months    MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0636241    0.0138373    0.1134109
9-12 months    MAL-ED       NEPAL          Food Insecure          Food Secure        0.0107331   -0.0417439    0.0632101
9-12 months    MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0768355    0.0097416    0.1439293
9-12 months    MAL-ED       PERU           Food Insecure          Food Secure        0.0533263   -0.0122965    0.1189491
9-12 months    MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0450605   -0.1184190    0.0282980
9-12 months    MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0061379   -0.0579641    0.0456883
9-12 months    NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.0459361   -0.0810889   -0.0107832
9-12 months    NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.0919275   -0.1674345   -0.0164204
9-12 months    NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0016821   -0.0233482    0.0267124
9-12 months    NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0144809   -0.0452346    0.0162728
12-15 months   GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.0120634   -0.0481731    0.0240463
12-15 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.0077606   -0.0537554    0.0382342
12-15 months   JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure        0.0028119   -0.0058801    0.0115040
12-15 months   JiVitA-4     BANGLADESH     Food Insecure          Food Secure        0.0038337   -0.0068623    0.0145297
12-15 months   MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0111809   -0.0442703    0.0219085
12-15 months   MAL-ED       INDIA          Food Insecure          Food Secure       -0.0022070   -0.0495613    0.0451474
12-15 months   MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0245610   -0.1009476    0.0518257
12-15 months   MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0056989   -0.0609060    0.0495082
12-15 months   MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0167700   -0.0662062    0.0997462
12-15 months   MAL-ED       PERU           Food Insecure          Food Secure        0.0492859   -0.0222878    0.1208597
12-15 months   MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.0187027   -0.0905150    0.1279204
12-15 months   MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.0120975   -0.0478371    0.0720322
12-15 months   NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.0239229   -0.0607216    0.0128759
12-15 months   NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.0287087   -0.0868803    0.0294629
12-15 months   NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0025948   -0.0237568    0.0289463
12-15 months   NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0043470   -0.0377963    0.0291024
15-18 months   GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure        0.0097304   -0.0385020    0.0579628
15-18 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure        0.0001570   -0.0435901    0.0439040
15-18 months   JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0001993   -0.0108159    0.0104173
15-18 months   JiVitA-4     BANGLADESH     Food Insecure          Food Secure       -0.0049989   -0.0175581    0.0075603
15-18 months   MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.0136485   -0.0537207    0.0810178
15-18 months   MAL-ED       INDIA          Food Insecure          Food Secure        0.0032788   -0.0415630    0.0481205
15-18 months   MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0282001   -0.0813841    0.0249839
15-18 months   MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0344248   -0.0932512    0.0244017
15-18 months   MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.0236046   -0.0998495    0.0526404
15-18 months   MAL-ED       PERU           Food Insecure          Food Secure       -0.0524036   -0.1158579    0.0110507
15-18 months   MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0040585   -0.1117836    0.1036665
15-18 months   MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.0186089   -0.0453419    0.0825597
15-18 months   NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure        0.0117111   -0.0331632    0.0565854
15-18 months   NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.0199610   -0.0877036    0.0477817
15-18 months   NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0210317   -0.0044120    0.0464753
15-18 months   NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0328727    0.0038895    0.0618558
18-21 months   GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure        0.0237174   -0.0223896    0.0698244
18-21 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure        0.0040071   -0.0465210    0.0545352
18-21 months   MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0464702   -0.1074008    0.0144605
18-21 months   MAL-ED       INDIA          Food Insecure          Food Secure       -0.0240593   -0.0802458    0.0321271
18-21 months   MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0465470   -0.0987380    0.0056441
18-21 months   MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0674078   -0.1201819   -0.0146337
18-21 months   MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0158380   -0.0637266    0.0954026
18-21 months   MAL-ED       PERU           Food Insecure          Food Secure        0.0411934   -0.0345576    0.1169443
18-21 months   MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.0215951   -0.0524315    0.0956217
18-21 months   MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.0038522   -0.0548224    0.0625268
18-21 months   NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure        0.0109784   -0.0476579    0.0696147
18-21 months   NIH-Birth    BANGLADESH     Food Insecure          Food Secure        0.0069838   -0.0767034    0.0906710
18-21 months   NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0267169   -0.0518881   -0.0015457
18-21 months   NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0353166   -0.0654321   -0.0052010
21-24 months   GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.0063736   -0.0791776    0.0664304
21-24 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.0252681   -0.1183535    0.0678174
21-24 months   MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0969594   -0.1777933   -0.0161255
21-24 months   MAL-ED       INDIA          Food Insecure          Food Secure        0.0074293   -0.0303813    0.0452398
21-24 months   MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0052328   -0.0621763    0.0726418
21-24 months   MAL-ED       NEPAL          Food Insecure          Food Secure        0.1180779    0.0212814    0.2148744
21-24 months   MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0094763   -0.0686797    0.0876324
21-24 months   MAL-ED       PERU           Food Insecure          Food Secure        0.0079374   -0.0661268    0.0820016
21-24 months   MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0382166   -0.1371412    0.0607079
21-24 months   MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.0210599   -0.0291446    0.0712644
21-24 months   NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.0120613   -0.0574615    0.0333389
21-24 months   NIH-Birth    BANGLADESH     Food Insecure          Food Secure        0.0434544   -0.0265426    0.1134514
21-24 months   NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0087955   -0.0198369    0.0374279
21-24 months   NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0007012   -0.0383313    0.0397338


### Parameter: PAR


agecat         studyid      country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal    NEPAL          Food Secure          NA                -0.0022825   -0.0139219    0.0093570
0-3 months     JiVitA-3     BANGLADESH     Food Secure          NA                -0.0028697   -0.0065365    0.0007971
0-3 months     JiVitA-4     BANGLADESH     Food Secure          NA                -0.0010898   -0.0111712    0.0089917
0-3 months     MAL-ED       INDIA          Food Secure          NA                 0.0009140   -0.0078973    0.0097253
0-3 months     MAL-ED       NEPAL          Food Secure          NA                -0.0140849   -0.0380815    0.0099118
0-3 months     MAL-ED       PERU           Food Secure          NA                -0.0031767   -0.0699731    0.0636197
0-3 months     MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0193780   -0.0448630    0.0061070
0-3 months     NIH-Birth    BANGLADESH     Food Secure          NA                -0.0009902   -0.0425001    0.0405196
0-3 months     NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0093110   -0.0210493    0.0024273
3-6 months     GMS-Nepal    NEPAL          Food Secure          NA                -0.0007774   -0.0095533    0.0079985
3-6 months     JiVitA-3     BANGLADESH     Food Secure          NA                -0.0016447   -0.0052097    0.0019203
3-6 months     JiVitA-4     BANGLADESH     Food Secure          NA                 0.0017961   -0.0066455    0.0102378
3-6 months     MAL-ED       INDIA          Food Secure          NA                 0.0011401   -0.0047717    0.0070520
3-6 months     MAL-ED       NEPAL          Food Secure          NA                -0.0039651   -0.0181111    0.0101809
3-6 months     MAL-ED       PERU           Food Secure          NA                -0.0339219   -0.0951379    0.0272941
3-6 months     MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0259049   -0.0501497   -0.0016601
3-6 months     NIH-Birth    BANGLADESH     Food Secure          NA                 0.0202639   -0.0163294    0.0568572
3-6 months     NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0056915   -0.0150005    0.0036174
6-9 months     GMS-Nepal    NEPAL          Food Secure          NA                 0.0017382   -0.0089446    0.0124211
6-9 months     JiVitA-4     BANGLADESH     Food Secure          NA                 0.0017039   -0.0034070    0.0068148
6-9 months     MAL-ED       INDIA          Food Secure          NA                 0.0006791   -0.0039867    0.0053448
6-9 months     MAL-ED       NEPAL          Food Secure          NA                -0.0064959   -0.0175148    0.0045230
6-9 months     MAL-ED       PERU           Food Secure          NA                -0.0215702   -0.0631762    0.0200359
6-9 months     MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0030383   -0.0224010    0.0163244
6-9 months     NIH-Birth    BANGLADESH     Food Secure          NA                -0.0324585   -0.0687310    0.0038140
6-9 months     NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0086646   -0.0173899    0.0000606
9-12 months    GMS-Nepal    NEPAL          Food Secure          NA                -0.0095343   -0.0185109   -0.0005577
9-12 months    JiVitA-4     BANGLADESH     Food Secure          NA                -0.0010756   -0.0049078    0.0027566
9-12 months    MAL-ED       INDIA          Food Secure          NA                -0.0020302   -0.0053190    0.0012587
9-12 months    MAL-ED       NEPAL          Food Secure          NA                 0.0050103   -0.0061238    0.0161444
9-12 months    MAL-ED       PERU           Food Secure          NA                 0.0476167    0.0007095    0.0945238
9-12 months    MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0049074   -0.0262303    0.0164155
9-12 months    NIH-Birth    BANGLADESH     Food Secure          NA                -0.0425634   -0.0727389   -0.0123879
9-12 months    NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0015995   -0.0103136    0.0071146
12-15 months   GMS-Nepal    NEPAL          Food Secure          NA                -0.0013593   -0.0089855    0.0062668
12-15 months   JiVitA-4     BANGLADESH     Food Secure          NA                 0.0014833   -0.0023807    0.0053472
12-15 months   MAL-ED       INDIA          Food Secure          NA                -0.0004449   -0.0045305    0.0036408
12-15 months   MAL-ED       NEPAL          Food Secure          NA                -0.0045673   -0.0164194    0.0072847
12-15 months   MAL-ED       PERU           Food Secure          NA                 0.0253543   -0.0279853    0.0786939
12-15 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0056048   -0.0196998    0.0309095
12-15 months   NIH-Birth    BANGLADESH     Food Secure          NA                -0.0206443   -0.0522114    0.0109229
12-15 months   NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0003351   -0.0093974    0.0087273
15-18 months   GMS-Nepal    NEPAL          Food Secure          NA                -0.0020753   -0.0123467    0.0081960
15-18 months   JiVitA-4     BANGLADESH     Food Secure          NA                -0.0006854   -0.0052724    0.0039015
15-18 months   MAL-ED       INDIA          Food Secure          NA                 0.0005721   -0.0033642    0.0045084
15-18 months   MAL-ED       NEPAL          Food Secure          NA                -0.0047190   -0.0155180    0.0060800
15-18 months   MAL-ED       PERU           Food Secure          NA                -0.0318576   -0.0792528    0.0155375
15-18 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0065320   -0.0208054    0.0338693
15-18 months   NIH-Birth    BANGLADESH     Food Secure          NA                 0.0075384   -0.0311652    0.0462420
15-18 months   NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0106566    0.0020540    0.0192593
18-21 months   GMS-Nepal    NEPAL          Food Secure          NA                 0.0046360   -0.0051296    0.0144015
18-21 months   MAL-ED       INDIA          Food Secure          NA                -0.0029395   -0.0077606    0.0018816
18-21 months   MAL-ED       NEPAL          Food Secure          NA                -0.0117090   -0.0229867   -0.0004313
18-21 months   MAL-ED       PERU           Food Secure          NA                 0.0263505   -0.0272187    0.0799196
18-21 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0053867   -0.0183194    0.0290927
18-21 months   NIH-Birth    BANGLADESH     Food Secure          NA                 0.0090440   -0.0411877    0.0592756
18-21 months   NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0105690   -0.0188773   -0.0022607
21-24 months   GMS-Nepal    NEPAL          Food Secure          NA                 0.0012446   -0.0152127    0.0177018
21-24 months   MAL-ED       INDIA          Food Secure          NA                -0.0016991   -0.0059735    0.0025754
21-24 months   MAL-ED       NEPAL          Food Secure          NA                 0.0103343   -0.0083144    0.0289830
21-24 months   MAL-ED       PERU           Food Secure          NA                 0.0070380   -0.0438188    0.0578947
21-24 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0039365   -0.0174309    0.0253038
21-24 months   NIH-Birth    BANGLADESH     Food Secure          NA                -0.0063356   -0.0448014    0.0321302
21-24 months   NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0020692   -0.0070709    0.0112093
