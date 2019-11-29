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

**Intervention Variable:** predfeed3

**Adjustment Set:**

* arm
* sex
* month
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
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

agecat         studyid               country                        predfeed3    n_cell       n  outcome_variable 
-------------  --------------------  -----------------------------  ----------  -------  ------  -----------------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1               193     237  y_rate_haz       
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     0                44     237  y_rate_haz       
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                73     147  y_rate_haz       
0-3 months     ki0047075b-MAL-ED     BRAZIL                         0                74     147  y_rate_haz       
0-3 months     ki0047075b-MAL-ED     INDIA                          1               113     164  y_rate_haz       
0-3 months     ki0047075b-MAL-ED     INDIA                          0                51     164  y_rate_haz       
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                81     153  y_rate_haz       
0-3 months     ki0047075b-MAL-ED     NEPAL                          0                72     153  y_rate_haz       
0-3 months     ki0047075b-MAL-ED     PERU                           1               168     262  y_rate_haz       
0-3 months     ki0047075b-MAL-ED     PERU                           0                94     262  y_rate_haz       
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                58     203  y_rate_haz       
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0               145     203  y_rate_haz       
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                57     197  y_rate_haz       
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               140     197  y_rate_haz       
0-3 months     ki1000109-EE          PAKISTAN                       1                31      31  y_rate_haz       
0-3 months     ki1000109-EE          PAKISTAN                       0                 0      31  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal   NEPAL                          1               378     456  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal   NEPAL                          0                78     456  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1             10705   11852  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     0              1147   11852  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1               145     160  y_rate_haz       
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     0                15     160  y_rate_haz       
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1               184     225  y_rate_haz       
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     0                41     225  y_rate_haz       
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                93     186  y_rate_haz       
3-6 months     ki0047075b-MAL-ED     BRAZIL                         0                93     186  y_rate_haz       
3-6 months     ki0047075b-MAL-ED     INDIA                          1               146     206  y_rate_haz       
3-6 months     ki0047075b-MAL-ED     INDIA                          0                60     206  y_rate_haz       
3-6 months     ki0047075b-MAL-ED     NEPAL                          1               112     226  y_rate_haz       
3-6 months     ki0047075b-MAL-ED     NEPAL                          0               114     226  y_rate_haz       
3-6 months     ki0047075b-MAL-ED     PERU                           1               174     264  y_rate_haz       
3-6 months     ki0047075b-MAL-ED     PERU                           0                90     264  y_rate_haz       
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                63     234  y_rate_haz       
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0               171     234  y_rate_haz       
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                63     208  y_rate_haz       
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               145     208  y_rate_haz       
3-6 months     ki1000109-EE          PAKISTAN                       1                31      31  y_rate_haz       
3-6 months     ki1000109-EE          PAKISTAN                       0                 0      31  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1               350     420  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal   NEPAL                          0                70     420  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1              6478    7103  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     0               625    7103  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     1                21      21  y_rate_haz       
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     0                 0      21  y_rate_haz       
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     1               177     217  y_rate_haz       
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     0                40     217  y_rate_haz       
6-9 months     ki0047075b-MAL-ED     BRAZIL                         1                90     177  y_rate_haz       
6-9 months     ki0047075b-MAL-ED     BRAZIL                         0                87     177  y_rate_haz       
6-9 months     ki0047075b-MAL-ED     INDIA                          1               143     205  y_rate_haz       
6-9 months     ki0047075b-MAL-ED     INDIA                          0                62     205  y_rate_haz       
6-9 months     ki0047075b-MAL-ED     NEPAL                          1               110     222  y_rate_haz       
6-9 months     ki0047075b-MAL-ED     NEPAL                          0               112     222  y_rate_haz       
6-9 months     ki0047075b-MAL-ED     PERU                           1               160     242  y_rate_haz       
6-9 months     ki0047075b-MAL-ED     PERU                           0                82     242  y_rate_haz       
6-9 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                62     222  y_rate_haz       
6-9 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0               160     222  y_rate_haz       
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                59     193  y_rate_haz       
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               134     193  y_rate_haz       
6-9 months     ki1000109-EE          PAKISTAN                       1                36      36  y_rate_haz       
6-9 months     ki1000109-EE          PAKISTAN                       0                 0      36  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal   NEPAL                          1               314     378  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal   NEPAL                          0                64     378  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4     BANGLADESH                     1                17      18  y_rate_haz       
6-9 months     kiGH5241-JiVitA-4     BANGLADESH                     0                 1      18  y_rate_haz       
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     1               179     218  y_rate_haz       
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     0                39     218  y_rate_haz       
9-12 months    ki0047075b-MAL-ED     BRAZIL                         1                89     175  y_rate_haz       
9-12 months    ki0047075b-MAL-ED     BRAZIL                         0                86     175  y_rate_haz       
9-12 months    ki0047075b-MAL-ED     INDIA                          1               139     201  y_rate_haz       
9-12 months    ki0047075b-MAL-ED     INDIA                          0                62     201  y_rate_haz       
9-12 months    ki0047075b-MAL-ED     NEPAL                          1               109     221  y_rate_haz       
9-12 months    ki0047075b-MAL-ED     NEPAL                          0               112     221  y_rate_haz       
9-12 months    ki0047075b-MAL-ED     PERU                           1               155     233  y_rate_haz       
9-12 months    ki0047075b-MAL-ED     PERU                           0                78     233  y_rate_haz       
9-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                63     223  y_rate_haz       
9-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0               160     223  y_rate_haz       
9-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                56     192  y_rate_haz       
9-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               136     192  y_rate_haz       
9-12 months    ki1000109-EE          PAKISTAN                       1                36      36  y_rate_haz       
9-12 months    ki1000109-EE          PAKISTAN                       0                 0      36  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal   NEPAL                          1               302     362  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal   NEPAL                          0                60     362  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     1                86      96  y_rate_haz       
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     0                10      96  y_rate_haz       
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     1               168     206  y_rate_haz       
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     0                38     206  y_rate_haz       
12-15 months   ki0047075b-MAL-ED     BRAZIL                         1                86     165  y_rate_haz       
12-15 months   ki0047075b-MAL-ED     BRAZIL                         0                79     165  y_rate_haz       
12-15 months   ki0047075b-MAL-ED     INDIA                          1               138     200  y_rate_haz       
12-15 months   ki0047075b-MAL-ED     INDIA                          0                62     200  y_rate_haz       
12-15 months   ki0047075b-MAL-ED     NEPAL                          1               110     222  y_rate_haz       
12-15 months   ki0047075b-MAL-ED     NEPAL                          0               112     222  y_rate_haz       
12-15 months   ki0047075b-MAL-ED     PERU                           1               148     222  y_rate_haz       
12-15 months   ki0047075b-MAL-ED     PERU                           0                74     222  y_rate_haz       
12-15 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                60     219  y_rate_haz       
12-15 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0               159     219  y_rate_haz       
12-15 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                57     195  y_rate_haz       
12-15 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               138     195  y_rate_haz       
12-15 months   ki1000109-EE          PAKISTAN                       1                29      29  y_rate_haz       
12-15 months   ki1000109-EE          PAKISTAN                       0                 0      29  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal   NEPAL                          1               313     371  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal   NEPAL                          0                58     371  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     1                99     109  y_rate_haz       
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     0                10     109  y_rate_haz       
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     1               168     206  y_rate_haz       
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     0                38     206  y_rate_haz       
15-18 months   ki0047075b-MAL-ED     BRAZIL                         1                82     157  y_rate_haz       
15-18 months   ki0047075b-MAL-ED     BRAZIL                         0                75     157  y_rate_haz       
15-18 months   ki0047075b-MAL-ED     INDIA                          1               138     201  y_rate_haz       
15-18 months   ki0047075b-MAL-ED     INDIA                          0                63     201  y_rate_haz       
15-18 months   ki0047075b-MAL-ED     NEPAL                          1               108     219  y_rate_haz       
15-18 months   ki0047075b-MAL-ED     NEPAL                          0               111     219  y_rate_haz       
15-18 months   ki0047075b-MAL-ED     PERU                           1               141     210  y_rate_haz       
15-18 months   ki0047075b-MAL-ED     PERU                           0                69     210  y_rate_haz       
15-18 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                60     218  y_rate_haz       
15-18 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0               158     218  y_rate_haz       
15-18 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                55     188  y_rate_haz       
15-18 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               133     188  y_rate_haz       
15-18 months   ki1000109-EE          PAKISTAN                       1                25      25  y_rate_haz       
15-18 months   ki1000109-EE          PAKISTAN                       0                 0      25  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal   NEPAL                          1               319     379  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal   NEPAL                          0                60     379  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     1                96     109  y_rate_haz       
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     0                13     109  y_rate_haz       
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     1               166     203  y_rate_haz       
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     0                37     203  y_rate_haz       
18-21 months   ki0047075b-MAL-ED     BRAZIL                         1                79     150  y_rate_haz       
18-21 months   ki0047075b-MAL-ED     BRAZIL                         0                71     150  y_rate_haz       
18-21 months   ki0047075b-MAL-ED     INDIA                          1               138     201  y_rate_haz       
18-21 months   ki0047075b-MAL-ED     INDIA                          0                63     201  y_rate_haz       
18-21 months   ki0047075b-MAL-ED     NEPAL                          1               108     219  y_rate_haz       
18-21 months   ki0047075b-MAL-ED     NEPAL                          0               111     219  y_rate_haz       
18-21 months   ki0047075b-MAL-ED     PERU                           1               133     199  y_rate_haz       
18-21 months   ki0047075b-MAL-ED     PERU                           0                66     199  y_rate_haz       
18-21 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                60     225  y_rate_haz       
18-21 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0               165     225  y_rate_haz       
18-21 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                52     176  y_rate_haz       
18-21 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               124     176  y_rate_haz       
18-21 months   ki1000109-EE          PAKISTAN                       1                26      26  y_rate_haz       
18-21 months   ki1000109-EE          PAKISTAN                       0                 0      26  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal   NEPAL                          1               295     347  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal   NEPAL                          0                52     347  y_rate_haz       
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     1               164     201  y_rate_haz       
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                37     201  y_rate_haz       
21-24 months   ki0047075b-MAL-ED     BRAZIL                         1                77     149  y_rate_haz       
21-24 months   ki0047075b-MAL-ED     BRAZIL                         0                72     149  y_rate_haz       
21-24 months   ki0047075b-MAL-ED     INDIA                          1               138     201  y_rate_haz       
21-24 months   ki0047075b-MAL-ED     INDIA                          0                63     201  y_rate_haz       
21-24 months   ki0047075b-MAL-ED     NEPAL                          1               109     219  y_rate_haz       
21-24 months   ki0047075b-MAL-ED     NEPAL                          0               110     219  y_rate_haz       
21-24 months   ki0047075b-MAL-ED     PERU                           1               125     187  y_rate_haz       
21-24 months   ki0047075b-MAL-ED     PERU                           0                62     187  y_rate_haz       
21-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                59     226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0               167     226  y_rate_haz       
21-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                53     175  y_rate_haz       
21-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               122     175  y_rate_haz       
21-24 months   ki1000109-EE          PAKISTAN                       1                16      16  y_rate_haz       
21-24 months   ki1000109-EE          PAKISTAN                       0                 0      16  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal   NEPAL                          1               237     279  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal   NEPAL                          0                42     279  y_rate_haz       


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/702e9f2e-0090-4bc1-b1f2-d9d52710d591/01d77206-3437-43d9-9644-12ba186bfc5a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/702e9f2e-0090-4bc1-b1f2-d9d52710d591/01d77206-3437-43d9-9644-12ba186bfc5a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/702e9f2e-0090-4bc1-b1f2-d9d52710d591/01d77206-3437-43d9-9644-12ba186bfc5a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.1043916   -0.1414795   -0.0673037
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.2272094   -0.3044833   -0.1499354
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.1946806    0.1126523    0.2767088
0-3 months     ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.1152741    0.0274863    0.2030620
0-3 months     ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0451923   -0.1141066    0.0237220
0-3 months     ki0047075b-MAL-ED     INDIA                          0                    NA                -0.0741891   -0.1738172    0.0254390
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0079347   -0.0502145    0.0660839
0-3 months     ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.1018176    0.0331685    0.1704668
0-3 months     ki0047075b-MAL-ED     PERU                           1                    NA                -0.2436104   -0.2853200   -0.2019007
0-3 months     ki0047075b-MAL-ED     PERU                           0                    NA                -0.2981524   -0.3625125   -0.2337923
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.2001432   -0.2807943   -0.1194921
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.1578683   -0.2200102   -0.0957265
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0436497   -0.1213507    0.0340513
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1957220   -0.2441142   -0.1473297
0-3 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0383851   -0.0674235   -0.0093466
0-3 months     ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0432831   -0.1095473    0.0229811
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0586211    0.0522091    0.0650331
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                 0.0709082    0.0547919    0.0870244
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.1880338   -0.2823227   -0.0937449
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.4624471   -0.6994358   -0.2254584
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0253823   -0.0515569    0.0007923
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.0001857   -0.0521044    0.0517331
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0086640   -0.0440092    0.0613371
3-6 months     ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.1299001    0.0745165    0.1852836
3-6 months     ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0364193   -0.0742102    0.0013717
3-6 months     ki0047075b-MAL-ED     INDIA                          0                    NA                -0.0590193   -0.1176195   -0.0004191
3-6 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0620400   -0.0971125   -0.0269675
3-6 months     ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.0057301   -0.0338573    0.0453175
3-6 months     ki0047075b-MAL-ED     PERU                           1                    NA                 0.0149642   -0.0226558    0.0525843
3-6 months     ki0047075b-MAL-ED     PERU                           0                    NA                 0.0446071   -0.0121888    0.1014030
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0079580   -0.0791096    0.0631937
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.0010107   -0.0473501    0.0453286
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1033056   -0.1677161   -0.0388952
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0484312   -0.0875663   -0.0092962
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.1546878   -0.1761350   -0.1332406
3-6 months     ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.1701108   -0.2186958   -0.1215258
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0038173   -0.0103653    0.0027307
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.0180060   -0.0377233    0.0017113
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0708811   -0.0901922   -0.0515701
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.0766447   -0.1229614   -0.0303280
6-9 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0113658   -0.0462585    0.0689901
6-9 months     ki0047075b-MAL-ED     BRAZIL                         0                    NA                -0.0060662   -0.0569108    0.0447784
6-9 months     ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0758782   -0.1038030   -0.0479535
6-9 months     ki0047075b-MAL-ED     INDIA                          0                    NA                -0.0665341   -0.1089999   -0.0240682
6-9 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0409180   -0.0676940   -0.0141420
6-9 months     ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.0279572   -0.0566572    0.0007427
6-9 months     ki0047075b-MAL-ED     PERU                           1                    NA                -0.0350235   -0.0636932   -0.0063538
6-9 months     ki0047075b-MAL-ED     PERU                           0                    NA                -0.0353031   -0.0816019    0.0109957
6-9 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0127922   -0.0684117    0.0428273
6-9 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.0080519   -0.0423359    0.0262322
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0609439   -0.1342131    0.0123252
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1097819   -0.1453317   -0.0742320
6-9 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0446936   -0.0683960   -0.0209911
6-9 months     ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0473217   -0.0874980   -0.0071454
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0860967   -0.1045649   -0.0676284
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.0812603   -0.1140543   -0.0484662
9-12 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0003249   -0.0441386    0.0447885
9-12 months    ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.0069137   -0.0441877    0.0580151
9-12 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -0.1157108   -0.1352723   -0.0961492
9-12 months    ki0047075b-MAL-ED     INDIA                          0                    NA                -0.0582578   -0.0853337   -0.0311819
9-12 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0648564   -0.0902408   -0.0394720
9-12 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.0609408   -0.0849943   -0.0368873
9-12 months    ki0047075b-MAL-ED     PERU                           1                    NA                -0.0296867   -0.0566246   -0.0027488
9-12 months    ki0047075b-MAL-ED     PERU                           0                    NA                -0.0657541   -0.1025682   -0.0289400
9-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0824201   -0.1401100   -0.0247302
9-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.0900691   -0.1196007   -0.0605375
9-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2107992   -0.2829816   -0.1386169
9-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1356563   -0.1752228   -0.0960899
9-12 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0876682   -0.1064477   -0.0688887
9-12 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0422329   -0.0740053   -0.0104604
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0538277   -0.0907401   -0.0169153
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                 0.1173128   -0.1357275    0.3703530
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0631080   -0.0795067   -0.0467093
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.0121017   -0.0572371    0.0330337
12-15 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0052708   -0.0249095    0.0354512
12-15 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                -0.0015437   -0.0368602    0.0337729
12-15 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0625062   -0.0834603   -0.0415522
12-15 months   ki0047075b-MAL-ED     INDIA                          0                    NA                -0.0527576   -0.0802903   -0.0252250
12-15 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0569871   -0.0791840   -0.0347902
12-15 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.0577489   -0.0813197   -0.0341780
12-15 months   ki0047075b-MAL-ED     PERU                           1                    NA                -0.0689245   -0.0898678   -0.0479813
12-15 months   ki0047075b-MAL-ED     PERU                           0                    NA                -0.0597557   -0.0939352   -0.0255762
12-15 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0577223   -0.1079117   -0.0075330
12-15 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.0574531   -0.0850127   -0.0298935
12-15 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0693781   -0.1112550   -0.0275011
12-15 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0561722   -0.0893431   -0.0230013
12-15 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0687061   -0.0800086   -0.0574037
12-15 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0762595   -0.1080096   -0.0445094
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0301466   -0.0573093   -0.0029839
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                 0.0839092   -0.0175252    0.1853436
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0411640   -0.0565957   -0.0257322
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.0598890   -0.0898382   -0.0299399
15-18 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0344385   -0.0664323   -0.0024447
15-18 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                -0.0166066   -0.0481055    0.0148922
15-18 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0424262   -0.0585703   -0.0262821
15-18 months   ki0047075b-MAL-ED     INDIA                          0                    NA                -0.0170330   -0.0439466    0.0098806
15-18 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0622063   -0.0847026   -0.0397100
15-18 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.0497731   -0.0713391   -0.0282070
15-18 months   ki0047075b-MAL-ED     PERU                           1                    NA                -0.0431632   -0.0604336   -0.0258927
15-18 months   ki0047075b-MAL-ED     PERU                           0                    NA                -0.0426177   -0.0745518   -0.0106836
15-18 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0369665   -0.0773207    0.0033877
15-18 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.0259380   -0.0477821   -0.0040938
15-18 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0827911   -0.1279869   -0.0375953
15-18 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0919060   -0.1202688   -0.0635433
15-18 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0567286   -0.0720167   -0.0414405
15-18 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.0889737   -0.1100866   -0.0678607
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0073757   -0.0365142    0.0217627
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                 0.0523403   -0.0114378    0.1161183
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0187319   -0.0322691   -0.0051947
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                 0.0002850   -0.0241720    0.0247420
18-21 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0191605   -0.0535902    0.0152691
18-21 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                -0.0082097   -0.0450279    0.0286085
18-21 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0020212   -0.0166780    0.0126356
18-21 months   ki0047075b-MAL-ED     INDIA                          0                    NA                 0.0222820   -0.0006506    0.0452146
18-21 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0360249   -0.0558831   -0.0161667
18-21 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.0170760   -0.0351863    0.0010344
18-21 months   ki0047075b-MAL-ED     PERU                           1                    NA                -0.0007273   -0.0204979    0.0190433
18-21 months   ki0047075b-MAL-ED     PERU                           0                    NA                -0.0204367   -0.0449411    0.0040678
18-21 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0082945   -0.0349975    0.0515865
18-21 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.0462804   -0.0671747   -0.0253861
18-21 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0060408   -0.0532128    0.0411312
18-21 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0343134   -0.0636455   -0.0049813
18-21 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0169800    0.0006701    0.0332899
18-21 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                 0.0388577    0.0134420    0.0642733
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0234750    0.0091512    0.0377989
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                 0.0264118    0.0036657    0.0491579
21-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0160423   -0.0052927    0.0373774
21-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.0162865   -0.0093986    0.0419716
21-24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0359585    0.0219199    0.0499971
21-24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                 0.0221005    0.0006280    0.0435730
21-24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0134848   -0.0046365    0.0316062
21-24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.0040930   -0.0169057    0.0250917
21-24 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0558363    0.0373524    0.0743201
21-24 months   ki0047075b-MAL-ED     PERU                           0                    NA                 0.0636016    0.0341644    0.0930387
21-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0166239   -0.0165365    0.0497842
21-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.0556127    0.0347374    0.0764881
21-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0036368   -0.0340396    0.0413133
21-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0002228   -0.0300430    0.0304886
21-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0525535    0.0324488    0.0726583
21-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                 0.0052260   -0.0312219    0.0416739


