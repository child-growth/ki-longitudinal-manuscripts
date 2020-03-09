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

**Outcome Variable:** y_rate_len

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
0-3 months     GMS-Nepal    NEPAL          Food Secure                361     493
0-3 months     GMS-Nepal    NEPAL          Mildly Food Insecure        71     493
0-3 months     GMS-Nepal    NEPAL          Food Insecure               61     493
0-3 months     JiVitA-3     BANGLADESH     Food Secure               6442   13054
0-3 months     JiVitA-3     BANGLADESH     Mildly Food Insecure      4389   13054
0-3 months     JiVitA-3     BANGLADESH     Food Insecure             2223   13054
0-3 months     JiVitA-4     BANGLADESH     Food Secure                914    1796
0-3 months     JiVitA-4     BANGLADESH     Mildly Food Insecure       634    1796
0-3 months     JiVitA-4     BANGLADESH     Food Insecure              248    1796
0-3 months     MAL-ED       BANGLADESH     Food Secure                160     192
0-3 months     MAL-ED       BANGLADESH     Mildly Food Insecure         4     192
0-3 months     MAL-ED       BANGLADESH     Food Insecure               28     192
0-3 months     MAL-ED       BRAZIL         Food Secure                  0     101
0-3 months     MAL-ED       BRAZIL         Mildly Food Insecure        10     101
0-3 months     MAL-ED       BRAZIL         Food Insecure               91     101
0-3 months     MAL-ED       INDIA          Food Secure                146     158
0-3 months     MAL-ED       INDIA          Mildly Food Insecure         2     158
0-3 months     MAL-ED       INDIA          Food Insecure               10     158
0-3 months     MAL-ED       NEPAL          Food Secure                 65      86
0-3 months     MAL-ED       NEPAL          Mildly Food Insecure         8      86
0-3 months     MAL-ED       NEPAL          Food Insecure               13      86
0-3 months     MAL-ED       PERU           Food Secure                 27     105
0-3 months     MAL-ED       PERU           Mildly Food Insecure        26     105
0-3 months     MAL-ED       PERU           Food Insecure               52     105
0-3 months     MAL-ED       SOUTH AFRICA   Food Secure                 94     177
0-3 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17     177
0-3 months     MAL-ED       SOUTH AFRICA   Food Insecure               66     177
0-3 months     NIH-Birth    BANGLADESH     Food Secure                 83     566
0-3 months     NIH-Birth    BANGLADESH     Mildly Food Insecure       444     566
0-3 months     NIH-Birth    BANGLADESH     Food Insecure               39     566
0-3 months     NIH-Crypto   BANGLADESH     Food Secure                428     721
0-3 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure       207     721
0-3 months     NIH-Crypto   BANGLADESH     Food Insecure               86     721
3-6 months     GMS-Nepal    NEPAL          Food Secure                335     453
3-6 months     GMS-Nepal    NEPAL          Mildly Food Insecure        62     453
3-6 months     GMS-Nepal    NEPAL          Food Insecure               56     453
3-6 months     JiVitA-3     BANGLADESH     Food Secure               6326   12580
3-6 months     JiVitA-3     BANGLADESH     Mildly Food Insecure      4174   12580
3-6 months     JiVitA-3     BANGLADESH     Food Insecure             2080   12580
3-6 months     JiVitA-4     BANGLADESH     Food Secure                937    1826
3-6 months     JiVitA-4     BANGLADESH     Mildly Food Insecure       645    1826
3-6 months     JiVitA-4     BANGLADESH     Food Insecure              244    1826
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
3-6 months     NIH-Birth    BANGLADESH     Food Secure                 77     523
3-6 months     NIH-Birth    BANGLADESH     Mildly Food Insecure       407     523
3-6 months     NIH-Birth    BANGLADESH     Food Insecure               39     523
3-6 months     NIH-Crypto   BANGLADESH     Food Secure                413     695
3-6 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure       198     695
3-6 months     NIH-Crypto   BANGLADESH     Food Insecure               84     695
6-9 months     GMS-Nepal    NEPAL          Food Secure                340     466
6-9 months     GMS-Nepal    NEPAL          Mildly Food Insecure        64     466
6-9 months     GMS-Nepal    NEPAL          Food Insecure               62     466
6-9 months     JiVitA-4     BANGLADESH     Food Secure               1552    3029
6-9 months     JiVitA-4     BANGLADESH     Mildly Food Insecure      1095    3029
6-9 months     JiVitA-4     BANGLADESH     Food Insecure              382    3029
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
6-9 months     NIH-Crypto   BANGLADESH     Food Secure                416     688
6-9 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure       193     688
6-9 months     NIH-Crypto   BANGLADESH     Food Insecure               79     688
9-12 months    GMS-Nepal    NEPAL          Food Secure                330     455
9-12 months    GMS-Nepal    NEPAL          Mildly Food Insecure        67     455
9-12 months    GMS-Nepal    NEPAL          Food Insecure               58     455
9-12 months    JiVitA-4     BANGLADESH     Food Secure               1777    3474
9-12 months    JiVitA-4     BANGLADESH     Mildly Food Insecure      1258    3474
9-12 months    JiVitA-4     BANGLADESH     Food Insecure              439    3474
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
9-12 months    NIH-Birth    BANGLADESH     Food Secure                 74     482
9-12 months    NIH-Birth    BANGLADESH     Mildly Food Insecure       370     482
9-12 months    NIH-Birth    BANGLADESH     Food Insecure               38     482
9-12 months    NIH-Crypto   BANGLADESH     Food Secure                408     674
9-12 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure       189     674
9-12 months    NIH-Crypto   BANGLADESH     Food Insecure               77     674
12-15 months   GMS-Nepal    NEPAL          Food Secure                335     456
12-15 months   GMS-Nepal    NEPAL          Mildly Food Insecure        68     456
12-15 months   GMS-Nepal    NEPAL          Food Insecure               53     456
12-15 months   JiVitA-4     BANGLADESH     Food Secure               1795    3518
12-15 months   JiVitA-4     BANGLADESH     Mildly Food Insecure      1264    3518
12-15 months   JiVitA-4     BANGLADESH     Food Insecure              459    3518
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
12-15 months   NIH-Crypto   BANGLADESH     Food Secure                390     660
12-15 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure       190     660
12-15 months   NIH-Crypto   BANGLADESH     Food Insecure               80     660
15-18 months   GMS-Nepal    NEPAL          Food Secure                339     466
15-18 months   GMS-Nepal    NEPAL          Mildly Food Insecure        67     466
15-18 months   GMS-Nepal    NEPAL          Food Insecure               60     466
15-18 months   JiVitA-4     BANGLADESH     Food Secure               1810    3523
15-18 months   JiVitA-4     BANGLADESH     Mildly Food Insecure      1255    3523
15-18 months   JiVitA-4     BANGLADESH     Food Insecure              458    3523
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
15-18 months   NIH-Crypto   BANGLADESH     Food Secure                368     604
15-18 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure       165     604
15-18 months   NIH-Crypto   BANGLADESH     Food Insecure               71     604
18-21 months   GMS-Nepal    NEPAL          Food Secure                315     430
18-21 months   GMS-Nepal    NEPAL          Mildly Food Insecure        61     430
18-21 months   GMS-Nepal    NEPAL          Food Insecure               54     430
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
18-21 months   NIH-Crypto   BANGLADESH     Food Secure                341     546
18-21 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure       141     546
18-21 months   NIH-Crypto   BANGLADESH     Food Insecure               64     546
21-24 months   GMS-Nepal    NEPAL          Food Secure                245     339
21-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure        49     339
21-24 months   GMS-Nepal    NEPAL          Food Insecure               45     339
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
21-24 months   NIH-Crypto   BANGLADESH     Food Secure                315     490
21-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure       120     490
21-24 months   NIH-Crypto   BANGLADESH     Food Insecure               55     490


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




