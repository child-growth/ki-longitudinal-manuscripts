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






```
## Warning in set(data, , char_cols, data[, lapply(.SD, as.factor), .SDcols =
## char_cols]): length(LHS)==0; no columns to delete or assign RHS to.
```

## Methods
## Outcome Variable

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** brthmon

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      brthmon    n_cell       n  outcome_variable 
----------  --------  -------  ------  -----------------
Birth       1            4818   59325  haz              
Birth       2            4424   59325  haz              
Birth       3            5035   59325  haz              
Birth       4            4275   59325  haz              
Birth       5            3876   59325  haz              
Birth       6            4213   59325  haz              
Birth       7            4783   59325  haz              
Birth       8            5297   59325  haz              
Birth       9            5500   59325  haz              
Birth       10           5582   59325  haz              
Birth       11           5614   59325  haz              
Birth       12           5908   59325  haz              
6 months    1            4164   58290  haz              
6 months    2            4173   58290  haz              
6 months    3            5112   58290  haz              
6 months    4            4438   58290  haz              
6 months    5            4272   58290  haz              
6 months    6            4350   58290  haz              
6 months    7            5056   58290  haz              
6 months    8            5579   58290  haz              
6 months    9            5366   58290  haz              
6 months    10           5302   58290  haz              
6 months    11           5250   58290  haz              
6 months    12           5228   58290  haz              
24 months   1            1659   25706  haz              
24 months   2            2240   25706  haz              
24 months   3            2602   25706  haz              
24 months   4            2070   25706  haz              
24 months   5            1828   25706  haz              
24 months   6            1989   25706  haz              
24 months   7            2334   25706  haz              
24 months   8            2316   25706  haz              
24 months   9            2104   25706  haz              
24 months   10           2042   25706  haz              
24 months   11           2103   25706  haz              
24 months   12           2419   25706  haz              


The following strata were considered:

* agecat: 24 months
* agecat: 6 months
* agecat: Birth



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




# Results Detail