### Parameter: E(Y)


agecat         studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.1272271   -0.1614593   -0.0929949
0-3 months     ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.1488245    0.0885499    0.2090991
0-3 months     ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.0545690   -0.1093806    0.0002426
0-3 months     ki0047075b-MAL-ED     NEPAL                          NA                   NA                 0.0510100    0.0061541    0.0958660
0-3 months     ki0047075b-MAL-ED     PERU                           NA                   NA                -0.2631203   -0.2975785   -0.2286621
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -0.1701813   -0.2201854   -0.1201772
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1481092   -0.1901169   -0.1061015
0-3 months     ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -0.0389250   -0.0654744   -0.0123756
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                 0.0597934    0.0535906    0.0659963
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -0.1924078   -0.2822434   -0.1025722
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.0185754   -0.0420362    0.0048853
3-6 months     ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.0650837    0.0260851    0.1040822
3-6 months     ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.0434351   -0.0750382   -0.0118321
3-6 months     ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.0255014   -0.0523456    0.0013427
3-6 months     ki0047075b-MAL-ED     PERU                           NA                   NA                 0.0252665   -0.0061992    0.0567322
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -0.0065980   -0.0455003    0.0323043
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0668448   -0.1004432   -0.0332465
3-6 months     ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -0.1580566   -0.1776900   -0.1384232
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -0.0050744   -0.0113651    0.0012163
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.0719928   -0.0896446   -0.0543410
6-9 months     ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.0070906   -0.0301925    0.0443736
6-9 months     ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.0730513   -0.0967576   -0.0493449
6-9 months     ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.0334124   -0.0530149   -0.0138099
6-9 months     ki0047075b-MAL-ED     PERU                           NA                   NA                -0.0344967   -0.0587887   -0.0102046
6-9 months     ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -0.0137350   -0.0427808    0.0153108
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0947719   -0.1279445   -0.0615994
6-9 months     ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -0.0454089   -0.0661443   -0.0246735
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.0853635   -0.1017180   -0.0690090
9-12 months    ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.0033209   -0.0300480    0.0366898
9-12 months    ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.0973168   -0.1135502   -0.0810834
9-12 months    ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.0634351   -0.0807824   -0.0460878
9-12 months    ki0047075b-MAL-ED     PERU                           NA                   NA                -0.0414622   -0.0630765   -0.0198479
9-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -0.0920764   -0.1191029   -0.0650499
9-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1543757   -0.1899833   -0.1187681
9-12 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -0.0793581   -0.0958225   -0.0628937
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -0.0463035   -0.0812128   -0.0113943
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.0541395   -0.0699573   -0.0383217
12-15 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                -0.0004235   -0.0234370    0.0225900
12-15 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.0593506   -0.0758306   -0.0428707
12-15 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.0574001   -0.0732076   -0.0415925
12-15 months   ki0047075b-MAL-ED     PERU                           NA                   NA                -0.0661802   -0.0840222   -0.0483383
12-15 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -0.0589478   -0.0825397   -0.0353559
12-15 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0678133   -0.0945748   -0.0410518
12-15 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -0.0698643   -0.0805537   -0.0591748
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -0.0245445   -0.0504325    0.0013435
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.0458018   -0.0595013   -0.0321023
15-18 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                -0.0272762   -0.0493683   -0.0051840
15-18 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.0347219   -0.0482094   -0.0212344
15-18 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.0558396   -0.0714014   -0.0402779
15-18 months   ki0047075b-MAL-ED     PERU                           NA                   NA                -0.0366273   -0.0521417   -0.0211130
15-18 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -0.0303264   -0.0494996   -0.0111532
15-18 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0885708   -0.1125745   -0.0645671
15-18 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -0.0623706   -0.0756949   -0.0490463
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                 0.0002451   -0.0264873    0.0269774
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.0156920   -0.0275555   -0.0038285
18-21 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                -0.0173059   -0.0423234    0.0077117
18-21 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                 0.0035076   -0.0086867    0.0157020
18-21 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.0277114   -0.0411503   -0.0142726
18-21 months   ki0047075b-MAL-ED     PERU                           NA                   NA                -0.0075674   -0.0228614    0.0077265
18-21 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -0.0319118   -0.0515078   -0.0123157
18-21 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0280548   -0.0527783   -0.0033314
18-21 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                 0.0192890    0.0050754    0.0335026
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                 0.0244279    0.0120979    0.0367579
21-24 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.0141891   -0.0024092    0.0307875
21-24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                 0.0316867    0.0200407    0.0433327
21-24 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                 0.0073452   -0.0067007    0.0213911
21-24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                 0.0575837    0.0421321    0.0730353
21-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                 0.0454561    0.0281790    0.0627333
21-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0106677   -0.0132987    0.0346340
21-24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                 0.0458107    0.0279350    0.0636865