# Results Detail

## Results Plots
![](/tmp/62e98483-b1a4-408e-b6f6-c50ad3aa94b7/304eead2-3b39-4369-9635-f331bac6576e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/62e98483-b1a4-408e-b6f6-c50ad3aa94b7/304eead2-3b39-4369-9635-f331bac6576e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/62e98483-b1a4-408e-b6f6-c50ad3aa94b7/304eead2-3b39-4369-9635-f331bac6576e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid      country        intervention_level     baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------  ---------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal    NEPAL          Food Secure            NA                3.5841775   3.5256734   3.6426815
0-3 months     GMS-Nepal    NEPAL          Mildly Food Insecure   NA                3.6197304   3.4607213   3.7787395
0-3 months     GMS-Nepal    NEPAL          Food Insecure          NA                3.7070689   3.5164890   3.8976489
0-3 months     JiVitA-3     BANGLADESH     Food Secure            NA                3.7295413   3.7125514   3.7465312
0-3 months     JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                3.7297245   3.7081413   3.7513078
0-3 months     JiVitA-3     BANGLADESH     Food Insecure          NA                3.6898595   3.6577443   3.7219747
0-3 months     JiVitA-4     BANGLADESH     Food Secure            NA                3.6574770   3.6133797   3.7015742
0-3 months     JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                3.6067557   3.5581337   3.6553777
0-3 months     JiVitA-4     BANGLADESH     Food Insecure          NA                3.6605600   3.5613057   3.7598143
0-3 months     MAL-ED       NEPAL          Food Secure            NA                3.5248146   3.3677108   3.6819185
0-3 months     MAL-ED       NEPAL          Mildly Food Insecure   NA                3.6202237   3.3114210   3.9290264
0-3 months     MAL-ED       NEPAL          Food Insecure          NA                3.5269210   3.2344771   3.8193649
0-3 months     MAL-ED       PERU           Food Secure            NA                3.0959491   2.9065719   3.2853263
0-3 months     MAL-ED       PERU           Mildly Food Insecure   NA                3.0835870   2.9053278   3.2618461
0-3 months     MAL-ED       PERU           Food Insecure          NA                3.0409123   2.8877274   3.1940971
0-3 months     MAL-ED       SOUTH AFRICA   Food Secure            NA                3.1984347   3.0614912   3.3353781
0-3 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                3.0314665   2.7086431   3.3542900
0-3 months     MAL-ED       SOUTH AFRICA   Food Insecure          NA                3.1577733   2.9686411   3.3469055
0-3 months     NIH-Birth    BANGLADESH     Food Secure            NA                3.1794795   3.0337333   3.3252256
0-3 months     NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                3.1049869   3.0441778   3.1657959
0-3 months     NIH-Birth    BANGLADESH     Food Insecure          NA                2.9619842   2.7965561   3.1274123
0-3 months     NIH-Crypto   BANGLADESH     Food Secure            NA                3.1199979   3.0720598   3.1679360
0-3 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                3.1529250   3.0825490   3.2233010
0-3 months     NIH-Crypto   BANGLADESH     Food Insecure          NA                3.1210589   3.0207199   3.2213980
3-6 months     GMS-Nepal    NEPAL          Food Secure            NA                1.7131404   1.6639886   1.7622923
3-6 months     GMS-Nepal    NEPAL          Mildly Food Insecure   NA                1.6460019   1.5308387   1.7611650
3-6 months     GMS-Nepal    NEPAL          Food Insecure          NA                1.7751418   1.6510067   1.8992769
3-6 months     JiVitA-3     BANGLADESH     Food Secure            NA                1.9267364   1.9099147   1.9435581
3-6 months     JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                1.9092010   1.8899961   1.9284059
3-6 months     JiVitA-3     BANGLADESH     Food Insecure          NA                1.9254810   1.8985013   1.9524607
3-6 months     JiVitA-4     BANGLADESH     Food Secure            NA                1.9012793   1.8592065   1.9433521
3-6 months     JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                1.9205203   1.8750385   1.9660021
3-6 months     JiVitA-4     BANGLADESH     Food Insecure          NA                1.8320310   1.7487848   1.9152772
3-6 months     MAL-ED       INDIA          Food Secure            NA                1.9057734   1.8324276   1.9791193
3-6 months     MAL-ED       INDIA          Mildly Food Insecure   NA                1.9760085   1.7764851   2.1755318
3-6 months     MAL-ED       INDIA          Food Insecure          NA                1.9164151   1.7198912   2.1129390
3-6 months     MAL-ED       NEPAL          Food Secure            NA                1.9512594   1.8622767   2.0402421
3-6 months     MAL-ED       NEPAL          Mildly Food Insecure   NA                1.8840708   1.6506202   2.1175213
3-6 months     MAL-ED       NEPAL          Food Insecure          NA                1.8702024   1.6482433   2.0921616
3-6 months     MAL-ED       PERU           Food Secure            NA                2.0495878   1.8673258   2.2318499
3-6 months     MAL-ED       PERU           Mildly Food Insecure   NA                2.0126195   1.7868532   2.2383857
3-6 months     MAL-ED       PERU           Food Insecure          NA                1.8387131   1.6853916   1.9920347
3-6 months     MAL-ED       SOUTH AFRICA   Food Secure            NA                2.0075350   1.8980971   2.1169730
3-6 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                1.9389456   1.7128022   2.1650890
3-6 months     MAL-ED       SOUTH AFRICA   Food Insecure          NA                1.9025116   1.7484667   2.0565565
3-6 months     NIH-Birth    BANGLADESH     Food Secure            NA                1.7572565   1.6397161   1.8747970
3-6 months     NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                1.8417474   1.7853681   1.8981267
3-6 months     NIH-Birth    BANGLADESH     Food Insecure          NA                1.8454896   1.6694622   2.0215170
3-6 months     NIH-Crypto   BANGLADESH     Food Secure            NA                2.0048767   1.9599401   2.0498134
3-6 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                2.0067531   1.9369114   2.0765949
3-6 months     NIH-Crypto   BANGLADESH     Food Insecure          NA                1.9922617   1.8642737   2.1202497
6-9 months     GMS-Nepal    NEPAL          Food Secure            NA                1.3194880   1.2786597   1.3603163
6-9 months     GMS-Nepal    NEPAL          Mildly Food Insecure   NA                1.2743129   1.1826613   1.3659646
6-9 months     GMS-Nepal    NEPAL          Food Insecure          NA                1.3025158   1.1440479   1.4609838
6-9 months     JiVitA-4     BANGLADESH     Food Secure            NA                1.3276515   1.2975184   1.3577846
6-9 months     JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                1.3307919   1.2984390   1.3631448
6-9 months     JiVitA-4     BANGLADESH     Food Insecure          NA                1.2824292   1.2215689   1.3432895
6-9 months     MAL-ED       INDIA          Food Secure            NA                1.2401898   1.1819235   1.2984560
6-9 months     MAL-ED       INDIA          Mildly Food Insecure   NA                1.4261261   1.1284401   1.7238122
6-9 months     MAL-ED       INDIA          Food Insecure          NA                1.2090152   1.0476649   1.3703656
6-9 months     MAL-ED       NEPAL          Food Secure            NA                1.2959201   1.2335823   1.3582580
6-9 months     MAL-ED       NEPAL          Mildly Food Insecure   NA                1.4000733   1.2019863   1.5981603
6-9 months     MAL-ED       NEPAL          Food Insecure          NA                1.2727199   1.1182207   1.4272191
6-9 months     MAL-ED       PERU           Food Secure            NA                1.1816933   1.0389558   1.3244309
6-9 months     MAL-ED       PERU           Mildly Food Insecure   NA                1.2317173   1.0651530   1.3982815
6-9 months     MAL-ED       PERU           Food Insecure          NA                1.3246029   1.2012336   1.4479722
6-9 months     MAL-ED       SOUTH AFRICA   Food Secure            NA                1.4342262   1.3464166   1.5220359
6-9 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                1.2241224   1.0487254   1.3995193
6-9 months     MAL-ED       SOUTH AFRICA   Food Insecure          NA                1.3705742   1.2488131   1.4923353
6-9 months     NIH-Birth    BANGLADESH     Food Secure            NA                1.2837466   1.1682747   1.3992185
6-9 months     NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                1.2609870   1.2155616   1.3064125
6-9 months     NIH-Birth    BANGLADESH     Food Insecure          NA                1.1376641   0.9985481   1.2767801
6-9 months     NIH-Crypto   BANGLADESH     Food Secure            NA                1.3441144   1.3049198   1.3833090
6-9 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                1.3036372   1.2497848   1.3574896
6-9 months     NIH-Crypto   BANGLADESH     Food Insecure          NA                1.2685166   1.1856057   1.3514275
9-12 months    GMS-Nepal    NEPAL          Food Secure            NA                1.0334071   0.9992065   1.0676077
9-12 months    GMS-Nepal    NEPAL          Mildly Food Insecure   NA                0.9356960   0.8319834   1.0394086
9-12 months    GMS-Nepal    NEPAL          Food Insecure          NA                0.8145033   0.6293425   0.9996640
9-12 months    JiVitA-4     BANGLADESH     Food Secure            NA                1.0772902   1.0538333   1.1007470
9-12 months    JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                1.0643286   1.0337018   1.0949554
9-12 months    JiVitA-4     BANGLADESH     Food Insecure          NA                1.0609891   1.0126019   1.1093764
9-12 months    MAL-ED       INDIA          Food Secure            NA                0.9797121   0.9374912   1.0219330
9-12 months    MAL-ED       INDIA          Mildly Food Insecure   NA                0.9475996   0.7621337   1.1330655
9-12 months    MAL-ED       INDIA          Food Insecure          NA                0.9221096   0.7717056   1.0725137
9-12 months    MAL-ED       NEPAL          Food Secure            NA                1.0847778   1.0207889   1.1487667
9-12 months    MAL-ED       NEPAL          Mildly Food Insecure   NA                1.1059142   0.9712848   1.2405437
9-12 months    MAL-ED       NEPAL          Food Insecure          NA                1.0139573   0.8695829   1.1583317
9-12 months    MAL-ED       PERU           Food Secure            NA                1.3409069   1.1457470   1.5360668
9-12 months    MAL-ED       PERU           Mildly Food Insecure   NA                0.8987413   0.7712173   1.0262654
9-12 months    MAL-ED       PERU           Food Insecure          NA                1.0586496   0.9470980   1.1702012
9-12 months    MAL-ED       SOUTH AFRICA   Food Secure            NA                1.0109518   0.9145082   1.1073953
9-12 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                1.0214079   0.8436956   1.1991201
9-12 months    MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.9831853   0.8753694   1.0910011
9-12 months    NIH-Birth    BANGLADESH     Food Secure            NA                1.2455010   1.1545451   1.3364569
9-12 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                1.0665931   1.0264266   1.1067596
9-12 months    NIH-Birth    BANGLADESH     Food Insecure          NA                1.0193274   0.9048354   1.1338193
9-12 months    NIH-Crypto   BANGLADESH     Food Secure            NA                1.1337444   1.1001198   1.1673691
9-12 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                1.1401839   1.0894035   1.1909643
9-12 months    NIH-Crypto   BANGLADESH     Food Insecure          NA                1.0294939   0.9558297   1.1031580
12-15 months   GMS-Nepal    NEPAL          Food Secure            NA                0.8869902   0.8513706   0.9226097
12-15 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                0.8410219   0.7600091   0.9220347
12-15 months   GMS-Nepal    NEPAL          Food Insecure          NA                0.8356167   0.7371975   0.9340359
12-15 months   JiVitA-4     BANGLADESH     Food Secure            NA                0.9330924   0.9124551   0.9537297
12-15 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                0.9532552   0.9255853   0.9809251
12-15 months   JiVitA-4     BANGLADESH     Food Insecure          NA                0.9465373   0.9016008   0.9914738
12-15 months   MAL-ED       INDIA          Food Secure            NA                0.9132666   0.8696208   0.9569124
12-15 months   MAL-ED       INDIA          Mildly Food Insecure   NA                0.9077802   0.6843483   1.1312121
12-15 months   MAL-ED       INDIA          Food Insecure          NA                0.9026911   0.7911383   1.0142439
12-15 months   MAL-ED       NEPAL          Food Secure            NA                1.0064505   0.9464025   1.0664985
12-15 months   MAL-ED       NEPAL          Mildly Food Insecure   NA                0.9064882   0.7583098   1.0546666
12-15 months   MAL-ED       NEPAL          Food Insecure          NA                1.0048072   0.8910637   1.1185507
12-15 months   MAL-ED       PERU           Food Secure            NA                0.7370097   0.5995757   0.8744436
12-15 months   MAL-ED       PERU           Mildly Food Insecure   NA                1.0838438   0.8871604   1.2805271
12-15 months   MAL-ED       PERU           Food Insecure          NA                0.9430594   0.8322900   1.0538288
12-15 months   MAL-ED       SOUTH AFRICA   Food Secure            NA                0.9787605   0.8840164   1.0735046
12-15 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.8449980   0.6460596   1.0439365
12-15 months   MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.8794373   0.8033544   0.9555201
12-15 months   NIH-Birth    BANGLADESH     Food Secure            NA                0.8022898   0.7200852   0.8844944
12-15 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                0.7137276   0.6608378   0.7666175
12-15 months   NIH-Birth    BANGLADESH     Food Insecure          NA                0.6445650   0.5269385   0.7621915
12-15 months   NIH-Crypto   BANGLADESH     Food Secure            NA                0.9743902   0.9426485   1.0061318
12-15 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.9524367   0.9034122   1.0014612
12-15 months   NIH-Crypto   BANGLADESH     Food Insecure          NA                1.0144175   0.9429258   1.0859091
15-18 months   GMS-Nepal    NEPAL          Food Secure            NA                0.7629255   0.7147287   0.8111223
15-18 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                0.7876196   0.7073552   0.8678841
15-18 months   GMS-Nepal    NEPAL          Food Insecure          NA                0.7479076   0.6815208   0.8142944
15-18 months   JiVitA-4     BANGLADESH     Food Secure            NA                0.8582377   0.8361430   0.8803324
15-18 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                0.8532840   0.8262537   0.8803143
15-18 months   JiVitA-4     BANGLADESH     Food Insecure          NA                0.8896826   0.8444849   0.9348802
15-18 months   MAL-ED       INDIA          Food Secure            NA                0.8385254   0.7989253   0.8781256
15-18 months   MAL-ED       INDIA          Mildly Food Insecure   NA                0.7756646   0.6526849   0.8986442
15-18 months   MAL-ED       INDIA          Food Insecure          NA                0.8336653   0.7135056   0.9538250
15-18 months   MAL-ED       NEPAL          Food Secure            NA                0.8579655   0.7918590   0.9240719
15-18 months   MAL-ED       NEPAL          Mildly Food Insecure   NA                0.8284617   0.6325703   1.0243530
15-18 months   MAL-ED       NEPAL          Food Insecure          NA                0.7508229   0.6423816   0.8592642
15-18 months   MAL-ED       PERU           Food Secure            NA                0.9171895   0.7599236   1.0744554
15-18 months   MAL-ED       PERU           Mildly Food Insecure   NA                0.8620051   0.6988180   1.0251923
15-18 months   MAL-ED       PERU           Food Insecure          NA                0.8889646   0.8144108   0.9635183
15-18 months   MAL-ED       SOUTH AFRICA   Food Secure            NA                0.8174452   0.7397510   0.8951394
15-18 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                1.0417160   0.8707714   1.2126605
15-18 months   MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.9409424   0.8630044   1.0188805
15-18 months   NIH-Birth    BANGLADESH     Food Secure            NA                0.8587376   0.7354022   0.9820731
15-18 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                0.7746704   0.7309168   0.8184241
15-18 months   NIH-Birth    BANGLADESH     Food Insecure          NA                0.6046879   0.4728643   0.7365114
15-18 months   NIH-Crypto   BANGLADESH     Food Secure            NA                0.9123688   0.8832096   0.9415281
15-18 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.9343681   0.8878247   0.9809115
15-18 months   NIH-Crypto   BANGLADESH     Food Insecure          NA                0.9150451   0.8491630   0.9809272
18-21 months   GMS-Nepal    NEPAL          Food Secure            NA                0.9302305   0.8864572   0.9740038
18-21 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                0.8263194   0.7341634   0.9184755
18-21 months   GMS-Nepal    NEPAL          Food Insecure          NA                0.9017368   0.8122263   0.9912473
18-21 months   MAL-ED       INDIA          Food Secure            NA                0.8817637   0.8430895   0.9204379
18-21 months   MAL-ED       INDIA          Mildly Food Insecure   NA                1.0051203   0.8240374   1.1862031
18-21 months   MAL-ED       INDIA          Food Insecure          NA                0.8508739   0.7252066   0.9765413
18-21 months   MAL-ED       NEPAL          Food Secure            NA                0.7645701   0.7065200   0.8226202
18-21 months   MAL-ED       NEPAL          Mildly Food Insecure   NA                0.8409236   0.6591862   1.0226609
18-21 months   MAL-ED       NEPAL          Food Insecure          NA                0.7319074   0.6074243   0.8563905
18-21 months   MAL-ED       PERU           Food Secure            NA                0.8355562   0.7228150   0.9482974
18-21 months   MAL-ED       PERU           Mildly Food Insecure   NA                0.9695311   0.8095853   1.1294768
18-21 months   MAL-ED       PERU           Food Insecure          NA                0.8703615   0.7681888   0.9725341
18-21 months   MAL-ED       SOUTH AFRICA   Food Secure            NA                0.7955521   0.7136593   0.8774448
18-21 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.8115054   0.6030255   1.0199854
18-21 months   MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.7545434   0.6671108   0.8419759
18-21 months   NIH-Birth    BANGLADESH     Food Secure            NA                0.7239918   0.6185709   0.8294126
18-21 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                0.7307895   0.6906705   0.7709085
18-21 months   NIH-Birth    BANGLADESH     Food Insecure          NA                0.7179706   0.5584596   0.8774817
18-21 months   NIH-Crypto   BANGLADESH     Food Secure            NA                0.8011463   0.7719772   0.8303153
18-21 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.7819341   0.7325707   0.8312975
18-21 months   NIH-Crypto   BANGLADESH     Food Insecure          NA                0.8115744   0.7443842   0.8787645
21-24 months   GMS-Nepal    NEPAL          Food Secure            NA                0.7934909   0.7359542   0.8510276
21-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                0.8224004   0.7176930   0.9271078
21-24 months   GMS-Nepal    NEPAL          Food Insecure          NA                0.8420827   0.7450020   0.9391635
21-24 months   MAL-ED       INDIA          Food Secure            NA                0.8327563   0.7983537   0.8671590
21-24 months   MAL-ED       INDIA          Mildly Food Insecure   NA                0.8790545   0.7349181   1.0231910
21-24 months   MAL-ED       INDIA          Food Insecure          NA                0.7334250   0.6333190   0.8335311
21-24 months   MAL-ED       NEPAL          Food Secure            NA                0.8014855   0.7470205   0.8559505
21-24 months   MAL-ED       NEPAL          Mildly Food Insecure   NA                0.7294284   0.5766153   0.8822415
21-24 months   MAL-ED       NEPAL          Food Insecure          NA                0.8511813   0.6151023   1.0872603
21-24 months   MAL-ED       PERU           Food Secure            NA                0.7743566   0.6468624   0.9018507
21-24 months   MAL-ED       PERU           Mildly Food Insecure   NA                0.8257024   0.6844400   0.9669649
21-24 months   MAL-ED       PERU           Food Insecure          NA                0.7924700   0.6899155   0.8950245
21-24 months   MAL-ED       SOUTH AFRICA   Food Secure            NA                0.8459102   0.7828212   0.9089993
21-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.7510322   0.5912048   0.9108597
21-24 months   MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.8557103   0.7492124   0.9622082
21-24 months   NIH-Birth    BANGLADESH     Food Secure            NA                0.7697940   0.6874260   0.8521619
21-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                0.7112005   0.6696135   0.7527875
21-24 months   NIH-Birth    BANGLADESH     Food Insecure          NA                0.6848680   0.5216301   0.8481060
21-24 months   NIH-Crypto   BANGLADESH     Food Secure            NA                0.8064821   0.7763107   0.8366534
21-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.7888877   0.7386099   0.8391656
21-24 months   NIH-Crypto   BANGLADESH     Food Insecure          NA                0.7770762   0.7022529   0.8518994


### Parameter: E(Y)


agecat         studyid      country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal    NEPAL          NA                   NA                3.5985708   3.5472330   3.6499087
0-3 months     JiVitA-3     BANGLADESH     NA                   NA                3.7231954   3.7113297   3.7350611
0-3 months     JiVitA-4     BANGLADESH     NA                   NA                3.6391263   3.6075490   3.6707036
0-3 months     MAL-ED       NEPAL          NA                   NA                3.5340083   3.4039569   3.6640597
0-3 months     MAL-ED       PERU           NA                   NA                3.0771151   2.9798686   3.1743617
0-3 months     MAL-ED       SOUTH AFRICA   NA                   NA                3.1706167   3.0660515   3.2751819
0-3 months     NIH-Birth    BANGLADESH     NA                   NA                3.1100116   3.0566021   3.1634210
0-3 months     NIH-Crypto   BANGLADESH     NA                   NA                3.1292449   3.0928504   3.1656393
3-6 months     GMS-Nepal    NEPAL          NA                   NA                1.7091655   1.6694794   1.7488517
3-6 months     JiVitA-3     BANGLADESH     NA                   NA                1.9201240   1.9096634   1.9305847
3-6 months     JiVitA-4     BANGLADESH     NA                   NA                1.8993572   1.8693950   1.9293194
3-6 months     MAL-ED       INDIA          NA                   NA                1.9082925   1.8404592   1.9761258
3-6 months     MAL-ED       NEPAL          NA                   NA                1.9342793   1.8588543   2.0097043
3-6 months     MAL-ED       PERU           NA                   NA                1.9602080   1.8596335   2.0607825
3-6 months     MAL-ED       SOUTH AFRICA   NA                   NA                1.9613082   1.8765646   2.0460517
3-6 months     NIH-Birth    BANGLADESH     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     NIH-Crypto   BANGLADESH     NA                   NA                2.0057973   1.9693775   2.0422170
6-9 months     GMS-Nepal    NEPAL          NA                   NA                1.3253518   1.2842303   1.3664733
6-9 months     JiVitA-4     BANGLADESH     NA                   NA                1.3242226   1.3035329   1.3449123
6-9 months     MAL-ED       INDIA          NA                   NA                1.2422416   1.1877178   1.2967654
6-9 months     MAL-ED       NEPAL          NA                   NA                1.3097456   1.2551002   1.3643910
6-9 months     MAL-ED       PERU           NA                   NA                1.2666923   1.1869188   1.3464657
6-9 months     MAL-ED       SOUTH AFRICA   NA                   NA                1.3946381   1.3274639   1.4618123
6-9 months     NIH-Birth    BANGLADESH     NA                   NA                1.2555950   1.2150667   1.2961234
6-9 months     NIH-Crypto   BANGLADESH     NA                   NA                1.3282695   1.2988292   1.3577098
9-12 months    GMS-Nepal    NEPAL          NA                   NA                0.9962879   0.9629862   1.0295896
9-12 months    JiVitA-4     BANGLADESH     NA                   NA                1.0709927   1.0530915   1.0888939
9-12 months    MAL-ED       INDIA          NA                   NA                0.9742845   0.9342438   1.0143252
9-12 months    MAL-ED       NEPAL          NA                   NA                1.0723046   1.0192507   1.1253585
9-12 months    MAL-ED       PERU           NA                   NA                1.0841807   1.0042683   1.1640932
9-12 months    MAL-ED       SOUTH AFRICA   NA                   NA                1.0039681   0.9366684   1.0712678
9-12 months    NIH-Birth    BANGLADESH     NA                   NA                1.0885809   1.0534446   1.1237171
9-12 months    NIH-Crypto   BANGLADESH     NA                   NA                1.1234745   1.0972274   1.1497215
12-15 months   GMS-Nepal    NEPAL          NA                   NA                0.8762334   0.8467723   0.9056944
12-15 months   JiVitA-4     BANGLADESH     NA                   NA                0.9419834   0.9260181   0.9579487
12-15 months   MAL-ED       INDIA          NA                   NA                0.9122799   0.8717874   0.9527724
12-15 months   MAL-ED       NEPAL          NA                   NA                1.0013434   0.9518037   1.0508831
12-15 months   MAL-ED       PERU           NA                   NA                0.9058068   0.8315771   0.9800365
12-15 months   MAL-ED       SOUTH AFRICA   NA                   NA                0.9279589   0.8673916   0.9885262
12-15 months   NIH-Birth    BANGLADESH     NA                   NA                0.7241623   0.6797013   0.7686233
12-15 months   NIH-Crypto   BANGLADESH     NA                   NA                0.9711395   0.9465805   0.9956985
15-18 months   GMS-Nepal    NEPAL          NA                   NA                0.7602133   0.7247460   0.7956806
15-18 months   JiVitA-4     BANGLADESH     NA                   NA                0.8600344   0.8434750   0.8765938
15-18 months   MAL-ED       INDIA          NA                   NA                0.8366673   0.7997118   0.8736229
15-18 months   MAL-ED       NEPAL          NA                   NA                0.8392579   0.7866195   0.8918963
15-18 months   MAL-ED       PERU           NA                   NA                0.8741374   0.8083662   0.9399086
15-18 months   MAL-ED       SOUTH AFRICA   NA                   NA                0.8823933   0.8286956   0.9360911
15-18 months   NIH-Birth    BANGLADESH     NA                   NA                0.7727719   0.7325606   0.8129832
15-18 months   NIH-Crypto   BANGLADESH     NA                   NA                0.9177168   0.8947657   0.9406678
18-21 months   GMS-Nepal    NEPAL          NA                   NA                0.9078241   0.8730360   0.9426122
18-21 months   MAL-ED       INDIA          NA                   NA                0.8823473   0.8458552   0.9188393
18-21 months   MAL-ED       NEPAL          NA                   NA                0.7640891   0.7161902   0.8119880
18-21 months   MAL-ED       PERU           NA                   NA                0.8891475   0.8204255   0.9578695
18-21 months   MAL-ED       SOUTH AFRICA   NA                   NA                0.7818920   0.7244019   0.8393822
18-21 months   NIH-Birth    BANGLADESH     NA                   NA                0.7291468   0.6930874   0.7652062
18-21 months   NIH-Crypto   BANGLADESH     NA                   NA                0.7977755   0.7744353   0.8211158
21-24 months   GMS-Nepal    NEPAL          NA                   NA                0.8011967   0.7555462   0.8468473
21-24 months   MAL-ED       INDIA          NA                   NA                0.8258504   0.7935667   0.8581341
21-24 months   MAL-ED       NEPAL          NA                   NA                0.8037991   0.7498983   0.8577000
21-24 months   MAL-ED       PERU           NA                   NA                0.7935057   0.7259219   0.8610894
21-24 months   MAL-ED       SOUTH AFRICA   NA                   NA                0.8416651   0.7887272   0.8946030
21-24 months   NIH-Birth    BANGLADESH     NA                   NA                0.7172178   0.6817161   0.7527194
21-24 months   NIH-Crypto   BANGLADESH     NA                   NA                0.7993353   0.7748026   0.8238681


### Parameter: ATE


agecat         studyid      country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -------------  ---------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure        0.0355529   -0.1341497    0.2052556
0-3 months     GMS-Nepal    NEPAL          Food Insecure          Food Secure        0.1228914   -0.0777041    0.3234869
0-3 months     JiVitA-3     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure        0.0001833   -0.0261466    0.0265131
0-3 months     JiVitA-3     BANGLADESH     Food Insecure          Food Secure       -0.0396817   -0.0743749   -0.0049886
0-3 months     JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0507213   -0.1173699    0.0159273
0-3 months     JiVitA-4     BANGLADESH     Food Insecure          Food Secure        0.0030830   -0.1041664    0.1103325
0-3 months     MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0954091   -0.2510598    0.4418780
0-3 months     MAL-ED       NEPAL          Food Insecure          Food Secure        0.0021064   -0.3298651    0.3340779
0-3 months     MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.0123621   -0.2748761    0.2501519
0-3 months     MAL-ED       PERU           Food Insecure          Food Secure       -0.0550368   -0.2996824    0.1896088
0-3 months     MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.1669681   -0.5175248    0.1835886
0-3 months     MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0406613   -0.2749556    0.1936329
0-3 months     NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.0744926   -0.2322946    0.0833094
0-3 months     NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.2174952   -0.4378444    0.0028539
0-3 months     NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0329271   -0.0522410    0.1180952
0-3 months     NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0010610   -0.1101626    0.1122846
3-6 months     GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.0671386   -0.1922321    0.0579549
3-6 months     GMS-Nepal    NEPAL          Food Insecure          Food Secure        0.0620014   -0.0716412    0.1956439
3-6 months     JiVitA-3     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0175353   -0.0415652    0.0064945
3-6 months     JiVitA-3     BANGLADESH     Food Insecure          Food Secure       -0.0012554   -0.0332183    0.0307075
3-6 months     JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure        0.0192410   -0.0410759    0.0795579
3-6 months     JiVitA-4     BANGLADESH     Food Insecure          Food Secure       -0.0692483   -0.1612145    0.0227179
3-6 months     MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.0702350   -0.1423424    0.2828125
3-6 months     MAL-ED       INDIA          Food Insecure          Food Secure        0.0106416   -0.1991231    0.2204064
3-6 months     MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0671886   -0.3181233    0.1837461
3-6 months     MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0810569   -0.3205781    0.1584642
3-6 months     MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.0369684   -0.3284707    0.2545340
3-6 months     MAL-ED       PERU           Food Insecure          Food Secure       -0.2108747   -0.4493068    0.0275574
3-6 months     MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0685895   -0.3205263    0.1833474
3-6 months     MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.1050234   -0.2950355    0.0849886
3-6 months     NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure        0.0844909   -0.0457660    0.2147477
3-6 months     NIH-Birth    BANGLADESH     Food Insecure          Food Secure        0.0882331   -0.1235671    0.3000333
3-6 months     NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0018764   -0.0809974    0.0847501
3-6 months     NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0126151   -0.1481106    0.1228805
6-9 months     GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.0451751   -0.1453075    0.0549573
6-9 months     GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.0169721   -0.1804417    0.1464975
6-9 months     JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure        0.0031404   -0.0407724    0.0470532
6-9 months     JiVitA-4     BANGLADESH     Food Insecure          Food Secure       -0.0452223   -0.1148964    0.0244519
6-9 months     MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.1859364   -0.1173984    0.4892711
6-9 months     MAL-ED       INDIA          Food Insecure          Food Secure       -0.0311745   -0.2027231    0.1403740
6-9 months     MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.1041532   -0.1045742    0.3128805
6-9 months     MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0232002   -0.1896336    0.1432332
6-9 months     MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0500239   -0.1693307    0.2693786
6-9 months     MAL-ED       PERU           Food Insecure          Food Secure        0.1429096   -0.0455165    0.3313357
6-9 months     MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.2101039   -0.4060978   -0.0141100
6-9 months     MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0636520   -0.2145903    0.0872862
6-9 months     NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.0227596   -0.1463238    0.1008047
6-9 months     NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.1460825   -0.3262439    0.0340789
6-9 months     NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0404772   -0.1071450    0.0261906
6-9 months     NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0755978   -0.1674430    0.0162474
9-12 months    GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.0977111   -0.2153690    0.0199468
9-12 months    GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.2189038   -0.4064241   -0.0313836
9-12 months    JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0129615   -0.0507918    0.0248688
9-12 months    JiVitA-4     BANGLADESH     Food Insecure          Food Secure       -0.0163010   -0.0696050    0.0370029
9-12 months    MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0321125   -0.2223234    0.1580984
9-12 months    MAL-ED       INDIA          Food Insecure          Food Secure       -0.0576025   -0.2138202    0.0986152
9-12 months    MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0211364   -0.1281128    0.1703857
9-12 months    MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0708205   -0.2286514    0.0870104
9-12 months    MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.4421656   -0.6798672   -0.2044640
9-12 months    MAL-ED       PERU           Food Insecure          Food Secure       -0.2822573   -0.5085263   -0.0559883
9-12 months    MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.0104561   -0.1919731    0.2128853
9-12 months    MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0277665   -0.1729299    0.1173969
9-12 months    NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.1789079   -0.2781179   -0.0796979
9-12 months    NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.2261736   -0.3718816   -0.0804656
9-12 months    NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0064394   -0.0545203    0.0673992
9-12 months    NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1042505   -0.1852271   -0.0232740
12-15 months   GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.0459683   -0.1345446    0.0426081
12-15 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.0513735   -0.1559419    0.0531950
12-15 months   JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure        0.0201628   -0.0137683    0.0540939
12-15 months   JiVitA-4     BANGLADESH     Food Insecure          Food Secure        0.0134449   -0.0355881    0.0624778
12-15 months   MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0054864   -0.2331414    0.2221685
12-15 months   MAL-ED       INDIA          Food Insecure          Food Secure       -0.0105755   -0.1303627    0.1092117
12-15 months   MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0999622   -0.2602177    0.0602932
12-15 months   MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0016433   -0.1300077    0.1267211
12-15 months   MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.3468341    0.1104349    0.5832333
12-15 months   MAL-ED       PERU           Food Insecure          Food Secure        0.2060497    0.0280843    0.3840151
12-15 months   MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.1337625   -0.3542622    0.0867373
12-15 months   MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0993232   -0.2212761    0.0226297
12-15 months   NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.0885622   -0.1867100    0.0095856
12-15 months   NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.1577248   -0.3011180   -0.0143316
12-15 months   NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0219534   -0.0802802    0.0363734
12-15 months   NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0400273   -0.0378034    0.1178580
15-18 months   GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure        0.0246942   -0.0705911    0.1199795
15-18 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.0150179   -0.0965063    0.0664706
15-18 months   JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0049537   -0.0392677    0.0293602
15-18 months   JiVitA-4     BANGLADESH     Food Insecure          Food Secure        0.0314448   -0.0177119    0.0806016
15-18 months   MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.0628609   -0.1920590    0.0663373
15-18 months   MAL-ED       INDIA          Food Insecure          Food Secure       -0.0048601   -0.1313770    0.1216568
15-18 months   MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0295038   -0.2364487    0.1774411
15-18 months   MAL-ED       NEPAL          Food Insecure          Food Secure       -0.1071426   -0.2363475    0.0220623
15-18 months   MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.0551844   -0.2816362    0.1712675
15-18 months   MAL-ED       PERU           Food Insecure          Food Secure       -0.0282249   -0.2031267    0.1466768
15-18 months   MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.2242707    0.0366216    0.4119198
15-18 months   MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.1234972    0.0134551    0.2335393
15-18 months   NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.0840672   -0.2149463    0.0468119
15-18 months   NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.2540498   -0.4344814   -0.0736182
15-18 months   NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0219993   -0.0329234    0.0769220
15-18 months   NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0026763   -0.0693851    0.0747376
18-21 months   GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.1039111   -0.2078461    0.0000239
18-21 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.0284937   -0.1286571    0.0716698
18-21 months   MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.1233565   -0.0618101    0.3085232
18-21 months   MAL-ED       INDIA          Food Insecure          Food Secure       -0.0308898   -0.1623736    0.1005939
18-21 months   MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0763535   -0.1154580    0.2681649
18-21 months   MAL-ED       NEPAL          Food Insecure          Food Secure       -0.0326627   -0.1708745    0.1055491
18-21 months   MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.1339748   -0.0628652    0.3308149
18-21 months   MAL-ED       PERU           Food Insecure          Food Secure        0.0348053   -0.1182242    0.1878347
18-21 months   MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.0159534   -0.2079686    0.2398754
18-21 months   MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0410087   -0.1604974    0.0784800
18-21 months   NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure        0.0067977   -0.1061273    0.1197228
18-21 months   NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.0060212   -0.1974768    0.1854345
18-21 months   NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0192121   -0.0765182    0.0380940
18-21 months   NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0104281   -0.0626809    0.0835372
21-24 months   GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure        0.0289095   -0.0906555    0.1484745
21-24 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure        0.0485918   -0.0637068    0.1608904
21-24 months   MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.0462982   -0.1018870    0.1944834
21-24 months   MAL-ED       INDIA          Food Insecure          Food Secure       -0.0993313   -0.2051838    0.0065212
21-24 months   MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0720571   -0.2346615    0.0905473
21-24 months   MAL-ED       NEPAL          Food Insecure          Food Secure        0.0496958   -0.1924755    0.2918671
21-24 months   MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0513459   -0.1395844    0.2422761
21-24 months   MAL-ED       PERU           Food Insecure          Food Secure        0.0181134   -0.1478576    0.1840844
21-24 months   MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0948780   -0.2668042    0.0770482
21-24 months   MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.0098001   -0.1138313    0.1334314
21-24 months   NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.0585935   -0.1507927    0.0336057
21-24 months   NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.0849260   -0.2683176    0.0984657
21-24 months   NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0175943   -0.0761310    0.0409424
21-24 months   NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0294059   -0.1100049    0.0511931


### Parameter: PAR


agecat         studyid      country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal    NEPAL          Food Secure          NA                 0.0143934   -0.0201675    0.0489543
0-3 months     JiVitA-3     BANGLADESH     Food Secure          NA                -0.0063459   -0.0186710    0.0059793
0-3 months     JiVitA-4     BANGLADESH     Food Secure          NA                -0.0183507   -0.0494333    0.0127318
0-3 months     MAL-ED       NEPAL          Food Secure          NA                 0.0091937   -0.0562706    0.0746579
0-3 months     MAL-ED       PERU           Food Secure          NA                -0.0188340   -0.1858444    0.1481765
0-3 months     MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0278180   -0.1289677    0.0733318
0-3 months     NIH-Birth    BANGLADESH     Food Secure          NA                -0.0694679   -0.2047648    0.0658291
0-3 months     NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0092470   -0.0210407    0.0395346
3-6 months     GMS-Nepal    NEPAL          Food Secure          NA                -0.0039749   -0.0283462    0.0203964
3-6 months     JiVitA-3     BANGLADESH     Food Secure          NA                -0.0066123   -0.0188535    0.0056289
3-6 months     JiVitA-4     BANGLADESH     Food Secure          NA                -0.0019220   -0.0294192    0.0255751
3-6 months     MAL-ED       INDIA          Food Secure          NA                 0.0025190   -0.0151801    0.0202181
3-6 months     MAL-ED       NEPAL          Food Secure          NA                -0.0169801   -0.0633276    0.0293675
3-6 months     MAL-ED       PERU           Food Secure          NA                -0.0893799   -0.2573126    0.0785529
3-6 months     MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0462269   -0.1229718    0.0305180
3-6 months     NIH-Birth    BANGLADESH     Food Secure          NA                 0.0754350   -0.0365339    0.1874038
3-6 months     NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0009205   -0.0300714    0.0319124
6-9 months     GMS-Nepal    NEPAL          Food Secure          NA                 0.0058638   -0.0280803    0.0398080
6-9 months     JiVitA-4     BANGLADESH     Food Secure          NA                -0.0034289   -0.0239378    0.0170800
6-9 months     MAL-ED       INDIA          Food Secure          NA                 0.0020519   -0.0139755    0.0180792
6-9 months     MAL-ED       NEPAL          Food Secure          NA                 0.0138255   -0.0217606    0.0494116
6-9 months     MAL-ED       PERU           Food Secure          NA                 0.0849989   -0.0463527    0.2163506
6-9 months     MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0395881   -0.0994343    0.0202580
6-9 months     NIH-Birth    BANGLADESH     Food Secure          NA                -0.0281516   -0.1328617    0.0765586
6-9 months     NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0158449   -0.0393235    0.0076337
9-12 months    GMS-Nepal    NEPAL          Food Secure          NA                -0.0371192   -0.0693316   -0.0049069
9-12 months    JiVitA-4     BANGLADESH     Food Secure          NA                -0.0062974   -0.0230786    0.0104838
9-12 months    MAL-ED       INDIA          Food Secure          NA                -0.0054276   -0.0193616    0.0085063
9-12 months    MAL-ED       NEPAL          Food Secure          NA                -0.0124732   -0.0436087    0.0186623
9-12 months    MAL-ED       PERU           Food Secure          NA                -0.2567262   -0.4257370   -0.0877153
9-12 months    MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0069837   -0.0665977    0.0526303
9-12 months    NIH-Birth    BANGLADESH     Food Secure          NA                -0.1569201   -0.2410772   -0.0727629
9-12 months    NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0102700   -0.0316603    0.0111204
12-15 months   GMS-Nepal    NEPAL          Food Secure          NA                -0.0107568   -0.0297225    0.0082089
12-15 months   JiVitA-4     BANGLADESH     Food Secure          NA                 0.0088910   -0.0061680    0.0239499
12-15 months   MAL-ED       INDIA          Food Secure          NA                -0.0009867   -0.0125548    0.0105813
12-15 months   MAL-ED       NEPAL          Food Secure          NA                -0.0051071   -0.0331947    0.0229805
12-15 months   MAL-ED       PERU           Food Secure          NA                 0.1687972    0.0387488    0.2988455
12-15 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0508016   -0.1064083    0.0048051
12-15 months   NIH-Birth    BANGLADESH     Food Secure          NA                -0.0781276   -0.1606365    0.0043814
12-15 months   NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0032507   -0.0236277    0.0171264
15-18 months   GMS-Nepal    NEPAL          Food Secure          NA                -0.0027122   -0.0236328    0.0182084
15-18 months   JiVitA-4     BANGLADESH     Food Secure          NA                 0.0017967   -0.0134816    0.0170749
15-18 months   MAL-ED       INDIA          Food Secure          NA                -0.0018581   -0.0123314    0.0086152
15-18 months   MAL-ED       NEPAL          Food Secure          NA                -0.0187076   -0.0509984    0.0135833
15-18 months   MAL-ED       PERU           Food Secure          NA                -0.0430521   -0.1758204    0.0897162
15-18 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0649481    0.0151370    0.1147592
15-18 months   NIH-Birth    BANGLADESH     Food Secure          NA                -0.0859657   -0.1965862    0.0246547
15-18 months   NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0053479   -0.0135777    0.0242736
18-21 months   GMS-Nepal    NEPAL          Food Secure          NA                -0.0224064   -0.0419201   -0.0028928
18-21 months   MAL-ED       INDIA          Food Secure          NA                 0.0005836   -0.0110403    0.0122074
18-21 months   MAL-ED       NEPAL          Food Secure          NA                -0.0004810   -0.0295398    0.0285779
18-21 months   MAL-ED       PERU           Food Secure          NA                 0.0535913   -0.0548384    0.1620209
18-21 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0136600   -0.0645072    0.0371872
18-21 months   NIH-Birth    BANGLADESH     Food Secure          NA                 0.0051551   -0.0916272    0.1019373
18-21 months   NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0033707   -0.0216416    0.0149002
21-24 months   GMS-Nepal    NEPAL          Food Secure          NA                 0.0077058   -0.0172273    0.0326389
21-24 months   MAL-ED       INDIA          Food Secure          NA                -0.0069059   -0.0171772    0.0033655
21-24 months   MAL-ED       NEPAL          Food Secure          NA                 0.0023136   -0.0370691    0.0416964
21-24 months   MAL-ED       PERU           Food Secure          NA                 0.0191491   -0.0966692    0.1349673
21-24 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0042451   -0.0523028    0.0438125
21-24 months   NIH-Birth    BANGLADESH     Food Secure          NA                -0.0525762   -0.1309706    0.0258182
21-24 months   NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0071467   -0.0255139    0.0112205
