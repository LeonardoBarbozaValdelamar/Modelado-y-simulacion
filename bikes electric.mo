package bikes
  partial package modelos
  end modelos;

  partial package conectorespackage bikes
  partial package modelos
  end modelos;

  partial package conectores
  end conectores;

  partial record c1
    constant Real e = 2.7183, p = 1.23;
    parameter Real M, vg, G, Cd, A, Vw, Vg;
  end c1;

  record Tipo1
      extends c1(M=1, vg=1, G=1, Cd=1, A=1, Vw=1, Vg=1);
    //definir valores despues
    annotation(
      Icon(graphics = {Rectangle(origin = {5, 2}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-33, 30}, {33, -30}})}));
  end Tipo1;

  model perdidas1
  Tipo1 tipo11 annotation(
      Placement(visible = true, transformation(origin = {26, -4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
   output Real pu, Rw, Vr, Pw;
  equation
    pu = 9.81*(tipo1.M)*(tipo1.vg)*(tipo1.G);
    Vr = (tipo1.Vw)+(tipo1.Vg);
    Rw = (tipo1.Cd)*(tipo1.p)*(tipo1.A)*(tipo1.Vr)^ 2 / 2;
//fuerza
    Pw = (tipo1.Rw)*(tipo1.Vg);
//power consumed in watts
  end perdidas1;

  record tipo2
    annotation(
      Icon(graphics = {Rectangle(origin = {5, 2}, fillColor = {0, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-33, 30}, {33, -30}})}, coordinateSystem(initialScale = 0.1)));
  end tipo2;

  model pedidas2
  tipo2 tipo21 annotation(
      Placement(visible = true, transformation(origin = {-16, 12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 output Real pu, Rw, Vr, Pw;
  equation
    pu = 9.81*(tipo1.M)*(tipo1.vg)*(tipo1.G);
    Vr = (tipo1.Vw)+(tipo1.Vg);
    Rw = (tipo1.Cd)*(tipo1.p)*(tipo1.A)*(tipo1.Vr)^ 2 / 2;
//fuerza
    Pw = (tipo1.Rw)*(tipo1.Vg);
//power consumed in watts
  end pedidas2;

  model bateria
 Modelica.Electrical.Analog.Basic.Resistor resistor1 annotation(
      Placement(visible = true, transformation(origin = {-28, 50}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
 Modelica.Electrical.Analog.Basic.Capacitor capacitor1 annotation(
      Placement(visible = true, transformation(origin = {-49, -1}, extent = {{-17, -17}, {17, 17}}, rotation = 90)));
  equation
    connect(capacitor1.n, resistor1.p) annotation(
      Line(points = {{-48, 16}, {-48, 50}}, color = {0, 0, 255}));
  end bateria;
 annotation(
    uses(Modelica(version = "3.2.3")));
end bikes;

  end conectores;

  partial record c1
    constant Real e = 2.7183, p = 1.23;
    parameter Real M, vg, G, Cd, A, Vw, Vg;
  end c1;

  record Tipo1
      extends c1(M=1, vg=1, G=1, Cd=1, A=1, Vw=1, Vg=1);
    //definir valores despues
    annotation(
      Icon(graphics = {Rectangle(origin = {5, 2}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-33, 30}, {33, -30}})}));
  end Tipo1;

  model perdidas1
  Tipo1 tipo11 annotation(
      Placement(visible = true, transformation(origin = {26, -4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
   output Real pu, Rw, Vr, Pw;
  equation
    pu = 9.81*(tipo1.M)*(tipo1.vg)*(tipo1.G);
    Vr = (tipo1.Vw)+(tipo1.Vg);
    Rw = (tipo1.Cd)*(tipo1.p)*(tipo1.A)*(tipo1.Vr)^ 2 / 2;
  //fuerza
    Pw = (tipo1.Rw)*(tipo1.Vg);
  //power consumed in watts
  end perdidas1;

  record tipo2
    annotation(
      Icon(graphics = {Rectangle(origin = {5, 2}, fillColor = {0, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-33, 30}, {33, -30}})}, coordinateSystem(initialScale = 0.1)));
  end tipo2;

  model pedidas2
  tipo2 tipo21 annotation(
      Placement(visible = true, transformation(origin = {-16, 12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 output Real pu, Rw, Vr, Pw;
  equation
    pu = 9.81*(tipo1.M)*(tipo1.vg)*(tipo1.G);
    Vr = (tipo1.Vw)+(tipo1.Vg);
    Rw = (tipo1.Cd)*(tipo1.p)*(tipo1.A)*(tipo1.Vr)^ 2 / 2;
  //fuerza
    Pw = (tipo1.Rw)*(tipo1.Vg);
  //power consumed in watts
  end pedidas2;
end bikes;