### Parameter: ATE


agecat         studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.1228178   -0.2074561   -0.0381794
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.0794064   -0.2003359    0.0415230
0-3 months     ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     INDIA                          0                    1                 -0.0289968   -0.1512330    0.0932394
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0938829    0.0042482    0.1835176
0-3 months     ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     PERU                           0                    1                 -0.0545420   -0.1327970    0.0237130
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.0422749   -0.0587798    0.1433295
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1520723   -0.2438166   -0.0603279
0-3 months     ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0048981   -0.0772767    0.0674806
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    1                  0.0122871   -0.0042327    0.0288069
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.2744133   -0.5304260   -0.0184006
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0251966   -0.0328444    0.0832376
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.1212361    0.0442651    0.1982071
3-6 months     ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     INDIA                          0                    1                 -0.0226001   -0.0921440    0.0469439
3-6 months     ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0677701    0.0151181    0.1204220
3-6 months     ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     PERU                           0                    1                  0.0296429   -0.0385814    0.0978671
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.0069472   -0.0781368    0.0920312
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0548744   -0.0205516    0.1303004
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0154230   -0.0685652    0.0377192
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.0141887   -0.0346703    0.0062929
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.0057636   -0.0561467    0.0446195
6-9 months     ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.0174320   -0.0949819    0.0601179
6-9 months     ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     INDIA                          0                    1                  0.0093442   -0.0415723    0.0602607
6-9 months     ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0129608   -0.0261962    0.0521178
6-9 months     ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     PERU                           0                    1                 -0.0002797   -0.0550967    0.0545374
6-9 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.0047403   -0.0608004    0.0702810
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0488379   -0.1301539    0.0324780
6-9 months     ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0026281   -0.0495194    0.0442632
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0048364   -0.0324432    0.0421160
9-12 months    ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0065888   -0.0611411    0.0743186
9-12 months    ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     INDIA                          0                    1                  0.0574530    0.0242419    0.0906641
9-12 months    ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0039156   -0.0311419    0.0389732
9-12 months    ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     PERU                           0                    1                 -0.0360674   -0.0819867    0.0098520
9-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 -0.0076491   -0.0726602    0.0573621
9-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0751429   -0.0075889    0.1578746
9-12 months    ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0454354    0.0083519    0.0825188
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.1711405   -0.0853328    0.4276137
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0510063    0.0028070    0.0992057
12-15 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.0068145   -0.0531367    0.0395077
12-15 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.0097486   -0.0252250    0.0447222
12-15 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.0007617   -0.0335583    0.0320348
12-15 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.0091688   -0.0309435    0.0492811
12-15 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.0002692   -0.0573379    0.0578763
12-15 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0132059   -0.0405865    0.0669982
12-15 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0075534   -0.0413071    0.0262003
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.1140558    0.0089355    0.2191761
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.0187251   -0.0526844    0.0152342
15-18 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0178319   -0.0277580    0.0634217
15-18 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.0253932   -0.0064881    0.0572745
15-18 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0124333   -0.0188631    0.0437296
15-18 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.0005454   -0.0360317    0.0371226
15-18 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.0110285   -0.0349547    0.0570117
15-18 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0091150   -0.0625045    0.0442745
15-18 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0322451   -0.0582874   -0.0062027
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.0597160   -0.0113402    0.1307722
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0190169   -0.0090259    0.0470597
18-21 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0109509   -0.0400544    0.0619562
18-21 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.0243032   -0.0030626    0.0516690
18-21 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0189489   -0.0079257    0.0458236
18-21 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     PERU                           0                    1                 -0.0197094   -0.0516298    0.0122111
18-21 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 -0.0545749   -0.1030170   -0.0061327
18-21 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0282726   -0.0838902    0.0273449
18-21 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0218777   -0.0087832    0.0525385
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0029368   -0.0239983    0.0298719
21-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0002442   -0.0332968    0.0337851
21-24 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     INDIA                          0                    1                 -0.0138580   -0.0395970    0.0118810
21-24 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.0093918   -0.0368192    0.0180355
21-24 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.0077653   -0.0274182    0.0429488
21-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.0389889   -0.0002523    0.0782300
21-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0034140   -0.0528815    0.0460534
21-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0473275   -0.0893784   -0.0052767


