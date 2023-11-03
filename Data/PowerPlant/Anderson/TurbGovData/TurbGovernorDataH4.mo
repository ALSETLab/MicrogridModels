within OpenIPSL.Data.PowerPlant.Anderson.TurbGovData;
record TurbGovernorDataH4
  extends TurbGovernorDataTemplate( GOV = "G",
    R = 0.050,
    P_MAX = 40.00/35,
    T_1 = 16.000,
    T_2 = 2.400,
    T_3 = 0.920,
    T_4 = 0.000,
    T_5 = 0.300,
    F = -2.000);
end TurbGovernorDataH4;
