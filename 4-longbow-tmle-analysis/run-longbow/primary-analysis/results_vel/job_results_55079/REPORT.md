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
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1               195     239  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     0                44     239  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                96     195  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED     BRAZIL                         0                99     195  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED     INDIA                          1               151     213  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED     INDIA                          0                62     213  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED     NEPAL                          1               111     224  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED     NEPAL                          0               113     224  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED     PERU                           1               181     279  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED     PERU                           0                98     279  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                70     261  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0               191     261  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                59     205  y_rate_wtkg      
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               146     205  y_rate_wtkg      
0-3 months     ki1000109-EE          PAKISTAN                       1                32      32  y_rate_wtkg      
0-3 months     ki1000109-EE          PAKISTAN                       0                 0      32  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal   NEPAL                          1               378     455  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal   NEPAL                          0                77     455  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1             10916   12098  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     0              1182   12098  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1               141     157  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     0                16     157  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1               184     226  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     0                42     226  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                93     186  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED     BRAZIL                         0                93     186  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED     INDIA                          1               146     206  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED     INDIA                          0                60     206  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED     NEPAL                          1               112     226  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED     NEPAL                          0               114     226  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED     PERU                           1               174     264  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED     PERU                           0                90     264  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                63     234  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0               171     234  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                63     208  y_rate_wtkg      
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               145     208  y_rate_wtkg      
3-6 months     ki1000109-EE          PAKISTAN                       1                30      30  y_rate_wtkg      
3-6 months     ki1000109-EE          PAKISTAN                       0                 0      30  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1               351     420  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal   NEPAL                          0                69     420  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1              6540    7170  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     0               630    7170  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     1                20      21  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-4     BANGLADESH                     0                 1      21  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     1               177     217  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     0                40     217  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED     BRAZIL                         1                90     177  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED     BRAZIL                         0                87     177  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED     INDIA                          1               143     205  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED     INDIA                          0                62     205  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED     NEPAL                          1               110     222  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED     NEPAL                          0               112     222  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED     PERU                           1               160     242  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED     PERU                           0                82     242  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                62     222  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0               160     222  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                59     193  y_rate_wtkg      
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               134     193  y_rate_wtkg      
6-9 months     ki1000109-EE          PAKISTAN                       1                36      36  y_rate_wtkg      
6-9 months     ki1000109-EE          PAKISTAN                       0                 0      36  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal   NEPAL                          1               312     374  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal   NEPAL                          0                62     374  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4     BANGLADESH                     1                17      18  y_rate_wtkg      
6-9 months     kiGH5241-JiVitA-4     BANGLADESH                     0                 1      18  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     1               179     218  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     0                39     218  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED     BRAZIL                         1                89     175  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED     BRAZIL                         0                86     175  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED     INDIA                          1               139     201  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED     INDIA                          0                62     201  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED     NEPAL                          1               109     221  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED     NEPAL                          0               112     221  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED     PERU                           1               155     233  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED     PERU                           0                78     233  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                63     223  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0               160     223  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                57     192  y_rate_wtkg      
9-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               135     192  y_rate_wtkg      
9-12 months    ki1000109-EE          PAKISTAN                       1                36      36  y_rate_wtkg      
9-12 months    ki1000109-EE          PAKISTAN                       0                 0      36  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal   NEPAL                          1               294     350  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal   NEPAL                          0                56     350  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     1                86      96  y_rate_wtkg      
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     0                10      96  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     1               168     206  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     0                38     206  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED     BRAZIL                         1                86     165  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED     BRAZIL                         0                79     165  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED     INDIA                          1               138     200  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED     INDIA                          0                62     200  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED     NEPAL                          1               110     222  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED     NEPAL                          0               112     222  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED     PERU                           1               148     222  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED     PERU                           0                74     222  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                60     219  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0               159     219  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                58     195  y_rate_wtkg      
12-15 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               137     195  y_rate_wtkg      
12-15 months   ki1000109-EE          PAKISTAN                       1                29      29  y_rate_wtkg      
12-15 months   ki1000109-EE          PAKISTAN                       0                 0      29  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal   NEPAL                          1               303     358  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal   NEPAL                          0                55     358  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     1                98     108  y_rate_wtkg      
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     0                10     108  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     1               168     206  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     0                38     206  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED     BRAZIL                         1                82     157  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED     BRAZIL                         0                75     157  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED     INDIA                          1               138     201  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED     INDIA                          0                63     201  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED     NEPAL                          1               108     219  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED     NEPAL                          0               111     219  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED     PERU                           1               142     211  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED     PERU                           0                69     211  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                60     218  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0               158     218  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                56     190  y_rate_wtkg      
15-18 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               134     190  y_rate_wtkg      
15-18 months   ki1000109-EE          PAKISTAN                       1                25      25  y_rate_wtkg      
15-18 months   ki1000109-EE          PAKISTAN                       0                 0      25  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal   NEPAL                          1               316     377  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal   NEPAL                          0                61     377  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     1                96     109  y_rate_wtkg      
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     0                13     109  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     1               166     203  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     0                37     203  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED     BRAZIL                         1                79     150  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED     BRAZIL                         0                71     150  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED     INDIA                          1               138     201  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED     INDIA                          0                63     201  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED     NEPAL                          1               108     219  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED     NEPAL                          0               111     219  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED     PERU                           1               133     199  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED     PERU                           0                66     199  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                60     225  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0               165     225  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                53     179  y_rate_wtkg      
18-21 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               126     179  y_rate_wtkg      
18-21 months   ki1000109-EE          PAKISTAN                       1                27      27  y_rate_wtkg      
18-21 months   ki1000109-EE          PAKISTAN                       0                 0      27  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal   NEPAL                          1               295     348  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal   NEPAL                          0                53     348  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     1               164     201  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                37     201  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED     BRAZIL                         1                77     149  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED     BRAZIL                         0                72     149  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED     INDIA                          1               138     201  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED     INDIA                          0                63     201  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED     NEPAL                          1               109     219  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED     NEPAL                          0               110     219  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED     PERU                           1               125     187  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED     PERU                           0                62     187  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                59     226  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0               167     226  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                53     177  y_rate_wtkg      
21-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               124     177  y_rate_wtkg      
21-24 months   ki1000109-EE          PAKISTAN                       1                16      16  y_rate_wtkg      
21-24 months   ki1000109-EE          PAKISTAN                       0                 0      16  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal   NEPAL                          1               238     280  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal   NEPAL                          0                42     280  y_rate_wtkg      


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
![](/tmp/a717be79-094b-4dac-9e59-6581574c47db/80008db1-7cd2-4adc-bf08-0f81cb95230b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a717be79-094b-4dac-9e59-6581574c47db/80008db1-7cd2-4adc-bf08-0f81cb95230b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a717be79-094b-4dac-9e59-6581574c47db/80008db1-7cd2-4adc-bf08-0f81cb95230b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.8839301   0.8579820   0.9098782
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.8532872   0.7948032   0.9117712
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                1.0667214   1.0067610   1.1266818
0-3 months     ki0047075b-MAL-ED     BRAZIL                         0                    NA                1.0593904   1.0125625   1.1062183
0-3 months     ki0047075b-MAL-ED     INDIA                          1                    NA                0.7688412   0.7413906   0.7962919
0-3 months     ki0047075b-MAL-ED     INDIA                          0                    NA                0.7277174   0.6819223   0.7735125
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                0.9539812   0.9149879   0.9929746
0-3 months     ki0047075b-MAL-ED     NEPAL                          0                    NA                0.9628510   0.9241595   1.0015426
0-3 months     ki0047075b-MAL-ED     PERU                           1                    NA                0.9765887   0.9479712   1.0052062
0-3 months     ki0047075b-MAL-ED     PERU                           0                    NA                0.9491807   0.9001469   0.9982146
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.9572647   0.8986504   1.0158790
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.9394890   0.9076262   0.9713518
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9253052   0.8624631   0.9881472
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8553009   0.8176171   0.8929847
0-3 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.8297987   0.8105273   0.8490702
0-3 months     ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.8050783   0.7590386   0.8511180
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.8567363   0.8529475   0.8605252
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.8587355   0.8483593   0.8691117
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.7809627   0.7357623   0.8261630
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                0.7561134   0.6506906   0.8615361
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.4774086   0.4587945   0.4960226
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.4644776   0.4208894   0.5080659
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.5620749   0.5147037   0.6094461
3-6 months     ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.5998432   0.5499029   0.6497835
3-6 months     ki0047075b-MAL-ED     INDIA                          1                    NA                0.4307602   0.4091107   0.4524097
3-6 months     ki0047075b-MAL-ED     INDIA                          0                    NA                0.4713176   0.4315331   0.5111022
3-6 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                0.5047870   0.4741619   0.5354121
3-6 months     ki0047075b-MAL-ED     NEPAL                          0                    NA                0.5399889   0.5132763   0.5667015
3-6 months     ki0047075b-MAL-ED     PERU                           1                    NA                0.4860118   0.4624139   0.5096098
3-6 months     ki0047075b-MAL-ED     PERU                           0                    NA                0.5212093   0.4857526   0.5566660
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.4509051   0.4055046   0.4963056
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.4697437   0.4384247   0.5010627
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4597531   0.4157800   0.5037262
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4393699   0.4065792   0.4721606
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.4871649   0.4719266   0.5024032
3-6 months     ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.5454849   0.5023661   0.5886037
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.4393179   0.4352544   0.4433813
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.4381776   0.4262306   0.4501245
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.2433066   0.2266017   0.2600114
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.2649341   0.2302832   0.2995849
6-9 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.3647017   0.3268433   0.4025601
6-9 months     ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.4082577   0.3676981   0.4488172
6-9 months     ki0047075b-MAL-ED     INDIA                          1                    NA                0.2128259   0.1961527   0.2294990
6-9 months     ki0047075b-MAL-ED     INDIA                          0                    NA                0.2534245   0.2190797   0.2877693
6-9 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                0.2603730   0.2389346   0.2818115
6-9 months     ki0047075b-MAL-ED     NEPAL                          0                    NA                0.2856336   0.2648155   0.3064517
6-9 months     ki0047075b-MAL-ED     PERU                           1                    NA                0.2547366   0.2352886   0.2741846
6-9 months     ki0047075b-MAL-ED     PERU                           0                    NA                0.2741546   0.2473840   0.3009253
6-9 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.3011045   0.2590061   0.3432029
6-9 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.2415124   0.2163091   0.2667157
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2136766   0.1739293   0.2534240
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2541720   0.2194198   0.2889241
6-9 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.1820937   0.1662269   0.1979605
6-9 months     ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.1943174   0.1621041   0.2265308
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.1665880   0.1510930   0.1820830
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.2092344   0.1788914   0.2395775
9-12 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.2547475   0.2112751   0.2982200
9-12 months    ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.3222699   0.2680760   0.3764639
9-12 months    ki0047075b-MAL-ED     INDIA                          1                    NA                0.1706862   0.1528900   0.1884824
9-12 months    ki0047075b-MAL-ED     INDIA                          0                    NA                0.1852367   0.1547712   0.2157022
9-12 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                0.1644643   0.1402558   0.1886728
9-12 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                0.1982574   0.1794594   0.2170555
9-12 months    ki0047075b-MAL-ED     PERU                           1                    NA                0.1921686   0.1721531   0.2121840
9-12 months    ki0047075b-MAL-ED     PERU                           0                    NA                0.1727582   0.1500849   0.1954314
9-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.2042488   0.1632850   0.2452126
9-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.2234254   0.1946200   0.2522308
9-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1464683   0.1095059   0.1834307
9-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1662147   0.1391880   0.1932414
9-12 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.1444540   0.1281809   0.1607271
9-12 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.1822883   0.1540810   0.2104957
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.1907553   0.1734176   0.2080931
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                0.1953962   0.1015475   0.2892448
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.1291617   0.1109589   0.1473645
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.1723331   0.1382431   0.2064232
12-15 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.1907471   0.1525737   0.2289205
12-15 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.2336184   0.1958541   0.2713828
12-15 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.1700774   0.1495420   0.1906128
12-15 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.1834820   0.1515153   0.2154487
12-15 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.1494494   0.1212209   0.1776779
12-15 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.1566650   0.1379346   0.1753953
12-15 months   ki0047075b-MAL-ED     PERU                           1                    NA                0.1310425   0.1109980   0.1510870
12-15 months   ki0047075b-MAL-ED     PERU                           0                    NA                0.1540096   0.1241590   0.1838603
12-15 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.1646798   0.0945616   0.2347980
12-15 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.2016869   0.1754153   0.2279586
12-15 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1379570   0.0950882   0.1808257
12-15 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1789756   0.1469785   0.2109726
12-15 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.1739376   0.1585587   0.1893166
12-15 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.1607927   0.1246346   0.1969507
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.1088997   0.0862482   0.1315511
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                0.1084893   0.0267404   0.1902381
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.1511487   0.1331748   0.1691227
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.0921495   0.0602461   0.1240530
15-18 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.1754354   0.1330745   0.2177964
15-18 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.2419721   0.1979477   0.2859965
15-18 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.1665216   0.1471476   0.1858955
15-18 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.1646000   0.1379445   0.1912554
15-18 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.1846270   0.1617453   0.2075088
15-18 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.1605964   0.1378736   0.1833191
15-18 months   ki0047075b-MAL-ED     PERU                           1                    NA                0.1388224   0.1162074   0.1614375
15-18 months   ki0047075b-MAL-ED     PERU                           0                    NA                0.1554743   0.1202402   0.1907083
15-18 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.2409422   0.1694842   0.3124002
15-18 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.2158557   0.1839523   0.2477591
15-18 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1265019   0.0814195   0.1715843
15-18 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1359844   0.1058743   0.1660945
15-18 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.2215261   0.2036942   0.2393581
15-18 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.2870912   0.2349915   0.3391910
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                0.1507693   0.1249526   0.1765860
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                0.1789215   0.1519005   0.2059424
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.1398986   0.1201242   0.1596730
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.1590541   0.1288140   0.1892943
18-21 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.1482582   0.1161717   0.1803446
18-21 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.1792955   0.1357886   0.2228024
18-21 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.1758271   0.1578602   0.1937940
18-21 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.1641895   0.1342806   0.1940984
18-21 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.1445268   0.1153503   0.1737033
18-21 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.1574564   0.1353735   0.1795394
18-21 months   ki0047075b-MAL-ED     PERU                           1                    NA                0.1723783   0.1492544   0.1955021
18-21 months   ki0047075b-MAL-ED     PERU                           0                    NA                0.1413763   0.1100220   0.1727307
18-21 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.1521445   0.0929320   0.2113570
18-21 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.1879261   0.1554029   0.2204493
18-21 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1787097   0.1265204   0.2308990
18-21 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1539403   0.1231205   0.1847602
18-21 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.1551555   0.1363639   0.1739471
18-21 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.1136772   0.0759247   0.1514296
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                0.1439749   0.1269907   0.1609592
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                0.1686815   0.1398599   0.1975032
21-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                0.1399751   0.1063971   0.1735530
21-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                0.1328993   0.0986253   0.1671733
21-24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.1520141   0.1351678   0.1688605
21-24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.1747097   0.1511248   0.1982945
21-24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.1799331   0.1542907   0.2055754
21-24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.1581015   0.1281743   0.1880286
21-24 months   ki0047075b-MAL-ED     PERU                           1                    NA                0.1729077   0.1489106   0.1969048
21-24 months   ki0047075b-MAL-ED     PERU                           0                    NA                0.1983109   0.1617401   0.2348816
21-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.1964634   0.1506271   0.2422997
21-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.1853572   0.1560692   0.2146453
21-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1402002   0.0855367   0.1948637
21-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1444701   0.1066944   0.1822458
21-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.1628632   0.1358845   0.1898418
21-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.1558208   0.0972701   0.2143716


### Parameter: E(Y)


agecat         studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.8782283   0.8546037   0.9018529
0-3 months     ki0047075b-MAL-ED     BRAZIL                         NA                   NA                1.0646542   1.0280029   1.1013055
0-3 months     ki0047075b-MAL-ED     INDIA                          NA                   NA                0.7574589   0.7340940   0.7808237
0-3 months     ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.9584228   0.9310012   0.9858444
0-3 months     ki0047075b-MAL-ED     PERU                           NA                   NA                0.9695845   0.9443399   0.9948290
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.9436816   0.9164103   0.9709528
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8823647   0.8498032   0.9149263
0-3 months     ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.8249513   0.8069417   0.8429610
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.8567788   0.8531299   0.8604277
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                0.7701110   0.7280930   0.8121290
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.4759067   0.4588572   0.4929562
3-6 months     ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.5807629   0.5466123   0.6149135
3-6 months     ki0047075b-MAL-ED     INDIA                          NA                   NA                0.4428354   0.4243688   0.4613020
3-6 months     ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.5212569   0.5007636   0.5417503
3-6 months     ki0047075b-MAL-ED     PERU                           NA                   NA                0.4987110   0.4795495   0.5178726
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.4651960   0.4389728   0.4914192
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4449049   0.4193050   0.4705047
3-6 months     ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.4947387   0.4800952   0.5093821
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.4392001   0.4352946   0.4431056
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.2435771   0.2286416   0.2585125
6-9 months     ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.3852363   0.3576221   0.4128505
6-9 months     ki0047075b-MAL-ED     INDIA                          NA                   NA                0.2257708   0.2103479   0.2411937
6-9 months     ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.2707612   0.2558425   0.2856799
6-9 months     ki0047075b-MAL-ED     PERU                           NA                   NA                0.2615943   0.2459743   0.2772143
6-9 months     ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.2582981   0.2366643   0.2799319
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2452641   0.2182544   0.2722738
6-9 months     ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.1833726   0.1693467   0.1973984
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.1742501   0.1603345   0.1881656
9-12 months    ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.2870152   0.2525341   0.3214963
9-12 months    ki0047075b-MAL-ED     INDIA                          NA                   NA                0.1750483   0.1600136   0.1900829
9-12 months    ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.1845885   0.1697713   0.1994057
9-12 months    ki0047075b-MAL-ED     PERU                           NA                   NA                0.1859375   0.1706537   0.2012212
9-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.2134162   0.1908275   0.2360049
9-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1579518   0.1360310   0.1798726
9-12 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.1493494   0.1349712   0.1637275
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                0.1927867   0.1760286   0.2095447
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.1349541   0.1188584   0.1510499
12-15 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.2098691   0.1830086   0.2367295
12-15 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.1746076   0.1576725   0.1915427
12-15 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.1530291   0.1359519   0.1701063
12-15 months   ki0047075b-MAL-ED     PERU                           NA                   NA                0.1429995   0.1263204   0.1596787
12-15 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.1888436   0.1630039   0.2146833
12-15 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1670430   0.1409337   0.1931523
12-15 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.1715034   0.1574465   0.1855603
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                0.1088810   0.0873587   0.1304034
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.1419687   0.1260987   0.1578386
15-18 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.2081023   0.1789625   0.2372420
15-18 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.1670737   0.1513151   0.1828322
15-18 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.1721904   0.1559804   0.1884004
15-18 months   ki0047075b-MAL-ED     PERU                           NA                   NA                0.1444767   0.1256292   0.1633242
15-18 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.2221335   0.1931701   0.2510970
15-18 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1366378   0.1119409   0.1613347
15-18 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.2313498   0.2143055   0.2483941
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                0.1538108   0.1308637   0.1767579
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.1441563   0.1270864   0.1612262
18-21 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.1618510   0.1358468   0.1878551
18-21 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.1719770   0.1564970   0.1874571
18-21 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.1511761   0.1334727   0.1688794
18-21 months   ki0047075b-MAL-ED     PERU                           NA                   NA                0.1620790   0.1430444   0.1811137
18-21 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.1798838   0.1527878   0.2069798
18-21 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1578080   0.1309046   0.1847113
18-21 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.1478606   0.1308537   0.1648675
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                0.1485991   0.1337648   0.1634334
21-24 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                0.1369019   0.1132291   0.1605747
21-24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.1590319   0.1452622   0.1728016
21-24 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.1662354   0.1463078   0.1861631
21-24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                0.1814454   0.1615858   0.2013051
21-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.1880230   0.1639514   0.2120945
21-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1380758   0.1082723   0.1678793
21-24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.1608641   0.1363372   0.1853911


### Parameter: ATE


agecat         studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.0306429   -0.0946828    0.0333970
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.0073310   -0.0856956    0.0710336
0-3 months     ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     INDIA                          0                    1                 -0.0411238   -0.0946080    0.0123604
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0088698   -0.0460751    0.0638146
0-3 months     ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     PERU                           0                    1                 -0.0274080   -0.0840854    0.0292695
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 -0.0177757   -0.0844691    0.0489176
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0700043   -0.1435431    0.0035346
0-3 months     ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0247204   -0.0742696    0.0248288
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    1                  0.0019992   -0.0087159    0.0127143
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.0248493   -0.1386595    0.0889608
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.0129309   -0.0603147    0.0344528
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0377683   -0.0316034    0.1071400
3-6 months     ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     INDIA                          0                    1                  0.0405574   -0.0049312    0.0860460
3-6 months     ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0352019   -0.0054302    0.0758340
3-6 months     ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     PERU                           0                    1                  0.0351974   -0.0083633    0.0787582
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.0188385   -0.0363806    0.0740577
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0203832   -0.0772173    0.0364509
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0583200    0.0124962    0.1041437
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.0011403   -0.0135420    0.0112614
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0216275   -0.0171405    0.0603956
6-9 months     ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0435559   -0.0118333    0.0989452
6-9 months     ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     INDIA                          0                    1                  0.0405986    0.0022684    0.0789289
6-9 months     ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0252606   -0.0047533    0.0552745
6-9 months     ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     PERU                           0                    1                  0.0194181   -0.0138075    0.0526436
6-9 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 -0.0595921   -0.1086501   -0.0105340
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0404953   -0.0124218    0.0934124
6-9 months     ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0122237   -0.0240189    0.0484663
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0426464    0.0084787    0.0768141
9-12 months    ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0675224   -0.0018570    0.1369018
9-12 months    ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     INDIA                          0                    1                  0.0145505   -0.0212113    0.0503122
9-12 months    ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0337931    0.0022757    0.0653105
9-12 months    ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     PERU                           0                    1                 -0.0194104   -0.0497304    0.0109096
9-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.0191766   -0.0312065    0.0695597
9-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0197463   -0.0260274    0.0655201
9-12 months    ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0378343    0.0051180    0.0705506
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.0046408   -0.0913007    0.1005824
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0431714    0.0044182    0.0819247
12-15 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0428713   -0.0108708    0.0966134
12-15 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.0134046   -0.0249806    0.0517898
12-15 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0072156   -0.0265275    0.0409587
12-15 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.0229671   -0.0131070    0.0590412
12-15 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.0370071   -0.0383495    0.1123637
12-15 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0410186   -0.0122022    0.0942393
12-15 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0131449   -0.0524814    0.0261915
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.0004104   -0.0853860    0.0845652
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.0589992   -0.0957424   -0.0222560
15-18 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0665367    0.0033073    0.1297660
15-18 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     INDIA                          0                    1                 -0.0019216   -0.0344858    0.0306425
15-18 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.0240307   -0.0561792    0.0081178
15-18 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.0166518   -0.0253581    0.0586617
15-18 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 -0.0250865   -0.1035799    0.0534069
15-18 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0094825   -0.0451662    0.0641312
15-18 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0655651    0.0102329    0.1208974
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.0281521   -0.0091955    0.0654998
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0191556   -0.0177081    0.0560192
18-21 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0310373   -0.0241084    0.0861830
18-21 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     INDIA                          0                    1                 -0.0116376   -0.0466002    0.0233250
18-21 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0129296   -0.0247053    0.0505645
18-21 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     PERU                           0                    1                 -0.0310019   -0.0698958    0.0078919
18-21 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.0357816   -0.0316343    0.1031975
18-21 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0247694   -0.0859767    0.0364379
18-21 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0414783   -0.0837578    0.0008011
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0247066   -0.0087445    0.0581577
21-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.0070758   -0.0556185    0.0414669
21-24 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.0226955   -0.0063264    0.0517174
21-24 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.0218316   -0.0611668    0.0175036
21-24 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.0254032   -0.0184127    0.0692190
21-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 -0.0111062   -0.0664824    0.0442701
21-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0042699   -0.0646418    0.0731816
21-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0070423   -0.0715562    0.0574715


### Parameter: PAR


agecat         studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0057018   -0.0173634    0.0059599
0-3 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0020672   -0.0427677    0.0386333
0-3 months     ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0113824   -0.0264895    0.0037247
0-3 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0044416   -0.0235980    0.0324812
0-3 months     ki0047075b-MAL-ED     PERU                           1                    NA                -0.0070042   -0.0268849    0.0128765
0-3 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0135831   -0.0648460    0.0376797
0-3 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0429404   -0.0961704    0.0102895
0-3 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0048474   -0.0133438    0.0036490
0-3 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0000425   -0.0009922    0.0010771
0-3 months     kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0108517   -0.0224664    0.0007631
3-6 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0015019   -0.0101138    0.0071101
3-6 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0186880   -0.0162214    0.0535974
3-6 months     ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0120751   -0.0006187    0.0247690
3-6 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0164699   -0.0041931    0.0371329
3-6 months     ki0047075b-MAL-ED     PERU                           1                    NA                 0.0126992   -0.0022004    0.0275988
3-6 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0142908   -0.0273240    0.0559057
3-6 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0148482   -0.0550164    0.0253199
3-6 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0075737   -0.0000468    0.0151943
3-6 months     kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0001177   -0.0011985    0.0009630
6-9 months     ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0002705   -0.0070226    0.0075636
6-9 months     ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0205346   -0.0067469    0.0478161
6-9 months     ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0129449    0.0013421    0.0245478
6-9 months     ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0103882   -0.0050693    0.0258457
6-9 months     ki0047075b-MAL-ED     PERU                           1                    NA                 0.0068577   -0.0044435    0.0181590
6-9 months     ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0428064   -0.0792637   -0.0063492
6-9 months     ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0315875   -0.0058177    0.0689927
6-9 months     ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0012789   -0.0047204    0.0072781
9-12 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0076621    0.0012476    0.0140766
9-12 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0322677   -0.0023783    0.0669136
9-12 months    ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0043620   -0.0065362    0.0152602
9-12 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0201242    0.0038591    0.0363893
9-12 months    ki0047075b-MAL-ED     PERU                           1                    NA                -0.0062311   -0.0164041    0.0039419
9-12 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0091674   -0.0283116    0.0466463
9-12 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0114835   -0.0210390    0.0440059
9-12 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0048953   -0.0003467    0.0101374
9-12 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0020313   -0.0062418    0.0103044
12-15 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0057924   -0.0014546    0.0130394
12-15 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0191220   -0.0066982    0.0449422
12-15 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0045302   -0.0070667    0.0161271
12-15 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0035797   -0.0133780    0.0205374
12-15 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0119570   -0.0004305    0.0243445
12-15 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0241638   -0.0317760    0.0801036
12-15 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0290860   -0.0090861    0.0672581
12-15 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0024342   -0.0082702    0.0034018
12-15 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0000186   -0.0059997    0.0059624
15-18 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0091801   -0.0163589   -0.0020013
15-18 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0326668    0.0019302    0.0634035
15-18 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0005521   -0.0096687    0.0107729
15-18 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0124367   -0.0287749    0.0039016
15-18 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0056543   -0.0077834    0.0190919
15-18 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0188087   -0.0795508    0.0419335
15-18 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0101359   -0.0285965    0.0488683
15-18 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0098237    0.0007916    0.0188558
15-18 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0030415   -0.0014295    0.0075124
18-21 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0042577   -0.0028403    0.0113558
18-21 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0135928   -0.0127366    0.0399222
18-21 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0038501   -0.0148484    0.0071482
18-21 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0066492   -0.0122083    0.0255068
18-21 months   ki0047075b-MAL-ED     PERU                           1                    NA                -0.0102992   -0.0233086    0.0027102
18-21 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0277393   -0.0263187    0.0817973
18-21 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0209017   -0.0644618    0.0226583
18-21 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0072949   -0.0140386   -0.0005512
21-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0046242   -0.0016050    0.0108533
21-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0030731   -0.0258031    0.0196568
21-24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0070178   -0.0021594    0.0161949
21-24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0136976   -0.0339631    0.0065679
21-24 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0085377   -0.0058189    0.0228944
21-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0084404   -0.0495824    0.0327016
21-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0021244   -0.0508606    0.0466118
21-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0019990   -0.0116679    0.0076699