### Parameter: PAR


agecat         studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0228355   -0.0393291   -0.0063419
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0458561   -0.1084487    0.0167365
0-3 months     ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0093767   -0.0470727    0.0283193
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0430753   -0.0001746    0.0863252
0-3 months     ki0047075b-MAL-ED     PERU                           1                    NA                -0.0195099   -0.0477302    0.0087104
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0299620   -0.0432120    0.1031359
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1044595   -0.1707887   -0.0381303
0-3 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0005399   -0.0128564    0.0117765
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0011724   -0.0004250    0.0027697
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0043740   -0.0330017    0.0242537
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0068069   -0.0037256    0.0173393
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0564197    0.0173168    0.0955227
3-6 months     ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0070159   -0.0272589    0.0132271
3-6 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0365385    0.0095195    0.0635576
3-6 months     ki0047075b-MAL-ED     PERU                           1                    NA                 0.0103023   -0.0127055    0.0333101
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0013599   -0.0606856    0.0634055
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0364608   -0.0163181    0.0892396
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0033688   -0.0123469    0.0056093
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0012571   -0.0030526    0.0005384
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0011117   -0.0099569    0.0077335
6-9 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0042752   -0.0427078    0.0341574
6-9 months     ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0028270   -0.0124240    0.0180780
6-9 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0075056   -0.0123317    0.0273429
6-9 months     ki0047075b-MAL-ED     PERU                           1                    NA                 0.0005268   -0.0174118    0.0184654
6-9 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0009428   -0.0483277    0.0464420
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0338280   -0.0908905    0.0232344
6-9 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0007154   -0.0085384    0.0071077
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0007332   -0.0058785    0.0073449
9-12 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0029959   -0.0304311    0.0364230
9-12 months    ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0183940    0.0076222    0.0291657
9-12 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0014213   -0.0163905    0.0192331
9-12 months    ki0047075b-MAL-ED     PERU                           1                    NA                -0.0117754   -0.0270446    0.0034937
9-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0096563   -0.0570486    0.0377360
9-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0564235   -0.0019741    0.1148212
9-12 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0083101    0.0020998    0.0145204
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0075242   -0.0074571    0.0225054
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0089685   -0.0001798    0.0181168
12-15 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0056944   -0.0278482    0.0164595
12-15 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0031556   -0.0075370    0.0138483
12-15 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0004130   -0.0169105    0.0160846
12-15 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0027443   -0.0106381    0.0161267
12-15 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0012255   -0.0439561    0.0415051
12-15 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0015647   -0.0360333    0.0391628
12-15 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0011581   -0.0062830    0.0039667
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0056021   -0.0028449    0.0140491
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0046378   -0.0109330    0.0016573
15-18 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0071624   -0.0146026    0.0289273
15-18 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0077043   -0.0023172    0.0177259
15-18 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0063667   -0.0095952    0.0223285
15-18 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0065358   -0.0058387    0.0189104
15-18 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0066401   -0.0272832    0.0405633
15-18 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0057798   -0.0435742    0.0320147
15-18 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0056420   -0.0098772   -0.0014069
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0076208   -0.0014765    0.0167181
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0030399   -0.0019774    0.0080573
18-21 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0018547   -0.0228763    0.0265857
18-21 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0055289   -0.0030853    0.0141430
18-21 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0083135   -0.0053835    0.0220104
18-21 months   ki0047075b-MAL-ED     PERU                           1                    NA                -0.0068401   -0.0174911    0.0038108
18-21 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0402063   -0.0758003   -0.0046123
18-21 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0220140   -0.0613554    0.0173274
18-21 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0023090   -0.0022139    0.0068319
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0009528   -0.0039142    0.0058198
21-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0018532   -0.0180640    0.0143576
21-24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0042718   -0.0123515    0.0038079
21-24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0061397   -0.0200172    0.0077379
21-24 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0017475   -0.0095776    0.0130726
21-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0288323   -0.0018352    0.0594997
21-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0070308   -0.0283891    0.0424507
21-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0067428   -0.0134447   -0.0000410