## Results Plots
![](/tmp/1e337621-5ede-4e00-af9e-b41c679be71e/3844d7b8-c223-46cd-8f19-5a81f7316f9c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1e337621-5ede-4e00-af9e-b41c679be71e/3844d7b8-c223-46cd-8f19-5a81f7316f9c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/1e337621-5ede-4e00-af9e-b41c679be71e/3844d7b8-c223-46cd-8f19-5a81f7316f9c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -0.8280552   -0.8971622   -0.7589482
Birth       2                    NA                -0.7936551   -0.8606706   -0.7266396
Birth       3                    NA                -0.6821033   -0.7433902   -0.6208164
Birth       4                    NA                -0.5505170   -0.6181473   -0.4828866
Birth       5                    NA                -0.4214590   -0.5015467   -0.3413713
Birth       6                    NA                -0.4633954   -0.5417303   -0.3850606
Birth       7                    NA                -0.3486787   -0.4167686   -0.2805887
Birth       8                    NA                -0.4686275   -0.5270259   -0.4102291
Birth       9                    NA                -0.4897364   -0.5428533   -0.4366194
Birth       10                   NA                -0.5219635   -0.5730834   -0.4708435
Birth       11                   NA                -0.6351986   -0.6915542   -0.5788431
Birth       12                   NA                -0.6114954   -0.6634412   -0.5595497
6 months    1                    NA                -0.9029113   -0.9809824   -0.8248402
6 months    2                    NA                -0.9250543   -0.9961291   -0.8539795
6 months    3                    NA                -0.9157034   -0.9826098   -0.8487970
6 months    4                    NA                -0.8346629   -0.8996842   -0.7696416
6 months    5                    NA                -0.8143549   -0.8822067   -0.7465032
6 months    6                    NA                -0.8427070   -0.9135774   -0.7718366
6 months    7                    NA                -0.8153499   -0.8731673   -0.7575324
6 months    8                    NA                -0.8307458   -0.8873111   -0.7741805
6 months    9                    NA                -0.7742929   -0.8304041   -0.7181817
6 months    10                   NA                -0.7832098   -0.8402159   -0.7262037
6 months    11                   NA                -0.8310482   -0.8921645   -0.7699320
6 months    12                   NA                -0.7468867   -0.8098107   -0.6839627
24 months   1                    NA                -1.6205957   -1.7564108   -1.4847806
24 months   2                    NA                -1.7605238   -1.8623253   -1.6587223
24 months   3                    NA                -1.5842890   -1.6749127   -1.4936653
24 months   4                    NA                -1.5438370   -1.6401222   -1.4475518
24 months   5                    NA                -1.4988259   -1.6191218   -1.3785299
24 months   6                    NA                -1.5728053   -1.6885490   -1.4570615
24 months   7                    NA                -1.5429329   -1.6253951   -1.4604708
24 months   8                    NA                -1.5008788   -1.5874168   -1.4143408
24 months   9                    NA                -1.4897983   -1.5694881   -1.4101086
24 months   10                   NA                -1.5740380   -1.6591525   -1.4889235
24 months   11                   NA                -1.7213199   -1.8142186   -1.6284212
24 months   12                   NA                -1.7032179   -1.7860065   -1.6204293


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.5699171   -0.5881824   -0.5516518
6 months    NA                   NA                -0.8317427   -0.8502227   -0.8132627
24 months   NA                   NA                -1.5943496   -1.6222631   -1.5664360


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       1                    1                  0.0000000    0.0000000   0.0000000
Birth       2                    1                  0.0344001   -0.0618447   0.1306450
Birth       3                    1                  0.1459519    0.0536422   0.2382616
Birth       4                    1                  0.2775383    0.1809396   0.3741369
Birth       5                    1                  0.4065962    0.3008910   0.5123014
Birth       6                    1                  0.3646598    0.2602172   0.4691023
Birth       7                    1                  0.4793766    0.3825155   0.5762376
Birth       8                    1                  0.3594277    0.2690172   0.4498381
Birth       9                    1                  0.3383188    0.2512172   0.4254205
Birth       10                   1                  0.3060918    0.2202188   0.3919648
Birth       11                   1                  0.1928566    0.1037223   0.2819909
Birth       12                   1                  0.2165598    0.1301665   0.3029530
6 months    1                    1                  0.0000000    0.0000000   0.0000000
6 months    2                    1                 -0.0221430   -0.1277239   0.0834379
6 months    3                    1                 -0.0127921   -0.1156204   0.0900362
6 months    4                    1                  0.0682484   -0.0333319   0.1698287
6 months    5                    1                  0.0885564   -0.0148679   0.1919806
6 months    6                    1                  0.0602043   -0.0451957   0.1656043
6 months    7                    1                  0.0875614   -0.0094302   0.1845530
6 months    8                    1                  0.0721655   -0.0240866   0.1684175
6 months    9                    1                  0.1286184    0.0325609   0.2246760
6 months    10                   1                  0.1197015    0.0230774   0.2163256
6 months    11                   1                  0.0718631   -0.0272660   0.1709922
6 months    12                   1                  0.1560246    0.0558138   0.2562355
24 months   1                    1                  0.0000000    0.0000000   0.0000000
24 months   2                    1                 -0.1399281   -0.3096474   0.0297912
24 months   3                    1                  0.0363067   -0.1268008   0.1994143
24 months   4                    1                  0.0767588   -0.0897060   0.2432236
24 months   5                    1                  0.1217699   -0.0595194   0.3030591
24 months   6                    1                  0.0477905   -0.1305919   0.2261728
24 months   7                    1                  0.0776628   -0.0813358   0.2366614
24 months   8                    1                  0.1197169   -0.0411934   0.2806272
24 months   9                    1                  0.1307974   -0.0264403   0.2880351
24 months   10                   1                  0.0465577   -0.1137569   0.2068723
24 months   11                   1                 -0.1007242   -0.2656844   0.0642360
24 months   12                   1                 -0.0826222   -0.2416237   0.0763794


### Parameter: PAR


agecat      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------  ---------------  ----------  -----------  ----------
Birth       1                    NA                0.2581381    0.1922900   0.3239863
6 months    1                    NA                0.0711686   -0.0033603   0.1456975
24 months   1                    NA                0.0262462   -0.1034986   0.1559910
