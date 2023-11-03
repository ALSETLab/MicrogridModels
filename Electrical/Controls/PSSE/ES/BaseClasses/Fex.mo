within OpenIPSL.Electrical.Controls.PSSE.ES.BaseClasses;
function Fex "Rectifier Regulation Characteristic"
  extends Modelica.Icons.Function;
  input Real u;
  output Real y;
algorithm
  if u <= 0 then
    y := 1;
  elseif u > 0 and u <= 0.433 then
    y := 1 - 0.577*u;
  elseif u > 0.433 and u < 0.75 then
    y := sqrt(0.75 - u^2);
  elseif u >= 0.75 and u <= 1 then
    y := 1.732*(1 - u);
  else
    y := 0;
  end if;

end Fex;
