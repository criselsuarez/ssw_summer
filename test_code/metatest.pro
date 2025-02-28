pro metatest

  compile_opt idl2
  on_error, 2

  DATA_DIR = '$SSW' + path_sep() + 'test_code' + path_sep() + 'test_data' + path_sep()
  DATA_PATH = DATA_DIR + 'minxss1' + path_sep() + 'minxss1_l1_mission_length_v4.0.0.sav'

  spex_fit_time_interval = [ ['23-Jul-2016 01:47:05.671', '23-Jul-2016 01:58:15.921'] ]
  spex_erange = [1,12]
  fit_function = 'vth_abun_ext'
  fit_comp_params = [1.0, 0.2, 1., 1., 1., 1., 1., 1., 1., 1.]
  fit_comp_free = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
  fit_comp_maxima = [1.e20, 4.0, 10., 10., 10., 10., 10., 10., 10., 10.]
  fit_comp_minima = [1.e-20, 0.1, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01]
  
  ot = OSPEXTester()
  ot->set_spex_specfile, DATA_PATH
  ot->set_spex_fit_time_interval, spex_fit_time_interval
  ot->set_spex_erange, spex_erange
  ot->set_fit_function, fit_function
  ot->set_fit_comp_params, fit_comp_params
  ot->set_fit_comp_free, fit_comp_free
  ot->set_fit_comp_maxima, fit_comp_maxima
  ot->set_fit_comp_minima, fit_comp_minima
  
  ot->run_test
  
end