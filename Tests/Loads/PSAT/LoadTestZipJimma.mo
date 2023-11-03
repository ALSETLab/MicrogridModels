within OpenIPSL.Tests.Loads.PSAT;
model LoadTestZipJimma "Simple system to test functionality of Jimma's (PSAT) ZIP load model"
  extends BaseClasses.LoadTestBase;
  extends Modelica.Icons.Example;
  OpenIPSL.Electrical.Loads.PSAT.ZIP_Jimma zIPJimma(
    Sn=10000000,
    Tf=0.1,
    P_0=800000,
    Q_0=600000,
    v_0=0.993325565105317) annotation (Placement(transformation(origin={80,-30}, extent={{-10,-10},{10,10}})));
equation
  connect(bus3.p, zIPJimma.p) annotation (Line(points={{70,0},{80,0},{80,-20}}, color={0,0,255}));
  annotation (experiment(
      StopTime=15,
      Interval=0.03,
      Tolerance=1e-05));
end LoadTestZipJimma;
