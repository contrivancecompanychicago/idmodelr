context("generate_parameter_permutations")


 scenarios <- tibble::tibble(scenario = c("test_1", "test_2"), scenario_param = c(0, 1))
 variable_params <-  tibble::tibble(variable = c(0, 1))
 fixed_params <- c(fixed_1 = 2, fixed_2 = c(1, 3))
 sample_params <- c(sample_1 = 2, sample_2 = c(2, 1))

 df_check <- tibble::tibble(
    scenario = rep(c("test_1", "test_2"), 2),
    variable = c(0, 0, 1, 1),
    sample = as.integer(1),
    scenario_param = rep(c(0, 1), 2),
    fixed_1 = 2, fixed_21 = 1, fixed_22 = 3,
    sample_1 = 2, sample_21 = 2, sample_22 = 1
 )

 df_results <- generate_parameter_permutations(variable_params, fixed_params, sample_params,
    excluded_params = c("variable"), scenarios,
    parameter_samples = 1)


 test_that("generate_parameter_permutations can generate the correct matrix of permutations when no
           sampling functions is specified", {
             expect_equal(df_results, df_check)
           })

 test_that("generate_parameter_permutations can use a single parameter sample", {
   df_results <- generate_parameter_permutations(variable_params, fixed_params, sample_params,
                                                 excluded_params = c("variable", "scenario_param"), scenarios,
                                                 parameter_samples = 1, repeat_sample = FALSE)
   expect_true(dplyr::all_equal(df_results, df_check))
 })
