within OpenIPSL.Examples.N44.Original.Generators;
model Gen3_bus_3115 "Configuration of synchronous generator with regulators: GENSAL, HYGOV, SCRX, STAB2A;
          Nordic 44 model: Buses 3115, 5300, 6100, 6700, 7100"

  OpenIPSL.Electrical.Machines.PSSE.GENSAL gENSAL(
    D=0 "Speed Damping",
    Tpd0=7.57,
    Tppd0=0.045,
    Tppq0=0.1,
    H=4.741,
    Xd=0.946,
    Xq=0.565,
    Xpd=0.29,
    Xppd=0.23,
    Xppq=0.23,
    Xl=0.11077,
    V_b=420000,
    v_0=PSSE_data.voltages.V3115,
    angle_0=PSSE_data.voltages.A3115,
    P_0=PSSE_data.powers.P3115,
    Q_0=PSSE_data.powers.Q3115,
    M_b=1100000000,
    S10=0.10239,
    S12=0.2742,
    R_a=0)
    annotation (Placement(transformation(extent={{-46,-24},{16,42}})));
  OpenIPSL.Electrical.Controls.PSSE.TG.HYGOV hYGOV(
    R=0.06 "Permanent droop, p.u",
    r=0.4 "Temporary droop, p.u",
    VELM=0.1,
    T_r=5,
    T_f=0.05,
    T_g=0.2,
    G_MAX=1,
    G_MIN=0,
    T_w=1,
    A_t=1.0577,
    D_turb=0.5,
    q_NL=0.1)
    annotation (Placement(transformation(extent={{-44,56},{20,86}})));
  OpenIPSL.Electrical.Controls.PSSE.ES.SCRX sCRX(
    K=31,
    T_AT_B=0.25385,
    T_B=13,
    T_E=0.05,
    E_MIN=0,
    E_MAX=4,
    r_cr_fd=0,
    C_SWITCH=true)
    annotation (Placement(transformation(extent={{36,-86},{90,-32}})));
  Modelica.Blocks.Sources.Constant cte(k=0)
    annotation (Placement(transformation(extent={{-11,-69},{-1,-59}})));
  OpenIPSL.Electrical.Controls.PSSE.PSS.STAB2A sTAB2A(
    H_LIM=0.04,
    K_2=1,
    T_2=4.5,
    K_3=0.87,
    T_3=2,
    K_4=0.087,
    K_5=1,
    T_5=0.01)
    annotation (Placement(transformation(extent={{-48,-54},{7,-33}})));
  OpenIPSL.Interfaces.PwPin p annotation (Placement(transformation(extent={{100,-10},{120,10}}), iconTransformation(extent={{100,
            -10},{120,10}})));
  Original.Data.PSSE_data_Original_case PSSE_data
    annotation (Placement(transformation(extent={{86,88},{96,98}})));
equation
  connect(sTAB2A.VOTHSG, sCRX.VOTHSG) annotation (Line(points={{9.5,-43.5},{16.75,-43.5},{16.75,-42.5},{36,-42.5}},
                                                         color={0,0,127}));
  connect(cte.y, sCRX.VOEL) annotation (Line(points={{-0.5,-64},{16,-64},{16,-86},{53.55,-86}},
                                       color={0,0,127}));
  connect(gENSAL.p, p) annotation (Line(points={{16,9},{70,9},{70,0},{110,0}},
               color={0,0,255}));
  connect(sCRX.EFD, gENSAL.EFD) annotation (Line(points={{91.35,-56},{94,-56},{94,-90},{-68,-90},{-68,-7.5},{-52.2,-7.5}},
                                                                color={0,0,
          127}));
  connect(gENSAL.PELEC, sTAB2A.PELEC) annotation (Line(points={{19.1,18.9},{30,18.9},{30,-30},{-56,-30},{-56,-43.5},{-47.25,-43.5}},
                                                                    color={
          0,0,127}));
  connect(gENSAL.XADIFD, sCRX.XADIFD) annotation (Line(points={{18.48,-20.7},{22,-20.7},{22,-85.4},{75.15,-85.4}},
                                                   color={0,0,127}));
  connect(gENSAL.EFD0, sCRX.EFD0) annotation (Line(points={{19.1,-7.5},{28,-7.5},{28,-75.5},{36,-75.5}},
                                                  color={0,0,127}));
  connect(hYGOV.PMECH, gENSAL.PMECH) annotation (Line(points={{21.3333,72.6667},{28,72.6667},{34,72.6667},{34,48},{-58,48},{-58,25.5},{-52.2,25.5}},
                                                                  color={0,
          0,127}));
  connect(gENSAL.SPEED, hYGOV.SPEED) annotation (Line(points={{19.1,32.1},{38,32.1},{38,90},{-52,90},{-52,81},{-41.3333,81}},
                                                               color={0,0,
          127}));
  connect(gENSAL.PMECH0, hYGOV.PMECH0) annotation (Line(points={{19.1,25.5},{42,25.5},{42,94},{-58,94},{-58,62.6667},{-41.3333,62.6667}},
                                                               color={0,0,
          127}));
  connect(gENSAL.ETERM, sCRX.ECOMP) annotation (Line(points={{19.1,-0.9},{32,-0.9},{32,-56},{36,-56}},
                                                 color={0,0,127}));
  connect(sCRX.VUEL, cte.y) annotation (Line(points={{45.45,-86},{16,-86},{16,-64},{-0.5,-64}},
                                color={0,0,127}));
  annotation (
    Icon(graphics={Ellipse(extent={{-100,-100},{101,100}}, lineColor={0,0,
          255}),Line(
              points={{-76,-26},{-28,52},{27,-52},{74,23}},
              color={0,0,255},
              smooth=Smooth.Bezier)}));
end Gen3_bus_3115;
