within OpenIPSL.Examples.Microgrids.UniversityCampuses.CampusA;
package Data
  record PF_results
    "Collection of records that characterize the equilibrium point"
    extends Modelica.Icons.Record;
    replaceable record Voltages =
        VoltagesCampus1 constrainedby VoltagesCampus1                  "Voltage data record template"
                                                    annotation (
        choicesAllMatching);
    Voltages voltages;

    replaceable record Machines = MachinesCampus1 constrainedby MachinesCampus1
                                                                       "Power data record template for machines"
                                                    annotation (
        choicesAllMatching);
    Machines machines;

    replaceable record Loads = LoadsCampus1 constrainedby LoadsCampus1
                                                      "Power data record template for loads"
                                   annotation (choicesAllMatching);
    Loads loads;

    replaceable record Photovoltaic =
                                 RenewablesCampus1 constrainedby
      RenewablesCampus1
      "Power data record template for PV"     annotation (
        choicesAllMatching);
    Photovoltaic photovoltaic;
    annotation (
      defaultComponentName="PF_results",
      defaultComponentPrefixes="inner",
      missingInnerMessage="
    No 'PF_results' data is defined.",
      Documentation(info="<html>
This record collects all the information that is used to initialized the network in a certain operating point.
</html>"));
  end PF_results;

  extends Modelica.Icons.RecordsPackage;
  record LoadsCampus1 "Data record for load power consumption"
    extends Modelica.Icons.Record;

    // Load 1
    parameter Real P1=0.8180e6;
    parameter Real Q1=0.3880e6;

    // Load 2
    parameter Real P2=0.2660e6;
    parameter Real Q2=0.1010e6;

    // Load 3
    parameter Real P3=1.2900e6;
    parameter Real Q3=0.6020e6;

    // Load 4
    parameter Real P4=2.1700e6;
    parameter Real Q4=1.1200e6;

    // Load 5
    parameter Real P5=1.6770e6;
    parameter Real Q5=0.9670e6;

    // Load 6
    parameter Real P6=0.3050e6;
    parameter Real Q6=0.1670e6;

    // Load 7
    parameter Real P7=0.3400e6;
    parameter Real Q7=0.1000e6;

    // Load 8
    parameter Real P8=0.3810e6;
    parameter Real Q8=0.1440e6;

    // Load 9
    parameter Real P9=0.6100e6;
    parameter Real Q9=0.3380e6;

    // Load 10
    parameter Real P10=0.5090e6;
    parameter Real Q10=0.2850e6;

    annotation (Documentation(info="<html>
This data record has the active and reactive powers in VA and Var, respectively, that are consumed by the system's loads. The data is used to initialized the network in a certain operating point.
</html>"));
  end LoadsCampus1;

  record MachinesCampus1 "Data record for power generation"
    extends Modelica.Icons.Record;

    // Machine GT1
    parameter Real PGT1=2e6;
    parameter Real QGT1=-8e6;

    // Machine GT2
    parameter Real PGT2=2e6;
    parameter Real QGT2=1.4050e6;

    // Machine ST
    parameter Real PST=0.5e6;
    parameter Real QST=-0.9430001e6;

    // Machine Inf
    //parameter Real PInf=6.5e6;
    parameter Real PInf=35111.4;
    parameter Real QInf=11.756e6;

    annotation (Documentation(info="<html>
This data record has the active and reactive powers in VA and Var, respectively, that are delivered by the generation units to the system. The data is used to initialized the network in a certain operating point.
</html>"));
  end MachinesCampus1;

  record VoltagesCampus1 "Data record for voltage magnitude and angle"
    extends Modelica.Icons.Record;
    import Modelica.Constants.pi;

    // Bus B1L1
    parameter Real VB1L1=0.9960279;
    parameter Real AB1L1=0.425989*pi/180;

    // Bus B2L1
    parameter Real VB2L1=0.9960279;
    parameter Real AB2L1=0.425989*pi/180;

    // Bus B1L2
    parameter Real VB1L2=1.00093;
    parameter Real AB1L2=1.82279*pi/180;

    // Bus B2L2
    parameter Real VB2L2=0.9999925;
    parameter Real AB2L2=0.247211*pi/180;

    // Bus B3L2
    parameter Real VB3L2=0.9960279;
    parameter Real AB3L2=0.425989*pi/180;

    // Bus B1L3
    parameter Real VB1L3=1.0000;
    parameter Real AB1L3=0.0000*pi/180;

    // Bus B1L4
    parameter Real VB1L4=0.992577;
    parameter Real AB1L4=0.0444074*pi/180;

    // Bus B2L4
    parameter Real VB2L4=0.992577;
    parameter Real AB2L4=0.0444074*pi/180;

    // Bus B3L4
    parameter Real VB3L4=0.992577;
    parameter Real AB3L4=0.0444074*pi/180;

    // Bus B1L5
    parameter Real VB1L5=0.9912935;
    parameter Real AB1L5=0.070656*pi/180;

    // Bus B2L5
    parameter Real VB2L5=0.9920305;
    parameter Real AB2L5=0.0546208*pi/180;

    // Bus B3L5
    parameter Real VB3L5=0.9921045;
    parameter Real AB3L5=0.0482479*pi/180;

    // Bus B4L5
    parameter Real VB4L5=0.989964;
    parameter Real AB4L5=0.113864*pi/180;

    // Bus B5L5
    parameter Real VB5L5=0.9893169;
    parameter Real AB5L5=0.13374*pi/180;

    // Bus B6L5
    parameter Real VB6L5=0.9688569;
    parameter Real AB6L5=0.441645*pi/180;

    // Bus B1L6
    parameter Real VB1L6=0.9912949;
    parameter Real AB1L6=0.0520638*pi/180;

    // Bus B1L7
    parameter Real VB1L7=0.9895068;
    parameter Real AB1L7=0.090479*pi/180;

    // Bus B2L7
    parameter Real VB2L7=0.9912695;
    parameter Real AB2L7=0.069*pi/180;

    // Bus B1L8
    parameter Real VB1L8=0.9897282;
    parameter Real AB1L8=0.101351*pi/180;

    // Bus B2L8
    parameter Real VB2L8=0.9908705;
    parameter Real AB2L8=0.0642161*pi/180;

    // Bus B1L9
    parameter Real VB1L9=0.9892222;
    parameter Real AB1L9=0.114896*pi/180;

    // Bus B2L9
    parameter Real VB2L9=0.9896949;
    parameter Real AB2L9=0.0986142*pi/180;

    // Bus PV1B1
    parameter Real VPV1B1=0.9895245;
    parameter Real APV1B1=0.8042775*pi/180;

   // Bus PV1B2
    parameter Real VPV1B2=0.9894509;
    parameter Real APV1B2=0.7939371*pi/180;

   // Bus PV2B1
    parameter Real VPV2B1=0.9896978;
    parameter Real APV2B1=0.7665736*pi/180;

    // Bus PV2B2
    parameter Real VPV2B2=0.9896949;
    parameter Real APV2B2=0.7662135*pi/180;

    // Bus PV3B1
    parameter Real VPV3B1=0.9688582;
    parameter Real APV3B1=1.474061*pi/180;

    // Bus PV3B2
    parameter Real VPV3B2=0.9688582;
    parameter Real APV3B2=1.474061*pi/180;

    // Bus PV4B1
    parameter Real VPV4B1=0.9913135;
    parameter Real APV4B1=0.7200715*pi/180;

    // Bus PV4B2
    parameter Real VPV4B2=0.9913135;
    parameter Real APV4B2=0.7200715*pi/180;

    // Bus PV5B1
    parameter Real VPV5B1=0.9894778;
    parameter Real APV5B1=0.8212546*pi/180;

    // Bus PV5B2
    parameter Real VPV5B2=0.9894778;
    parameter Real APV5B2=0.8212546*pi/180;

    annotation (Documentation(info="<html>
This data record has the voltage magnitude, in per unit, and angle, in radians, that are used to initialized the network in a certain operating point.
</html>"));
  end VoltagesCampus1;

  record RenewablesCampus1 "Data record for renewable generation"
    extends Modelica.Icons.Record;

    // Photovoltaic 1
    parameter Real PPV1=0.31e6;
    parameter Real QPV1=0.1279e6;

    // Photovoltaic 2
    parameter Real PPV2=0.0108e6;
    parameter Real QPV2=0.0051e6;

    // Photovoltaic 3
    parameter Real PPV3=0.007e6;
    parameter Real QPV3=0.0024e6;

    // Photovoltaic 4
    parameter Real PPV4=0.009e6;
    parameter Real QPV4=0.0323e6;

    // Photovoltaic 5
    parameter Real PPV5=0.6e6;
    parameter Real QPV5=0.2793e6;

    annotation (Documentation(info="<html>
This data record has the active and reactive powers in VA and Var, respectively, that are delivered by the generation units to the system. The data is used to initialized the network in a certain operating point.
</html>"));
  end RenewablesCampus1;

end Data;
