(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 11.1' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[    496537,      11154]
NotebookOptionsPosition[    477509,      10823]
NotebookOutlinePosition[    477908,      10839]
CellTagsIndexPosition[    477865,      10836]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Toda chain with domain-wall boundary conditions", "Section",ExpressionUUID->"98acd184-691c-49c2-9c35-e03b8e74bf1c"],

Cell["References:", "Text",ExpressionUUID->"50404d28-2c34-49cf-bd43-356ccdfa96c3"],

Cell[TextData[{
 "Christian B. Mendl, Herbert Spohn\nHigh-low pressure domain wall for the \
classical Toda lattice\[LineSeparator]SciPost Phys. Core 5, 002 (2022) [",
 ButtonBox["DOI",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["https://doi.org/10.21468/SciPostPhysCore.5.1.002"], None},
  ButtonNote->"https://doi.org/10.21468/SciPostPhysCore.5.1.002"],
 "], ",
 ButtonBox["arXiv:2011.11008",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["https://arxiv.org/abs/2011.11008"], None},
  ButtonNote->"https://arxiv.org/abs/2011.11008"]
}], "Item",ExpressionUUID->"486f5e5f-ceb3-4d4c-aacb-46d3e0402918"],

Cell[TextData[{
 "Herbert Spohn\[LineSeparator]Hydrodynamic equations for the Toda lattice\
\[LineSeparator]",
 ButtonBox["arXiv:2101.06528",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["https://arxiv.org/abs/2101.06528"], None},
  ButtonNote->"https://arxiv.org/abs/2101.06528"]
}], "Item",ExpressionUUID->"c2a8a7df-92fc-4358-8cce-2e9f47a13a6b"],

Cell[CellGroupData[{

Cell["Free energy and chemical potential \[Mu]", "Subsection",ExpressionUUID->"c40eadb7-8133-4813-8206-2eb812436431"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
    "analytic", " ", "formula", " ", "for", " ", "Toda", " ", "free", " ", 
     "energy"}], ";", " ", 
    RowBox[{"same", " ", "as", " ", "chemical", " ", "potential"}]}], " ", 
   "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"TodaF", "[", 
    RowBox[{"\[Beta]_", ",", "P_"}], "]"}], ":=", 
   RowBox[{
    RowBox[{"Log", "[", 
     SqrtBox[
      FractionBox["\[Beta]", 
       RowBox[{"2", "\[Pi]"}]]], "]"}], "+", 
    RowBox[{"P", " ", 
     RowBox[{"Log", "[", "\[Beta]", "]"}]}], "-", 
    RowBox[{"Log", "[", 
     RowBox[{"Gamma", "[", "P", "]"}], "]"}]}]}]}]], "Input",
 CellLabel->"In[1]:=",ExpressionUUID->"42cb7594-1b60-4468-b80c-83cb83cabf2e"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"\[Beta]", "=", "1"}], "}"}], ",", 
   RowBox[{"Plot", "[", 
    RowBox[{
     RowBox[{"TodaF", "[", 
      RowBox[{"\[Beta]", ",", "P"}], "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"P", ",", "0", ",", "5"}], "}"}], ",", 
     RowBox[{"AxesLabel", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"\"\<P\>\"", ",", "\"\<\[Mu]\>\""}], "}"}]}], ",", 
     RowBox[{"PlotLabel", "\[Rule]", 
      RowBox[{"\"\<\[Beta]=\>\"", "<>", 
       RowBox[{"ToString", "[", "\[Beta]", "]"}]}]}]}], "]"}]}], 
  "]"}]], "Input",
 CellLabel->"In[2]:=",ExpressionUUID->"50e1855e-cab0-4e7b-bd8e-5b1d172c9a28"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    TagBox[
     {RGBColor[0.368417, 0.506779, 0.709798], AbsoluteThickness[1.6], Opacity[
      1.], LineBox[CompressedData["
1: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
wg==
       "]]},
     Annotation[#, "Charting`Private`Tag$4405#1"]& ]}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"P\"", TraditionalForm], 
    FormBox["\"\[Mu]\"", TraditionalForm]},
  AxesOrigin->{0, -0.49124741584245946`},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{
   "DefaultBoundaryStyle" -> Automatic, 
    "DefaultGraphicsInteraction" -> {
     "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
      "Effects" -> {
       "Highlight" -> {"ratio" -> 2}, "HighlightPoint" -> {"ratio" -> 2}, 
        "Droplines" -> {
         "freeformCursorMode" -> True, 
          "placement" -> {"x" -> "All", "y" -> "None"}}}}, "DefaultMeshStyle" -> 
    AbsolutePointSize[6], "ScalingFunctions" -> None, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1\"", TraditionalForm],
  PlotRange->{{0, 5}, {-6.309141549240968, -0.7974523702318537}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->"Out[2]=",ExpressionUUID->"08914c92-73bf-4a08-8d37-51772dd1137e"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   SubscriptBox["P", "c"], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"\[Beta]", "=", "1"}], "}"}], ",", 
    RowBox[{"FindMaximum", "[", 
     RowBox[{
      RowBox[{"TodaF", "[", 
       RowBox[{"\[Beta]", ",", "P"}], "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"P", ",", "1"}], "}"}]}], "]"}]}], "]"}]}]], "Input",
 CellLabel->"In[3]:=",ExpressionUUID->"7feddeca-333f-47ed-806b-8d6312fde511"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"-", "0.797452242668823`"}], ",", 
   RowBox[{"{", 
    RowBox[{"P", "\[Rule]", "1.4616321449659389`"}], "}"}]}], "}"}]], "Output",
 CellLabel->"Out[3]=",ExpressionUUID->"c41b6861-3533-4585-a8c7-f9e5755a96bd"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"\[Beta]", "=", "1"}], "}"}], ",", 
   RowBox[{
    SubscriptBox["Pc", "\[Beta]"], "=", 
    RowBox[{"P", "/.", 
     RowBox[{"Last", "[", 
      RowBox[{"FindMaximum", "[", 
       RowBox[{
        RowBox[{"TodaF", "[", 
         RowBox[{"\[Beta]", ",", "P"}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"P", ",", "1"}], "}"}]}], "]"}], "]"}]}]}]}], "]"}]], "Input",
 CellLabel->"In[4]:=",ExpressionUUID->"44f81f8d-fa52-4de9-a01f-ffa9525a918f"],

Cell[BoxData["1.4616321449659389`"], "Output",
 CellLabel->"Out[4]=",ExpressionUUID->"98286ea7-3064-4645-b917-7a667ecff86d"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "average", " ", "stretch", " ", "is", " ", "derivative", " ", "of", " ", 
    "free", " ", "energy"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"\[Nu]func", "[", 
    RowBox[{"\[Beta]_", ",", "P_"}], "]"}], ":=", 
   RowBox[{
    RowBox[{"Log", "[", "\[Beta]", "]"}], "-", 
    RowBox[{"PolyGamma", "[", "P", "]"}]}]}]}]], "Input",
 CellLabel->"In[5]:=",ExpressionUUID->"da5645df-4552-44b8-8aee-5755838e4fa7"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "test", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"D", "[", 
    RowBox[{
     RowBox[{"TodaF", "[", 
      RowBox[{"\[Beta]", ",", "P"}], "]"}], ",", "P"}], "]"}], "-", 
   RowBox[{"\[Nu]func", "[", 
    RowBox[{"\[Beta]", ",", "P"}], "]"}]}]}]], "Input",
 CellLabel->"In[6]:=",ExpressionUUID->"fb8f99e1-974c-4372-959c-2fe18130d0e8"],

Cell[BoxData["0"], "Output",
 CellLabel->"Out[6]=",ExpressionUUID->"4b32e4a5-065a-4363-9f09-8f2655e26ddd"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[{
 "Analytical formula for ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[Rho]", "n"], TraditionalForm]],
  FormatType->TraditionalForm,ExpressionUUID->
  "3d04f16f-b818-428b-8aba-b5355052e86a"]
}], "Subsection",ExpressionUUID->"52d68d2d-80ed-4d58-af2e-a4c556bbe4c6"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"analytical", " ", "formula", " ", "for", " ", 
     SubscriptBox["\[Rho]", "n"]}], ",", " ", 
    RowBox[{"see", " ", "Guido", " ", "Mazzuca"}], ",", " ", 
    RowBox[{"arXiv", ":", 
     RowBox[{
     "2008.04604", " ", "and", " ", 
      "\"\<Invariant beta ensembles and the Gauss-Wigner crossover\>\""}]}], 
    ",", " ", 
    RowBox[{"PRL", " ", "109"}], ",", " ", 
    RowBox[{"094102", " ", 
     RowBox[{"(", "2012", ")"}]}]}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"\[Rho]n", "[", 
    RowBox[{"\[Beta]_", ",", "P_", ",", "v_"}], "]"}], ":=", 
   FractionBox[
    RowBox[{"P", 
     SqrtBox["\[Beta]"]}], 
    RowBox[{
     SqrtBox[
      RowBox[{"2", "\[Pi]"}]], 
     RowBox[{"Gamma", "[", 
      RowBox[{"1", "+", "P"}], "]"}], 
     SuperscriptBox[
      RowBox[{"Abs", "[", 
       RowBox[{"ParabolicCylinderD", "[", 
        RowBox[{
         RowBox[{"-", "P"}], ",", 
         RowBox[{"\[ImaginaryI]", 
          SqrtBox["\[Beta]"], "v"}]}], "]"}], "]"}], "2"]}]]}]}]], "Input",
 CellLabel->"In[7]:=",ExpressionUUID->"4dd0a39e-c913-405a-ab6c-e75474d1e956"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", "2"}]}], "}"}], ",", 
    RowBox[{"Plot", "[", 
     RowBox[{
      RowBox[{"\[Rho]n", "[", 
       RowBox[{"\[Beta]", ",", "P", ",", "v"}], "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"v", ",", 
        RowBox[{"-", "7"}], ",", "7"}], "}"}], ",", 
      RowBox[{"AxesLabel", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{
        "\"\<v\>\"", ",", 
         "\"\<\!\(\*SubscriptBox[\(\[Rho]\), \(n\)]\)(v)\>\""}], "}"}]}], ",", 
      RowBox[{"PlotLabel", "\[Rule]", 
       RowBox[{"\"\<\[Beta]=\>\"", "<>", 
        RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
        RowBox[{"ToString", "[", 
         RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}]}], "]"}]}], 
   "]"}]}]], "Input",
 CellLabel->"In[8]:=",ExpressionUUID->"d6f43d21-f399-4dcd-9366-65579a51ee66"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    TagBox[
     {RGBColor[0.368417, 0.506779, 0.709798], AbsoluteThickness[1.6], Opacity[
      1.], LineBox[CompressedData["
1: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
UDmhKpoKbSoTd73pEcGFa7aMVFmlQqGTtSmiHSK4rdT08+esVGgfu9Evq1YE
n/+9KJCvkQYpK01yXY9E8IFmJz3zqw9g0Jd9d1WtRbBicK+WscgjqP7figNf
szAu/rmhx7/vCRzbs6PVuF4Yrw6vKZEhpMN7H81RKksY21/SS9qM0uE0XyFD
KU8Y//csNXvpYTp86nO26Vy0ML4stnXYxDEDrj9Wf+CDpjDO0vN7ffnfU/hZ
ME4w7qUQLj0ux0l0zYEFx29tlCwUwuRcEP02OwfeTr6xuyBTCN/bbh6j/yMH
Gm+9euJTvBAWjpPrdHB8Bj+r+94T8BTCf6xKMrFjLvx8wWzHVWkhPCKe3/Mz
IA82fWcc9Y0RxFviJfZKuBfCT2+e3DA7LYDzL7QOxGiWwjmyrXmEqQA+2mHZ
/tW1FEo6bpIp1xfA8S9MPY/GlUJf/uQquooAXj2jXhrcWwoZBrf+dFMFMLmR
eGR7cBl06Ag0O9u8HituptVFl5XDpR8GUl4a63EoB+Bi9Vdwu8hcRdR2flzj
EMw9XGDoJKu80bFuDf6RcCzt3bF3cPfNe9aenqvx7hreMjOpRmgSoa7/HfLi
qDEhw7HYz7DkflYvoWaZ1Z798/zKeAu8DLVPnypYZq3IHf+8Za4F6g8MdWen
LbNsfyl26fK0woGt0l3qwcus/3wpY6GEVihSnNrmu2+ZlfSpd12uQis81xDX
wH66xJr99vzJaq9WSJ+9WPwwepHlnyaXmzfSCi8ZHYtQMJ1nSa+Sz51paoMF
OrFGq9TnWcUbdKMsOtvggNpHapv8PMv8tc62sp42qLVPNyuAf54lIVCWd+Z3
GxShqzVUv5pjDdywm3AQaIcPBxQEDaTmWBnWOfPaR9phjR8h1nl8lhUW9IDo
VNAOpz0MzVW6Z1mbGEZVa8ra4RanmM3CDbMsBqFMK7WqHUZb8hcUPJ5lldl8
nK143w5NIE/zX9NZFvm61s/sb+1wiP+PWHjlDEvia8BaB2oH5L/f9N/jqGlW
+h3WoFFgB6xmjb396D/NEuoiSxFCOqDfoPDM3NlpVqzXhuT3VzvgwHb9E0Zg
mqX2ony/fGwHrKyoF12anGK9qQ7RKcjogF6dryNNradYZguhnx82d0C22Isg
/t2TrNvqElYqsp3wllJr9t4Nk6wnXm29Gts7oablJPv0+knWiczg1zq7O2HR
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
fy/1f/TfM8M=
       "]]},
     Annotation[#, "Charting`Private`Tag$4613#1"]& ]}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox[
    "\"\\!\\(\\*SubscriptBox[\\(\[Rho]\\), \\(n\\)]\\)(v)\"", 
     TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{
   "DefaultBoundaryStyle" -> Automatic, 
    "DefaultGraphicsInteraction" -> {
     "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
      "Effects" -> {
       "Highlight" -> {"ratio" -> 2}, "HighlightPoint" -> {"ratio" -> 2}, 
        "Droplines" -> {
         "freeformCursorMode" -> True, 
          "placement" -> {"x" -> "All", "y" -> "None"}}}}, "DefaultMeshStyle" -> 
    AbsolutePointSize[6], "ScalingFunctions" -> None, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=2\"", TraditionalForm],
  PlotRange->{{-7, 7}, {0., 0.3989422476099304}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->"Out[8]=",ExpressionUUID->"446924a9-d4c6-442c-bb42-ff31924f092e"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"test", ":", " ", 
    RowBox[{
    "integral", " ", "should", " ", "be", " ", "equal", " ", "to", " ", 
     "P"}]}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1.75"}], ",", 
      RowBox[{"P", "=", "1.3"}]}], "}"}], ",", 
    RowBox[{
     RowBox[{"NIntegrate", "[", 
      RowBox[{
       RowBox[{"\[Rho]n", "[", 
        RowBox[{"\[Beta]", ",", "P", ",", "v"}], "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"v", ",", 
         RowBox[{"-", "\[Infinity]"}], ",", "\[Infinity]"}], "}"}]}], "]"}], 
     "-", "P"}]}], "]"}]}]], "Input",
 CellLabel->"In[9]:=",ExpressionUUID->"bc1cf4bc-65eb-47bf-8f41-2d51585abdab"],

Cell[BoxData["1.7716939026968248`*^-12"], "Output",
 CellLabel->"Out[9]=",ExpressionUUID->"8f8724db-adbc-4338-a945-11b5bb0bf467"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"evaluate", " ", "on", " ", "grid"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"With", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"\[Beta]", "=", "1"}], ",", 
       RowBox[{"Plist", "=", 
        RowBox[{"Range", "[", 
         RowBox[{
          FractionBox["1", "8"], ",", "5", ",", 
          FractionBox["1", "8"]}], "]"}]}], ",", 
       RowBox[{"\[CapitalDelta]x", "=", 
        FractionBox["1", "10"]}], ",", 
       RowBox[{"numpoints", "=", "150"}]}], "}"}], ",", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"vlist", "=", 
         RowBox[{"\[CapitalDelta]x", " ", 
          RowBox[{"Range", "[", 
           RowBox[{
            RowBox[{"-", 
             FractionBox[
              RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
            FractionBox[
             RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], "}"}], ",", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{
          SubscriptBox["\[Rho]nlist", 
           RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], "=", 
          RowBox[{
           RowBox[{
            RowBox[{"N", "[", 
             RowBox[{"\[Rho]n", "[", 
              RowBox[{"\[Beta]", ",", "P", ",", "#"}], "]"}], "]"}], "&"}], "/@",
            "vlist"}]}], ",", 
         RowBox[{"{", 
          RowBox[{"P", ",", "Plist"}], "}"}]}], "]"}]}], "]"}]}], "]"}], 
   ";"}]}]], "Input",
 CellLabel->"In[10]:=",ExpressionUUID->"58ef3672-42d6-42e8-a603-6aad54119fa7"]
}, Open  ]],

Cell[CellGroupData[{

Cell["\<\
Finite element basis functions, discretization of scattering kernel and \
dressing transformation\
\>", "Subsection",ExpressionUUID->"6371a8ce-c890-40e0-bc76-62b023a0b0ae"],

Cell[BoxData[
 RowBox[{
  RowBox[{"HatFunction", "[", 
   RowBox[{"h_", ",", "x_"}], "]"}], ":=", 
  RowBox[{"Piecewise", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        FractionBox[
         RowBox[{"x", "+", "h"}], "h"], ",", 
        RowBox[{
         RowBox[{
          RowBox[{"-", "h"}], "\[LessEqual]", "x"}], "\[And]", 
         RowBox[{"x", "<", "0"}]}]}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{
        FractionBox[
         RowBox[{"h", "-", "x"}], "h"], ",", 
        RowBox[{
         RowBox[{"0", "\[LessEqual]", "x"}], "\[And]", 
         RowBox[{"x", "<", "h"}]}]}], "}"}]}], "}"}], ",", "0"}], 
   "]"}]}]], "Input",
 CellLabel->"In[11]:=",ExpressionUUID->"8e8ed210-88ae-48fb-ae14-4178bd5aa721"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"h", "=", 
      FractionBox["1", "3"]}], "}"}], ",", 
    RowBox[{"Plot", "[", 
     RowBox[{
      RowBox[{"HatFunction", "[", 
       RowBox[{"h", ",", "x"}], "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"x", ",", 
        RowBox[{"-", "3"}], ",", "3"}], "}"}]}], "]"}]}], "]"}]}]], "Input",
 CellLabel->"In[12]:=",ExpressionUUID->"e953d182-0725-4469-9f5e-4cb2eb611db7"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    TagBox[
     {RGBColor[0.368417, 0.506779, 0.709798], AbsoluteThickness[1.6], Opacity[
      1.], LineBox[CompressedData["
1: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
LjjMEm6nOmZRFwhTFP7YT+cS/u8fx/4fd5lH+g==
       "]]},
     Annotation[#, "Charting`Private`Tag$23978#1"]& ]}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{None, None},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{
   "DefaultBoundaryStyle" -> Automatic, 
    "DefaultGraphicsInteraction" -> {
     "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
      "Effects" -> {
       "Highlight" -> {"ratio" -> 2}, "HighlightPoint" -> {"ratio" -> 2}, 
        "Droplines" -> {
         "freeformCursorMode" -> True, 
          "placement" -> {"x" -> "All", "y" -> "None"}}}}, "DefaultMeshStyle" -> 
    AbsolutePointSize[6], "ScalingFunctions" -> None, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{{-3, 3}, {0., 0.9986146333677577}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->"Out[12]=",ExpressionUUID->"78c25e9e-b087-467a-8e42-ce008e0dd33e"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Integrate", "[", 
  RowBox[{
   RowBox[{"HatFunction", "[", 
    RowBox[{"h", ",", "x"}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", 
     RowBox[{"-", "h"}], ",", "h"}], "}"}], ",", 
   RowBox[{"Assumptions", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"h", ">", "0"}], "}"}]}]}], "]"}]], "Input",
 CellLabel->"In[13]:=",ExpressionUUID->"5de1add0-95c9-48e5-b86e-7f565d7aba87"],

Cell[BoxData["h"], "Output",
 CellLabel->"Out[13]=",ExpressionUUID->"b26df9ea-5db4-4c20-8639-ea032ef11e7c"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"overlap", " ", "integrals"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Integrate", "[", 
    RowBox[{
     SuperscriptBox[
      RowBox[{"HatFunction", "[", 
       RowBox[{"h", ",", "x"}], "]"}], "2"], ",", 
     RowBox[{"{", 
      RowBox[{"x", ",", 
       RowBox[{"-", "h"}], ",", "h"}], "}"}], ",", 
     RowBox[{"Assumptions", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"h", ">", "0"}], "}"}]}]}], "]"}], "\[IndentingNewLine]", 
   RowBox[{"Integrate", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"HatFunction", "[", 
       RowBox[{"h", ",", "x"}], "]"}], 
      RowBox[{"HatFunction", "[", 
       RowBox[{"h", ",", 
        RowBox[{"x", "-", "h"}]}], "]"}]}], ",", 
     RowBox[{"{", 
      RowBox[{"x", ",", 
       RowBox[{"-", "h"}], ",", 
       RowBox[{"2", "h"}]}], "}"}], ",", 
     RowBox[{"Assumptions", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"h", ">", "0"}], "}"}]}]}], "]"}], "\[IndentingNewLine]", 
   RowBox[{"Integrate", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"HatFunction", "[", 
       RowBox[{"h", ",", "x"}], "]"}], 
      RowBox[{"HatFunction", "[", 
       RowBox[{"h", ",", 
        RowBox[{"x", "-", 
         RowBox[{"2", "h"}]}]}], "]"}]}], ",", 
     RowBox[{"{", 
      RowBox[{"x", ",", 
       RowBox[{"-", "h"}], ",", 
       RowBox[{"3", "h"}]}], "}"}], ",", 
     RowBox[{"Assumptions", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"h", ">", "0"}], "}"}]}]}], "]"}]}]}]], "Input",
 CellLabel->"In[14]:=",ExpressionUUID->"94f5a481-a6b4-4ca2-b04b-f202f72c5585"],

Cell[BoxData[
 FractionBox[
  RowBox[{"2", " ", "h"}], "3"]], "Output",
 CellLabel->"Out[14]=",ExpressionUUID->"6f5729a0-78f2-4aa4-ac83-3f0584a6690a"],

Cell[BoxData[
 FractionBox["h", "6"]], "Output",
 CellLabel->"Out[15]=",ExpressionUUID->"859792d3-bccc-4caf-9f6e-410b1c027fec"],

Cell[BoxData["0"], "Output",
 CellLabel->"Out[16]=",ExpressionUUID->"af69cb3d-4a53-492c-8cbd-ab5553c93c00"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"HatGramMatrix", "[", 
   RowBox[{"h_", ",", "numpoints_"}], "]"}], ":=", 
  RowBox[{"h", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      FractionBox["2", "3"], 
      RowBox[{"IdentityMatrix", "[", "numpoints", "]"}]}], "+", 
     RowBox[{"DiagonalMatrix", "[", 
      RowBox[{
       RowBox[{"ConstantArray", "[", 
        RowBox[{
         FractionBox["1", "6"], ",", 
         RowBox[{"numpoints", "-", "1"}]}], "]"}], ",", "1"}], "]"}], "+", 
     RowBox[{"DiagonalMatrix", "[", 
      RowBox[{
       RowBox[{"ConstantArray", "[", 
        RowBox[{
         FractionBox["1", "6"], ",", 
         RowBox[{"numpoints", "-", "1"}]}], "]"}], ",", 
       RowBox[{"-", "1"}]}], "]"}]}], ")"}]}]}]], "Input",
 CellLabel->"In[17]:=",ExpressionUUID->"538de06e-af5a-458a-893d-6cd3f65eff19"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"HatGramMatrix", "[", 
    RowBox[{"h", ",", "6"}], "]"}], "//", "MatrixForm"}]}]], "Input",
 CellLabel->"In[18]:=",ExpressionUUID->"197c6c56-d9cd-4fbb-bcb7-1995854b1356"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      FractionBox[
       RowBox[{"2", " ", "h"}], "3"], 
      FractionBox["h", "6"], "0", "0", "0", "0"},
     {
      FractionBox["h", "6"], 
      FractionBox[
       RowBox[{"2", " ", "h"}], "3"], 
      FractionBox["h", "6"], "0", "0", "0"},
     {"0", 
      FractionBox["h", "6"], 
      FractionBox[
       RowBox[{"2", " ", "h"}], "3"], 
      FractionBox["h", "6"], "0", "0"},
     {"0", "0", 
      FractionBox["h", "6"], 
      FractionBox[
       RowBox[{"2", " ", "h"}], "3"], 
      FractionBox["h", "6"], "0"},
     {"0", "0", "0", 
      FractionBox["h", "6"], 
      FractionBox[
       RowBox[{"2", " ", "h"}], "3"], 
      FractionBox["h", "6"]},
     {"0", "0", "0", "0", 
      FractionBox["h", "6"], 
      FractionBox[
       RowBox[{"2", " ", "h"}], "3"]}
    },
    GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellLabel->
  "Out[18]//MatrixForm=",ExpressionUUID->"8f9b3718-d778-47aa-9046-\
0fce975328e3"]
}, Open  ]],

Cell[BoxData[{
 RowBox[{
  RowBox[{"HatScatteringOverlap", "[", 
   RowBox[{"h_", ",", "0"}], "]"}], ":=", " ", 
  RowBox[{
   SuperscriptBox["h", "2"], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"2", " ", 
      RowBox[{"Log", "[", "h", "]"}]}], "+", 
     RowBox[{
      FractionBox["8", "3"], " ", 
      RowBox[{"Log", "[", "2", "]"}]}], "-", 
     FractionBox["25", "6"]}], ")"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"HatScatteringOverlap", "[", 
   RowBox[{"h_", ",", "1"}], "]"}], ":=", 
  RowBox[{
   SuperscriptBox["h", "2"], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"2", " ", 
      RowBox[{"Log", "[", "h", "]"}]}], "+", 
     RowBox[{
      FractionBox["27", "4"], " ", 
      RowBox[{"Log", "[", "3", "]"}]}], "-", 
     FractionBox["25", "6"], "-", 
     RowBox[{
      FractionBox["16", "3"], " ", 
      RowBox[{"Log", "[", "2", "]"}]}]}], ")"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"HatScatteringOverlap", "[", 
   RowBox[{"h_", ",", "2"}], "]"}], ":=", 
  RowBox[{
   SuperscriptBox["h", "2"], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"2", " ", 
      RowBox[{"Log", "[", "h", "]"}]}], "+", 
     FractionBox[
      RowBox[{"152", " ", 
       RowBox[{"Log", "[", "2", "]"}]}], "3"], "-", 
     RowBox[{"27", " ", 
      RowBox[{"Log", "[", "3", "]"}]}], "-", 
     FractionBox["25", "6"]}], ")"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"HatScatteringOverlap", "[", 
   RowBox[{"h_", ",", "k_"}], "]"}], ":=", " ", 
  RowBox[{
   SuperscriptBox["h", "2"], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"2", 
      RowBox[{"Log", "[", "h", "]"}]}], "+", 
     RowBox[{
      FractionBox["1", "2"], 
      SuperscriptBox["k", "4"], " ", 
      RowBox[{"Log", "[", "k", "]"}]}], "-", 
     RowBox[{
      FractionBox["1", "3"], 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"k", "+", "1"}], ")"}], "4"], " ", 
         RowBox[{"Log", "[", 
          RowBox[{"k", "+", "1"}], "]"}]}], "+", 
        RowBox[{
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"k", "-", "1"}], ")"}], "4"], " ", 
         RowBox[{"Log", "[", 
          RowBox[{"k", "-", "1"}], "]"}]}]}], ")"}]}], "+", 
     RowBox[{
      FractionBox["1", "12"], 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"k", "+", "2"}], ")"}], "4"], " ", 
         RowBox[{"Log", "[", 
          RowBox[{"k", "+", "2"}], "]"}]}], "+", 
        RowBox[{
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"k", "-", "2"}], ")"}], "4"], " ", 
         RowBox[{"Log", "[", 
          RowBox[{"k", "-", "2"}], "]"}]}]}], ")"}]}], "-", 
     FractionBox["25", "6"]}], ")"}]}]}]}], "Input",
 CellLabel->"In[19]:=",ExpressionUUID->"de72f1f3-c5e4-40e2-9dca-29dbc9ecab72"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Limit", "[", 
  RowBox[{
   FractionBox[
    RowBox[{"HatScatteringOverlap", "[", 
     RowBox[{"h", ",", "k"}], "]"}], 
    RowBox[{"2", 
     RowBox[{"Log", "[", 
      RowBox[{"k", " ", "h"}], "]"}], 
     SuperscriptBox["h", "2"]}]], ",", 
   RowBox[{"k", "\[Rule]", "\[Infinity]"}]}], "]"}]], "Input",
 CellLabel->"In[23]:=",ExpressionUUID->"d0bccfb1-55b6-4d69-b6d3-d32295f711ca"],

Cell[BoxData["1"], "Output",
 CellLabel->"Out[23]=",ExpressionUUID->"92ed0162-259a-4ba7-846a-fa0c67ccaf73"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"zero", " ", "relative", " ", "shift"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{"factor", " ", "2", " ", "due", " ", "to", " ", "symmetry"}], " ", 
   "*)"}], 
  RowBox[{
   RowBox[{"2", 
    RowBox[{"FullSimplify", "[", 
     RowBox[{"Integrate", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"Integrate", "[", 
         RowBox[{
          RowBox[{"2", 
           RowBox[{"Log", "[", 
            RowBox[{"w", "-", "v"}], "]"}], 
           RowBox[{"(", 
            FractionBox[
             RowBox[{"v", "+", "h"}], "h"], ")"}], 
           RowBox[{"(", 
            FractionBox[
             RowBox[{"h", "-", "w"}], "h"], ")"}]}], ",", 
          RowBox[{"{", 
           RowBox[{"v", ",", 
            RowBox[{"-", "h"}], ",", "0"}], "}"}], ",", 
          RowBox[{"Assumptions", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"0", "<", "w"}], ",", 
             RowBox[{"w", "<", "h"}]}], "}"}]}]}], "]"}], "+", 
        RowBox[{"Integrate", "[", 
         RowBox[{
          RowBox[{"2", 
           RowBox[{"Log", "[", 
            RowBox[{"w", "-", "v"}], "]"}], 
           RowBox[{"(", 
            FractionBox[
             RowBox[{"h", "-", "v"}], "h"], ")"}], 
           RowBox[{"(", 
            FractionBox[
             RowBox[{"h", "-", "w"}], "h"], ")"}]}], ",", 
          RowBox[{"{", 
           RowBox[{"v", ",", "0", ",", "w"}], "}"}], ",", 
          RowBox[{"Assumptions", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"0", "<", "w"}], ",", 
             RowBox[{"w", "<", "h"}]}], "}"}]}]}], "]"}], "+", 
        RowBox[{"Integrate", "[", 
         RowBox[{
          RowBox[{"2", 
           RowBox[{"Log", "[", 
            RowBox[{"v", "-", "w"}], "]"}], 
           RowBox[{"(", 
            FractionBox[
             RowBox[{"h", "-", "v"}], "h"], ")"}], 
           RowBox[{"(", 
            FractionBox[
             RowBox[{"h", "-", "w"}], "h"], ")"}]}], ",", 
          RowBox[{"{", 
           RowBox[{"v", ",", "w", ",", "h"}], "}"}], ",", 
          RowBox[{"Assumptions", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{"w", "<", "h"}], "}"}]}]}], "]"}]}], ",", 
       RowBox[{"{", 
        RowBox[{"w", ",", "0", ",", "h"}], "}"}]}], "]"}], "]"}]}], 
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", "check", " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{"FullSimplify", "[", 
    RowBox[{"%", "-", 
     RowBox[{"HatScatteringOverlap", "[", 
      RowBox[{"h", ",", "0"}], "]"}]}], "]"}]}]}]], "Input",
 CellLabel->"In[24]:=",ExpressionUUID->"db164629-f4db-41af-99a6-796a23213bfe"],

Cell[BoxData[
 RowBox[{
  FractionBox["1", "6"], " ", 
  SuperscriptBox["h", "2"], " ", 
  RowBox[{"(", 
   RowBox[{
    RowBox[{"-", "25"}], "+", 
    RowBox[{"16", " ", 
     RowBox[{"Log", "[", "2", "]"}]}], "+", 
    RowBox[{"12", " ", 
     RowBox[{"Log", "[", "h", "]"}]}]}], ")"}]}]], "Output",
 CellLabel->"Out[24]=",ExpressionUUID->"abce1665-af47-4843-932f-1afe56719bfe"],

Cell[BoxData["0"], "Output",
 CellLabel->"Out[25]=",ExpressionUUID->"4acd2c50-a842-4cb5-a683-c196b7c4cbd8"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"relative", " ", "shift", " ", "1"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"FullSimplify", "[", 
    RowBox[{
     RowBox[{"Integrate", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"Integrate", "[", 
         RowBox[{
          RowBox[{"2", 
           RowBox[{"Log", "[", 
            RowBox[{"w", "-", "v"}], "]"}], 
           RowBox[{"(", 
            FractionBox[
             RowBox[{"v", "+", "h"}], "h"], ")"}], 
           RowBox[{"(", 
            FractionBox["w", "h"], ")"}]}], ",", 
          RowBox[{"{", 
           RowBox[{"v", ",", 
            RowBox[{"-", "h"}], ",", "0"}], "}"}], ",", 
          RowBox[{"Assumptions", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"0", "<", "w"}], ",", 
             RowBox[{"w", "<", "h"}]}], "}"}]}]}], "]"}], "+", 
        RowBox[{"Integrate", "[", 
         RowBox[{
          RowBox[{"2", 
           RowBox[{"Log", "[", 
            RowBox[{"w", "-", "v"}], "]"}], 
           RowBox[{"(", 
            FractionBox[
             RowBox[{"h", "-", "v"}], "h"], ")"}], 
           RowBox[{"(", 
            FractionBox["w", "h"], ")"}]}], ",", 
          RowBox[{"{", 
           RowBox[{"v", ",", "0", ",", "w"}], "}"}], ",", 
          RowBox[{"Assumptions", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"0", "<", "w"}], ",", 
             RowBox[{"w", "<", "h"}]}], "}"}]}]}], "]"}], "+", 
        RowBox[{"Integrate", "[", 
         RowBox[{
          RowBox[{"2", 
           RowBox[{"Log", "[", 
            RowBox[{"v", "-", "w"}], "]"}], 
           RowBox[{"(", 
            FractionBox[
             RowBox[{"h", "-", "v"}], "h"], ")"}], 
           RowBox[{"(", 
            FractionBox["w", "h"], ")"}]}], ",", 
          RowBox[{"{", 
           RowBox[{"v", ",", "w", ",", "h"}], "}"}], ",", 
          RowBox[{"Assumptions", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"0", "<", "w"}], ",", 
             RowBox[{"w", "<", "h"}]}], "}"}]}]}], "]"}]}], ",", 
       RowBox[{"{", 
        RowBox[{"w", ",", "0", ",", "h"}], "}"}]}], "]"}], "+", 
     RowBox[{"Integrate", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"Integrate", "[", 
         RowBox[{
          RowBox[{"2", 
           RowBox[{"Log", "[", 
            RowBox[{"w", "-", "v"}], "]"}], 
           RowBox[{"(", 
            FractionBox[
             RowBox[{"v", "+", "h"}], "h"], ")"}], 
           RowBox[{"(", 
            FractionBox[
             RowBox[{
              RowBox[{"2", "h"}], "-", "w"}], "h"], ")"}]}], ",", 
          RowBox[{"{", 
           RowBox[{"v", ",", 
            RowBox[{"-", "h"}], ",", "0"}], "}"}], ",", 
          RowBox[{"Assumptions", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"h", "<", "w"}], ",", 
             RowBox[{"w", "<", 
              RowBox[{"2", "h"}]}]}], "}"}]}]}], "]"}], "+", 
        RowBox[{"Integrate", "[", 
         RowBox[{
          RowBox[{"2", 
           RowBox[{"Log", "[", 
            RowBox[{"w", "-", "v"}], "]"}], 
           RowBox[{"(", 
            FractionBox[
             RowBox[{"h", "-", "v"}], "h"], ")"}], 
           RowBox[{"(", 
            FractionBox[
             RowBox[{
              RowBox[{"2", "h"}], "-", "w"}], "h"], ")"}]}], ",", 
          RowBox[{"{", 
           RowBox[{"v", ",", "0", ",", "h"}], "}"}], ",", 
          RowBox[{"Assumptions", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"h", "<", "w"}], ",", 
             RowBox[{"w", "<", 
              RowBox[{"2", "h"}]}]}], "}"}]}]}], "]"}]}], ",", 
       RowBox[{"{", 
        RowBox[{"w", ",", "h", ",", 
         RowBox[{"2", "h"}]}], "}"}]}], "]"}]}], "]"}], "\[IndentingNewLine]", 
   RowBox[{"(*", " ", "check", " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{"FullSimplify", "[", 
    RowBox[{"%", "-", 
     RowBox[{"HatScatteringOverlap", "[", 
      RowBox[{"h", ",", "1"}], "]"}]}], "]"}]}]}]], "Input",
 CellLabel->"In[26]:=",ExpressionUUID->"3560aaa8-0cee-459d-8dba-96e333246db1"],

Cell[BoxData[
 RowBox[{
  FractionBox["1", "12"], " ", 
  SuperscriptBox["h", "2"], " ", 
  RowBox[{"(", 
   RowBox[{
    RowBox[{"-", "50"}], "-", 
    RowBox[{"64", " ", 
     RowBox[{"Log", "[", "2", "]"}]}], "+", 
    RowBox[{"81", " ", 
     RowBox[{"Log", "[", "3", "]"}]}], "+", 
    RowBox[{"24", " ", 
     RowBox[{"Log", "[", "h", "]"}]}]}], ")"}]}]], "Output",
 CellLabel->"Out[26]=",ExpressionUUID->"584aae0b-40ef-41c2-b9a9-f02f4512c42a"],

Cell[BoxData["0"], "Output",
 CellLabel->"Out[27]=",ExpressionUUID->"edf39b3d-6754-4199-8d03-5ad83081277f"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"relative", " ", "shift"}], " ", "\[GreaterEqual]", " ", "2"}], 
   " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"FullSimplify", "[", 
   RowBox[{
    RowBox[{"Integrate", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"Integrate", "[", 
        RowBox[{
         RowBox[{"2", 
          RowBox[{"Log", "[", 
           RowBox[{"w", "-", "v"}], "]"}], 
          RowBox[{"(", 
           FractionBox[
            RowBox[{"v", "+", "h"}], "h"], ")"}], 
          RowBox[{"(", 
           FractionBox[
            RowBox[{"w", "-", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"k", "-", "1"}], ")"}], "h"}]}], "h"], ")"}]}], ",", 
         RowBox[{"{", 
          RowBox[{"v", ",", 
           RowBox[{"-", "h"}], ",", "0"}], "}"}], ",", 
         RowBox[{"Assumptions", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{"k", "-", "1"}], ")"}], "h"}], "<", "w"}], ",", 
            RowBox[{"w", "<", 
             RowBox[{"k", " ", "h"}]}]}], "}"}]}]}], "]"}], "+", 
       RowBox[{"Integrate", "[", 
        RowBox[{
         RowBox[{"2", 
          RowBox[{"Log", "[", 
           RowBox[{"w", "-", "v"}], "]"}], 
          RowBox[{"(", 
           FractionBox[
            RowBox[{"h", "-", "v"}], "h"], ")"}], 
          RowBox[{"(", 
           FractionBox[
            RowBox[{"w", "-", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"k", "-", "1"}], ")"}], "h"}]}], "h"], ")"}]}], ",", 
         RowBox[{"{", 
          RowBox[{"v", ",", "0", ",", "h"}], "}"}], ",", 
         RowBox[{"Assumptions", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{"k", "-", "1"}], ")"}], "h"}], "<", "w"}], ",", 
            RowBox[{"w", "<", 
             RowBox[{"k", " ", "h"}]}]}], "}"}]}]}], "]"}]}], ",", 
      RowBox[{"{", 
       RowBox[{"w", ",", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"k", "-", "1"}], ")"}], "h"}], ",", 
        RowBox[{"k", " ", "h"}]}], "}"}], ",", 
      RowBox[{"Assumptions", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"h", ">", "0"}], ",", 
         RowBox[{"k", "\[GreaterEqual]", "2"}]}], "}"}]}]}], "]"}], "+", 
    RowBox[{"Integrate", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"Integrate", "[", 
        RowBox[{
         RowBox[{"2", 
          RowBox[{"Log", "[", 
           RowBox[{"w", "-", "v"}], "]"}], 
          RowBox[{"(", 
           FractionBox[
            RowBox[{"v", "+", "h"}], "h"], ")"}], 
          RowBox[{"(", 
           FractionBox[
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{"k", "+", "1"}], ")"}], "h"}], "-", "w"}], "h"], 
           ")"}]}], ",", 
         RowBox[{"{", 
          RowBox[{"v", ",", 
           RowBox[{"-", "h"}], ",", "0"}], "}"}], ",", 
         RowBox[{"Assumptions", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"k", " ", "h"}], "<", "w"}], ",", 
            RowBox[{"w", "<", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"k", "+", "1"}], ")"}], "h"}]}]}], "}"}]}]}], "]"}], 
       "+", 
       RowBox[{"Integrate", "[", 
        RowBox[{
         RowBox[{"2", 
          RowBox[{"Log", "[", 
           RowBox[{"w", "-", "v"}], "]"}], 
          RowBox[{"(", 
           FractionBox[
            RowBox[{"h", "-", "v"}], "h"], ")"}], 
          RowBox[{"(", 
           FractionBox[
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{"k", "+", "1"}], ")"}], "h"}], "-", "w"}], "h"], 
           ")"}]}], ",", 
         RowBox[{"{", 
          RowBox[{"v", ",", "0", ",", "h"}], "}"}], ",", 
         RowBox[{"Assumptions", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"k", " ", "h"}], "<", "w"}], ",", 
            RowBox[{"w", "<", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"k", "+", "1"}], ")"}], "h"}]}]}], "}"}]}]}], "]"}]}], 
      ",", 
      RowBox[{"{", 
       RowBox[{"w", ",", 
        RowBox[{"k", " ", "h"}], ",", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"k", "+", "1"}], ")"}], "h"}]}], "}"}], ",", 
      RowBox[{"Assumptions", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"h", ">", "0"}], ",", 
         RowBox[{"k", "\[GreaterEqual]", "2"}]}], "}"}]}]}], "]"}]}], 
   "]"}]}]], "Input",
 CellLabel->"In[28]:=",ExpressionUUID->"2340cf98-7468-4c9f-b121-3faf9ea8c121"],

Cell[BoxData[
 RowBox[{
  FractionBox["1", "12"], " ", 
  SuperscriptBox["h", "2"], " ", 
  RowBox[{"(", 
   RowBox[{
    RowBox[{"24", " ", 
     RowBox[{"Log", "[", "h", "]"}]}], "+", 
    RowBox[{
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "2"}], "+", "k"}], ")"}], "4"], " ", 
     RowBox[{"Log", "[", 
      RowBox[{
       RowBox[{"-", "2"}], "+", "k"}], "]"}]}], "+", 
    RowBox[{"2", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"-", "25"}], "-", 
       RowBox[{"2", " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "1"}], "+", "k"}], ")"}], "4"], " ", 
        RowBox[{"Log", "[", 
         RowBox[{
          RowBox[{"-", "1"}], "+", "k"}], "]"}]}], "+", 
       RowBox[{"3", " ", 
        SuperscriptBox["k", "4"], " ", 
        RowBox[{"Log", "[", "k", "]"}]}], "-", 
       RowBox[{"2", " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"1", "+", "k"}], ")"}], "4"], " ", 
        RowBox[{"Log", "[", 
         RowBox[{"1", "+", "k"}], "]"}]}]}], ")"}]}], "+", 
    RowBox[{
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"2", "+", "k"}], ")"}], "4"], " ", 
     RowBox[{"Log", "[", 
      RowBox[{"2", "+", "k"}], "]"}]}]}], ")"}]}]], "Output",
 CellLabel->"Out[28]=",ExpressionUUID->"658d49cb-9343-455d-b3ee-a9379ba473f0"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"compare", ":", " ", 
    RowBox[{"relative", " ", "error"}]}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"With", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"h", "=", 
       FractionBox["1", "3"]}], "}"}], ",", 
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{"Abs", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"NIntegrate", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"HatFunction", "[", 
              RowBox[{"h", ",", "v"}], "]"}], "2", 
             RowBox[{"Log", "[", 
              RowBox[{"Abs", "[", 
               RowBox[{"v", "-", "w"}], "]"}], "]"}], 
             RowBox[{"HatFunction", "[", 
              RowBox[{"h", ",", 
               RowBox[{"w", "-", 
                RowBox[{"k", " ", "h"}]}]}], "]"}]}], ",", 
            RowBox[{"{", 
             RowBox[{"v", ",", 
              RowBox[{"-", "h"}], ",", "h"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"w", ",", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{"k", "-", "1"}], ")"}], "h"}], ",", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{"k", "+", "1"}], ")"}], "h"}]}], "}"}]}], "]"}], "/", 
          RowBox[{"HatScatteringOverlap", "[", 
           RowBox[{"h", ",", "k"}], "]"}]}], "-", "1"}], "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"k", ",", "0", ",", "5"}], "}"}]}], "]"}]}], "]"}], 
   "\[IndentingNewLine]"}]}]], "Input",
 CellLabel->"In[29]:=",ExpressionUUID->"1217a3b1-67bf-4fcf-889d-45595fbbf4d8"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "1.6494357435448137`*^-8", ",", "2.6407642739201265`*^-9", ",", 
   "5.322936535989697`*^-10", ",", "1.261517557082925`*^-10", ",", 
   "2.6251667506471676`*^-11", ",", "4.872313663639716`*^-11"}], 
  "}"}]], "Output",
 CellLabel->"Out[29]=",ExpressionUUID->"16866168-e2a8-4561-bf9b-86e7f43a3ef0"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"DressingTransformation", "[", 
   RowBox[{"\[CapitalDelta]x_", ",", "n_List", ",", "\[Psi]_List"}], "]"}], ":=", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"numpoints", "=", 
       RowBox[{"Length", "[", "n", "]"}]}], ",", "vlist", ",", "G", ",", 
      "T"}], "}"}], ",", 
    RowBox[{
     RowBox[{"vlist", "=", 
      RowBox[{"\[CapitalDelta]x", " ", 
       RowBox[{"Range", "[", 
        RowBox[{
         RowBox[{"-", 
          FractionBox[
           RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
         FractionBox[
          RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], ";", 
     RowBox[{"G", "=", 
      RowBox[{"HatGramMatrix", "[", 
       RowBox[{"\[CapitalDelta]x", ",", "numpoints"}], "]"}]}], ";", 
     RowBox[{"T", "=", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"HatScatteringOverlap", "[", 
         RowBox[{"\[CapitalDelta]x", ",", 
          RowBox[{"Abs", "[", 
           RowBox[{"i", "-", "j"}], "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"i", ",", "numpoints"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"j", ",", "numpoints"}], "}"}]}], "]"}]}], ";", 
     RowBox[{"LinearSolve", "[", 
      RowBox[{
       RowBox[{"G", "-", 
        RowBox[{"T", ".", 
         RowBox[{"DiagonalMatrix", "[", "n", "]"}]}]}], ",", 
       RowBox[{"G", ".", "\[Psi]"}]}], "]"}]}]}], "]"}]}]], "Input",
 CellLabel->"In[30]:=",ExpressionUUID->"64a9b466-e128-4d7d-a18c-04d7e8f3d206"]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[{
 "Derived quantities based on thermal ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["\[Rho]", "n"], "(", "v", ")"}], TraditionalForm]],
  FormatType->TraditionalForm,ExpressionUUID->
  "91d2e684-313d-4ac3-82fd-17c52a32809e"]
}], "Subsection",ExpressionUUID->"ffb02aa5-4e52-40f8-bc96-c07748658aed"],

Cell[CellGroupData[{

Cell[TextData[Cell[BoxData[
 SuperscriptBox[
  RowBox[{"[", "1", "]"}], 
  "dr"]],ExpressionUUID->"1276a741-9a92-437a-a7b0-ca0d9ae11b21"]], \
"Subsubsection",ExpressionUUID->"65e03219-e63e-4455-9a1a-76eaec239477"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   SuperscriptBox[
    RowBox[{"[", "1", "]"}], "dr"], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"With", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"\[Beta]", "=", "1"}], ",", 
       RowBox[{"Plist", "=", 
        RowBox[{"Range", "[", 
         RowBox[{
          FractionBox["1", "8"], ",", "5", ",", 
          FractionBox["1", "8"]}], "]"}]}], ",", 
       RowBox[{"\[CapitalDelta]x", "=", 
        FractionBox["1", "10"]}], ",", 
       RowBox[{"numpoints", "=", "150"}]}], "}"}], ",", 
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{
        SubscriptBox["onedr", 
         RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], "=", 
        RowBox[{"DressingTransformation", "[", 
         RowBox[{"\[CapitalDelta]x", ",", 
          SubscriptBox["\[Rho]nlist", 
           RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], ",", 
          RowBox[{"ConstantArray", "[", 
           RowBox[{"1", ",", "numpoints"}], "]"}]}], "]"}]}], ",", 
       RowBox[{"{", 
        RowBox[{"P", ",", "Plist"}], "}"}]}], "]"}]}], "]"}], 
   ";"}]}]], "Input",
 CellLabel->"In[31]:=",ExpressionUUID->"c455d724-6083-46ea-b8e6-f7b5f6878c16"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", 
       FractionBox["1", "8"]}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}], ",", 
      RowBox[{"numpoints", "=", "150"}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"vlist", "=", 
        RowBox[{"\[CapitalDelta]x", " ", 
         RowBox[{"Range", "[", 
          RowBox[{
           RowBox[{"-", 
            FractionBox[
             RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
           FractionBox[
            RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], "}"}], ",", 
      RowBox[{"ListLinePlot", "[", 
       RowBox[{
        RowBox[{"Transpose", "[", 
         RowBox[{"{", 
          RowBox[{"vlist", ",", 
           SubscriptBox["onedr", 
            RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], "}"}], 
         "]"}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<v\>\"", ",", 
           "\"\<[1\!\(\*SuperscriptBox[\(]\), \(dr\)]\)(v)\>\""}], "}"}]}], 
        ",", 
        RowBox[{"PlotLabel", "\[Rule]", 
         RowBox[{"\"\<\[Beta]=\>\"", "<>", 
          RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
          RowBox[{"ToString", "[", 
           RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}]}], "]"}]}], 
     "]"}]}], "]"}]}]], "Input",
 CellLabel->"In[32]:=",ExpressionUUID->"9da64d35-aa97-40d8-8dc0-301da6355981"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      NCache[
       Rational[1, 72], 0.013888888888888888`]], AbsoluteThickness[1.6], 
     LineBox[CompressedData["
1:eJxVlgtMllUYx7kjCAgCAgJTksRJDEkIuXkeXRkmc0oFbVqCqVy3VuKQzBpa
gCulASESpEEXAZc3MATsfSpKmkglgvCFlUSFCh/w8V24U8D/tDjbt2/v3vf9
nfOe8zz//99r9yvRe02MjIwK//3N/N9snhmeHHVr42+tVaNi3+zw5PrebJNY
U4Mwmh2eXB0ceDHmrEEUn5oZHnwlKPzAsWSDWDs7PDjDIbNjfZJBzPHcee+o
ofpgrAE8dy5redG/fbPkuXPnWGRaS6jkLWXXkMOs8pW8pWxWZp2R7yF5bpzX
71zrYCt5bvyM3le/ZVIPnhs7tBXd2NCvB8+VnWw71g526cFzZXWZ1/nnmvXg
ufDERG1Car0ePBfOank0MbBS8lw4I7Qxu6JI8pZwgOq15KYsyVvCm1ITXj+e
JnnOnFNxtVsbL3nOvG51Xc7YVslz5hMrE82KwyTPiTfsrDnZ4iN5Try7JME7
31HyHNnk3vbl3VM68Bw5sKQwu+a+DjxHzrE71WxxWwfeYvYdCfmu5ZoOvMXc
+L6uwPxzHXgObFJ8ML8sV/Ic2Cohyr8kXfIcWDMS3fz3S5Jnzyqf8dKMpyTP
nutOxx1+0lfeX8S/x03Uh9hLvh1nZq3SRmq14NlxNb3XueuOFu/bcvnjuTbJ
V7WY34ZLlUDdtmIteAvZd5d/1XiGFjxrjo3I0mx9QfKsOe9u5fN+QZJnxT1/
+iSk20veAu5r/CPI5sEweJZcYzk69cPXw+BZcOk5K5/ck8PgWfCy/TuOhKUM
g2fOoZnV6ovhw+CZ8Ts9DWGqhZJnyqOLrsWUd2jAM2Ev05c/NS/XgGfCbbrT
r5qnaMAz5k+6e0TNGg14RuyWcqg7WDuE+9OKX/iw2zc1Q+BPKlEXOgs+PDAE
3oTSate1alngEN4fU9I+UD1WNzSI+UcU444V/Q++GATPoKgCdJvWpw6Cp1Pe
sLn+btTqQfC0ys2zK+tSWgfA0yg/T51PD48ZAG9QeRi8z/nZX9W4r1bKM5sO
DaSqwX+o6O8ktW00VYPXq6RWRlxOKuvH+z1K9UTBzoQt/Zj/njJ2aWLbI9N9
uN+l7Li+/6/4r/rAb1fOBBV3Nh/rA+8n5UpRU1FvfB/m+1Y5F/22ndvTfeBV
KNM/Vl06E/LftZjCNZ4XX+J58EQteJhPfIb5sB6xB+vBesXQvPX2iAp8D75X
JOJ7sR9iFPuB/RKF2C/sp7Bc9//91Ig27DfOQ9zAeeC8xFGcF85T/ILzxHkL
M5w36kGkox5QL+IW6gX1JCJRT6g3sQb1hnokx3n1aEzlqFfUM3WgnlHvtBz1
jn6gcfQD+oWOol/QTxSBfkK/kQf6Df1IH6Ef0a8k+xX9TGr0M/qd7qPfoQeU
Dz2AXlAM9AJ6Qt7QE+gNfQy9gR5RGfQIekUXoFfQM8qDnkHvSAW9gx6SMk8P
7akDegk9pUnoKfSWjKC30GMygx5Dr+l76DX0nAKg59B7knoPPyA/+AH8gqzg
F/ATioOfwG9oM/wGfkTH4UfwK3oCfgU/oyPwM/gdRcDv4IcUBD+EX9Kb8Ev4
Kb0FP4Xf0oLJOb+FH9Nd+DH8mlbAr+HnNHl7zs/h9xQNv0ceoCLkAeQFMkZe
QJ4gb+QJ5A1qR95AHiGZR5BXaA/yCvIMyTyDvEOXkXeQh6gBeQh5iRqQl5Cn
aDvy1D+nvmf9
      "]]}}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox[
    "\"[1\\!\\(\\*SuperscriptBox[\\(]\\), \\(dr\\)]\\)(v)\"", 
     TraditionalForm]},
  AxesOrigin->{0, 0.8419004418193552},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{
   "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=1/8\"", TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {0.8419004418193552, 1.6044501038678798`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->"Out[32]=",ExpressionUUID->"43573cea-a349-42df-9ace-c09498618337"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", "4"}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}], ",", 
      RowBox[{"numpoints", "=", "150"}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"vlist", "=", 
        RowBox[{"\[CapitalDelta]x", " ", 
         RowBox[{"Range", "[", 
          RowBox[{
           RowBox[{"-", 
            FractionBox[
             RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
           FractionBox[
            RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], "}"}], ",", 
      RowBox[{"ListLinePlot", "[", 
       RowBox[{
        RowBox[{"Transpose", "[", 
         RowBox[{"{", 
          RowBox[{"vlist", ",", 
           SubscriptBox["onedr", 
            RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], "}"}], 
         "]"}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<v\>\"", ",", 
           "\"\<[1\!\(\*SuperscriptBox[\(]\), \(dr\)]\)(v)\>\""}], "}"}]}], 
        ",", 
        RowBox[{"PlotLabel", "\[Rule]", 
         RowBox[{"\"\<\[Beta]=\>\"", "<>", 
          RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
          RowBox[{"ToString", "[", 
           RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}]}], "]"}]}], 
     "]"}]}], "]"}]}]], "Input",
 CellLabel->"In[33]:=",ExpressionUUID->"95bce5a9-2483-4433-a919-81dd78099410"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      NCache[
       Rational[1, 72], 0.013888888888888888`]], AbsoluteThickness[1.6], 
     LineBox[CompressedData["
1:eJxNlntQlFUYxrmri25c3AUE1hFSHBUsmSkFZ743uyAwE4RokUlBLuuAEjl5
KwdBInVLmtFkgbE/Ki+EqKMiaQHn3YUSFBxwlFSIRGFEHVR2ucsl9Tw2nJmd
nW++7/ud853zvs/zzEr+LE7vYGdnl//09+y/of7Z8Gd9Y07Kp49dOOX58Oe5
s8s99lhGhN3z4c8FPYfyHFPsuKjw2fDj0Jw646KgcRH6fPjxzYyl7xx3GheS
58tfWlPPTdsyJiTPl4+U3XSJdhgDz5dnd62eb9k5KiRvBu/4+UrtCftR8GZw
feL3lrDtI+D5cFme7XKl9Ql4Ply+wjjv8Non4PlwW01EgLFpGDxvNoU56jsX
D4PnzRdd22IDiobA8+JqyvUo6h0Ez4t9tqfVmiIGwfPivZk6h8R9A+BpWedb
N+nVq/3gaTmrIGpZytR+8DS8enPc+m1hfeBp+M2BZeqgxF7wNPx16jyDcYsN
vOm88vMIXfguK3jT2Wtr4AZ9Xg94nrzSqv+mOe8xeJ4c3pjk/UjzCDxPjku+
U2lw7QbPg0tv34w3OT0Az4P9YtR5r0y+B547n0q7pjf53QXPndN19z9Ki+gE
z53TDia0hOy9A54bGy72OGl72sFz43DH1jljX9zC/Ze47kDTVnVoG/hqDj25
KnJPRQt4ag7QaHdZc27g/Wmce3xQXZL7N+afypf/3VCcUHkNPFcODtH2vTfn
KngqXl6TZGv64wp4KjYElajCtjWBN4Vt55fvDP6wEbzJnN8/8iT67GXwJrHu
ky3+Q9314Lmw+WHi3eb3L4H39HqF3wxtdx14zjxSMNpgKq4Fz4njzZGb23Iv
gOfIXXzo9GjWX+A5sOrd1+Ya8/8Ez4F7l9ybZayuAc+eVbuPJhmca8CzY88T
A3G3E6pxf1yMZceUuAgL+KPi4cYG/axQC3gjwtL6lte5MjPeHxanymISspeZ
Mf+geLvXNSaxhcEbEM7Xj6lXZjJ4fSKvq+/6t/MYvF6x1jLZ2VglwLOK7+p1
3eWvC/Aei1/Wa7fvEFW4/1Akt2zquR9fBf4DkdZxLyNgoBK8LnHEtCZ5w+FK
vN8hqrL614Z8XIn520WJxma+FfjifqtIXfdjjNZWAX6zGCmL/W1TfQV4jSIg
ymX6+ZMVmK9azNeo2ksPVoD3q1gduW7Rwv3/XysnouQ1nldC3OXz4CmXYiQP
8yn7z8j5sB6lMEWuB+tVftdOXG+HciFbfg++V1l6QH4v9kPJ7pT7gf1SAlvl
fmE/FUP6xP20KkO1cr9xHsqmGnkeOC+lAeeF81Qym+V54ryVmX3yvFEPygeo
B9SLkvqPrBfUk7IK9YR6U37aKesN9UijpRPr0Z72oV5Rz3QD9Yx6p42od/QD
RZhlP6Bf6A30C/qJXAtlP6HfSId+Qz/Sy92yH9Gv1JIs+xX9TFfRz+h3Oo1+
hx7QV9AD6AUNW6ReQE8oeqHUE+gN3YfeQI/oh1KpR9ArGoJeQc8o/bjUM+gd
BRdKvYMe0gP7iXroRt3QS+gpLYGeQm9pDfQWekzF0GPoNU2BXkPP6Rj0HHpP
IdB7+AEthx/ALygcfgE/oVj4CfyGFmdIv4EfUSf8CH5FM+FX8DNaBT+D39Fm
+B38kILhh/BL2g2/hJ9SEPwUfksv/BZ+TOXwY/g1lcGv4efUCj+H39NR+D3y
AJ1FHkBeoA7kBeQJykGeQN6gQOQN5BE6gzyCvEK5yCvIM3QFeQZ5hxYg7yAP
kQl5CHmJFiAvIU9RCvLUf6wGhDU=
      "]]}}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox[
    "\"[1\\!\\(\\*SuperscriptBox[\\(]\\), \\(dr\\)]\\)(v)\"", 
     TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{
   "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=4\"", TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-2.8673770913101633`, 0}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.02]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->"Out[33]=",ExpressionUUID->"e803abc7-d7c7-4d31-9110-b708e7ec7980"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[{
 "Particle density ",
 Cell[BoxData[
  RowBox[{
   SubscriptBox["\[Rho]", "p"], "=", " ", 
   SuperscriptBox[
    RowBox[{
     SubscriptBox["\[Rho]", "n"], " ", "[", "1", "]"}], "dr"]}]],
  ExpressionUUID->"1997ff20-5db1-44e3-9ddf-c4ac5a101d45"]
}], "Subsubsection",ExpressionUUID->"b3151452-bcd7-4151-9319-a25adf897203"],

Cell[BoxData[
 RowBox[{
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"Plist", "=", 
       RowBox[{"Range", "[", 
        RowBox[{
         FractionBox["1", "8"], ",", "5", ",", 
         FractionBox["1", "8"]}], "]"}]}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}]}], "}"}], ",", 
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{
       SubscriptBox["\[Rho]p", 
        RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], "=", 
       RowBox[{
        SubscriptBox["\[Rho]nlist", 
         RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
        SubscriptBox["onedr", 
         RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}]}], ",", 
      RowBox[{"{", 
       RowBox[{"P", ",", "Plist"}], "}"}]}], "]"}]}], "]"}], ";"}]], "Input",
 CellLabel->"In[34]:=",ExpressionUUID->"ac8d678e-f88c-48cc-9681-0d3f228df99a"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", 
       FractionBox["1", "8"]}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}], ",", 
      RowBox[{"numpoints", "=", "150"}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"vlist", "=", 
        RowBox[{"\[CapitalDelta]x", " ", 
         RowBox[{"Range", "[", 
          RowBox[{
           RowBox[{"-", 
            FractionBox[
             RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
           FractionBox[
            RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], "}"}], ",", 
      RowBox[{"ListLinePlot", "[", 
       RowBox[{
        RowBox[{"Transpose", "[", 
         RowBox[{"{", 
          RowBox[{"vlist", ",", 
           SubscriptBox["\[Rho]p", 
            RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], "}"}], 
         "]"}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<v\>\"", ",", 
           "\"\<\!\(\*SubscriptBox[\(\[Rho]\), \(p\)]\)(v)\>\""}], "}"}]}], 
        ",", 
        RowBox[{"PlotLabel", "\[Rule]", 
         RowBox[{"\"\<\[Beta]=\>\"", "<>", 
          RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
          RowBox[{"ToString", "[", 
           RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}]}], "]"}]}], 
     "]"}]}], "]"}]}]], "Input",
 CellLabel->"In[35]:=",ExpressionUUID->"b56e228d-84bf-4f00-9aee-ecbb9f0ef2af"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      NCache[
       Rational[1, 72], 0.013888888888888888`]], AbsoluteThickness[1.6], 
     LineBox[CompressedData["
1:eJxVlg9MVWUYxrlX/qjIn8v1yuUCUxoDtSklYhO9fC+IVCjyx1LSMrwCkiIk
aaamVwHHAAeygpAwRVBBEhcJpqzOCwysBMZygC5kKASBJgoiesNRep7a+La7
u7Nzzu/7zve97/M8bobEiBilmZlZ3r+/F//NTS+GK48+9q1I+8xfH/tyuHJE
QrIqYGOY3uzlcOWQwNq7yYbN+oLjL4YLX+iZmfqwcKfe++Vw4ZJTramam4f1
Ms+Zla+HfKq7lQOeMw+cpHHjxSLwnNlGfbw4LPI78HRs53nJnToYPB33hSv7
G71awXNi/1X1fxibu8Bz4t72xbHbp/wFnhNPWXa2/JDN3+BpWVfVFZf0dKqf
zNNyjSF5eLh1lp/Mc+RHBRFjPsXufjLPkRMWNFek7FvkJ/McuaFv/dXuKPKT
ebP4wwztpsIfV4M3i310xvMrn0SCp2FjULvStDsGPA3HV82/mLsiCTwNzy6K
3p7XcBC8mTzYd+XwUGk6eDP5SLrPPu3CXPDUHFVlEWq+pgg8NU80t3WueV4O
nprfzLtwj7dWg+fAsWmrHAq5FjwHLl+nsPC8eR08FZ/RnTtvc6INPBXvmGZu
GizoBk/FWXWBLbU0AJ49X5i7d2i5YgQ8e/4oUL3EGDqO+3Z8xH1i8YYucyHz
bbk998SuxCRbIfNs+RvTZe2ASSPk9224dqjJ8djW2UKefwa/eykoZ4m3h5B5
1hywfLfhkK0XeNP5wTmDS+xBH/Cmc0v9WNk7iXrwprE+vss35+EK8KbyV37H
Pki/EgyeFbuE5v7kfTkcPEtWLP7tbsCy9eBZ8isLfNPS3TaBZ8EeS8MPWK/d
Ap45l801/T4/JQ68KTwjtbR3jpQAnpKHvth7lFSfgKfkn3sKewIMe8BTcO6G
b6OVGz8Hz4yrR9r9OycO4f6E9OquyJBGz1Twn0vWN7r3jxalgTcuvdWz11wT
l4n3TdL0r3v7Gj/OxvxPpYz7yzT3O3LAG5PqGs5VR1h/Cd6opH7D+ena4Dzw
HkuNWbdD7Y7mgzcsbdyZ0rH5WgF4D6Ww55XhYqQQ9x9IizwSdEqrk+Dfk6ra
kl5bd+AUeH9KT2I7ijO3FOH9Xim5vnuPlfdpzH9HKt95I2LhwGnc75QaV8xV
3UkpBr9dutWyY2yXogS8VulqfH9NaVQJ5quXgjPHz+SfKgGvTMpebVn3Pf9/
LbJwjedFGJ4HT9SAh/nEbcyH9YjrWA/WK85OWm+v2I/vwfeKYXwv9kP8gP3A
fgk37Bf2U8RM2s9h8T72G+chanEeOC/hhPPCeYprOE+ct8jGeaMehB3qAfUi
3ka9oJ6EJeoJ9Sa8UG+oR6qYVI8KykS9op6pCfWMeqdHqHf0A1mhH9AvdBr9
gn6ieegn9Btp0W/oRxr3lvsR/Upz0K/oZ8pGP6PfaSn6HXpAv0IPoBfUD72A
ntA86An0ht6D3kCPqBJ6BL2iDOgV9IwUebKeQe/ICL2DHtK2SXpoT+XQS+gp
5UNPobcUA72FHtNZ6DH0miqh19Bz2gY9h95TEPQefkCj8AP4BRngF/ATOgw/
gd/QCPwGfkTO8CP4FW2FX8HPaD/8DH5H8+F38EOKhh/CL+kX+CX8lOLgp/Bb
ega/hR9TKfwYfk2e8Gv4OQ36yn4Ov6cB+D3yAAUhDyAvUA/yAvIEaZEnkDfI
GnkDeYT6kUeQV+i/vII8Q0XIM8g7VI68gzxEochDyEsUjryEPEXPkKf+AY3c
FIU=
      "]]}}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox[
    "\"\\!\\(\\*SubscriptBox[\\(\[Rho]\\), \\(p\\)]\\)(v)\"", 
     TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{
   "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=1/8\"", TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {0, 0.04053270095314431}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->"Out[35]=",ExpressionUUID->"2ee24bca-6713-4181-aa7f-668560cc0a0a"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", "4"}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}], ",", 
      RowBox[{"numpoints", "=", "150"}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"vlist", "=", 
        RowBox[{"\[CapitalDelta]x", " ", 
         RowBox[{"Range", "[", 
          RowBox[{
           RowBox[{"-", 
            FractionBox[
             RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
           FractionBox[
            RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], "}"}], ",", 
      RowBox[{"ListLinePlot", "[", 
       RowBox[{
        RowBox[{"Transpose", "[", 
         RowBox[{"{", 
          RowBox[{"vlist", ",", 
           SubscriptBox["\[Rho]p", 
            RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], "}"}], 
         "]"}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<v\>\"", ",", 
           "\"\<\!\(\*SubscriptBox[\(\[Rho]\), \(p\)]\)(v)\>\""}], "}"}]}], 
        ",", 
        RowBox[{"PlotLabel", "\[Rule]", 
         RowBox[{"\"\<\[Beta]=\>\"", "<>", 
          RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
          RowBox[{"ToString", "[", 
           RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}]}], "]"}]}], 
     "]"}]}], "]"}]}]], "Input",
 CellLabel->"In[36]:=",ExpressionUUID->"516632fa-9587-46f4-8f59-76e4aa2b2bc9"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      NCache[
       Rational[1, 72], 0.013888888888888888`]], AbsoluteThickness[1.6], 
     LineBox[CompressedData["
1:eJxNlntQVGUYxmHl4g1lRe4shYqXsBFFHSbT8yqughQqZTpCigiI46hBqY3k
eEECw7ERuQzmZcJREEPcZV2hy35vINQCa6Qj/EER5JaZycXUwCxSv+c0fDM7
Oztnz+875/3e93meoMTtsckaBweHwqefZ9+25mdLxyc4vu7dhwZLyvOl4zln
xyQuvWOyODxfOl5fOWV+dFe95XjxsxXAqcbQNzJar1vCnq8A3pViS2xr7LRI
nj/nROa2NL90Dzx/zm32n5ztNQCeP3d1+0y16J2F5Plx3Zl9IQebtULy/DjH
mrbWKUEnJM+XTU5NI1xvTxGS58s179Rmvjg9TEieLy/Qbl3osnwBeD5ceDJ6
f3TxUvB8WOTu7jzkHQueN2dl5Ve0vxYHnjfnXEuxbVqUBJ43l42feTzhyFbw
vHhSUbhZ//IO8Lw45mrr69Zv94DnyQl5yRUrPjoInie//+VbuWtqc8Hz5FEd
KYcD384Dbzxby/ZuKblaBN547moNaBjmcQo8D16SXqe7VFQCngcfLYzpM+44
B54HOzbErv/uQDl443ggtTHKXHQRvHF8I6pqXrreAJ6Wv9n8i6PwqwJPywVZ
TpamL0zgaTk6LyT1kM4Mnju76rPNq165Ap47hxpT0kq11bg+llc0zOoLLK0G
fwxHhUdeWOZYA94Y1sQ/OrNpag3ud+OZL3TejAmuwf6j2Vlbri11qAFvFEf2
WNasq1V5Izl2s5tuQ1o1eCM5TbMtfZ9HNXgjeGHObvuuiivgDWfTsYf9zhFX
wHPlWfeUC25tZvBc+MnPd1Z9vsUMngtnLbaNK9GYwXPmCf2eGfYTl8Fz4qMf
TO9bPO8yeMM4qePuBuowgadhQ9KGm4EfqvXTsNtttzWOYSbwHPlywPAbf9jV
ejvw2coJG69/UoXrg+Jewc7KgtVV4P8jIq8d+EzrUwXeE5F4yh4c8KMR9z8W
u3fOXp1zzoj9+0W7Nds29T0jeH895RVYWvRG8B6KFL/V/W/6G8F7IPqKfs88
/MAA3n3xeNZk95Xfq/3RK46ItWF7Der1bhGhG/j4Ub4B/LtitPWWvTjDAN5v
IjXr37HLk9X77eLIxE7XwZUG7N8lEuP0LQUL1es/iPKSni2a2Sq/VdxadMs2
d5rKaxFLOrY1TQlS96sT25cNjrX5q7zzInjkDo8g3/9/K734jf8rbpHy/+Ap
ZV2Sh/2U0dgPz6MUfiqfB8+rDIsf+rx2Zdok+T54X2UwU74v6qFUoB6ol1KF
eqGeSj4Pred9pTtU1hvnofgWy/PAeSkVOC+cpzI/X54nzluxNsrzRj8oOvQD
+kXxPC37Bf2kVNpkP6HflLxC2W/oRzp6cWg/OtKrOtmv6Gf681fZz+h38kqW
/Y55oK8wD5gX2oN5wTzRDMwT5o3+jpDzhnmk0i45j5hXiuuR84p5pp8wz5h3
as+W8w49oFzoAfSCTm+SegE9ofO9Uk+gNzQRegM9ohmBUo+gV3QDegU9I9Nc
qWfQO/KzSr2DHpL+0lA9dCcj9BJ6Sr7QU+gt7YfeQo/pa+gx9JrqodfQc3Lf
LPUcek+N9VLv4QeUDz+AX1AI/AJ+QtQm/QR+Q/Gl0m/gR7QRfgS/oqXwK/gZ
xcHP4HdE8Dv4Ic2BH8IvqQR+CT+lfPgp/JZUv4Uf00X4MfyaLsGv4ecUDj+H
31MF/B55gKqRB5AX6CTyAvIEqXkCeYM6kTeQRygPeQR5hY4hryDPUDryDPIO
JSLvIA/ROuQh5CWai7yEPEXHkaf+AxcMXbU=
      "]]}}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox[
    "\"\\!\\(\\*SubscriptBox[\\(\[Rho]\\), \\(p\\)]\\)(v)\"", 
     TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{
   "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=4\"", TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-0.09827277901637226, 0}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.02]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->"Out[36]=",ExpressionUUID->"7f0635bf-863d-4514-a9d5-4f92ff8b7b4b"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[Cell[BoxData[
 RowBox[{
  SuperscriptBox[
   RowBox[{"[", "v", "]"}], "dr"], 
  " "}]],ExpressionUUID->"bf9a2aad-0466-4841-be88-86b75c86db7d"]], \
"Subsubsection",ExpressionUUID->"9ce7a66a-6110-4f91-93fe-712d987572fb"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   SuperscriptBox[
    RowBox[{"[", "v", "]"}], "dr"], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"With", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"\[Beta]", "=", "1"}], ",", 
       RowBox[{"Plist", "=", 
        RowBox[{"Range", "[", 
         RowBox[{
          FractionBox["1", "8"], ",", "5", ",", 
          FractionBox["1", "8"]}], "]"}]}], ",", 
       RowBox[{"\[CapitalDelta]x", "=", 
        FractionBox["1", "10"]}], ",", 
       RowBox[{"numpoints", "=", "150"}]}], "}"}], ",", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"vlist", "=", 
         RowBox[{"\[CapitalDelta]x", " ", 
          RowBox[{"Range", "[", 
           RowBox[{
            RowBox[{"-", 
             FractionBox[
              RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
            FractionBox[
             RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], "}"}], ",", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{
          SubscriptBox["vdr", 
           RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], "=", 
          RowBox[{"DressingTransformation", "[", 
           RowBox[{"\[CapitalDelta]x", ",", 
            SubscriptBox["\[Rho]nlist", 
             RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], ",", 
            "vlist"}], "]"}]}], ",", 
         RowBox[{"{", 
          RowBox[{"P", ",", "Plist"}], "}"}]}], "]"}]}], "]"}]}], "]"}], 
   ";"}]}]], "Input",
 CellLabel->"In[37]:=",ExpressionUUID->"8ae74796-4875-4a73-bb31-99cc4816256f"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", 
       FractionBox["1", "8"]}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}], ",", 
      RowBox[{"numpoints", "=", "150"}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"vlist", "=", 
        RowBox[{"\[CapitalDelta]x", " ", 
         RowBox[{"Range", "[", 
          RowBox[{
           RowBox[{"-", 
            FractionBox[
             RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
           FractionBox[
            RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], "}"}], ",", 
      RowBox[{"ListLinePlot", "[", 
       RowBox[{
        RowBox[{"Transpose", "[", 
         RowBox[{"{", 
          RowBox[{"vlist", ",", 
           SubscriptBox["vdr", 
            RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], "}"}], 
         "]"}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<v\>\"", ",", 
           "\"\<[v\!\(\*SuperscriptBox[\(]\), \(dr\)]\)(v)\>\""}], "}"}]}], 
        ",", 
        RowBox[{"PlotLabel", "\[Rule]", 
         RowBox[{"\"\<\[Beta]=\>\"", "<>", 
          RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
          RowBox[{"ToString", "[", 
           RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}]}], "]"}]}], 
     "]"}]}], "]"}]}]], "Input",
 CellLabel->"In[38]:=",ExpressionUUID->"fcbfd3b1-54df-4940-965f-91d8f5195b29"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      NCache[
       Rational[1, 72], 0.013888888888888888`]], AbsoluteThickness[1.6], 
     LineBox[CompressedData["
1:eJw11gtMlWUYB/DD7QAHOVfO/Zw2s4Spy3krGbb3mcrFcpXXSCxdhCY6sGPk
Vmm6lZoZCgYLo6Rwcmva1EXG5HvQBZqK4LyLU1LLlISOIEgoJc+/dzs7+/ae
9/d+5/ve5zL8zdzZWaE6na74v8/j75MnHg8/LxxnX7W8zM9LhoafMzdUu9OS
/awbGn6u7Ml59rnLPt5R8nj4eM/urlnD83w8YWj4uHLez6N7Yn0snpc3Zx7w
GSu88Ly8rmN8s5G88Lxc/8qeB6aLHngefiun+wdDwAPPwwuSij7QxXjguVlX
VFXcVe6G5+Ztm78/e2mKG56bM3ZktNWfdcFzcdGpiDmlOS54Lo7Zv+t8INIF
z8mHLp7TTS1zwnNy+t1bGdGJTnhO1qeGrTja6oDn4NMTWivXZjvgOTjidtSa
0WEOeHYen1s9vfkrOzw7c3HnC0sm2uHZ+XXPpabgiTh4cVz+0cwrgaw4eHGc
V1K8/eZDGzwbV9RnnJ1RbINn45nlP2Z/84wNno1Dktbea2+0wrPynXEF16yL
rPCsHLxtWzG21wLPwgdXl2ybtNUCz8KfhicPPhlvgWfhbYss9p56Mzwzv527
41TlfDM8M09L13+c12bCvIkPBpvsL8WY4Bs5IW1EyelEIzwjj/Tq5zxYGov1
sVxSlpRfWzQM+w/jOn/u/pAjMfBi+ENv/PvHOw3wDNyQMJAY5TPAM3Bi4ZbM
mtRoeNFs/nJyQlUgCl4UJxRNn99bGgkvkgufSl+R36iHp+etZ6Zez+6MgKfn
9cuWVeQ7I+BFcPLwJQdCVTi8cL6fU37oQlYYvDD+afBI45gtofBCeVrs5xtH
7guBF8qbZkQG+s/r4IXwyobwxWf+GdTE0/GV2u3XNqU90mR+UDu07sTRpuIB
TfyH2s7sd+sW/NGviTegHWvPcXiSHmB9v1bZ0XD5ZmGvJvv3afbS9De+7uyB
16t51j89xjG7G16PlrnJ1GStC8Lr1rTVcxsTR/8NL6hlL+z7zZvSCa9Lm71T
lZ5K7sD8Xe3kzFl/tc/7E/4d7dKjquap7/0O75a2sz+wZc3u61h/Q5ucUWqq
u3kN+7drXdX3r+RntWG+Tfs2N/6dia7z8M9psc2/7mu42gqvRUtJfDF11Mpj
2O+ItvflC7/UBOrhVWl935lLDyfv+v9a6cqHrhV+ryrl9wqemiKewn7qCdlP
4X5UmdyPwv2qe3K/mL+hJsn/gXdLlcj/xX531Bl5HvDvqlZ5XljfpWbI88R8
UOXJ84bXrRrkfWD/HrVY3hf8XmWX9wmvTxnkfcPrVzVyHuANqBY5L/AeqnI5
T/AGVa2cN6zX0XE5j5gPoXVyXuGF0mdyngnnndLkvBPigeolHgjxQogXQjxR
isQTId5oo8QbPD0VSTzCi6QCiVd4UeSWeIYXTU6Jd3gGmiT5AJ6BDku+gBdD
n0g+gTeMaiXfwIulCslH8Iw0SvIVPCONkHwGz0SNku+w3kzPSz7EvJlyJF/C
s1CB5FPsb6ENkm/hW6hB8jE8K3VIvoZnpaDkc3g2Qr6HZ6NZUg/g2ahG6gW8
OFol9QReHO2WegPPTgulHsGzU4vUK3h2Giv1DJ6D9FLv4DnoqtRDeE7qTRmq
l/CclCn1FJ6T9kq9hecin9RjeC4qlHoNz02vSj2H56YCqffw3PToi6F+AJ6H
lku/AM9DS6WfgOelFuk34Hlpo/Qj8LyUL/0KPB/tkn4Gno8OSL8Dz0/7pB+C
56e50i/B89Nr0k/RvxbuHLw=
      "]]}}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox[
    "\"[v\\!\\(\\*SuperscriptBox[\\(]\\), \\(dr\\)]\\)(v)\"", 
     TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{
   "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=1/8\"", TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-7.406659887474543, 7.40665988747454}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->"Out[38]=",ExpressionUUID->"ae26103f-2686-444b-ae80-45a9ce74f531"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", "4"}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}], ",", 
      RowBox[{"numpoints", "=", "150"}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"vlist", "=", 
        RowBox[{"\[CapitalDelta]x", " ", 
         RowBox[{"Range", "[", 
          RowBox[{
           RowBox[{"-", 
            FractionBox[
             RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
           FractionBox[
            RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], "}"}], ",", 
      RowBox[{"ListLinePlot", "[", 
       RowBox[{
        RowBox[{"Transpose", "[", 
         RowBox[{"{", 
          RowBox[{"vlist", ",", 
           SubscriptBox["vdr", 
            RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], "}"}], 
         "]"}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<v\>\"", ",", 
           "\"\<[v\!\(\*SuperscriptBox[\(]\), \(dr\)]\)(v)\>\""}], "}"}]}], 
        ",", 
        RowBox[{"PlotLabel", "\[Rule]", 
         RowBox[{"\"\<\[Beta]=\>\"", "<>", 
          RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
          RowBox[{"ToString", "[", 
           RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}]}], "]"}]}], 
     "]"}]}], "]"}]}]], "Input",
 CellLabel->"In[39]:=",ExpressionUUID->"93afed92-87ee-46e7-9290-3c7ea17e361e"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      NCache[
       Rational[1, 72], 0.013888888888888888`]], AbsoluteThickness[1.6], 
     LineBox[CompressedData["
1:eJw11gtQlFUUB/CVx4qwLLssy77AUBOmBIdcDR/ld0An5aFgo9k4Fmo+xhFF
YiKwDJ1BSVMbTAnUTNHx7YhmmKJ+Bx9hvnIkyBJRHMxNRlFcQJ4m9/67Mzs7
39y9v/Pt9917zhkwJ/39eR4ajabw1af3+9rV3hHKjx3Rz7JUC88XI5Rn6uv+
nnbHyhoxQrmgemyJq9nCW4p7Rwi37F7eU7rRwk4xQrgw6c1Dg3QWlp6DZ31z
d/ynG4LhOdhsb+2s0QXDc/DVYx7Litaa4dnZacnfeUBrhmfnCe41NQNXBsGz
8bBy7yJuN8GzsV9ENacsNcGz8cnOhQcKGgLhWfm11sP7Rn0QCM/Kr+tCn7sv
GOFZOG936ov50UZ4r67nLFobWWSAZ+HMwedKuS0AXjCfqTSMG1+mhxfMK57V
zotb5A/PzFWnxpRMDdbBM3Nj8hZHxglfeGbeUFsTHZDcD14QG8wDPRPq+sIL
4rM3ix+1z9fCM/GC9ZGOM41e8Ezs/OpBiyvdE56J1xzPHTC7rQ+8QL4RO9p7
+moNvEDO+WRAjDu2R5WekSddL/w8sbBTlZ6R997PLXEa2lXpGblsydAJG4+3
qtIz8OP+MxvyVrtV6Rm46+zF2QvymzEfwGGL46xeJ57C1/OtaGovj3gCT89J
X8wt841pxHp/HmxrGli92YX4Ol62cr9h0rv/wPNj59EPrywMb4Dny56OdTPH
JtyH58sdbf8mDC+5B68fV6Vla1NT6uD58B8BI6fHHr4Nry/3XJuxyTzlL3ha
Hhr1/JzG+Sc8LTfca855O7EanjcXxZ/edn9jFTwv3nOn5muD1014nhwTke8q
KL4Bz4MXx3Xorv1wHZ4Hbw9pvJ5IV+H14dTHlQE1psvwNLx0eOfRvMBLmH+p
Rrrq6pwxv8LvVg/dnbx8wfIL8LrUsM0PU53157C+Q533/bCK8NQKxH+hXo64
Ev+ZS4XXprpPPsxaNeYMvBa1/W79bT52Cp5b3e7U5jXF/wKvWU1bXbM9sftn
eE9Vz3XnTRm//YT5J2rUlNqpyQePwm9Uo+bGDxlNR+C51Lp92dFbEw5ifYMa
WaBs02fsRfx6dWpSTnjMkV2Yr1Uv9X+2q0ezA36NWln68WbjxSJ4N9SPwsKS
J+8oQLzzasoInd9I2yp4+9WtQ7Kyf7Sm/X+t2HPFtYLfK783+vX+XoGnDBkh
PAXxFJ9iEU/B/SiVUeJ+FNyvEjNO3C/mGxT/TeL/wHMpuTvF/0W8RiUzQzwP
+E+UqsnieWH9U6V8vXiemG9WElaI5w3PrcSNEO8D8VuU8nvifcFvU9Ll+4T3
QlkTKd43vA7ly01iP8DrUsq/E/sFXrfiLfcTvJdK1yOx37BeQ3veEvsR833o
bJPYr/A86Ipd7GfE96B8Evsdvie53xDnAZ4XKbXivMDzplMTxXmCp6Xh9eK8
wdNS2VBxHuH1pV3yvMLzoUy9OM/w+tGiJeK8w/Ol9TIfwPOlTLvIF/D8yHRM
5BN4Orq1QuQbeP7kYxf5CJ6ekpaJfAVPT+8ME/kMXgBp00S+w3oDVagiH2Le
QNNkvoRnpKB0kU8R30ixMt/CN9IMmY/hBdIoma/hBZJL5nNCvqcUme8J9YCW
ynpAqBfUvU7UC0I9oS2ynhDqDeXIegPPTNmyHsEzU5OsV/DMVCHrGbxgWinr
HbxgKpX1EJ6FZsl6Cc9Ca2U9hWehLFlv4VlpkKzH8Kxkk/Uano1Oy3oOz0at
4aLew7PRCNkPwLPTe7JfgGenSNlPwHMQy34DnoOssh+B56CJsl+BF0Ilsp+B
F0IPZL8DL5S+lf0QvFBCvwQvlB7Ifor+A71MLmY=
      "]]}}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox[
    "\"[v\\!\\(\\*SuperscriptBox[\\(]\\), \\(dr\\)]\\)(v)\"", 
     TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{
   "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=4\"", TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-6.216147823146084, 6.216147823146084}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->"Out[39]=",ExpressionUUID->"983cffe4-6536-4e30-ba2b-45f805814325"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[Cell[BoxData[
 RowBox[{
  SuperscriptBox[
   RowBox[{"[", 
    SuperscriptBox["v", "2"], "]"}], "dr"], 
  " "}]],ExpressionUUID->"0edb7086-0a50-4502-9182-7687f8450b48"]], \
"Subsubsection",ExpressionUUID->"9ee4cf40-472a-4219-a629-681f3dcf88a0"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   SuperscriptBox[
    RowBox[{"[", 
     SuperscriptBox["v", "2"], "]"}], "dr"], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"With", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"\[Beta]", "=", "1"}], ",", 
       RowBox[{"Plist", "=", 
        RowBox[{"Range", "[", 
         RowBox[{
          FractionBox["1", "8"], ",", "5", ",", 
          FractionBox["1", "8"]}], "]"}]}], ",", 
       RowBox[{"\[CapitalDelta]x", "=", 
        FractionBox["1", "10"]}], ",", 
       RowBox[{"numpoints", "=", "150"}]}], "}"}], ",", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"vlist", "=", 
         RowBox[{"\[CapitalDelta]x", " ", 
          RowBox[{"Range", "[", 
           RowBox[{
            RowBox[{"-", 
             FractionBox[
              RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
            FractionBox[
             RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], "}"}], ",", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{
          SubscriptBox["v2dr", 
           RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], "=", 
          RowBox[{"DressingTransformation", "[", 
           RowBox[{"\[CapitalDelta]x", ",", 
            SubscriptBox["\[Rho]nlist", 
             RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], ",", 
            SuperscriptBox["vlist", "2"]}], "]"}]}], ",", 
         RowBox[{"{", 
          RowBox[{"P", ",", "Plist"}], "}"}]}], "]"}]}], "]"}]}], "]"}], 
   ";"}]}]], "Input",
 CellLabel->"In[51]:=",ExpressionUUID->"635425c9-11ff-42fc-b312-8f98d1aeb10b"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", 
       FractionBox["1", "8"]}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}], ",", 
      RowBox[{"numpoints", "=", "150"}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"vlist", "=", 
        RowBox[{"\[CapitalDelta]x", " ", 
         RowBox[{"Range", "[", 
          RowBox[{
           RowBox[{"-", 
            FractionBox[
             RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
           FractionBox[
            RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], "}"}], ",", 
      RowBox[{"ListLinePlot", "[", 
       RowBox[{
        RowBox[{"Transpose", "[", 
         RowBox[{"{", 
          RowBox[{"vlist", ",", 
           SubscriptBox["v2dr", 
            RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], "}"}], 
         "]"}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<v\>\"", ",", 
           "\"\<[\!\(\*SuperscriptBox[\(v\), \(2\)]\)\!\(\*SuperscriptBox[\(]\
\), \(dr\)]\)(v)\>\""}], "}"}]}], ",", 
        RowBox[{"PlotLabel", "\[Rule]", 
         RowBox[{"\"\<\[Beta]=\>\"", "<>", 
          RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
          RowBox[{"ToString", "[", 
           RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}]}], "]"}]}], 
     "]"}]}], "]"}]}]], "Input",
 CellLabel->"In[52]:=",ExpressionUUID->"b21c0e5e-80b8-4e18-a44b-05c7b28befaa"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      NCache[
       Rational[1, 72], 0.013888888888888888`]], AbsoluteThickness[1.6], 
     LineBox[CompressedData["
1:eJxVln1MVWUcxxGMBAThgly4QAFKqYD4gviSen6AxAV8aQyTLDcnSViikFg5
y7IXVzldTcKRNG29GPJiQ1bKmOdHOTUEX9AQksQQjKXDRFF0MEvvxz94tru7
s3PO53nO8/x+3+83bMXa9JXOTk5ORf//Hvw3NjwYIfrxgg/SxofOl+yHI0R3
+U0ezLSnidPDEaKnE5L2nNuRKl8WPxjBeqeqONbamiJTH45gHajJLJUxKeLg
BWnL2OH1i9fa4QVptFf5vfDDyfCCdNWxTS/kj0qGZ9O3r1dvXJT1LDyb5mV/
veTQoSR4gfpiiV7cb0mCF6gd0dv3TVkzD16glmVFVMY3JMIL0NylJ+vaohLh
BWi4x5U6l88S4FnV12Zs+akvHp5V92SP7Ly1LB6eVa/Gd5cfPi7w/PXV89sq
feMEnr/e/OiLl/9OM+CN1rS9jf21k+bCG62V15uL9trmwButPv6Fld+7zYbn
p12xB/YcGpwFz09bu9Nq22/PhOerOfctswP6ZsDz1YPlAYkr+qfD89WCZPfW
Wqfp8Cy6fER/11NecfAsan++LHp36DR4PvqEf3nq2Bmx8Hw0dndUaXXGVHg+
al897f2Fb0yB563dnoXnr5dMhuetZQOJ+UXHJ3F/lL4T82HNu70x8L1026ne
rqZlE+F5aVxF9s+hZ6N431PnHJ+fmJUeyfwj9bRb1fbCC+PheeidpW5NlWvG
wXNX2/KTTeUeT8Nz1+SitsWfVkXAc9P8eaX75mWNhTdC23bELLgQMgbe4zpQ
kFb8XEcYPFf958jOLft+DIXnqgdjzphXfJ6E95iGWqNPFDQHwxuuFc7R28bt
t8Fz0YbNt6vjSgLgOavnzlzP9q/84TlrbsHRt16r9oM3TDdk/O4y8ZIFnpP+
Fh7ovinMh/v3zVNby/pybnjBHzQ3b7CfXdjgAW/ADJpU8VLquRG8f8/0rLH9
cdHNlfn7TfvKJS2rc13g3TGtodnGhPtO8PrMG88sDJm5adBw8G6Z6ZcjSiKX
3jUcvF5zfcRN71Wf9xkO3r9m+/K62sbwXu73mJZXjt6uC+wxHPyrZmNyZ3zD
rm543WbPYFhkx7HLvN9pnqnYkdA3td1wzP+XWZjeMsEa3ML9NvPY9q3216UJ
frO5N+pag2vsCXinzfUBGWsLk44w36/mt3M3F0VmmvBKzcydVR4uv9Q8ujbS
ueZ5o5Ln4Rnr4DGfcYD5WI/RyHpYr1E8ZL2dRj3fw/ca7Xwv+2G0sh/sl+HN
frGfxp9D9rPXeLTfnIeRw3lwXkYH58V5GkGcJ+dtzOK8qQfDRj1QL4YX9UI9
GW9ST9SbUUO9UY9ydkg9DpNc6pV6ljXUM/UuFuqdfhCTfqBf5CD9Qj+JjX6i
36SOfqMfpYd+pF9lkH6ln6WVfqbfpYB+Rw8kAz1AL8QHvUBPpA89QW+kHr1B
jyQVPUKvJBa9Qs9kI3qG3sl76B16KD8M0UNvuYZeoqeSgp6itzILvUWPJRA9
Rq8lBb1GzyUPPUfvJQe9xw/kMH6AX0gefoGfSDN+gt/IJfwGPxI3/Ai/kmr8
Cj+TOPwMv5MB/A4/lNX4IX4pXfglfirf4Kf4rYzEb/FjeeTH+LXk49f4uXyH
n+P3cgm/Jw/IIvIAeUE2kBfIE5JPnnDwgmQdeYM8IhPII+QVOUFeIc/IXfIM
eUfuknccvBCpT3DkIfKSFJKXyFPyCXnqP19J840=
      "]]}}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox[
    "\"[\\!\\(\\*SuperscriptBox[\\(v\\), \
\\(2\\)]\\)\\!\\(\\*SuperscriptBox[\\(]\\), \\(dr\\)]\\)(v)\"", 
     TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{
   "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=1/8\"", TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {0, 56.251260222542506`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->"Out[52]=",ExpressionUUID->"3b737d14-9474-4977-bdee-f3fa85d96c40"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", "4"}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}], ",", 
      RowBox[{"numpoints", "=", "150"}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"vlist", "=", 
        RowBox[{"\[CapitalDelta]x", " ", 
         RowBox[{"Range", "[", 
          RowBox[{
           RowBox[{"-", 
            FractionBox[
             RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
           FractionBox[
            RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], "}"}], ",", 
      RowBox[{"ListLinePlot", "[", 
       RowBox[{
        RowBox[{"Transpose", "[", 
         RowBox[{"{", 
          RowBox[{"vlist", ",", 
           SubscriptBox["v2dr", 
            RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], "}"}], 
         "]"}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<v\>\"", ",", 
           "\"\<[\!\(\*SuperscriptBox[\(v\), \(2\)]\)\!\(\*SuperscriptBox[\(]\
\), \(dr\)]\)(v)\>\""}], "}"}]}], ",", 
        RowBox[{"PlotLabel", "\[Rule]", 
         RowBox[{"\"\<\[Beta]=\>\"", "<>", 
          RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
          RowBox[{"ToString", "[", 
           RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}]}], "]"}]}], 
     "]"}]}], "]"}]}]], "Input",
 CellLabel->"In[53]:=",ExpressionUUID->"2192790b-e3be-43c2-96ee-e3541178e451"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      NCache[
       Rational[1, 72], 0.013888888888888888`]], AbsoluteThickness[1.6], 
     LineBox[CompressedData["
1:eJxVlg1MlVUYx19AuBfk6/IhICBcUybKUMCP8us8BVvCMmc12fLboUKloBWm
omSSBi4p+VCuZQRLdIOEWWnNdR41kPmVWtEcBYKQmKhAfChy7y05/7fp2e7u
3r3v+zvnPed5/v+/eVX6K6sdNU0r/u/3+P/SxccjlJvWxvc/nxtHa4ZHKOff
Lhob1TuLtOERyjwjZVZU8LNkKXk8QvjE6f5PjAUzKG54hPDY2wv7rdHTSfGC
+e6jyxc2ekwDL5hzpiRcP9YSB14wG7KPrUvkWPBG87SUrtTT5THgjeYFlpc/
Kvp4CnhB7F4yuf/cYDR4QZy4NSy5+K8o8II48pvzjXubJoIXyAfrLwz92DoB
vEBeWZP63tR/IsAL4AO5PQ0G7/HgBfCGfctqVjz3DHgBbDrZd3dbuhm8UVzW
mDVp++ow8EbxxaLEyqWGEPD8ecSN+hWj6wLB8+ewK041X5f7g+fPi8pLxxSV
+YDnx7viXwzN2uMFnh+vs0TtaAl3A8+X+zpN1onuzuD5cvEoy5nfX9XA8+U3
jmT90DA4IBTPh6Mzgsx7g7qE4vlw4Z7uv/d5tgrFM/FLpcK91q9OKJ6Jp7ZU
vdXTUCsVz8Rv2zsXrr//p1Q8b26d6VMVG3pLKp43b/ugqnC+4R7ue/HJ12fn
nerslorvyTn+5o01i3vB8+SmF8LOVKzsx/se7GppqN7i+UCq+d050hxYn5rx
ELyRvF2re7+rYBA8N07O/Mp4becj8Nx4wXRzcWTiEHiuXHBp80/77wyBZ+QQ
s/DN2GAFz8Djk3LHdTRbwXPhnMr1qxNm2cBz4Yl7Ji3SdtvAc+aGmNjvumtt
4I3g+GV+OWsGbeA5sdEpetzcCDt4jlxinxxrS7KD58hZJo+Cm2l28Bz4Rsu8
xV077eBpfGjAZhoo0e/bZVoa15dX2sG3yuxpjuk7T+m8IdnuGnHC9bz+/qCM
DA7+teg3ff4H8vQvuxMzm3XegJybucZ655bO65Mrt12vjrqv83rlteXZtpQ+
ndcjN6Zs6f9+UOd1yYrkrDeT7Pr9e7IxM0Q74KCx4t+RPkapkZPGitch11qS
Rx4eobF6v012TpqSetVZYzV/ixy3u8Sj3kW//4fsKLl1aa9BY8VvkN0nb26N
NOq8KzJ9QozhoFGf76yMOXLu03ajzjsqvX5emu3m+v+1mIdrPC8SKtTz4ImH
kYqH+UTbCTUf1iMasR6sV9zd9eR620RxlPoefK8Ix/diP8QY7Af2SzRjv7Cf
4tun9rNHBGC/cR7CgvPAeYnl29V54TxF4bvqPHHeoh3njXoQPqgH1Iv4DPWC
ehKlqCfUm9iFekM90qOn6tGB5qBeUc9UjXpGvdMm1Dv6gY46qn5Av9Cc5apf
0E/0IfoJ/UZZearf0I/0OfoR/Upu6Ff0M50KV/2Mfqewy6rfoQdE0APoBX2x
SekF9IQOWWuH9QR6Q81jld5Aj2gJ9Ah6RTfjlV5BzyjfW+kZ9I5Klyi9gx5S
644n9dCbvpyt9BJ6ShboKfSWzrQqvYUe0/UypcfQazqep/Qaek510HPoPTlX
KL2HH9Bh+AH8gorvKb+An1DHfuUn8Bs6kqT8Bn5El8uUH8GvaAn8Cn5GYfAz
+B1dhd/BD2kV/BB+SRPgl/BT2gw/hd9SPvwWfkzvwI/h13QBfg0/J9tx5efw
e8qA3yMPkDfyAPICzUdeQJ6g15AnkDfIAXkDeYTykUeQV6gbeQV5hmYizyDv
UDXyjuKF0lnkIeQlsiAvIU/RReSpfwFzFkKy
      "]]}}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox[
    "\"[\\!\\(\\*SuperscriptBox[\\(v\\), \
\\(2\\)]\\)\\!\\(\\*SuperscriptBox[\\(]\\), \\(dr\\)]\\)(v)\"", 
     TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{
   "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=4\"", TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-2.0044145536902853`, 27.953798448180898`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->"Out[53]=",ExpressionUUID->"5b28bda3-949c-4aea-9afe-b67da8ef2d16"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Inverse stretch", "Subsubsection",ExpressionUUID->"18557e01-60b2-4f28-993d-a89f47f9849d"],

Cell[BoxData[
 RowBox[{
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"Plist", "=", 
       RowBox[{"Range", "[", 
        RowBox[{
         FractionBox["1", "8"], ",", "5", ",", 
         FractionBox["1", "8"]}], "]"}]}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}]}], "}"}], ",", 
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{
       SubscriptBox["\[Nu]inv", 
        RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], "=", 
       RowBox[{"\[CapitalDelta]x", " ", 
        RowBox[{"Total", "[", 
         SubscriptBox["\[Rho]p", 
          RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], "]"}]}]}], 
      ",", 
      RowBox[{"{", 
       RowBox[{"P", ",", "Plist"}], "}"}]}], "]"}]}], "]"}], ";"}]], "Input",
 CellLabel->"In[40]:=",ExpressionUUID->"7e420e9b-1bbb-4009-899f-eabe25ccd8a2"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"\[Beta]", "=", "1"}], ",", 
     RowBox[{"Plist", "=", 
      RowBox[{"Range", "[", 
       RowBox[{
        FractionBox["1", "8"], ",", "5", ",", 
        FractionBox["1", "8"]}], "]"}]}], ",", 
     RowBox[{"\[CapitalDelta]x", "=", 
      FractionBox["1", "10"]}]}], "}"}], ",", 
   RowBox[{"Show", "[", 
    RowBox[{
     RowBox[{"ListPlot", "[", 
      RowBox[{
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"P", ",", 
           SubscriptBox["\[Nu]inv", 
            RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], "}"}], 
         ",", 
         RowBox[{"{", 
          RowBox[{"P", ",", "Plist"}], "}"}]}], "]"}], ",", 
       RowBox[{"AxesLabel", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{
         "\"\<P\>\"", ",", 
          "\"\<\!\(\*SuperscriptBox[\(\[Nu]\), \(-1\)]\)\>\""}], "}"}]}], ",", 
       RowBox[{"PlotLabel", "\[Rule]", 
        RowBox[{"\"\<\[Beta]=\>\"", "<>", 
         RowBox[{"ToString", "[", "\[Beta]", "]"}]}]}]}], "]"}], ",", 
     RowBox[{"Plot", "[", 
      RowBox[{
       FractionBox["1", 
        RowBox[{"\[Nu]func", "[", 
         RowBox[{"\[Beta]", ",", "P"}], "]"}]], ",", 
       RowBox[{"{", 
        RowBox[{"P", ",", "0", ",", "6"}], "}"}], ",", 
       RowBox[{"PlotStyle", "\[Rule]", 
        RowBox[{
         RowBox[{"ColorData", "[", "97", "]"}], "[", "4", "]"}]}], ",", 
       RowBox[{"PlotRange", "\[Rule]", "All"}]}], "]"}], ",", 
     RowBox[{"Graphics", "[", 
      RowBox[{"{", 
       RowBox[{"Dashed", ",", 
        RowBox[{"Line", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             SubscriptBox["Pc", "\[Beta]"], ",", 
             RowBox[{"-", "20"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             SubscriptBox["Pc", "\[Beta]"], ",", "20"}], "}"}]}], "}"}], 
         "]"}]}], "}"}], "]"}]}], "]"}]}], "]"}]], "Input",
 CellLabel->"In[41]:=",ExpressionUUID->"f97267f9-addf-43a6-8310-30ab5ce0d010"],

Cell[BoxData[
 GraphicsBox[{{{}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.012833333333333334`],
      AbsoluteThickness[1.6], PointBox[CompressedData["
1:eJxTTMoPSmViYGDQAGIQDQEH7BfERLXMbtlnD+FfsD+g7cNt634Oyr9h/2rR
ov1atteh/Af2OxR5zsv5PIDyn9h7JgS9kmN/BuW/sHeZK7bUruItlP/Gvkku
LCr72Wco/4N9eV5Mk9KO31D+J3vxF/pWK6azOED4X+yFZSOuskwThPK/2Z/Y
46G28pkalP/DXr5RS2Z+uvUBCP+X/ZwNzkZmGtJQ/h/7tAuvq69qCkD5/+zd
r7aqqM1hh/IZHPb28e8WfsME5TM6nKm8HNH88/9+CJ/JIWL7AwnGT7+hfGaH
3uVGG2cw/ITyWRye7Tv6RePgNyif1SH1zJvuCb++QPlsDg847QIud36G8tkd
bshcDAuI+ATlczgEre5o3xv2EcrndLBr/m+SVvUByudyuLX03SOl8vdQPrdD
1lXtc4Ka76B8HoeW1Kr53xjfQvm8Dk/LeRm0f7+G8vkcpmRKBlXxw/j8Dmef
WBodsnoF5Qs4mN24pba+8iWE3yDg0FqnaNtz8gVUXtAhcdK3xfIaUH6DoAPP
DoX4CZOfQ+WFHO4IbyoJ4oLyG4QcXnQsOSXe/QwqL+ww9e2u0iMiUH6DsMPe
TskZqcueQuVFHELu79DVsn+6HwBiQsS8
      "]]}, {{}, {}}}, {{{}, {}, 
     TagBox[
      {RGBColor[0.922526, 0.385626, 0.209179], AbsoluteThickness[1.6], 
       Opacity[1.], LineBox[CompressedData["
1:eJwVkWk81WkDhi0l23DsSyLLexCRUNrcj2xFGpW0WrJEhBijpJCpLFlKqJFs
0STapCSNRlFRyC5ld+zL4ZzzPwblbT7cv+vDfX27VN0C9nry8fDwvPy5/zhn
63/bPiDS9LnpTOx/vOyhqdVAdwav4MDeAmVn1E0N+iTQ/XGXL3f7UVl/MJ+a
x5+khyNyuCEsSCAcUbIspaP0RJiE0Kp5RhLw8b0NYx89E2ZmV6LfP7qNgOyQ
ml/pD1H3o+eOrf0DVMbHl9vRK/D9SeyY6adXWC4QtGLUpwH/Ouw8MFdah50R
xy49c2xH2ZX2X8Vj2rA+qdIqJ7gdB7Nbvcb+aoNSlqpgQnI7jtoIGra9bwOz
oi/Oo74dwVfVg3tXtCPtx7GrUlYdUHNayHob047B8263Ao2/IOna+eWMhA5E
nnN/slb6K3KvxUtn3e1EaahnV35jNzp8o0J6FHtw19S3XXG2G7L+p87vMO9B
Gn9gY5JkDzzFlEMbfXsQknCuOnRfDwJ/aNpa/N2DDTnXH9i19kDMw1K3c10v
jgz2Vpw92Yt94roVYR296BQRT1I71Qc5u3+HQ4z7sXdKQtQpsg+BbzO0Jmz7
UftZOvbG1T4w3KM+/O7Wj5epin+IPumD08bHVe+S+pGuQj9NzfShLMNQ1mO8
H4cNt7nU/tYP1nJy4vHdAXw57KsfdHoAGWEPj1fpMRDXb33yxuUBFMhX63tZ
MbDZR6PgVeoAai/88udqZwYyQrvUVpQMYLPiU1Z7AgOuN3+VzWAOoDBcPdBp
ioHhVsPv1ScGITikNTf6dAgc+8VahaMMKKT8UW+/dwR3OzpWwJcB2/XhtSp+
I3B0fWbhcZaBPZueOIvEjOBFgH/Fw5sMPFTn191UMYJzib1PzFsZeKlpe46j
Mwr+T1U3/XYPYcivsUz9lzFIWCccryTD4On4dlp4ZBwWBa+gs2cYEpLrFM4I
TeCMyIR86rFh5N3peETTmUBvg81H76hhcA5Vm1T5T+DxQcF1tKphBBiaOGBu
AvY+f/zrbD2C8fISuW6pKVxNCI1ftBvFreMDV11MmKiavud53HkU8fOq7rq7
mJjb02H62X8UNx+GvJZxZcJVduPMnaRRvN+QS0cME+uy2PttG0ehkdC8m/2F
ic+PA1TSHcZg/MD4q+YfM6C1eBZvPDKOqrKilMGpWZBJszEH33EwT9MyvARY
OCWgrBYUNg7RDDF5mjILjSZt14pujSPXhj7VZMdC8m2rQNVv4/AP4f225hEL
Ml6a60ScJrAjZad/eCgbivMjD7qdJ/HuNzOjDn0KNlLVjAX/SdxJutfUvYvC
Wd2cVQoRk/hwf0elgg+Fr86HEvZlTaJMVn5AL59Cxtuakx96JtHNkuQZXsWF
csJ9nWLXKUSmseOVFOegvvpkwSW3aYitH991Y/s84rtVcxICp6EhPExf8JgH
ldF+MzVyGj5y6ZI50fP4oGAek585DeLutuF53TxOSil6VXdOY2KfKY+S0wKO
8HskR2kzUWhUxHM9dhFX+00TBQyY+OdRTGDY40VUVSrExf3sMHOrsO1p+yL0
IhsuJFsz8dFYN1Re8zt4vm8OzPVkgnPWb6qu5jvyKQn7NzlMCDdLy/WoLKGz
dcLWqoCJtvuVada7liD27L117WMmTvHSpSRDl3Dmt/Noes3EhfBDm5ual2DD
HNHr72IiIvV8oqQ1D5kaff0Ln+IMxCNqbxeJ8BKTLr+PZskzqLL6/HfjWz7y
UDtIxjt9BtJRMcOGg3xEIyTEJTF3Bgead1Qzl/ETmngEq7N4Bqetb5RGWvOT
UXJ1ZXDzz/+frZr0Rn6Snlfse1d6Fu46e76Kzi0jtJnnzz4pzeJaTL4tQ3k5
ubytfGlWYxbZbww9ja2Wk6C2t9dhPAvzSTlfy7TlxFawtbxj/yzSFe3eeG4V
IIu+XBGRG7M4QybcB3JXkKAXC/sNsn76Yf9LdmlaQUaW8WQf+GsW+YEpCuF8
gqTltqBRXuksnH7hjXzkIUgeNCgc3dYxi+1V1ylLAyGioaR81713FsXZ9/I2
HBci6d5qzNiRWQRJ1NQM3RIil3l1LrbNzeIf6xCxNCFh4my4tShAgYUXaR/D
CqeESUsEoVJVWTgemiMvuUaE2HyyIK+0WbivVvzw6HERstHTrkVwMwufqn6U
FfeJENoN58WcwyzQvOtNfgyIksr5yF0tt1jYpq7Tk6QkTloUgqiAOywENUZv
mnAXJ0Mm7tkihSw0TI17+RaJE9HTluztL1k/O2ftPr2aRhxZQhlPOlhY4Hip
+7+iEW/JBUu7XhbOeDa10Bg0EmYwMT0yzILO0J14DzEJkh1Qb76ay0JtQu4l
A3cJMjaePJ4ow4ZegSZ9QkaSLApfTF2zio3wieLkbAtJIr7md7zTYMOLqRyh
HyxJjLwPXP9uyIYw3c6B0ypJIgZXbjm5lw3Ztuz8L3lSRLorL25nEhtzb65k
PQ2RIfTFVCNGGhtWZW+0zj+XIZtWRndHZrLx/Jjf8zyuDHE+dGL9iwds1Nge
W9gSLksKWtd20j+xMfUoJW38thx5xVa++KaZjWi9rky+MTlSL0XTc/7KRor6
nvT+jfKEvWf2QuoYG/yxK73xRZ6Y1j/XXibEwZpbIstOGCkS+8m/mrNoHHwQ
KEl+fVWRuIv+eX6LPAd8KwuPn51WJDE2YY1BmhxY9vmWhJesJM3vENpnyYFh
Im99ucsqMsRYp37ejoObq+q+0ptWkbllanXy+zmw0Wkq6rVWJsrmy1TtPTiY
CdiyomObCvF+/eFDRRQH9N0u/KRoNfl3E03NKI4DqfSkHVdYq0lcyYGwgmsc
LCbl7FTZpkoKC4bWpmRz4KpuVp7arkq2auhFC93joO/vYr1SLTXyKfP33vBH
HPgIFJZlnVMjU9eXXT9RwUHZgyunndaqkwixXRPd1RzcevZt3aU4dUKLvW7p
UMfBqXIkKYyrE4NwtTnTbxzklTxZuadUgwR7EyfpeQ6Ouq2lu0XRyfKB6Oex
vBRuDl7qMuPVJGlODeJLghSyYlRq/rykSUr3Or8ZlaOQdFBtSjdbi+yoy1/p
okKh5qO5w5aN2qTDejK4hU6B3yH/gE+rNpnfek7ztTGFI5GHUnZo65ArpW8j
jbZRcFL29dPu1SFK60U6CywoqOQ4vryWrUu2aabHp+yj8C6Lk7TKTI/U5/Qx
hI5Q8BJ1Oimqrk+clbQR4UbhzI/feWlC60ikxIuZE4EUatWmD9uIGRCJ+CWb
njMUOFLPgjxuG5BcAes8h0gKWncuXR4zXk/WX0j8XhNNwdF5OaepYz15u9Dq
iCQK+xVsv2yINiQOIasel6RRUCSO7ge3G5FBpofQmkwKdFvV3PsixkRgiFUu
/YBCkfun710NG8gN1y0ycSUUpNWvNC/WbyRaX6P8l8opqCr/JTA2aEJe7K99
H/yWQnN1hf4X6c1k52cJ1bFaCtE8he2ZbltIp82hsy5NFDr19vJ1Nm0lPtXZ
zS1fKLS8Ydro+JqSBYzo2vRRiHH8eBEKhMS/1L/8eoQCS7dxb5m8GVllfLrH
iEnhfU7Ny1ObtpOHjypM7nMpeOTpmzhGmRPTNQLJKksUrCPf/e23aEEa8uzG
UwS4ILvLL+U/tSKuKqkWwmJcTNMttiq/2EGYf367HSHDRcE9RUGD1bbkgrQG
l63ExSnXfqtKkd1EMsnX3keDi6irR55wW+zJHaGnBT06XPx6OzWzVHUfMbo4
z7ffkIuaK5bX7DQdSfUPs6O1m7mo1AsWn991mDiGxj7Ddi60vm3pM9V1JcOs
z2LPdnJxdkpb5X/fPcgZf3nvNXu4eJodMGvZ7UcER10qsw5ysVpJONGjM5Rk
isrr8x3hYuxQjNy2rkjyf415myo=
        "]], LineBox[CompressedData["
1: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
        "]]},
      Annotation[#, "Charting`Private`Tag$155518#1"]& ], {}}, {}}, 
   {Dashing[{Small, Small}], 
    LineBox[{{1.4616321449659389`, -20}, {1.4616321449659389`, 20}}]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"P\"", TraditionalForm], 
    FormBox[
    "\"\\!\\(\\*SuperscriptBox[\\(\[Nu]\\), \\(-1\\)]\\)\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{
   "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1\"", TraditionalForm],
  PlotRange->{{0, 5.}, {-5.130395745784179, 3.8931047027034063`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->"Out[41]=",ExpressionUUID->"07cc0858-ce6f-418b-b7e2-082352637768"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"\[Beta]", "=", "1"}], ",", 
     RowBox[{"Plist", "=", 
      RowBox[{"Range", "[", 
       RowBox[{
        FractionBox["1", "8"], ",", "5", ",", 
        FractionBox["1", "8"]}], "]"}]}], ",", 
     RowBox[{"\[CapitalDelta]x", "=", 
      FractionBox["1", "10"]}]}], "}"}], ",", 
   RowBox[{"Show", "[", 
    RowBox[{
     RowBox[{"ListPlot", "[", 
      RowBox[{
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"P", ",", 
           FractionBox["1", 
            SubscriptBox["\[Nu]inv", 
             RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]]}], 
          "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"P", ",", "Plist"}], "}"}]}], "]"}], ",", 
       RowBox[{"AxesLabel", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{"\"\<P\>\"", ",", "\"\<\[Nu]\>\""}], "}"}]}], ",", 
       RowBox[{"PlotLabel", "\[Rule]", 
        RowBox[{"\"\<\[Beta]=\>\"", "<>", 
         RowBox[{"ToString", "[", "\[Beta]", "]"}]}]}], ",", 
       RowBox[{"PlotRange", "\[Rule]", "All"}]}], "]"}], ",", 
     RowBox[{"Plot", "[", 
      RowBox[{
       RowBox[{"\[Nu]func", "[", 
        RowBox[{"\[Beta]", ",", "P"}], "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"P", ",", "0", ",", "6"}], "}"}], ",", 
       RowBox[{"PlotStyle", "\[Rule]", 
        RowBox[{
         RowBox[{"ColorData", "[", "97", "]"}], "[", "4", "]"}]}], ",", 
       RowBox[{"PlotRange", "\[Rule]", "All"}]}], "]"}], ",", 
     RowBox[{"Graphics", "[", 
      RowBox[{"{", 
       RowBox[{"Dashed", ",", 
        RowBox[{"Line", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             SubscriptBox["Pc", "\[Beta]"], ",", 
             RowBox[{"-", "10"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             SubscriptBox["Pc", "\[Beta]"], ",", "10"}], "}"}]}], "}"}], 
         "]"}]}], "}"}], "]"}]}], "]"}]}], "]"}]], "Input",
 CellLabel->"In[42]:=",ExpressionUUID->"668250cd-7d86-42dc-b294-6c395d011db8"],

Cell[BoxData[
 GraphicsBox[{{{}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.012833333333333334`],
      AbsoluteThickness[1.6], PointBox[CompressedData["
1:eJxTTMoPSmViYGDQAGIQDQEH7F+yije8OKbgAOFfsL/y+d6Ely8EoPwb9myt
VosMONig/Af2P5JPlnRm/beH8J/YL32k3+Jt9x3Kf2F/trxh4fr4j1D+G3uV
iYFfG3e9hPI/2Csn73vfU/EIyv9k38GoYSNw9waU/8VemEEm3Ej2LJT/zZ4j
0+d+ZvQ2KP+H/YYjrqIX1y3aD+H/sne7t2Buwa1DUP4f+/Mb86borj0P5f+z
f5qkHdW3/iqUz+CQ1Owt84zvNpTP6PCli+uPHfMDKJ/J4cv0/wy+QY+gfGaH
J1ynTVKqnkD5LA5cF/YmOjU8g/JZHab+Cje5nv4Cymdz2JXG8S7f5BWUz+6w
9Luy4Y0Xr6F8DgeW2UJ/itrfQvmcDioHeD/5Cr2H8rkc3H4Ems1w/QDlczto
nTyx8fJPGJ/HwXj/3rL2ZR+hfF4H/11fP/v4fILy+RwmVHFLrHkN4/M7XLt2
+q5s62coX8DBUq03jU/yC4TfIOAwN69u573lUD6DoANj+RbLZ4ZfofKCDlks
lx4Ub4fyGYQciqcaeZ63+AaVF3Lw32Q9wXIblM8g7MCctUv8nf53qLyww7dV
17WVl0H5DCIOOxrlJnFJ/tgPAFWUy+M=
      "]]}, {{}, {}}}, {{{}, {}, 
     TagBox[
      {RGBColor[0.922526, 0.385626, 0.209179], AbsoluteThickness[1.6], 
       Opacity[1.], LineBox[CompressedData["
1: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
8FLTxt4eCYNmLRm0zlKJ/wHFVn0E
        "]]},
      Annotation[#, "Charting`Private`Tag$155639#1"]& ]}, {}}, 
   {Dashing[{Small, Small}], 
    LineBox[{{1.4616321449659389`, -10}, {1.4616321449659389`, 10}}]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"P\"", TraditionalForm], 
    FormBox["\"\[Nu]\"", TraditionalForm]},
  AxesOrigin->{0.02343750000000005, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{
   "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1\"", TraditionalForm],
  PlotRange->{{0.02343750000000005, 5.}, {-1.5061135967044788`, 
   8.388492586908756}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->"Out[42]=",ExpressionUUID->"938f21a5-75ea-41eb-9bae-71ffdc6acf72"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Average momentum", "Subsubsection",ExpressionUUID->"06a33fb1-9077-4395-aded-58399ef33588"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "average", " ", "momentum", " ", "should", " ", "be", " ", "zero"}], " ", 
   "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"With", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"\[Beta]", "=", "1"}], ",", 
       RowBox[{"Plist", "=", 
        RowBox[{"Range", "[", 
         RowBox[{
          FractionBox["1", "8"], ",", "5", ",", 
          FractionBox["1", "8"]}], "]"}]}], ",", 
       RowBox[{"\[CapitalDelta]x", "=", 
        FractionBox["1", "10"]}]}], "}"}], ",", 
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{"\[CapitalDelta]x", " ", 
        RowBox[{"Total", "[", 
         RowBox[{
          SubscriptBox["\[Rho]nlist", 
           RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
          SubscriptBox["vdr", 
           RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], "]"}]}],
        ",", 
       RowBox[{"{", 
        RowBox[{"P", ",", "Plist"}], "}"}]}], "]"}]}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"Norm", "[", 
    RowBox[{"%", ",", "\[Infinity]"}], "]"}]}]}]], "Input",
 CellLabel->"In[43]:=",ExpressionUUID->"10d0d5f9-cfa5-4aac-9562-8a7812f483b2"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"-", "1.0143537646842551`*^-17"}], ",", 
   RowBox[{"-", "3.715940007001861`*^-18"}], ",", 
   RowBox[{"-", "1.0289161735929342`*^-16"}], ",", 
   RowBox[{"-", "4.7511290790749855`*^-18"}], ",", "2.2526160761790725`*^-17",
    ",", 
   RowBox[{"-", "4.637770935427731`*^-17"}], ",", 
   RowBox[{"-", "2.4291876847863696`*^-16"}], ",", "6.278757987282587`*^-17", 
   ",", "7.626594315771639`*^-17", ",", 
   RowBox[{"-", "6.802450967118865`*^-16"}], ",", 
   RowBox[{"-", "4.97696486149413`*^-16"}], ",", "2.555365299055126`*^-15", 
   ",", "1.2823822190713014`*^-15", ",", "7.101186685909803`*^-16", ",", 
   RowBox[{"-", "8.382457249718064`*^-16"}], ",", 
   RowBox[{"-", "2.9071290694414343`*^-16"}], ",", "4.107698892214071`*^-16", 
   ",", "2.5875141925557953`*^-16", ",", "2.043098680767155`*^-15", ",", 
   "2.008950107438512`*^-15", ",", 
   RowBox[{"-", "1.4694322083105781`*^-15"}], ",", "1.1319249537049436`*^-15",
    ",", 
   RowBox[{"-", "6.707806256123302`*^-16"}], ",", 
   RowBox[{"-", "6.071722615983059`*^-16"}], ",", 
   RowBox[{"-", "2.0319479671490955`*^-15"}], ",", "5.8591463835704535`*^-16",
    ",", "8.391256882274006`*^-16", ",", "3.697201829492561`*^-16", ",", 
   RowBox[{"-", "1.2788667550278957`*^-15"}], ",", "1.0724747472208846`*^-15",
    ",", "1.849575764965275`*^-15", ",", 
   RowBox[{"-", "2.0968278162907103`*^-15"}], ",", "1.8203864590314763`*^-15",
    ",", 
   RowBox[{"-", "9.524295109910371`*^-16"}], ",", "2.661253006429765`*^-16", 
   ",", "5.239526430181763`*^-16", ",", 
   RowBox[{"-", "1.7451541785024756`*^-15"}], ",", 
   RowBox[{"-", "1.416801517686167`*^-15"}], ",", "1.6737675969605986`*^-15", 
   ",", 
   RowBox[{"-", "5.577420578335713`*^-16"}]}], "}"}]], "Output",
 CellLabel->"Out[43]=",ExpressionUUID->"44548774-236c-44b2-96c2-7cc7e8da2af7"],

Cell[BoxData["2.555365299055126`*^-15"], "Output",
 CellLabel->"Out[44]=",ExpressionUUID->"2b27b3af-2e8a-4cd1-912d-e35c84b91b99"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[{
 Cell[BoxData[
  FormBox[
   SubscriptBox["q", "2"], TraditionalForm]],ExpressionUUID->
  "8e0c8a3b-22a0-4739-8f28-6160ee56eff8"],
 " (average ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["v", "2"], TraditionalForm]],ExpressionUUID->
  "de544654-1181-4d54-a90c-cc34f3094a4f"],
 ")"
}], "Subsubsection",ExpressionUUID->"d8d442bb-b1e0-46fd-aa9b-cf6f9077a1fa"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"\[Beta]", "=", "1"}], ",", 
     RowBox[{"Plist", "=", 
      RowBox[{"Range", "[", 
       RowBox[{
        FractionBox["1", "8"], ",", "5", ",", 
        FractionBox["1", "8"]}], "]"}]}], ",", 
     RowBox[{"\[CapitalDelta]x", "=", 
      FractionBox["1", "10"]}]}], "}"}], ",", 
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{
      SubscriptBox["q2", 
       RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], "=", 
      RowBox[{
       FractionBox["1", 
        SubscriptBox["\[Nu]inv", 
         RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]], 
       "\[CapitalDelta]x", " ", 
       RowBox[{"Total", "[", 
        RowBox[{
         SubscriptBox["\[Rho]nlist", 
          RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
         SubscriptBox["v2dr", 
          RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], 
        "]"}]}]}], ",", 
     RowBox[{"{", 
      RowBox[{"P", ",", "Plist"}], "}"}]}], "]"}]}], 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{"Norm", "[", 
  RowBox[{"%", ",", "\[Infinity]"}], "]"}]}], "Input",
 CellLabel->"In[54]:=",ExpressionUUID->"b3bd7eae-368d-4175-ae82-59ccdace9729"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "1.249999981242168`", ",", "1.4999999792382401`", ",", 
   "1.7499999836178735`", ",", "1.9999999904086405`", ",", 
   "2.249999998000576`", ",", "2.5000000057137517`", ",", 
   "2.750000013246072`", ",", "3.00000002044365`", ",", "3.2500000271959`", 
   ",", "3.500000033379315`", ",", "3.7500000388179586`", ",", 
   "4.000000043245418`", ",", "4.250000046259057`", ",", 
   "4.5000000472593396`", ",", "4.750000045366582`", ",", 
   "5.000000039306122`", ",", "5.250000027250452`", ",", 
   "5.5000000066032095`", ",", "5.749999973705843`", ",", 
   "5.999999923441347`", ",", "6.249999848702787`", ",", "6.499999739684086`",
    ",", "6.74999958293961`", ",", "6.999999360144326`", ",", 
   "7.249999046467695`", ",", "7.499998608453214`", ",", "7.749998001267837`",
    ",", "7.999997165152779`", ",", "8.249996020868213`", ",", 
   "8.499994463875964`", ",", "8.749992356948649`", ",", "8.999989520827157`",
    ",", "9.249985722469422`", ",", "9.499980660343777`", ",", 
   "9.749973946113114`", ",", "9.999965081937834`", ",", "10.249953432487`", 
   ",", "10.499938190593985`", ",", "10.749918335322333`", ",", 
   "10.999892581017438`"}], "}"}]], "Output",
 CellLabel->"Out[54]=",ExpressionUUID->"175aec8f-cdb1-45bd-b422-63c82fbf99d9"],

Cell[BoxData["10.999892581017438`"], "Output",
 CellLabel->"Out[55]=",ExpressionUUID->"6b22dab1-bb23-4f2e-9036-4152c1ca22a8"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"show", " ", "integrand"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", "4"}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}], ",", 
      RowBox[{"numpoints", "=", "150"}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"vlist", "=", 
        RowBox[{"\[CapitalDelta]x", " ", 
         RowBox[{"Range", "[", 
          RowBox[{
           RowBox[{"-", 
            FractionBox[
             RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
           FractionBox[
            RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], "}"}], ",", 
      RowBox[{"ListLinePlot", "[", 
       RowBox[{
        RowBox[{"Transpose", "[", 
         RowBox[{"{", 
          RowBox[{"vlist", ",", 
           RowBox[{
            SubscriptBox["\[Rho]nlist", 
             RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
            SubscriptBox["v2dr", 
             RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}]}], 
          "}"}], "]"}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<v\>\"", ",", 
           "\"\<n(v) [\!\(\*SuperscriptBox[\(v\), \
\(2\)]\)\!\(\*SuperscriptBox[\(]\), \(dr\)]\)(v)\>\""}], "}"}]}]}], "]"}]}], 
     "]"}]}], "]"}]}]], "Input",
 CellLabel->"In[56]:=",ExpressionUUID->"30897dd4-e879-4021-a567-4cd9007c04d6"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      NCache[
       Rational[1, 72], 0.013888888888888888`]], AbsoluteThickness[1.6], 
     LineBox[CompressedData["
1:eJxVlg1MlVUYx69XND7U6wX5vCCkGUo5FTAFjPNQY7DKEERlREgFpNPQLG1r
ykxENofKh8Dky4EQKjoRP0fieWZa0xCRpfMDCARRgfByr3xMMFPP3xZnu7t7
977v75z3nOf5//9vfrkuIkGr0WhyX/xe/l+teznceP66qUmduS2Bia+GG5+v
WVIYsPRJoObVcGNzVn3AWHuNyN/3crhyTtVwUu62CcLn1XDlsKDl01ssnITi
GTilznP2bc+3hOIZ+OOTCw9M3j9XKJ6BL81MOr3eMgA8F36Uv7S2tTwYPBd+
J9Jh6hN9OHjOHDdl+saa5GjwnDlmVamH8I8Hz5kTz94/ce7zJPCcOKrX3jcu
YRN4TtzkOT/+4oKt4Dly3oKYP3+2TgPPkf+ZF2a1xToDPEd+L//TO8eacsBz
4BtNkzLvuBeB58AHm2KN3/WWgmfPHv232lKHKsCz54qKkXBt8lHw7Dl99rWr
/nuPgzeFM/LOZpYEnARvCn+V5/6T6xenwbPjK4uvOwaWngHPjrtnrHEbyjsD
nh1vOD7OJqr9FHi2vN3l1OUW/2rwbHlwqD7ibtdB8PS8IvHyhcOUBZ6eh4+W
WJWH5EjF0/PbPLZ+Tm+VVLzJXKbRPcvoqZWKN5mX2ZUe+rH/Eu7r2NZ6ja7t
w6tS8SdxY8Es943RjeBN4jQXi9DP9Dfx/kSel7zBMvPMbanmn8A7vOKt7gY1
g2fDjQmzdvtFtoJnzQkhj7IXmdvAs+bmfRUPKje3g2fFXQWtY5yNHeBZ8nin
9ODqxZ3gvcEJ6w1VutwH4I3nLTWBPjZXHoI3nqtXVkQc6HoE3jgejizx7hzq
As+CIyLdPmjv7wZvLBd9m9JScq8HPC27/XUhz8B/g6fl32pyLfz29II3hj39
i6MaljwGT8NHdk3LatQacf+5jNMfXuW7wgj+Mxlyqu735nIjeCOyJrzgvMNj
I95/Kju8/jC7+/Rh/iG5/7pviM+GPvAGZVz98m+2H+kDr1/u7a7bGnSvD7wn
8sQPZWnZdibwTHLbtdruYjKBZ5Rp7NeZsvr1/V4ZHLW2JXa3CfxuOTygrw09
ZgLvoeSyEt8Vda/f75DRi4qfF943Yf422ZMu7b2GX99vkl4hv9yymWgG/6Zc
7bvSb7HBDF6DHIjJuTEww4z5fpUjLQ063WwzeIdkjwj1yJ/737WYR+oaz4u2
ZvU8eKI+VvEwn5jpo+bDeoQB68F6ReWo9XaIae+r78H3iiR8L/ZDWA6q/cB+
iY+wX9hPkTlqP03iE+w3zkNk4DxwXmJajzovnKfQ4jxx3qIa5416EHdRD6gX
kY16QT2JWNQT6k2sRb2hHql1VD2OoVQ/Va+oZxpCPaPeSYN6Rz9QCPoB/UJz
lql+QT/RSfQT+o080G/oR9qDfkS/Uhj6Ff1MNY6qn9HvFFqo+h16QNehB9AL
CghVegE9IV280hPoDW1+V+kN9Ih2Qo+gV5RqUHoFPaOYPKVn0Dvynaj0DnpI
Hbb/18MX11qll9BTCoKeQm9p8zGlt9Bj+n6V0mPoNclBpdfQcwo0KD2H3pOh
Suk9/IBG4AfwCyoJU34BP6GFOcpP4Dc0vVD5DfyIrOBH8Ct6Cr+Cn5Ef/Ax+
R5XwO/ghFcEP4ZcUAb+En9I4b+Wn8FvaBb+FH1Mn/Bh+TSnwa/g5ecPP4fe0
CX6PPECJyAPIC+SJvIA8QRMKVJ5A3qBzyBvIIxSBPIK8QjuQV5Bn6GvkGeQd
2om8gzxE/chDyEt0EXkJeYockKf+BemFU18=
      "]]}}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox[
    "\"n(v) [\\!\\(\\*SuperscriptBox[\\(v\\), \
\\(2\\)]\\)\\!\\(\\*SuperscriptBox[\\(]\\), \\(dr\\)]\\)(v)\"", 
     TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{
   "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& )}},
  PlotRange->{{-7.45, 7.45}, {-1.1993657361054029`, 0.09231937486157317}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->"Out[56]=",ExpressionUUID->"a34a43d4-7495-41de-aa45-7c5416c148af"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[Cell[BoxData[
 RowBox[{
  SuperscriptBox[
   RowBox[{"[", 
    RowBox[{
     FractionBox["1", "2"], 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox["v", "2"], "-", 
       SubscriptBox["q", "2"]}], ")"}]}], "]"}], "dr"], 
  " "}]],ExpressionUUID->"ca94adb4-9e18-4a7e-98e3-44b89d25ec26"]], \
"Subsubsection",ExpressionUUID->"0fd25799-d9e4-492a-bed7-a535500cb619"],

Cell[BoxData[
 RowBox[{
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"Plist", "=", 
       RowBox[{"Range", "[", 
        RowBox[{
         FractionBox["1", "8"], ",", "5", ",", 
         FractionBox["1", "8"]}], "]"}]}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}]}], "}"}], ",", 
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{
       SubscriptBox["endr", 
        RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], "=", 
       RowBox[{
        FractionBox["1", "2"], 
        RowBox[{"(", 
         RowBox[{
          SubscriptBox["v2dr", 
           RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], "-", 
          RowBox[{
           SubscriptBox["q2", 
            RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
           SubscriptBox["onedr", 
            RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}]}], 
         ")"}]}]}], ",", 
      RowBox[{"{", 
       RowBox[{"P", ",", "Plist"}], "}"}]}], "]"}]}], "]"}], ";"}]], "Input",
 CellLabel->"In[57]:=",ExpressionUUID->"4aad7e8c-1953-42f7-b082-41ac86a3be3e"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"consistency", " ", "check"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", "2"}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}], ",", 
      RowBox[{"numpoints", "=", "150"}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"vlist", "=", 
        RowBox[{"\[CapitalDelta]x", " ", 
         RowBox[{"Range", "[", 
          RowBox[{
           RowBox[{"-", 
            FractionBox[
             RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
           FractionBox[
            RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], "}"}], ",", 
      RowBox[{"Norm", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"DressingTransformation", "[", 
          RowBox[{"\[CapitalDelta]x", ",", 
           SubscriptBox["\[Rho]nlist", 
            RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], ",", 
           RowBox[{
            FractionBox["1", "2"], 
            RowBox[{"(", 
             RowBox[{
              SuperscriptBox["vlist", "2"], "-", 
              SubscriptBox["q2", 
               RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], 
             ")"}]}]}], "]"}], "-", 
         SubscriptBox["endr", 
          RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], ",", 
        "\[Infinity]"}], "]"}]}], "]"}]}], "]"}]}]], "Input",
 CellLabel->"In[58]:=",ExpressionUUID->"1832c3a7-22b0-4769-ba9d-5c257603e845"],

Cell[BoxData["1.6324719354088302`*^-12"], "Output",
 CellLabel->"Out[58]=",ExpressionUUID->"b572365b-efea-4c8e-95ff-fd735a5a5172"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", 
       FractionBox["1", "8"]}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}], ",", 
      RowBox[{"numpoints", "=", "150"}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"vlist", "=", 
        RowBox[{"\[CapitalDelta]x", " ", 
         RowBox[{"Range", "[", 
          RowBox[{
           RowBox[{"-", 
            FractionBox[
             RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
           FractionBox[
            RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], "}"}], ",", 
      RowBox[{"ListLinePlot", "[", 
       RowBox[{
        RowBox[{"Transpose", "[", 
         RowBox[{"{", 
          RowBox[{"vlist", ",", 
           SubscriptBox["endr", 
            RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], "}"}], 
         "]"}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<v\>\"", ",", 
           "\"\<[\!\(\*FractionBox[\(1\), \
\(2\)]\)(\!\(\*SuperscriptBox[\(v\), \(2\)]\)-\!\(\*SubscriptBox[\(q\), \
\(2\)]\))\!\(\*SuperscriptBox[\(]\), \(dr\)]\)(v)\>\""}], "}"}]}], ",", 
        RowBox[{"PlotLabel", "\[Rule]", 
         RowBox[{"\"\<\[Beta]=\>\"", "<>", 
          RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
          RowBox[{"ToString", "[", 
           RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}]}], "]"}]}], 
     "]"}]}], "]"}]}]], "Input",
 CellLabel->"In[59]:=",ExpressionUUID->"6297f369-4a5f-408e-8bf9-6961145b5618"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      NCache[
       Rational[1, 72], 0.013888888888888888`]], AbsoluteThickness[1.6], 
     LineBox[CompressedData["
1:eJxVlgtQVFUYx3dxwSe4sMAusrxcFFBQBJTHCueDJoQiE5zEBzZI4iiOUio+
EsiwfDDKhCFsmjKVSioTow4Njo7ni0ZHSNIwCBkSdRASFAlTiEBL759Gz8zO
zp177++ce873/f9/r7TMpHQrlUpV/N/v+X/dlefDjS8mjbVe72GmFS+GG3Nl
YkloWgSpXgw3nnO5KDK6LJwOfPF8GLkzgRofdIdR8IthZJev3Gd6h4eRwnPl
yeEBuq5PQ8Fz5evWtoeoYRZ4rpy7alr8JJ9Z4E3g3GUZPZatM8GbwLeneu0/
WB8Cngv/XFMTEOAfAp4LxyVPOfPWrmDwXHjQtNo41B4EnoE3b1GnmuOCwDPw
ds+49aPKZ4Cn53ddV7+x3GEGeHpOGwxumrs1EDw9Fz855vpZ3XTwnFlnml1Z
enwaeM48lLcx+Up+AHhOfO/Gzt+cPvAHz4krqiya7JSp4Dlx7d2Tx54mTAHP
kdkSl3Moxg88R67/+07kwkhf8HT86+J/CqdF+oCn4/aoh46eMZPB0/EOc3ai
f8Ik8Bw4cWDwQtISb/AcuDAg68K+TBN49nw/4vOSrl0TwbNna9melVLmBZ49
z91zYkVbrSd4Wl7r+HaFpsMDPC0njL80PSPGHffHc+/N/sonZUbw7Zg/Kt1W
pncFz479j0Zc2FLogvdtucLoczrDyYD5x7HdnBn3Nn3jDN5YPuFn2FZqdgJv
DPfFfZ9z63cdeGN43vLXo835DuCN5mz9OyNOkz14o9h39570eLUWvJHcqNnk
6GCxBc+Gv3TfmdQfPRY8G/7u7EHf5arR4FnzUpMhKOe6DXga9raoUzac04A3
gv2tkk9ur7ICz4oLRsx680GtCjwrXti8du+ju0NC4al53SJLdeeyAaHwVDwx
ZbPfojF9uP9MlnfN/vZq6yOh8IdkedUzS92dHqHwBmVBwqmf1vjcx/sD0jR/
i3r/3XahzN8v/xyfZxuiugNen1x8ZvcC2+5m8B7L2h3JHaf31YP3l0x9HBXs
1XQRvF457/3QUyFVFeD1yFv9gefT8r6Wyv1u6ev4yaqjZ6VU+F2y2NSSW3Ct
Riq8P2TUoZIur9d+kcr7bbI3IWx3rKZBKvPfljalFbGtgU243yK1Zhn0Q10z
+I0ydW/t/KjWFvCuSQ9j6IGhlTcx34+yySGz8caaVvCOy9KPn264/PD/a3EY
13hetOF58IQXeJhPvIf5sB5hwHqwXtF/+OX1tokOfA++V8Tje7EfYgf2A/sl
enTKfmE/hXbg5f3sFZ7Yb5yHOI/zwHmJAzgvnKdYifPEeYt6nDfqQYSjHlAv
Igv1gnoSR1BPqDdRhHpDPVLEK/WopiWoV9QzDdcz6p2KUO/oB3JHP6BfKBD9
gn6iBegn9BtVod/Qj3QE/Yh+pSb0K/qZvNHP6HfKRb9DD2gp9AB6Qd3QC+gJ
DesJ9IZGQW+gR3QeegS9oqnQK+gZlUPPoHf0BHoHPaTYV/RQSxuhl9BTGtZT
6C2Ng95Cj6kDegy9pn3Qa+g5pULPoff0IfQefkAP4AfwC2qBX8BP6Cr8BH5D
5+A38COqhh/Br6gSfgU/owb4GfyORm5X/A5+SHr4IfyS8uGX8FNKh5/CbykZ
fgs/pmE/hl/TVvg1/Jz64Ofwe4qF3yMPUDXyAPICdSIvIE/QOuQJ5A3ahbyB
PELXkEeQV8gFeQV5hpyRZ5B36D7yjsJzo2jkIeQlOou8hDxFl5Cn/gVOc/Mf

      "]]}}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox[
    "\"[\\!\\(\\*FractionBox[\\(1\\), \
\\(2\\)]\\)(\\!\\(\\*SuperscriptBox[\\(v\\), \
\\(2\\)]\\)-\\!\\(\\*SubscriptBox[\\(q\\), \
\\(2\\)]\\))\\!\\(\\*SuperscriptBox[\\(]\\), \\(dr\\)]\\)(v)\"", 
     TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{
   "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=1/8\"", TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-0.4990101950188776, 27.12284881140183}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->"Out[59]=",ExpressionUUID->"f152ad50-364d-4d30-8dd8-acd454af9108"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", "4"}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}], ",", 
      RowBox[{"numpoints", "=", "150"}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"vlist", "=", 
        RowBox[{"\[CapitalDelta]x", " ", 
         RowBox[{"Range", "[", 
          RowBox[{
           RowBox[{"-", 
            FractionBox[
             RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
           FractionBox[
            RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], "}"}], ",", 
      RowBox[{"ListLinePlot", "[", 
       RowBox[{
        RowBox[{"Transpose", "[", 
         RowBox[{"{", 
          RowBox[{"vlist", ",", 
           SubscriptBox["endr", 
            RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], "}"}], 
         "]"}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<v\>\"", ",", 
           "\"\<[\!\(\*FractionBox[\(1\), \
\(2\)]\)(\!\(\*SuperscriptBox[\(v\), \(2\)]\)-\!\(\*SubscriptBox[\(q\), \
\(2\)]\))\!\(\*SuperscriptBox[\(]\), \(dr\)]\)(v)\>\""}], "}"}]}], ",", 
        RowBox[{"PlotLabel", "\[Rule]", 
         RowBox[{"\"\<\[Beta]=\>\"", "<>", 
          RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
          RowBox[{"ToString", "[", 
           RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}]}], "]"}]}], 
     "]"}]}], "]"}]}]], "Input",
 CellLabel->"In[60]:=",ExpressionUUID->"112c5143-acde-4065-8395-1d1ed6292f76"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      NCache[
       Rational[1, 72], 0.013888888888888888`]], AbsoluteThickness[1.6], 
     LineBox[CompressedData["
1:eJxNlntQlFUYxhcvKCuwIHKHQLFcvCCCoKJ2Xo10zaYxhkix8cIoFzVE/3Co
JCzSScSSRryshKmZujlI5K3lcl4ukuOgIAqicsuIyIxRAtQlNOE8NZyZnZ1v
vu/7nfOd877P84yN2RixdohGo9n34tf/f7Wyf3jz29cL2299H0qxA8ObXY7v
0lQ6hJJmYHjzlDnFCY8XhJDxYP/w4oCty2/uzJhOwQPDi42jUm2rqoNJ8Tx5
fska43S3YPA8ucyQt3rr6iDwPLmopy3v/ulp4Hnw7u6sucssgeB58KLolbnm
RYHguXOQVVzGXyFTwXPnN/xS2truTgHPnfMLUyx+2yeD58Y7NM5xK6dNAs+N
59itTHqzxR88V57YcTrtYKYePFfu+PRIblf4BPBcOcfHv3a05WXwXNjgFzfe
nDcePBeuSHN5VhXvB54zm7Y09iaMGweeM4duSC5vafQFz5kbT325v3yGD3hj
eEFPUOdzsxd4Y/hoBD2NN3iA58S1P+w1mX91Bc+JE92vuC3OdAbPiU35TzvL
3nECbzRHRveZL4U4gjeae2Y73rJebw+eI685ODL1Wp4WPEeuC0hdfXjeCPAc
WWtl8WvwGQaeA1vpj/62Z7EVeA7cberIWbu9T6j7Ot5x2ne9buhTofj2HHu4
9V1h3S0Uz54z4yZXGNMeCfW+Hcfl97aJpgdCzW/LWfroGV9/8Dt4o1jjYbMp
vPQeeFquCRu7cMfrjeBp2f61c0Mn6+rAs+G9FUULp6ZUgTeSvwnb6TxqXTl4
I/hid4n1+yvOgWfNviH7i1c92gPei2vLQ/2h8uNS8Ybznu/aYwzzL0rFG8YH
htfoZulKpeIN5QebtSfSI3+WijeEu6o+SfnKulIq3hDevD7x/g3PavCsWH/3
ZnpB73XwNJz0x+3ZZ0/dwP3nsquQrnw0qRb8PrlE31r/bHsdeP/IiucTw5OL
buF9i7x2viVrV2095n8iE5O8Fyy/fhu8xzK05KfEQz/eAa9bmj532Xbk47vg
dUnfl7qTNk1vAK9T1qwV1ZfrGsB7KPVXPHT6uEbc75CBy2IW32lrBP9PqdGl
1PVGNYHXLs9mzDKlXmzC+62yXnuyK9i2GfP/IgO0xoZLEc243yCbkucbyzOa
wa+TT6JnWo6Zm8GrlkaD6b3ihmbMVyZrEopejfr7P94p2bSlYOn+Z/9fi3Bc
43mRvU49D56IAQ/zieilaj6sR5z/UK0H6xW+Iwevt1VE2arvwfeKJV+o78V+
iCd2aj+wXyJ+qdov7KcwXB68n51iXILab5yHWOGpzgPnJdzS1XnhPEVEmTpP
nLeoTFTnjXoQ8RdUPaBehLlP1QvqSbT7q3pCvYniAlVvqEfKfjC4Hq0or17V
K+qZXDaoeka904Grqt7RD1S+UfUD+oXqbVS/oJ9o2zHVT+g3YvQb+pFaHu8b
6Ef0KwXqSgf6Ff1MM+eqfka/k1ep6nfoAX0GPYBeUGyQ0gvoCcX4KD2B3pDP
BKU30CPqOaP0CHpFmnilV9Azugc9g95RzBmld9BD0p8crIcOtAp6CT2laxql
p9BbugC9hR7TRugx9JrKoNfQc4qFnkPvaR30Hn5AyfAD+AX55iu/gJ/QPPgJ
/Iaq4DfwI7I2KT+CX1Eg/Ap+RrnwM/gdlcDv4IdE8EP4JZ2AX8JPyQI/hd/S
K/Bb+DGFwY/h15QLv4afUzb8HH5PkfB75AEKQR5AXqC3kBeQJygHeQJ5g8zI
G8gjVIk8grxCBuQV5Bn6FnkGeYf0yDuK500ByEPIS+SFvIQ8RQbkqX8Bdhg4
QA==
      "]]}}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox[
    "\"[\\!\\(\\*FractionBox[\\(1\\), \
\\(2\\)]\\)(\\!\\(\\*SuperscriptBox[\\(v\\), \
\\(2\\)]\\)-\\!\\(\\*SubscriptBox[\\(q\\), \
\\(2\\)]\\))\\!\\(\\*SuperscriptBox[\\(]\\), \\(dr\\)]\\)(v)\"", 
     TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{
   "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=4\"", TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-0.49991401353132214`, 22.67126326188856}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->"Out[60]=",ExpressionUUID->"dded8f92-eabf-4989-95ab-f1dad280bee7"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Effective velocity", "Subsubsection",ExpressionUUID->"c4cd9708-a4fb-48c1-b5f0-cb6ad6112cbc"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"effective", " ", "velocity"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"With", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"\[Beta]", "=", "1"}], ",", 
       RowBox[{"Plist", "=", 
        RowBox[{"Range", "[", 
         RowBox[{
          FractionBox["1", "8"], ",", "5", ",", 
          FractionBox["1", "8"]}], "]"}]}], ",", 
       RowBox[{"\[CapitalDelta]x", "=", 
        FractionBox["1", "10"]}]}], "}"}], ",", 
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{
        SubscriptBox["veff", 
         RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], "=", 
        FractionBox[
         SubscriptBox["vdr", 
          RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
         SubscriptBox["onedr", 
          RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]]}], ",", 
       RowBox[{"{", 
        RowBox[{"P", ",", "Plist"}], "}"}]}], "]"}]}], "]"}], 
   ";"}]}]], "Input",
 CellLabel->"In[45]:=",ExpressionUUID->"e55b7c7d-ff22-4c3f-a891-757680948220"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", 
       FractionBox["1", "8"]}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}], ",", 
      RowBox[{"numpoints", "=", "150"}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"vlist", "=", 
        RowBox[{"\[CapitalDelta]x", " ", 
         RowBox[{"Range", "[", 
          RowBox[{
           RowBox[{"-", 
            FractionBox[
             RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
           FractionBox[
            RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], "}"}], ",", 
      RowBox[{"ListLinePlot", "[", 
       RowBox[{
        RowBox[{"Transpose", "[", 
         RowBox[{"{", 
          RowBox[{"vlist", ",", 
           SubscriptBox["veff", 
            RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], "}"}], 
         "]"}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<v\>\"", ",", 
           "\"\<\!\(\*SuperscriptBox[\(v\), \(eff\)]\)(v)\>\""}], "}"}]}], 
        ",", 
        RowBox[{"PlotLabel", "\[Rule]", 
         RowBox[{"\"\<\[Beta]=\>\"", "<>", 
          RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
          RowBox[{"ToString", "[", 
           RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}]}], "]"}]}], 
     "]"}]}], "]"}]}]], "Input",
 CellLabel->"In[46]:=",ExpressionUUID->"4bfe8fd9-b2a8-4ebd-8908-16cd059a225d"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      NCache[
       Rational[1, 72], 0.013888888888888888`]], AbsoluteThickness[1.6], 
     LineBox[CompressedData["
1:eJw11n1M1HUcB/DjOA7vuOOeuSeuIizJh1DJVdr4fYRpZQ+aswblkJlWI3wq
TXLK3CRkLsXAiaib0oR0I7M/nMnM38ckszjUNrQOAjVRFBfKk+BxZHmft7+N
sdv3vq/P736/7+chZfGK+Uu1Go1m5/9/D/83Bx9eAabDaYsCa+38QfQKcPKc
eRmnc52siV4Bfuv8+lF3iYN3Vz+8kvntbQ2W0CoHZ0SvZG7yTKn9aKKDxfPz
q/u/uFE08Mjzc8dT5r3nfrDD83P+tq23whvs8HxcU284eCbLDs/HkyITd26K
t8Pzsr8g7hl/0AbPyz/NLC6q2G6D5+XAgqzMrgU2eB7uzcl/zOu1wfPwQNzM
yeParfDcfKV4bq21xgrPzS+u0e1tWWKF5+aKhSPjP0mzwkvi+vnPNlz4wwIv
ic96je8X5lngubj00xnTjnYmwnNxZfDm/YMFifBcXEaFC2fdNcNz8kvLQl2b
15jhObkgNUO3PGyC5+D2VS/3DxSb4Dl4b2NKszfWBM/B+7o160OlCfDsXDLc
cGyyMQGenYtGV2uStxrh2bixrXxXlcUIz8bryus27PvKAM/G+s7V+ekOAzwr
65cV7cnaMQaelX+750lrcY7BuoU3vflkRceOePiJbJqac+s9Zzy8RM6tvHNk
VqUe+81cekYN7rDpEd/EN+aYCmeWx8FL4O+Od/RmmeLgGXnXDUNbeZkOnpFP
vhL4OqDTwTPwksammivFsfDGcO+XlfeahrXw4vn2geb831dp4el59dojaVdv
xcDT89HsTH13fgy8OA4v32wJXdLA0/GBq7Yj1a9p4MXypPxA7oTiB6p4Wu7r
3lRYsPhfVTwt5yalpJ7MHlXFi+HH80Zre1Miqnga1rSOFJyLhLH+QB3w5XkC
LfdV8UfVvo+X1tR9MwwvokZSq/ZMWzuE/WF1Wl7/2aqse4g/rNauu3h+n2EQ
3pBqOLPSNS7YD29Q/d47od6ypQ/egHqspzF7dnYvvD71z7aJ5rI7d+DdVTMz
r+9+Yu4/WO9Rm5avfLqkthv+bXWo9edUbX8XvJvqoaKsbtML17G/UzUcHk2d
vuZvxL+qphwMLSp55zLW/1JzOtovRo6G4F9Sc7qmngoaW+BdULuq9/+SfjiI
eKfVsWXtGe9OPwXvkPpZ8RvnQiN1jz4rG+Wzgu8rPvm+Ak9pFU9BPOVDiafg
fpR5cj8K7ldJl/vFeqdilt8D76ZSJ78X8W4rPfI84PcobfK8sP+u4pPnifU+
5bI8b3gDSoO8D8QfVOrkfcEfUmLlfcIbVqrkfcMLKzgP8CKKbmz0vMAbVUbk
PMF7oHTLecN+Dd0PRc8j1mMoXc4rPC3hPCO+liJy3uHH0nOSD/B0VCf5Qsgn
GpZ8IuQbnZB8I+QjfS75SMhXQr4S8pmuST7DM9BSyXd4RmqQegDPSLulXsBL
oB+lnsAz0WWpN/DMVCH1CF4i5Uu9gpdIg1Oi9QyehSql3mG/lVSph1i3kl3q
JTwbha9F6yni22ij1Fv4NmqWegzPTsukXsOzU6nUc3gOQr2H56B66QfwHNQq
/QKek9BP4Dnpeek38FyEfgTPRd9Kv4Lnoi3Sz+Al0SXpd/CS6Lj0Q3huKpF+
Cc9Ns6WfwnNTs/RbeB4y66P9GJ6HOqVfw/PSeOnn8Lx0Qvo9PC+5ZB6A56MZ
Mi/A81G1zBPw/LRC5g14from8wg8P70u8wq8ZPpV5hl4ybRQ5h14AcI8BC9A
VpmX4AVousxT9B9yeRzs
      "]]}}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox[
    "\"\\!\\(\\*SuperscriptBox[\\(v\\), \\(eff\\)]\\)(v)\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{
   "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=1/8\"", TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-5.087658693099481, 5.0876586930994705`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->"Out[46]=",ExpressionUUID->"f37965cc-79cb-4d28-b3ab-5c79ab257cff"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", "4"}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}], ",", 
      RowBox[{"numpoints", "=", "150"}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"vlist", "=", 
        RowBox[{"\[CapitalDelta]x", " ", 
         RowBox[{"Range", "[", 
          RowBox[{
           RowBox[{"-", 
            FractionBox[
             RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
           FractionBox[
            RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], "}"}], ",", 
      RowBox[{"ListLinePlot", "[", 
       RowBox[{
        RowBox[{"Transpose", "[", 
         RowBox[{"{", 
          RowBox[{"vlist", ",", 
           SubscriptBox["veff", 
            RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], "}"}], 
         "]"}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<v\>\"", ",", 
           "\"\<\!\(\*SuperscriptBox[\(v\), \(eff\)]\)(v)\>\""}], "}"}]}], 
        ",", 
        RowBox[{"PlotLabel", "\[Rule]", 
         RowBox[{"\"\<\[Beta]=\>\"", "<>", 
          RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
          RowBox[{"ToString", "[", 
           RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}]}], "]"}]}], 
     "]"}]}], "]"}]}]], "Input",
 CellLabel->"In[47]:=",ExpressionUUID->"069fd4f2-40ee-45a2-86f6-1e71f50a9843"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      NCache[
       Rational[1, 72], 0.013888888888888888`]], AbsoluteThickness[1.6], 
     LineBox[CompressedData["
1:eJw11gtQVFUYB/BlXyyIymuBy8PG0UiFHJ/ATDL3M5G0EY1Am1LUKBZfCajo
TMqYmtJAE1aIhhCl6QxioqJSKtzPEUsjzXKIUERJfCRIuvFSYMk958+dYZid
s+d37t57zv/7RianvZmi1+l0Bc//nP8v/+q8Qvhbk3Vf2k4d2cQVwtWHU7LX
HRpCOnGFcN+KnLK2JFcq/Mp5BfOGl8J6qiIsNFlcwVx3IUNp/smVpBfECfYP
S5KPucIL4mndLllJ21zhBfGr0+bqeeGgF8h/vBDd9uIkV3iBPGNpa/pVy6Cn
8MzI5AUjbpnhKRw459DBqSfN8BROmWJ/15RrhhfAp5I5MmepGV4AT0tI//LM
VDM8f14Qa07Z6T7o+XMeOd7rbzLB82et8rCx87gJnh+nho1sse0wwfPj3LS1
s9W3TfCsbFu9YbctzATPylsqMs9znxGelZtWbr0eftkIz5fz3RsPflxkhOfL
5SfyPylaYYTnw3NTFxfMiDTC8+Ezl+qVGP2g58OLxt/JfL/WAM+bQ+PbNi37
wgDPm7vumib6vGWA58XXv/+tYYxigOfFnYbEuRl/6eF58ZIRY2NP5+vhebKi
K97cEKeH58mOq2NyjhgGx4dzdO3woaNPucAfxraE3PQJKS7whnHoN0XNdZ4u
mD+UKwYWnR754+D+8mD7zKzUsMU6eEM4pjLnkbdOB8+dL9zNWO6IHlCl587Z
2qdbotY7VOm5cc7+soeTSvtV6Vl4/p42x7z6PlV6rrz/wKx/7Lo+VXpmvvZG
7JKs0F54Zp6c2tQQN+sZPBOPU6a/Vm17Cs/I5Y+qx4za2gPPwBHTyz1qC7vh
6XlTT3CC42gXPD17Nu4JH6jphOfyfH+Or3Gr74Cn45Kne7MT7/+H8QEttjR6
m2eXHX6/trpkzqXlBju8Pi0+XGnKHv4E859pIZn5oz8LfIz1e7SN71zJi5rd
Dq9bCz3WqBYvbIPXqW0/t39E1qqH8Dq0vSblpGnTA3h27azV9u+SnHvwHmu3
zkYeObq7BePt2ija/Lry3d/wW7XIvGKPH8pvw3ug9T6cNCE+8ybmt2hX4scW
WnIasH6zxm7rpl8orsN4o3Yu9OSN40d/h/+nVnWzsLdjey28q1rejc9n7yg9
j/XOa5qi1V/cUwmvVNvccvsjbX3J4Gc1l5qdnzV8X637pdr5fQ2eeqddeBrW
U0/UiPU03I+aHiXuR8P9qh2Otc77xXiL6pYofg+8B+qqu+L3Yr1WtWKXeB7w
29WJ0eJ5Yf5jdWOVeJ4Yt6sWb/G84XWoh+X7wPqdapN8X/C71dgK8T7h9aiZ
SeJ9w3umVq0R+wFen/rBOLFf4PWrGXI/wRtQLWViv2G+jtJ6xH7EuAutiRP7
FZ6eaq6L/Yz19XSwS+x3+AaqjBHnAZ6RbrSK8wLPRL3+4jzBM9Mry8R5g2em
qERxHuG50u594rzCs1BZgTjP8Nwo74A47/Dcqbha5AE8d+q7J/IC3hDylnnC
yBuyybxh5BE91SU584iRV9T1tcgrRp7RvPkizxh5R34XRd5hvie9fE3kIcY9
yW2gyJmX8LyoUeYp1veiSpm38L2oVeYxPG9qlHkNz5tmyDyH50MRMu/h+dAT
WQ/g+ZBF1gt4vjRH1hN4vhTuIeoNPCulyHoEz0qHZL2CZ6XFsp7B86Ndst7B
86N5sh7C86dKWS/h+VOurKfw/ClG1lt4ARQn6zG8ACqQ9RqeQitlPYen0FBZ
7+EpNEv2A/ACabzsF+AF0s+yn4AXRBGy34AXRFNkPwIviCbIfgVeMN2X/Qy8
YFop+x14IdQr+yF4IXRG9kvwQqhQ9lP8P/xiIxc=
      "]]}}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox[
    "\"\\!\\(\\*SuperscriptBox[\\(v\\), \\(eff\\)]\\)(v)\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{
   "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=4\"", TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-3.458230073728911, 3.4582300737289122`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->"Out[47]=",ExpressionUUID->"a0127a0e-5c0b-453a-9247-b21c999edf02"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"normalized", " ", "effective", " ", "velocity"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"With", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"\[Beta]", "=", "1"}], ",", 
       RowBox[{"Plist", "=", 
        RowBox[{"Range", "[", 
         RowBox[{
          FractionBox["1", "8"], ",", "5", ",", 
          FractionBox["1", "8"]}], "]"}]}], ",", 
       RowBox[{"\[CapitalDelta]x", "=", 
        FractionBox["1", "10"]}]}], "}"}], ",", 
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{
        SubscriptBox["vefftilde", 
         RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], "=", 
        RowBox[{
         SubscriptBox["\[Nu]inv", 
          RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
         SubscriptBox["veff", 
          RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}]}], 
       RowBox[{"(*", " ", 
        RowBox[{
         SubscriptBox["q", "1"], " ", "is", " ", "zero"}], " ", "*)"}], ",", 
       RowBox[{"{", 
        RowBox[{"P", ",", "Plist"}], "}"}]}], "]"}]}], "]"}], 
   ";"}]}]], "Input",
 CellLabel->"In[48]:=",ExpressionUUID->"0cabe8d7-43a5-4abe-b7f3-9a333109c492"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", 
       FractionBox["1", "8"]}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}], ",", 
      RowBox[{"numpoints", "=", "150"}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"vlist", "=", 
        RowBox[{"\[CapitalDelta]x", " ", 
         RowBox[{"Range", "[", 
          RowBox[{
           RowBox[{"-", 
            FractionBox[
             RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
           FractionBox[
            RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], "}"}], ",", 
      RowBox[{"ListLinePlot", "[", 
       RowBox[{
        RowBox[{"Transpose", "[", 
         RowBox[{"{", 
          RowBox[{"vlist", ",", 
           SubscriptBox["vefftilde", 
            RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], "}"}], 
         "]"}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<v\>\"", ",", 
           "\"\<\!\(\*SuperscriptBox[OverscriptBox[\(v\), \(~\)], \
\(eff\)]\)(v)\>\""}], "}"}]}], ",", 
        RowBox[{"PlotLabel", "\[Rule]", 
         RowBox[{"\"\<\[Beta]=\>\"", "<>", 
          RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
          RowBox[{"ToString", "[", 
           RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}]}], "]"}]}], 
     "]"}]}], "]"}]}]], "Input",
 CellLabel->"In[49]:=",ExpressionUUID->"6980fdea-56e8-4a3a-ac2e-0746b1fd1c90"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      NCache[
       Rational[1, 72], 0.013888888888888888`]], AbsoluteThickness[1.6], 
     LineBox[CompressedData["
1:eJw11gtMk1cUB/BaEbEK0pa+6TJHZC6TqXGa6Fzu2TREdM6gWeY0MxGjoEYg
Rp3vJTpHMjUsxgeC6MCxuKHzxWCK8h2HqCjy1FYQhCIaBN9iiozHlPPfTZrm
y+39na/fd+85Z0Rc0pwlep1Ot+/N5+33jbK3w835K/MOjz3o05b2DzeXRk0b
vSnhnqbrH27u9UZOyj/YrKUfeDvCOfBMX+bsHc3a+P4Rzl05T9dZY5o18Vw8
qXjxwwvmZngu9vS9P9Bb54Pn4pQFuZfOZ/vgOfnGRn9S9HIfPCdvfbyz6+I4
HzwHuwxFLY7XTfAcfKHGZJjLTfAc3EAfqRUpTfDsnONaNDruyyZ4du49U/ty
oqUJno2Lq0dlVRU0wrOxPc3veTytEZ6ND3s6rnPVXXhW3pWefmz6wrvwrBxg
CU7d1tYAz8IpZ/zJSWsb4Fk4+7uLEwz6BngWVguW/hq7qx5eGPNW55Kp9np4
Ybxdn9Vbn30HnpkrRs6qcUXdgWfmNacOuXvy6+CZeVVZ/KPNVAfPxKaf4t/J
KK2FZ+Kjir6NnVMLz8iGxcdsmXW34Rn5j3sVGzbE3YZn5Hfvb1l+/6EXXii3
Vs9aV5vshRfKfQsm18b6PZgfzgF/n/0mZrMHfgiP3eOffU7vgRfCq6LNOw+l
3ML6YDZ2jol+OvQW4g/jNe2TDDmpN+EN5afX52UVmG7CM/DDtsjX7r018Azc
PeF5ULm1Bt4QnvJo01/n91fDC+KIqba8Bls1vMHcWT84MWJ/FbxAXvFJ4/0t
lip4gXz1x62/NO6uhDeIZ02kPeOHV8IL4NITkz8rD6uAN5ArNhZFXAsqh6fn
0l3O+KiuMnh6Hvnv8rYrrdfhDWDbmLEx8TevwdOxecaj773nSzHfp93a7S65
l3UVfo+WGnEq7ettV+B1ax98uH6IbtFlrO/SErwjoo5PLkH8Tm1tzuni8aGX
4Pm1hG3G7kTfP/BeaSsXrpv5+Z8X4XVoK0qyozPWMrwX2he/+aoerC6C90x7
r+PjhCMvCzH/RMswWkemLTsLv12LXb25PNSbD69VmzcnMnnDlDysb9Ga9hWW
LE4/hfg+rbJv7/TXzccxX69dGT3jxKjtR+F7tNz9z1uj3EfgVWoF/j2nI+dn
IF6xVvQgo9ee+DO837XyxOrL89vX/H+tbsu1wu9VnvxewVO54inEU+cknsL9
KJb7Ubhf1SD3i/kW1SL/B16r+kr+L+K1qxh5HvCfqFx5Xlj/TOnkeWL+hZor
zxteh0qU94H4r1ScvC/4fhUn7xNep1om7xtel8J+gNetxsl+gdej0mQ/wetT
ZbLfsF5Hw2Q/Yn4ARcp+hacn7GfE11O17Hf4A8kj5wFeAN2Q8wJvEM2U8wQv
kCrkvMELpGQ5j/AGE84rvCCyynmGN4Q+lfMOz0Cdkg/gGahd8gW8odQj+QTe
MEqSfAMvmNySj+CF0HrJV/BCyCn5DN5wMku+w/pQ6pB8iPk315Iv4RnJIvkU
8Y10UvItfCOZJB/DM1Gm5Gt4JgqTfA7PTMj38Mz0g9QDeGYqk3oBL4xQT+CF
UaHUG3gWQj2CZ6FCqVfwLLRD6hk8K5mk3sGzUrrUQ3g22i71Ep6Nxkk9hWej
Q1Jv4dnJmtdfj+HZ6YDUa3gOapN6Ds9BBVLv4TnIIv0APCelSr8Az0kl0k/A
c9Fe6TfgueiO9CPwXDRF+hV44dQp/Qy8cAqWfgeem9APwXNTkfRL8Nx0Uvop
9R/nJXCx
      "]]}}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox[
    "\"\\!\\(\\*SuperscriptBox[OverscriptBox[\\(v\\), \\(~\\)], \
\\(eff\\)]\\)(v)\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{
   "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=1/8\"", TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-0.6065045227600702, 0.6065045227600689}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->"Out[49]=",ExpressionUUID->"ae271eb1-e47c-46fe-98db-88e343187624"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", "4"}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}], ",", 
      RowBox[{"numpoints", "=", "150"}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"vlist", "=", 
        RowBox[{"\[CapitalDelta]x", " ", 
         RowBox[{"Range", "[", 
          RowBox[{
           RowBox[{"-", 
            FractionBox[
             RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
           FractionBox[
            RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], "}"}], ",", 
      RowBox[{"ListLinePlot", "[", 
       RowBox[{
        RowBox[{"Transpose", "[", 
         RowBox[{"{", 
          RowBox[{"vlist", ",", 
           SubscriptBox["vefftilde", 
            RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], "}"}], 
         "]"}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<v\>\"", ",", 
           "\"\<\!\(\*SuperscriptBox[OverscriptBox[\(v\), \(~\)], \
\(eff\)]\)(v)\>\""}], "}"}]}], ",", 
        RowBox[{"PlotLabel", "\[Rule]", 
         RowBox[{"\"\<\[Beta]=\>\"", "<>", 
          RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
          RowBox[{"ToString", "[", 
           RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}]}], "]"}]}], 
     "]"}]}], "]"}]}]], "Input",
 CellLabel->"In[50]:=",ExpressionUUID->"fcca8763-3dd9-480d-8228-5a1e44d714e6"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      NCache[
       Rational[1, 72], 0.013888888888888888`]], AbsoluteThickness[1.6], 
     LineBox[CompressedData["
1:eJw11glMVFcUBuA3AyKOyDbAMAxoNCItYpVSrFv7ThshIq0iWpeQiFVZRASD
K1iNWko1tWrDIqDWNljFpWg1VaOx76i1LdYFiwuhGhCpQhgRx0EQWar3/vMS
QiZ37nffvHfv+c/QhZnxSXpFUYpe/735f+3qmyuIV47KHlSe2KUliyuIk6eG
KYkuLqyIK4jrU2y2iaV6Li15cwXypyUv2+5GO3GEuAL5XEOe05UnepaehZXA
hLU/39Oz9CzsGjN4teGMHp6Fk4rslRuLHV4AT989f+zCNXp4AWy/vJ1yZjs8
M+f9NGL7lEiHZ+a1w8pSWowOz8wR0bmTP7Pp4Plz9uG4TV9W6eD585OL0TGZ
FTp4Js69uyLJa5sOnolX3ZlSu2CJDp6JrauD6+KjHZ4fB7tkpNYOc3h+fEqp
uPi4V4Hny6eSpw9NrVXg+fL1hrjwqF8VeL7cOXPf6cU7FHg+XG95OqU8VYHn
wxsb00KfkMMz8uzbN5a6+Ts8I1/I/b3g1L99mvSMPMZ3d9Wc3D5Net58fiKd
3fN2nyY9b84M940c/nevJj0vXpZTHbojtRfv14s9zs0fk6vrhefFJwtDxp4s
7IHnyTVfv2WvGd4Dz5Oz/6i5dKGiG+MevKF0XHlsRDd8dz5bF5aQcuIVPHee
diB/pn/YK8wfxMd1XL3iB8f+cuPmsqMh+zy64A3kioiOmGvZL+EZOHHq7FGT
6jrhGXjPts8fhVMnvAF85NDo5pd7OuC5ckZYyOaG9hfw+rNifV42IfYFPBcu
fs9uitvbDs+Fy1uajBlWO7x+rCupH31vnB2eMyeWjz9xf/NzeE48bHv98F+u
2ODpOdbiO2Knpw2enl/My0k5NusZPB2fm7z+xoe72uApnJZ1MKn6+FOM92nx
Y2dMrBjTCr9Hy8rfGzurwgqvWzv4QfUm59AWzO/Sbnx/OLKjrBnrd2rOC9Kr
5wc2wevQigva1qXmP4LXrgUXLCudNOA/eHbti48NmX3rH8KzaWZz47c3nz2A
9/o+15+Pr1pcj/FWbeTWS/lhFffht2je77oOXvNdLbwmLfF6b9TRFXcxv1Gb
909Nln3WLaz/QFtu9OxdGXkT4/c069rNKT+GXoV/R1PTH++Ma74Mr0obXZLu
v3SahvUuaQkfvfOXqfIEvEPaoQ1pNWluJY7P6rM/xWcV31e36MX3VXhq+2nh
qVhPnTFXrKfiflSfQnE/Ku5XrTGI+8V4ozrklvg98JpUW6X4vVivRU2eJJ4H
/FZ1Xa54Xpjfpj6UzxPjNjXETzxveHZ1q3wfWL9dTZfvC36HGlMk3ie8TnXR
QvG+4XWp/XeL/QCvW90/QewXeD3qGrmf4PWpQ8aL/Yb5CuUtF/sR4zq6FiX2
Kzw9tc4V+xnr6+m2Wex3+E5k3SnOAzxnajkgzgu8fuRZLM4TPBfKsYrzBs+F
PnlfnEd4/amgWZxXeK5kGSnOM7wBFH1EnHd4BnrwjagH8Aw0J1bUC3gDKVHW
E3huZJD1Bt4gOuMk6hE8d0rbL+oVPHe63CDqGTwPyi4U9Q7zPel5paiHGPek
kDxRL+F5UU6RqKdY34uOnhX1Fr4XbZH1GJ43Rcl6Dc+bWmQ9h2cku4+o9/CM
ZPpK5AE8Iw2WeUHIEwqXeULIGwoOEnlDyCPaJfOIkFf0VOYVIc/omMwzeH70
m8w7eH7kLfMQnokeybyEZ6IsmafwTLRK5i08f3ol8xiePyXKvIZnpnEyz+GZ
KUPmPTwzbZH9ALwAeij7BXgBFC37CXgWSpD9BjwL6WU/As9CjRbRr8ALpErZ
z8ALpMmy34EXRHWyH4IXRItkvwQviJbIfkr9H1sQPg0=
      "]]}}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox[
    "\"\\!\\(\\*SuperscriptBox[OverscriptBox[\\(v\\), \\(~\\)], \
\\(eff\\)]\\)(v)\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{
   "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=4\"", TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-2.753110886909144, 2.7531108869091425`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->"Out[50]=",ExpressionUUID->"b582de57-4a16-458d-b7b1-03778ff9ba8a"]
}, Open  ]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Dynamical correlations", "Subsection",ExpressionUUID->"950b21d5-e430-4037-a16d-9dabaf298a91"],

Cell[TextData[{
 "Only depend on ratio ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[Xi]", "=", 
    RowBox[{"x", "/", "t"}]}], TraditionalForm]],ExpressionUUID->
  "854faa80-0d7f-4588-88f2-a95dea31b264"],
 ", except for a uniform ",
 Cell[BoxData[
  FormBox[
   RowBox[{"1", "/", "t"}], TraditionalForm]],ExpressionUUID->
  "8819604c-365c-4e95-b8a1-69a2b763d1e6"],
 " scaling "
}], "Text",ExpressionUUID->"2896e760-aae3-404f-a16d-595dd84a23e2"],

Cell[BoxData[
 RowBox[{
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"Plist", "=", 
       RowBox[{"Range", "[", 
        RowBox[{
         FractionBox["1", "8"], ",", "5", ",", 
         FractionBox["1", "8"]}], "]"}]}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}], ",", 
      RowBox[{"numpoints", "=", "150"}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"vlist", "=", 
         RowBox[{"\[CapitalDelta]x", " ", 
          RowBox[{"Range", "[", 
           RowBox[{
            RowBox[{"-", 
             FractionBox[
              RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
            FractionBox[
             RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], ",", 
        "vefftildeip", ",", "\[Alpha]list"}], "}"}], ",", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"\[Alpha]list", "=", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"-", 
             FractionBox[
              SubscriptBox["onedr", 
               RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
              SubscriptBox["\[Nu]inv", 
               RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]]}], 
            ",", 
            SubscriptBox["vdr", 
             RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], ",", 
            SubscriptBox["endr", 
             RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], 
           "}"}]}], ";", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"vefftildeip", "=", 
             RowBox[{"Interpolation", "[", 
              RowBox[{"Transpose", "[", 
               RowBox[{"{", 
                RowBox[{"vlist", ",", 
                 SubscriptBox["vefftilde", 
                  RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], 
                "}"}], "]"}], "]"}]}], ";", 
            RowBox[{
             SubscriptBox["S", 
              RowBox[{
              "i", ",", "j", ",", "\[Beta]", ",", "P", ",", 
               "\[CapitalDelta]x"}]], "=", 
             RowBox[{"Transpose", "[", 
              RowBox[{"{", 
               RowBox[{"(*", " ", 
                RowBox[{
                 RowBox[{"resolving", " ", "\[Delta]"}], "-", 
                 RowBox[{"function", " ", "results", " ", "in", " ", 
                  SuperscriptBox[
                   OverscriptBox["v", "~"], "eff"], " ", "for", " ", 
                  RowBox[{"x", "/", "t"}]}]}], " ", "*)"}], 
               RowBox[{
                SubscriptBox["vefftilde", 
                 RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], ",", 
                RowBox[{
                 FractionBox["1", 
                  RowBox[{"Abs", "[", 
                   RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{"vefftildeip", "'"}], "[", "#", "]"}], "&"}], "/@",
                     "vlist"}], "]"}]], " ", 
                 FractionBox[
                  SubscriptBox["\[Rho]p", 
                   RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
                  SubscriptBox["\[Nu]inv", 
                   RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]], 
                 RowBox[{"\[Alpha]list", "\[LeftDoubleBracket]", 
                  RowBox[{"i", "+", "1"}], "\[RightDoubleBracket]"}], 
                 RowBox[{"\[Alpha]list", "\[LeftDoubleBracket]", 
                  RowBox[{"j", "+", "1"}], "\[RightDoubleBracket]"}]}]}], 
               "}"}], "]"}]}]}], ",", 
           RowBox[{"{", 
            RowBox[{"i", ",", "0", ",", "2"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"j", ",", "0", ",", "2"}], "}"}]}], "]"}]}], ",", 
        RowBox[{"{", 
         RowBox[{"P", ",", "Plist"}], "}"}]}], "]"}]}], "]"}]}], "]"}], 
  ";"}]], "Input",
 CellLabel->"In[61]:=",ExpressionUUID->"c34ed9da-631d-4543-9df2-9534837f2600"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", 
       FractionBox["1", "8"]}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}]}], "}"}], ",", 
    RowBox[{"ListLinePlot", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        SubscriptBox["S", 
         RowBox[{
         "0", ",", "0", ",", "\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
        ",", 
        SubscriptBox["S", 
         RowBox[{
         "1", ",", "1", ",", "\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
        ",", 
        SubscriptBox["S", 
         RowBox[{
         "2", ",", "2", ",", "\[Beta]", ",", "P", ",", 
          "\[CapitalDelta]x"}]]}], "}"}], ",", 
      RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
      RowBox[{"AxesLabel", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{
        "\"\<x/t\>\"", ",", 
         "\"\<\!\(\*SubscriptBox[\(S\), \(i, i\)]\)(x,t)\>\""}], "}"}]}], ",", 
      RowBox[{"PlotLegends", "\[Rule]", 
       RowBox[{"Placed", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
          "\"\<\!\(\*SubscriptBox[\(S\), \(0, 0\)]\)(x,t)\>\"", ",", 
           "\"\<\!\(\*SubscriptBox[\(S\), \(1, 1\)]\)(x,t)\>\"", ",", 
           "\"\<\!\(\*SubscriptBox[\(S\), \(2, 2\)]\)(x,t)\>\""}], "}"}], ",",
          "Above"}], "]"}]}], ",", 
      RowBox[{"PlotLabel", "\[Rule]", 
       RowBox[{"\"\<\[Beta]=\>\"", "<>", 
        RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
        RowBox[{"ToString", "[", 
         RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}]}], "]"}]}], 
   "]"}]}]], "Input",
 CellLabel->"In[62]:=",ExpressionUUID->"18fd82c2-84a7-4b1c-a326-3d74699bf22e"],

Cell[BoxData[
 TemplateBox[{
   GraphicsBox[{{}, {{{}, {}, {
        Hue[0.67, 0.6, 0.6], 
        Directive[
         PointSize[
          NCache[
           Rational[1, 90], 0.011111111111111112`]], 
         RGBColor[0.368417, 0.506779, 0.709798], 
         AbsoluteThickness[1.6]], 
        LineBox[CompressedData["
1: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
dJ+Cd9P71H8BbwO5hQ==
         "]]}, {
        Hue[0.9060679774997897, 0.6, 0.6], 
        Directive[
         PointSize[
          NCache[
           Rational[1, 90], 0.011111111111111112`]], 
         RGBColor[0.880722, 0.611041, 0.142051], 
         AbsoluteThickness[1.6]], 
        LineBox[CompressedData["
1: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
/YK8tA==
         "]]}, {
        Hue[0.1421359549995791, 0.6, 0.6], 
        Directive[
         PointSize[
          NCache[
           Rational[1, 90], 0.011111111111111112`]], 
         RGBColor[0.560181, 0.691569, 0.194885], 
         AbsoluteThickness[1.6]], 
        LineBox[CompressedData["
1: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
         "]]}}}, {{}, {}}}, {
    DisplayFunction -> Identity, DisplayFunction -> Identity, AspectRatio -> 
     NCache[GoldenRatio^(-1), 0.6180339887498948], Axes -> {True, True}, 
     AxesLabel -> {
       FormBox["\"x/t\"", TraditionalForm], 
       FormBox[
       "\"\\!\\(\\*SubscriptBox[\\(S\\), \\(i, i\\)]\\)(x,t)\"", 
        TraditionalForm]}, AxesOrigin -> {0, 0}, DisplayFunction :> Identity, 
     Frame -> {{False, False}, {False, False}}, 
     FrameLabel -> {{None, None}, {None, None}}, 
     FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
     GridLines -> {None, None}, GridLinesStyle -> Directive[
       GrayLevel[0.5, 0.4]], 
     Method -> {
      "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
       "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
           Identity[
            Part[#, 1]], 
           Identity[
            Part[#, 2]]}& ), "CopiedValueFunction" -> ({
           Identity[
            Part[#, 1]], 
           Identity[
            Part[#, 2]]}& )}}, PlotLabel -> 
     FormBox["\"\[Beta]=1, P=1/8\"", TraditionalForm], 
     PlotRange -> {{-0.6065045227600702, 0.6065045227600689}, {
       0, 173.93799963242046`}}, PlotRangeClipping -> True, 
     PlotRangePadding -> {{
        Scaled[0.02], 
        Scaled[0.02]}, {
        Scaled[0.02], 
        Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}], 
   FormBox[
    FormBox[
     TemplateBox[{
      "\"\\!\\(\\*SubscriptBox[\\(S\\), \\(0, 0\\)]\\)(x,t)\"", 
       "\"\\!\\(\\*SubscriptBox[\\(S\\), \\(1, 1\\)]\\)(x,t)\"", 
       "\"\\!\\(\\*SubscriptBox[\\(S\\), \\(2, 2\\)]\\)(x,t)\""}, 
      "LineLegend", DisplayFunction -> (FormBox[
        StyleBox[
         StyleBox[
          PaneBox[
           TagBox[
            GridBox[{{
               TagBox[
                GridBox[{{
                   GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    AbsoluteThickness[1.6]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #, 
                   GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    AbsoluteThickness[1.6]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #2}}, 
                 GridBoxAlignment -> {
                  "Columns" -> {Center, Left}, "Rows" -> {{Baseline}}}, 
                 AutoDelete -> False, 
                 GridBoxDividers -> {
                  "Columns" -> {{False}}, "Rows" -> {{False}}}, 
                 GridBoxItemSize -> {"Columns" -> {{All}}, "Rows" -> {{All}}},
                  GridBoxSpacings -> {"Columns" -> {{0.8, 0.5}}}], "Grid"]}, {
               TagBox[
                GridBox[{{
                   GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    RGBColor[0.560181, 0.691569, 0.194885], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    RGBColor[0.560181, 0.691569, 0.194885], 
                    AbsoluteThickness[1.6]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #3}}, 
                 GridBoxAlignment -> {
                  "Columns" -> {Center, Left}, "Rows" -> {{Baseline}}}, 
                 AutoDelete -> False, 
                 GridBoxDividers -> {
                  "Columns" -> {{False}}, "Rows" -> {{False}}}, 
                 GridBoxItemSize -> {"Columns" -> {{All}}, "Rows" -> {{All}}},
                  GridBoxSpacings -> {"Columns" -> {{0.8, 0.5}}}], "Grid"]}}, 
             GridBoxAlignment -> {"Columns" -> {{Left}}, "Rows" -> {{Top}}}, 
             AutoDelete -> False, 
             GridBoxDividers -> {"Columns" -> {{None}}, "Rows" -> {{None}}}, 
             GridBoxItemSize -> {"Columns" -> {{All}}, "Rows" -> {{All}}}, 
             GridBoxSpacings -> {"Columns" -> {{0}}, "Rows" -> {{1}}}], 
            "Grid"], Alignment -> Left, AppearanceElements -> None, 
           ImageMargins -> {{5, 5}, {5, 5}}, ImageSizeAction -> 
           "ResizeToFit"], LineIndent -> 0, StripOnInput -> False], {
         FontFamily -> "Arial"}, Background -> Automatic, StripOnInput -> 
         False], TraditionalForm]& ), 
      InterpretationFunction :> (RowBox[{"LineLegend", "[", 
         RowBox[{
           RowBox[{"{", 
             RowBox[{
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", 
                    FractionBox["1", "90"], "]"}], ",", 
                   
                   TemplateBox[<|
                    "color" -> RGBColor[0.368417, 0.506779, 0.709798]|>, 
                    "RGBColorSwatchTemplate"], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
               ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", 
                    FractionBox["1", "90"], "]"}], ",", 
                   
                   TemplateBox[<|
                    "color" -> RGBColor[0.880722, 0.611041, 0.142051]|>, 
                    "RGBColorSwatchTemplate"], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
               ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", 
                    FractionBox["1", "90"], "]"}], ",", 
                   
                   TemplateBox[<|
                    "color" -> RGBColor[0.560181, 0.691569, 0.194885]|>, 
                    "RGBColorSwatchTemplate"], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}]}],
              "}"}], ",", 
           RowBox[{"{", 
             RowBox[{#, ",", #2, ",", #3}], "}"}], ",", 
           RowBox[{"LegendMarkers", "\[Rule]", 
             RowBox[{"{", 
               RowBox[{
                 RowBox[{"{", 
                   RowBox[{"False", ",", "Automatic"}], "}"}], ",", 
                 RowBox[{"{", 
                   RowBox[{"False", ",", "Automatic"}], "}"}], ",", 
                 RowBox[{"{", 
                   RowBox[{"False", ",", "Automatic"}], "}"}]}], "}"}]}], ",", 
           RowBox[{"Joined", "\[Rule]", 
             RowBox[{"{", 
               RowBox[{"True", ",", "True", ",", "True"}], "}"}]}], ",", 
           RowBox[{"LabelStyle", "\[Rule]", 
             RowBox[{"{", "}"}]}], ",", 
           RowBox[{"LegendLayout", "\[Rule]", "\"Row\""}]}], "]"}]& ), 
      Editable -> True], TraditionalForm], TraditionalForm]},
  "Legended",
  DisplayFunction->(GridBox[{{
      ItemBox[#2, DefaultBaseStyle -> "LabeledLabel"]}, {
      TagBox[
       ItemBox[
        PaneBox[
         TagBox[#, "SkipImageSizeLevel"], Alignment -> {Center, Baseline}, 
         BaselinePosition -> Baseline], DefaultBaseStyle -> "Labeled"], 
       "SkipImageSizeLevel"]}}, 
    GridBoxAlignment -> {"Columns" -> {{Center}}, "Rows" -> {{Center}}}, 
    AutoDelete -> False, GridBoxItemSize -> Automatic, 
    BaselinePosition -> {2, 1}]& ),
  Editable->True,
  InterpretationFunction->(RowBox[{"Legended", "[", 
     RowBox[{#, ",", 
       RowBox[{"Placed", "[", 
         RowBox[{#2, ",", "Above"}], "]"}]}], "]"}]& )]], "Output",
 CellLabel->"Out[62]=",ExpressionUUID->"c6a810c6-a7b9-4d1c-932b-0d8a2b0a6c17"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", "1"}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}]}], "}"}], ",", 
    RowBox[{"ListLinePlot", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        SubscriptBox["S", 
         RowBox[{
         "0", ",", "0", ",", "\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
        ",", 
        SubscriptBox["S", 
         RowBox[{
         "1", ",", "1", ",", "\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
        ",", 
        SubscriptBox["S", 
         RowBox[{
         "2", ",", "2", ",", "\[Beta]", ",", "P", ",", 
          "\[CapitalDelta]x"}]]}], "}"}], ",", 
      RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
      RowBox[{"AxesLabel", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{
        "\"\<x/t\>\"", ",", 
         "\"\<\!\(\*SubscriptBox[\(S\), \(i, i\)]\)(x,t)\>\""}], "}"}]}], ",", 
      RowBox[{"PlotLegends", "\[Rule]", 
       RowBox[{"Placed", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
          "\"\<\!\(\*SubscriptBox[\(S\), \(0, 0\)]\)(x,t)\>\"", ",", 
           "\"\<\!\(\*SubscriptBox[\(S\), \(1, 1\)]\)(x,t)\>\"", ",", 
           "\"\<\!\(\*SubscriptBox[\(S\), \(2, 2\)]\)(x,t)\>\""}], "}"}], ",",
          "Above"}], "]"}]}], ",", 
      RowBox[{"PlotLabel", "\[Rule]", 
       RowBox[{"\"\<\[Beta]=\>\"", "<>", 
        RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
        RowBox[{"ToString", "[", 
         RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}]}], "]"}]}], 
   "]"}]}]], "Input",
 CellLabel->"In[63]:=",ExpressionUUID->"bc84fa53-23d8-431e-8f01-3a1be781cf6b"],

Cell[BoxData[
 TemplateBox[{
   GraphicsBox[{{}, {{{}, {}, {
        Hue[0.67, 0.6, 0.6], 
        Directive[
         PointSize[
          NCache[
           Rational[1, 90], 0.011111111111111112`]], 
         RGBColor[0.368417, 0.506779, 0.709798], 
         AbsoluteThickness[1.6]], 
        LineBox[CompressedData["
1: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

         "]]}, {
        Hue[0.9060679774997897, 0.6, 0.6], 
        Directive[
         PointSize[
          NCache[
           Rational[1, 90], 0.011111111111111112`]], 
         RGBColor[0.880722, 0.611041, 0.142051], 
         AbsoluteThickness[1.6]], 
        LineBox[CompressedData["
1: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

         "]]}, {
        Hue[0.1421359549995791, 0.6, 0.6], 
        Directive[
         PointSize[
          NCache[
           Rational[1, 90], 0.011111111111111112`]], 
         RGBColor[0.560181, 0.691569, 0.194885], 
         AbsoluteThickness[1.6]], 
        LineBox[CompressedData["
1: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
bw==
         "]]}}}, {{}, {}}}, {
    DisplayFunction -> Identity, DisplayFunction -> Identity, AspectRatio -> 
     NCache[GoldenRatio^(-1), 0.6180339887498948], Axes -> {True, True}, 
     AxesLabel -> {
       FormBox["\"x/t\"", TraditionalForm], 
       FormBox[
       "\"\\!\\(\\*SubscriptBox[\\(S\\), \\(i, i\\)]\\)(x,t)\"", 
        TraditionalForm]}, AxesOrigin -> {0, 0}, DisplayFunction :> Identity, 
     Frame -> {{False, False}, {False, False}}, 
     FrameLabel -> {{None, None}, {None, None}}, 
     FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
     GridLines -> {None, None}, GridLinesStyle -> Directive[
       GrayLevel[0.5, 0.4]], 
     Method -> {
      "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
       "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
           Identity[
            Part[#, 1]], 
           Identity[
            Part[#, 2]]}& ), "CopiedValueFunction" -> ({
           Identity[
            Part[#, 1]], 
           Identity[
            Part[#, 2]]}& )}}, PlotLabel -> 
     FormBox["\"\[Beta]=1, P=1\"", TraditionalForm], 
     PlotRange -> {{-1.6788046346296661`, 1.6788046346296697`}, {
       0, 2.6912690371235004`}}, PlotRangeClipping -> True, 
     PlotRangePadding -> {{
        Scaled[0.02], 
        Scaled[0.02]}, {
        Scaled[0.02], 
        Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}], 
   FormBox[
    FormBox[
     TemplateBox[{
      "\"\\!\\(\\*SubscriptBox[\\(S\\), \\(0, 0\\)]\\)(x,t)\"", 
       "\"\\!\\(\\*SubscriptBox[\\(S\\), \\(1, 1\\)]\\)(x,t)\"", 
       "\"\\!\\(\\*SubscriptBox[\\(S\\), \\(2, 2\\)]\\)(x,t)\""}, 
      "LineLegend", DisplayFunction -> (FormBox[
        StyleBox[
         StyleBox[
          PaneBox[
           TagBox[
            GridBox[{{
               TagBox[
                GridBox[{{
                   GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    AbsoluteThickness[1.6]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #, 
                   GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    AbsoluteThickness[1.6]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #2}}, 
                 GridBoxAlignment -> {
                  "Columns" -> {Center, Left}, "Rows" -> {{Baseline}}}, 
                 AutoDelete -> False, 
                 GridBoxDividers -> {
                  "Columns" -> {{False}}, "Rows" -> {{False}}}, 
                 GridBoxItemSize -> {"Columns" -> {{All}}, "Rows" -> {{All}}},
                  GridBoxSpacings -> {"Columns" -> {{0.8, 0.5}}}], "Grid"]}, {
               TagBox[
                GridBox[{{
                   GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    RGBColor[0.560181, 0.691569, 0.194885], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    RGBColor[0.560181, 0.691569, 0.194885], 
                    AbsoluteThickness[1.6]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #3}}, 
                 GridBoxAlignment -> {
                  "Columns" -> {Center, Left}, "Rows" -> {{Baseline}}}, 
                 AutoDelete -> False, 
                 GridBoxDividers -> {
                  "Columns" -> {{False}}, "Rows" -> {{False}}}, 
                 GridBoxItemSize -> {"Columns" -> {{All}}, "Rows" -> {{All}}},
                  GridBoxSpacings -> {"Columns" -> {{0.8, 0.5}}}], "Grid"]}}, 
             GridBoxAlignment -> {"Columns" -> {{Left}}, "Rows" -> {{Top}}}, 
             AutoDelete -> False, 
             GridBoxDividers -> {"Columns" -> {{None}}, "Rows" -> {{None}}}, 
             GridBoxItemSize -> {"Columns" -> {{All}}, "Rows" -> {{All}}}, 
             GridBoxSpacings -> {"Columns" -> {{0}}, "Rows" -> {{1}}}], 
            "Grid"], Alignment -> Left, AppearanceElements -> None, 
           ImageMargins -> {{5, 5}, {5, 5}}, ImageSizeAction -> 
           "ResizeToFit"], LineIndent -> 0, StripOnInput -> False], {
         FontFamily -> "Arial"}, Background -> Automatic, StripOnInput -> 
         False], TraditionalForm]& ), 
      InterpretationFunction :> (RowBox[{"LineLegend", "[", 
         RowBox[{
           RowBox[{"{", 
             RowBox[{
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", 
                    FractionBox["1", "90"], "]"}], ",", 
                   
                   TemplateBox[<|
                    "color" -> RGBColor[0.368417, 0.506779, 0.709798]|>, 
                    "RGBColorSwatchTemplate"], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
               ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", 
                    FractionBox["1", "90"], "]"}], ",", 
                   
                   TemplateBox[<|
                    "color" -> RGBColor[0.880722, 0.611041, 0.142051]|>, 
                    "RGBColorSwatchTemplate"], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
               ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", 
                    FractionBox["1", "90"], "]"}], ",", 
                   
                   TemplateBox[<|
                    "color" -> RGBColor[0.560181, 0.691569, 0.194885]|>, 
                    "RGBColorSwatchTemplate"], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}]}],
              "}"}], ",", 
           RowBox[{"{", 
             RowBox[{#, ",", #2, ",", #3}], "}"}], ",", 
           RowBox[{"LegendMarkers", "\[Rule]", 
             RowBox[{"{", 
               RowBox[{
                 RowBox[{"{", 
                   RowBox[{"False", ",", "Automatic"}], "}"}], ",", 
                 RowBox[{"{", 
                   RowBox[{"False", ",", "Automatic"}], "}"}], ",", 
                 RowBox[{"{", 
                   RowBox[{"False", ",", "Automatic"}], "}"}]}], "}"}]}], ",", 
           RowBox[{"Joined", "\[Rule]", 
             RowBox[{"{", 
               RowBox[{"True", ",", "True", ",", "True"}], "}"}]}], ",", 
           RowBox[{"LabelStyle", "\[Rule]", 
             RowBox[{"{", "}"}]}], ",", 
           RowBox[{"LegendLayout", "\[Rule]", "\"Row\""}]}], "]"}]& ), 
      Editable -> True], TraditionalForm], TraditionalForm]},
  "Legended",
  DisplayFunction->(GridBox[{{
      ItemBox[#2, DefaultBaseStyle -> "LabeledLabel"]}, {
      TagBox[
       ItemBox[
        PaneBox[
         TagBox[#, "SkipImageSizeLevel"], Alignment -> {Center, Baseline}, 
         BaselinePosition -> Baseline], DefaultBaseStyle -> "Labeled"], 
       "SkipImageSizeLevel"]}}, 
    GridBoxAlignment -> {"Columns" -> {{Center}}, "Rows" -> {{Center}}}, 
    AutoDelete -> False, GridBoxItemSize -> Automatic, 
    BaselinePosition -> {2, 1}]& ),
  Editable->True,
  InterpretationFunction->(RowBox[{"Legended", "[", 
     RowBox[{#, ",", 
       RowBox[{"Placed", "[", 
         RowBox[{#2, ",", "Above"}], "]"}]}], "]"}]& )]], "Output",
 CellLabel->"Out[63]=",ExpressionUUID->"fdc3f4d3-361d-4d66-a38a-b729ea6071eb"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"example", ":", " ", 
    RowBox[{"off", "-", 
     RowBox[{"diagonal", " ", "components"}]}]}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", "1"}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}]}], "}"}], ",", 
    RowBox[{"ListLinePlot", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        SubscriptBox["S", 
         RowBox[{
         "0", ",", "1", ",", "\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
        ",", 
        SubscriptBox["S", 
         RowBox[{
         "0", ",", "2", ",", "\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
        ",", 
        SubscriptBox["S", 
         RowBox[{
         "1", ",", "2", ",", "\[Beta]", ",", "P", ",", 
          "\[CapitalDelta]x"}]]}], "}"}], ",", 
      RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
      RowBox[{"AxesLabel", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{
        "\"\<x/t\>\"", ",", 
         "\"\<\!\(\*SubscriptBox[\(S\), \(i, j\)]\)(x,t)\>\""}], "}"}]}], ",", 
      RowBox[{"PlotLegends", "\[Rule]", 
       RowBox[{"Placed", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
          "\"\<\!\(\*SubscriptBox[\(S\), \(0, 1\)]\)(x,t)\>\"", ",", 
           "\"\<\!\(\*SubscriptBox[\(S\), \(0, 2\)]\)(x,t)\>\"", ",", 
           "\"\<\!\(\*SubscriptBox[\(S\), \(1, 2\)]\)(x,t)\>\""}], "}"}], ",",
          "Above"}], "]"}]}], ",", 
      RowBox[{"PlotLabel", "\[Rule]", 
       RowBox[{"\"\<\[Beta]=\>\"", "<>", 
        RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
        RowBox[{"ToString", "[", 
         RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}]}], "]"}]}], 
   "]"}]}]], "Input",
 CellLabel->"In[64]:=",ExpressionUUID->"e98fbdd0-78cd-4da1-8cf1-aaf86830ee0b"],

Cell[BoxData[
 TemplateBox[{
   GraphicsBox[{{}, {{{}, {}, {
        Hue[0.67, 0.6, 0.6], 
        Directive[
         PointSize[
          NCache[
           Rational[1, 90], 0.011111111111111112`]], 
         RGBColor[0.368417, 0.506779, 0.709798], 
         AbsoluteThickness[1.6]], 
        LineBox[CompressedData["
1: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
kpcgaXbmr7zEkpA8BSON3/JU1f8BFCQb0A==
         "]]}, {
        Hue[0.9060679774997897, 0.6, 0.6], 
        Directive[
         PointSize[
          NCache[
           Rational[1, 90], 0.011111111111111112`]], 
         RGBColor[0.880722, 0.611041, 0.142051], 
         AbsoluteThickness[1.6]], 
        LineBox[CompressedData["
1:eJw1lns4lOkbx5VTG5VDpELYtSkipVZxuRsl2ogIRcdBlBySlkqFpEzFLopQ
ym5FSdM6s703RiHKsVaLlLDOzGBMSX5PPb/9Y665nrne9533uZ/7+/ncmmw/
e4+ZYmJi18jn6/dUpNHKDvMxnL37slWtryrTV3Ab2K2fcMja6mzKuWjm5o6N
m3T9RRgeteO+ZJ0TY99x2kaxSoRzLd9yr7ldYgJHS154HxHhhISRi8PMNEaz
betvWRtEmLZzcn+HyzOGN3Pgc4a0CJfHbTjkGlzDyIXOVJion0CN2prOGrNW
Zlt++mmt5AlML5jxXOJVDxNYXO3r6j6BOTmVyb0mQqaB1Ta5bcUEqigXm1Se
F8dbRUrB8kIhaigUqHt/kkOV3/uDkhkhtla36ujrqmGtT2bbQKQQn/84uTSL
p4O1rU6B4rZClOnqeLftmRGaOzf7tSkLMcLiy4MfjVk4be/2JPjtOD48EXHT
frU1dtyLWdF4ZxxzbUwXpdc6IXvcya3vyDhuevFSL2EdG3UaeuqLV4/j+18O
yHDKjmCom03upk9j+MfRGZvB6xdMKR6cHV4yhiFmxwscTcPw7gabi/6RY+in
M0vgp8fBRpupGFnrMQxLHw4QpsRhn7zFD/byY3grmtPzQuwGLjEU/9v09Siy
nBYYHFx6B7N36udVJI2i8fLeykDfLPRJ3GQ0uHcUK9P3hHrF5+L5gQ6Ze1qj
uNBkuylnGYOdJllqQ10CdP4piCPgleNTEdeyKF2AmcEJuxyX1qCMquuamd4C
nC+9j+NS2YC2yseXFusJMPii2THTu834xTMpu3mQj/0K6m9Cq9sxVg9OWWfx
MfXK2xDe952oHtj1j6QvH8caWRlnvuvFiKoZcXw9Pp59spvTe24I/Zq0fD72
jeCacO+U62sFKG9n/F48fQRT3Q8KAy3G0XgZq2TUbQTPZMv9sM9ShMlli/rv
qY9gnbNAlT1nEiuqxtYLHw2jy4VbSRXuUxjI1si8sGQYoxrNjZtUp1Fziefz
9EtD6MJ/75gtJVbyWG+uk3B0ENevSWu5MVes5Emm8kKpnYPYwbFkPDdP43Zf
iS1e+QM4sSjE+VXCFNYzj9kZ8gPILDS4vGn1JMZsiTix42A/BjyX2KFvJSL1
3dw7ntOHV+/4JaLsOP60bsJWfaoXFWWqpi7m8TG0a2umh1kv6iukjlT0DGCN
9aMg3+AefHuEKzbrVTdWXVX/tef+v1gpa/19/4H3qFM0qzKO/N6bqlbIs3uD
pdNaIpaoCxUC6qTX7a5Hz1eHgpsVulCY78mpuv8UE+ao8+20O9HwqZwS+2Ae
zgtSDCs0+IC6B+JNQuoTcGdjmrnRqg7Mb9f24nYmgV5WmblQ7z0qp0i1ajtw
AbS2Sm7WeIfmWR8/xAfnQzY/2ntU5S2e8mpS0f3zL2BJ8n/u+9CCLQOfj1cY
l4AoY5e3bdobTPDQaPKJKoXW8yNx8x3/xowb6ytu+JVBiFjG4/VTTdiw/ejr
YWkesCLlnF8mN6B4Z3x5gBcPvuvu4XYa1mFpqoyh6DYPNr5eLTQMq0Z3y7Ur
DUp5sJ+1Z2R+7DOM5bUtu1TLA8/XpdW5iaW4SyvuyqdGHsRGvbicq1+Ikga7
lY+R9c3qRaUrWFl4Stn34a56HsxOi31yRj8ezT3OOVST+/fd/rYGh4i19l/X
0/R6GJZYlfT1+gP0eWBWvpwXQJ7Hof8HtiW1Dz+S9UH6PsBfoOIQRe63o+8L
clc4rbrkfYe7vu0HFJMTywVkP3Z0v3BSoJp4mOz3JK0HDNn+u6WT1ENA6wWl
767viyb16qP1BMbSzMuF1HMlrTdIj1z14ZJ636LnAbIFmR6ix3/9d14Q4nYn
m03Oy4qeJ1yZOy//sz0XLOl5w3Ltyhg2OW9V2g+w9WKkkgHph9u0X6DgfoC0
IukXNu0nWOjOiggm/VRE+w1+vzawUehajwtpPwLbVaKOTfrxJe1XCNVbb/2A
9Gsj7Wcwj23jFzV1Yxztd3DONe0LIP2+juYBlEQnuXtJHs7SvEDZ9tTOJJKX
aJon+FV9gbgSyVMjzRu4XnqXa0LyZknzCLyWZIt3JI9lNK+weN4zzQskr2k0
z3Cau6Qwj+R5Mc07LLcc0GwkeY+kPADDAzrVi9WmsYzyArTtxqXkPaYwjfIE
Cmr9Z6cTnqyivIGzbjqPbhDeKFEegZ6pZ38G4dFhyiso3dpuX054dZnyDLwc
mkN1I4ZQkfIOZFf4pD0ivLtKeQhzuhPjuwkPxykvYYa2VPRjwktLylMwlH69
ZQ/hqQrlLaRDhao/4W0l5THAHLvZRwmPeymvwVmpWyBeXo6nKc9B9k1TYSrh
uT/lPUhlD105TnjPpT6A+V8cvSOID1SpL4BhMb5+xBczFL75BNQWFxY3E5/U
Ud+A/WXXws/ENznURzD4R6VOEPHRTeor+LKs+NUu4qtw6jMwbtcY3kh8pk99
B5stBixjiO9sqQ+hgn1HNYn4sIv6Ekb8j9k8IL78v0/BpOjhISfi023Ut7DN
MEhTh/i2nvoYGkregAPxcQ31NQhTW93vEl8rU5/Db5lHp3YTn9+nvocWJ5UL
MsT3dXQegJYvWnu8L4hjGJ0XoGRYNkZgJGT203kC9ub17TcS9DAydN6AqPZw
HbWyFuZPOo+AZJ32ZIj1S0aXziuQ9w/btaKphDlM5xlIaZcZOnGdyzjSeQdG
WQMxZ3rTmUw6D4FVckyGVU4484nOSxBmQeclIZ2nIMeVzlP/A5HzF3I=
         "]]}, {
        Hue[0.1421359549995791, 0.6, 0.6], 
        Directive[
         PointSize[
          NCache[
           Rational[1, 90], 0.011111111111111112`]], 
         RGBColor[0.560181, 0.691569, 0.194885], 
         AbsoluteThickness[1.6]], 
        LineBox[CompressedData["
1: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
Erzy+pGXKGKSp0CN5CnK39tk/l0=
         "]]}}}, {{}, {}}}, {
    DisplayFunction -> Identity, DisplayFunction -> Identity, AspectRatio -> 
     NCache[GoldenRatio^(-1), 0.6180339887498948], Axes -> {True, True}, 
     AxesLabel -> {
       FormBox["\"x/t\"", TraditionalForm], 
       FormBox[
       "\"\\!\\(\\*SubscriptBox[\\(S\\), \\(i, j\\)]\\)(x,t)\"", 
        TraditionalForm]}, AxesOrigin -> {0, 0}, DisplayFunction :> Identity, 
     Frame -> {{False, False}, {False, False}}, 
     FrameLabel -> {{None, None}, {None, None}}, 
     FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
     GridLines -> {None, None}, GridLinesStyle -> Directive[
       GrayLevel[0.5, 0.4]], 
     Method -> {
      "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
       "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
           Identity[
            Part[#, 1]], 
           Identity[
            Part[#, 2]]}& ), "CopiedValueFunction" -> ({
           Identity[
            Part[#, 1]], 
           Identity[
            Part[#, 2]]}& )}}, PlotLabel -> 
     FormBox["\"\[Beta]=1, P=1\"", TraditionalForm], 
     PlotRange -> {{-1.6788046346296661`, 
      1.6788046346296697`}, {-2.0071844542308654`, 1.912277446013089}}, 
     PlotRangeClipping -> True, PlotRangePadding -> {{
        Scaled[0.02], 
        Scaled[0.02]}, {
        Scaled[0.05], 
        Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}], 
   FormBox[
    FormBox[
     TemplateBox[{
      "\"\\!\\(\\*SubscriptBox[\\(S\\), \\(0, 1\\)]\\)(x,t)\"", 
       "\"\\!\\(\\*SubscriptBox[\\(S\\), \\(0, 2\\)]\\)(x,t)\"", 
       "\"\\!\\(\\*SubscriptBox[\\(S\\), \\(1, 2\\)]\\)(x,t)\""}, 
      "LineLegend", DisplayFunction -> (FormBox[
        StyleBox[
         StyleBox[
          PaneBox[
           TagBox[
            GridBox[{{
               TagBox[
                GridBox[{{
                   GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    AbsoluteThickness[1.6]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #, 
                   GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    AbsoluteThickness[1.6]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #2}}, 
                 GridBoxAlignment -> {
                  "Columns" -> {Center, Left}, "Rows" -> {{Baseline}}}, 
                 AutoDelete -> False, 
                 GridBoxDividers -> {
                  "Columns" -> {{False}}, "Rows" -> {{False}}}, 
                 GridBoxItemSize -> {"Columns" -> {{All}}, "Rows" -> {{All}}},
                  GridBoxSpacings -> {"Columns" -> {{0.8, 0.5}}}], "Grid"]}, {
               TagBox[
                GridBox[{{
                   GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    RGBColor[0.560181, 0.691569, 0.194885], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    RGBColor[0.560181, 0.691569, 0.194885], 
                    AbsoluteThickness[1.6]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #3}}, 
                 GridBoxAlignment -> {
                  "Columns" -> {Center, Left}, "Rows" -> {{Baseline}}}, 
                 AutoDelete -> False, 
                 GridBoxDividers -> {
                  "Columns" -> {{False}}, "Rows" -> {{False}}}, 
                 GridBoxItemSize -> {"Columns" -> {{All}}, "Rows" -> {{All}}},
                  GridBoxSpacings -> {"Columns" -> {{0.8, 0.5}}}], "Grid"]}}, 
             GridBoxAlignment -> {"Columns" -> {{Left}}, "Rows" -> {{Top}}}, 
             AutoDelete -> False, 
             GridBoxDividers -> {"Columns" -> {{None}}, "Rows" -> {{None}}}, 
             GridBoxItemSize -> {"Columns" -> {{All}}, "Rows" -> {{All}}}, 
             GridBoxSpacings -> {"Columns" -> {{0}}, "Rows" -> {{1}}}], 
            "Grid"], Alignment -> Left, AppearanceElements -> None, 
           ImageMargins -> {{5, 5}, {5, 5}}, ImageSizeAction -> 
           "ResizeToFit"], LineIndent -> 0, StripOnInput -> False], {
         FontFamily -> "Arial"}, Background -> Automatic, StripOnInput -> 
         False], TraditionalForm]& ), 
      InterpretationFunction :> (RowBox[{"LineLegend", "[", 
         RowBox[{
           RowBox[{"{", 
             RowBox[{
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", 
                    FractionBox["1", "90"], "]"}], ",", 
                   
                   TemplateBox[<|
                    "color" -> RGBColor[0.368417, 0.506779, 0.709798]|>, 
                    "RGBColorSwatchTemplate"], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
               ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", 
                    FractionBox["1", "90"], "]"}], ",", 
                   
                   TemplateBox[<|
                    "color" -> RGBColor[0.880722, 0.611041, 0.142051]|>, 
                    "RGBColorSwatchTemplate"], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
               ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", 
                    FractionBox["1", "90"], "]"}], ",", 
                   
                   TemplateBox[<|
                    "color" -> RGBColor[0.560181, 0.691569, 0.194885]|>, 
                    "RGBColorSwatchTemplate"], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}]}],
              "}"}], ",", 
           RowBox[{"{", 
             RowBox[{#, ",", #2, ",", #3}], "}"}], ",", 
           RowBox[{"LegendMarkers", "\[Rule]", 
             RowBox[{"{", 
               RowBox[{
                 RowBox[{"{", 
                   RowBox[{"False", ",", "Automatic"}], "}"}], ",", 
                 RowBox[{"{", 
                   RowBox[{"False", ",", "Automatic"}], "}"}], ",", 
                 RowBox[{"{", 
                   RowBox[{"False", ",", "Automatic"}], "}"}]}], "}"}]}], ",", 
           RowBox[{"Joined", "\[Rule]", 
             RowBox[{"{", 
               RowBox[{"True", ",", "True", ",", "True"}], "}"}]}], ",", 
           RowBox[{"LabelStyle", "\[Rule]", 
             RowBox[{"{", "}"}]}], ",", 
           RowBox[{"LegendLayout", "\[Rule]", "\"Row\""}]}], "]"}]& ), 
      Editable -> True], TraditionalForm], TraditionalForm]},
  "Legended",
  DisplayFunction->(GridBox[{{
      ItemBox[#2, DefaultBaseStyle -> "LabeledLabel"]}, {
      TagBox[
       ItemBox[
        PaneBox[
         TagBox[#, "SkipImageSizeLevel"], Alignment -> {Center, Baseline}, 
         BaselinePosition -> Baseline], DefaultBaseStyle -> "Labeled"], 
       "SkipImageSizeLevel"]}}, 
    GridBoxAlignment -> {"Columns" -> {{Center}}, "Rows" -> {{Center}}}, 
    AutoDelete -> False, GridBoxItemSize -> Automatic, 
    BaselinePosition -> {2, 1}]& ),
  Editable->True,
  InterpretationFunction->(RowBox[{"Legended", "[", 
     RowBox[{#, ",", 
       RowBox[{"Placed", "[", 
         RowBox[{#2, ",", "Above"}], "]"}]}], "]"}]& )]], "Output",
 CellLabel->"Out[64]=",ExpressionUUID->"e02bbfed-eed0-4bbe-9fa7-e2af1f71a3e6"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[{
 "Define domain-wall ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["\[Rho]", "n"], "(", "v", ")"}], TraditionalForm]],
  FormatType->TraditionalForm,ExpressionUUID->
  "cbffc69e-4aee-4d38-b267-4d266c6cbdde"]
}], "Subsection",ExpressionUUID->"010e8cdd-5ac1-4c13-9a1d-21de86172a2c"],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   SubscriptBox["\[Beta]", "L"], "=", "1"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   SubscriptBox["\[Beta]", "R"], "=", "1"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   SubscriptBox["P", "L"], "=", 
   FractionBox["1", "2"]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   SubscriptBox["P", "R"], "=", "2"}], ";"}]}], "Input",
 CellLabel->"In[68]:=",ExpressionUUID->"ed483ced-de03-421d-8096-a479cfb3894d"],

Cell[BoxData[
 RowBox[{
  RowBox[{"\[Rho]ndw", "[", 
   RowBox[{"\[Phi]_", ",", "v_"}], "]"}], ":=", 
  RowBox[{"If", "[", 
   RowBox[{
    RowBox[{"v", "<=", "\[Phi]"}], ",", 
    RowBox[{"\[Rho]n", "[", 
     RowBox[{
      SubscriptBox["\[Beta]", "R"], ",", 
      SubscriptBox["P", "R"], ",", "v"}], "]"}], ",", 
    RowBox[{"\[Rho]n", "[", 
     RowBox[{
      SubscriptBox["\[Beta]", "L"], ",", 
      SubscriptBox["P", "L"], ",", "v"}], "]"}]}], "]"}]}]], "Input",
 CellLabel->"In[82]:=",ExpressionUUID->"44616580-9991-44db-9093-4f0df58ff297"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"\[Phi]", "=", 
      FractionBox["3", "2"]}], "}"}], ",", 
    RowBox[{"Show", "[", 
     RowBox[{
      RowBox[{"Plot", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"\[Rho]ndw", "[", 
           RowBox[{"\[Phi]", ",", "v"}], "]"}], ",", 
          RowBox[{"\[Rho]n", "[", 
           RowBox[{
            SubscriptBox["\[Beta]", "L"], ",", 
            SubscriptBox["P", "L"], ",", "v"}], "]"}], ",", 
          RowBox[{"\[Rho]n", "[", 
           RowBox[{
            SubscriptBox["\[Beta]", "R"], ",", 
            SubscriptBox["P", "R"], ",", "v"}], "]"}]}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"v", ",", 
          RowBox[{"-", "7"}], ",", "7"}], "}"}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<v\>\"", ",", 
           "\"\<\!\(\*SubscriptBox[\(\[Rho]\), \(n\)]\)(v)\>\""}], "}"}]}], 
        ",", 
        RowBox[{"PlotLabel", "\[Rule]", 
         RowBox[{"\"\<\[Phi]=\>\"", "<>", 
          RowBox[{"ToString", "[", 
           RowBox[{"InputForm", "[", "\[Phi]", "]"}], "]"}], "<>", 
          "\"\<, \!\(\*SubscriptBox[\(\[Beta]\), \(L\)]\)=\>\"", "<>", 
          RowBox[{"ToString", "[", 
           SubscriptBox["\[Beta]", "L"], "]"}], "<>", 
          "\"\<, \!\(\*SubscriptBox[\(P\), \(L\)]\)=\>\"", "<>", 
          RowBox[{"ToString", "[", 
           RowBox[{"InputForm", "[", 
            SubscriptBox["P", "L"], "]"}], "]"}], "<>", 
          "\"\<, \!\(\*SubscriptBox[\(\[Beta]\), \(R\)]\)=\>\"", "<>", 
          RowBox[{"ToString", "[", 
           SubscriptBox["\[Beta]", "R"], "]"}], "<>", 
          "\"\<, \!\(\*SubscriptBox[\(P\), \(R\)]\)=\>\"", "<>", 
          RowBox[{"ToString", "[", 
           RowBox[{"InputForm", "[", 
            SubscriptBox["P", "R"], "]"}], "]"}]}]}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Automatic", ",", "Dashed", ",", "Dashed"}], "}"}]}], ",", 
        RowBox[{"PlotRange", "\[Rule]", "All"}]}], "]"}], ",", 
      RowBox[{"Graphics", "[", 
       RowBox[{"{", 
        RowBox[{"Dashed", ",", 
         RowBox[{"Line", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"\[Phi]", ",", "0"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"\[Phi]", ",", "0.4"}], "}"}]}], "}"}], "]"}]}], "}"}], 
       "]"}]}], "]"}]}], "]"}]}]], "Input",
 CellLabel->"In[83]:=",ExpressionUUID->"ee996136-9b38-4d0c-aef6-87ecf8c2aae5"],

Cell[BoxData[
 GraphicsBox[{{{{}, {}, 
     TagBox[
      {RGBColor[0.368417, 0.506779, 0.709798], AbsoluteThickness[1.6], 
       Opacity[1.], LineBox[CompressedData["
1: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
        "]]},
      Annotation[#, "Charting`Private`Tag$180368#1"]& ], 
     TagBox[
      {RGBColor[0.880722, 0.611041, 0.142051], AbsoluteThickness[1.6], 
       Opacity[1.], Dashing[{Small, Small}], LineBox[CompressedData["
1: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
        "]]},
      Annotation[#, "Charting`Private`Tag$180368#2"]& ], 
     TagBox[
      {RGBColor[0.560181, 0.691569, 0.194885], AbsoluteThickness[1.6], 
       Opacity[1.], Dashing[{Small, Small}], LineBox[CompressedData["
1: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
UDmhKpoKbSoTd73pEcGFa7aMVFmlQqGTtSmiHSK4rdT08+esVGgfu9Evq1YE
n/+9KJCvkQYpK01yXY9E8IFmJz3zqw9g0Jd9d1WtRbBicK+WscgjqP7figNf
szAu/rmhx7/vCRzbs6PVuF4Yrw6vKZEhpMN7H81RKksY21/SS9qM0uE0XyFD
KU8Y//csNXvpYTp86nO26Vy0ML4stnXYxDEDrj9Wf+CDpjDO0vN7ffnfU/hZ
ME4w7qUQLj0ux0l0zYEFx29tlCwUwuRcEP02OwfeTr6xuyBTCN/bbh6j/yMH
Gm+9euJTvBAWjpPrdHB8Bj+r+94T8BTCf6xKMrFjLvx8wWzHVWkhPCKe3/Mz
IA82fWcc9Y0RxFviJfZKuBfCT2+e3DA7LYDzL7QOxGiWwjmyrXmEqQA+2mHZ
/tW1FEo6bpIp1xfA8S9MPY/GlUJf/uQquooAXj2jXhrcWwoZBrf+dFMFMLmR
eGR7cBl06Ag0O9u8HituptVFl5XDpR8GUl4a63EoB+Bi9Vdwu8hcRdR2flzj
EMw9XGDoJKu80bFuDf6RcCzt3bF3cPfNe9aenqvx7hreMjOpRmgSoa7/HfLi
qDEhw7HYz7DkflYvoWaZ1Z798/zKeAu8DLVPnypYZq3IHf+8Za4F6g8MdWen
LbNsfyl26fK0woGt0l3qwcus/3wpY6GEVihSnNrmu2+ZlfSpd12uQis81xDX
wH66xJr99vzJaq9WSJ+9WPwwepHlnyaXmzfSCi8ZHYtQMJ1nSa+Sz51paoMF
OrFGq9TnWcUbdKMsOtvggNpHapv8PMv8tc62sp42qLVPNyuAf54lIVCWd+Z3
GxShqzVUv5pjDdywm3AQaIcPBxQEDaTmWBnWOfPaR9phjR8h1nl8lhUW9IDo
VNAOpz0MzVW6Z1mbGEZVa8ra4RanmM3CDbMsBqFMK7WqHUZb8hcUPJ5lldl8
nK143w5NIE/zX9NZFvm61s/sb+1wiP+PWHjlDEvia8BaB2oH5L/f9N/jqGlW
+h3WoFFgB6xmjb396D/NEuoiSxFCOqDfoPDM3NlpVqzXhuT3VzvgwHb9E0Zg
mqX2ony/fGwHrKyoF12anGK9qQ7RKcjogF6dryNNradYZguhnx82d0C22Isg
/t2TrNvqElYqsp3wllJr9t4Nk6wnXm29Gts7oablJPv0+knWiczg1zq7O2HR
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
fy/1f/TfM8M=
        "]]},
      Annotation[#, "Charting`Private`Tag$180368#3"]& ]}, {}}, 
   {Dashing[{Small, Small}], 
    LineBox[NCache[{{Rational[3, 2], 0}, {Rational[3, 2], 0.4}}, {{1.5, 0}, {
       1.5, 0.4}}]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox[
    "\"\\!\\(\\*SubscriptBox[\\(\[Rho]\\), \\(n\\)]\\)(v)\"", 
     TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{
   "DefaultBoundaryStyle" -> Automatic, 
    "DefaultGraphicsInteraction" -> {
     "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
      "Effects" -> {
       "Highlight" -> {"ratio" -> 2}, "HighlightPoint" -> {"ratio" -> 2}, 
        "Droplines" -> {
         "freeformCursorMode" -> True, 
          "placement" -> {"x" -> "All", "y" -> "None"}}}}, "DefaultMeshStyle" -> 
    AbsolutePointSize[6], "ScalingFunctions" -> None, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox[
   "\"\[Phi]=3/2, \\!\\(\\*SubscriptBox[\\(\[Beta]\\), \\(L\\)]\\)=1, \
\\!\\(\\*SubscriptBox[\\(P\\), \\(L\\)]\\)=1/2, \\!\\(\\*SubscriptBox[\\(\
\[Beta]\\), \\(R\\)]\\)=1, \\!\\(\\*SubscriptBox[\\(P\\), \\(R\\)]\\)=2\"", 
    TraditionalForm],
  PlotRange->{All, All},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->"Out[83]=",ExpressionUUID->"caefc955-961e-413b-9354-9bcc17c9e73a"]
}, Open  ]],

Cell["Perform sweeps over \[Phi]", "Text",ExpressionUUID->"aabd5506-5222-4436-973f-bc499c4c88c5"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   SubscriptBox["\[Phi]v", "list"], "=", 
   RowBox[{"Range", "[", 
    RowBox[{
     RowBox[{"-", "8"}], ",", "8", ",", 
     FractionBox["1", "4"]}], "]"}]}], ";"}]], "Input",
 CellLabel->"In[84]:=",ExpressionUUID->"5f0bfd56-d494-444d-b0c2-29bcb68542f0"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"evaluate", " ", "on", " ", "grid"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"With", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"\[Beta]", "=", "1"}], ",", 
       RowBox[{"\[CapitalDelta]x", "=", 
        FractionBox["1", "10"]}], ",", 
       RowBox[{"numpoints", "=", "150"}]}], "}"}], ",", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"vlist", "=", 
         RowBox[{"\[CapitalDelta]x", " ", 
          RowBox[{"Range", "[", 
           RowBox[{
            RowBox[{"-", 
             FractionBox[
              RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
            FractionBox[
             RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], "}"}], ",", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{
          SubscriptBox["\[Rho]ndwlist", "\[Phi]"], "=", 
          RowBox[{
           RowBox[{
            RowBox[{"N", "[", 
             RowBox[{"\[Rho]ndw", "[", 
              RowBox[{"\[Phi]", ",", "#"}], "]"}], "]"}], "&"}], "/@", 
           "vlist"}]}], ",", 
         RowBox[{"{", 
          RowBox[{"\[Phi]", ",", 
           SubscriptBox["\[Phi]v", "list"]}], "}"}]}], "]"}]}], "]"}]}], 
    "]"}], ";"}]}]], "Input",
 CellLabel->"In[89]:=",ExpressionUUID->"5b8d941d-9a87-419a-8561-7fafcdf0a185"]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[{
 "Derived quantities based on domain-wall ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["\[Rho]", "n"], "(", "v", ")"}], TraditionalForm]],
  FormatType->TraditionalForm,ExpressionUUID->
  "52e58009-5810-4850-9b76-f3834177e2df"]
}], "Subsection",ExpressionUUID->"46ba174b-70d9-4bee-89d5-7a5b5d5fea87"],

Cell[CellGroupData[{

Cell[TextData[Cell[BoxData[
 SuperscriptBox[
  RowBox[{"[", "1", "]"}], 
  "dr"]],ExpressionUUID->"9ae57673-afe4-4f9d-89be-3c01bd38f6aa"]], \
"Subsubsection",ExpressionUUID->"85ceee48-c03f-487b-a05b-62415b03ba9d"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   SuperscriptBox[
    RowBox[{"[", "1", "]"}], "dr"], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"With", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"\[CapitalDelta]x", "=", 
        FractionBox["1", "10"]}], ",", 
       RowBox[{"numpoints", "=", "150"}]}], "}"}], ",", 
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{
        SubscriptBox["onedr", "\[Phi]"], "=", 
        RowBox[{"DressingTransformation", "[", 
         RowBox[{"\[CapitalDelta]x", ",", 
          SubscriptBox["\[Rho]ndwlist", "\[Phi]"], ",", 
          RowBox[{"ConstantArray", "[", 
           RowBox[{"1", ",", "numpoints"}], "]"}]}], "]"}]}], ",", 
       RowBox[{"{", 
        RowBox[{"\[Phi]", ",", 
         SubscriptBox["\[Phi]v", "list"]}], "}"}]}], "]"}]}], "]"}], 
   ";"}]}]], "Input",
 CellLabel->"In[90]:=",ExpressionUUID->"38c69884-e07c-4431-bd24-50f83fdfcad0"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}], ",", 
      RowBox[{"numpoints", "=", "150"}], ",", 
      RowBox[{"\[Phi]", "=", "1"}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"vlist", "=", 
        RowBox[{"\[CapitalDelta]x", " ", 
         RowBox[{"Range", "[", 
          RowBox[{
           RowBox[{"-", 
            FractionBox[
             RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
           FractionBox[
            RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], "}"}], ",", 
      RowBox[{"Show", "[", 
       RowBox[{
        RowBox[{"ListLinePlot", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Transpose", "[", 
             RowBox[{"{", 
              RowBox[{"vlist", ",", 
               SubscriptBox["onedr", "\[Phi]"]}], "}"}], "]"}], ",", 
            RowBox[{"Transpose", "[", 
             RowBox[{"{", 
              RowBox[{"vlist", ",", 
               SubscriptBox["onedr", 
                RowBox[{
                 SubscriptBox["\[Beta]", "L"], ",", 
                 SubscriptBox["P", "L"], ",", "\[CapitalDelta]x"}]]}], "}"}], 
             "]"}], ",", 
            RowBox[{"Transpose", "[", 
             RowBox[{"{", 
              RowBox[{"vlist", ",", 
               SubscriptBox["onedr", 
                RowBox[{
                 SubscriptBox["\[Beta]", "R"], ",", 
                 SubscriptBox["P", "R"], ",", "\[CapitalDelta]x"}]]}], "}"}], 
             "]"}]}], "}"}], ",", 
          RowBox[{"PlotStyle", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{"Automatic", ",", "Dashed", ",", "Dashed"}], "}"}]}], ",", 
          RowBox[{"AxesLabel", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{
            "\"\<v\>\"", ",", 
             "\"\<[1\!\(\*SuperscriptBox[\(]\), \(dr\)]\)(v)\>\""}], "}"}]}], 
          ",", 
          RowBox[{"PlotLabel", "\[Rule]", 
           RowBox[{"\"\<\[Phi]=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             RowBox[{"InputForm", "[", "\[Phi]", "]"}], "]"}], "<>", 
            "\"\<, \!\(\*SubscriptBox[\(\[Beta]\), \(L\)]\)=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             SubscriptBox["\[Beta]", "L"], "]"}], "<>", 
            "\"\<, \!\(\*SubscriptBox[\(P\), \(L\)]\)=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             RowBox[{"InputForm", "[", 
              SubscriptBox["P", "L"], "]"}], "]"}], "<>", 
            "\"\<, \!\(\*SubscriptBox[\(\[Beta]\), \(R\)]\)=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             SubscriptBox["\[Beta]", "R"], "]"}], "<>", 
            "\"\<, \!\(\*SubscriptBox[\(P\), \(R\)]\)=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             RowBox[{"InputForm", "[", 
              SubscriptBox["P", "R"], "]"}], "]"}]}]}]}], "]"}], ",", 
        RowBox[{"Graphics", "[", 
         RowBox[{"{", 
          RowBox[{"Dashed", ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"\[Phi]", ",", 
                RowBox[{"-", "10"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"\[Phi]", ",", "10"}], "}"}]}], "}"}], "]"}]}], "}"}], 
         "]"}]}], "]"}]}], "]"}]}], "]"}]}]], "Input",
 CellLabel->"In[91]:=",ExpressionUUID->"6fb480e7-5972-443a-a70a-95dd9b839d14"],

Cell[BoxData[
 GraphicsBox[{{{}, {{}, {}, 
     {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
       NCache[
        Rational[1, 90], 0.011111111111111112`]], AbsoluteThickness[1.6], 
      LineBox[CompressedData["
1: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
PUNW3XeiIuA/a77fMA==
       "]]}, 
     {RGBColor[0.880722, 0.611041, 0.142051], PointSize[
       NCache[
        Rational[1, 90], 0.011111111111111112`]], AbsoluteThickness[1.6], 
      Dashing[{Small, Small}], LineBox[CompressedData["
1:eJxVlntMlWUcx8/9gApykTunEmeZqwHamabm8wOFxBoriz/EyRbIJRPEMFME
JCSKWyAipog4BlaLzDLABfX+8oA40GQskQwbCETIJUDu14LzPW0829nZu/d9
P8/zPs/v9/1+VwYf3BWqkMlkef/95v/v3J4fOi4qD28uOLOMwhaGji/pf4rJ
6tWQbGHo2GN7fdyG18zo/Ln54co373CXTa2W1i8MV74RHtFdZtCSkefC2x76
vb2lQAueC2etTnBMP6EFz4XNpJqG34O04DnzxxG5Izu3mnjOvPJkaIRcZ+I5
cXb1xLDnlAY8J07TbyisbTatz4kv1BVWc5kGPEcOafd8yj5HA54je2WUhv8S
qQHPgUtSMtMqd5h4DhxWsctixs3Ec+AH/S6d8dNq8Oz5YsJYlP6eGjx7LhQf
7nH+Rg2eHUdbbDrvlqwGz47jXpihbYFq8OzYPiQhKtrdxFvBMRXL1xQoTbwV
nJYz7VHZpALPlltPVTz48UsVeLb88m93b6cdU4Fny+9trjM4+KnAs+GDs36+
rzuowLNh3ZWUN6w6lOBZc6fT3OiOb5XgWfOse42i+agSPGvWBlen55MSPCuu
aHX+PFKjBM+Ki7fY1K+qU+D+cg55ev+6rHQF+JYcm+nvE7dTAZ4lH/ve5sVr
GgXet+B4pycx45Ic8y/jokNlGy2PyMFbyo2tJeryNXLwlvBLlcX7rt2XgbeE
g79zE3eTZOCZ8+XiPzQtz8vAM2PVR252H5ybE0aeliNWRR/+uWlWGHkaDqgp
Hr2ydFYYeRruG9zrWrBxRhh5au6uvPrQLWhaGHkqPnLc3dMtfgo8JZ+d/MS/
Jm8SPAUL78uy2NIJ8BTcdbKzs0saB0/O6/N0zzxqHANPxq7BUbkBXaO4Pyfd
TMl/Sz83Av6M5J2ZNBvmOgLetFTkdavnKg3j/UkpJOCdpK8jn2D+cakqtLiq
vHgIvDHJd/9u/fBfg+CNSLK0uLM++kHwhqXV+ff+9M8eAG9IyhhpXzs28A94
A5IhMNlrWUs/7vdLp961jJE96gO/RzJv2pxToegD729pnFpWdb3Si/c7JO/Y
yQPPnu7B/G3Sr2ZV16flPbjfIqUez87tS30MfpN0/9WoJ0lrH4PXIKkjTvsF
tHdjPoPkm9hmsP6hG7yvpOSEDEPChf+vxQlc43mxHc+DJ8zAw3yiFvNhPeIM
1oP1ioZF6+0QG/E9+F7Ri+/Ffggl9gP7JfKwX9hPcWvRfg6JQ9hvnIfwwHng
vMREqvG8cJ7iTZwnzlvcwHmjHkQg6gH1IgpQL6gn4YN6Qr2JRtQb6pHsFtWj
nDxRr6hn6kY9o95pE+od/UCmfkC/UCL6Bf1Enegn9BuNot/QjxSEfkS/0gH0
K/qZphKN/Yx+p0L0O/SA9kAPoBfkCb2AnlAT9AR6Q4XQG+gRJUKPoFd0GHoF
PSOTnkHvaB/0DnpIXyzSQyu6Dr2EnpI59BR6SwoPo95Cj6kDegy9JhfoNfSc
oqHn0HvaC72HH9BW+AH8gtrgF/AT+hR+Ar+h9+E38CNyhB/Br+go/Ap+RlHw
M/gdlcDv4Id0CX4Iv6QW+CX8lELhp/BbMvkt/JgE/Bh+Tbvh1/BzKoKfw+/p
M/g98gClIg8gL9BzyAvIE5SKPIG8QRbIG8gjlIE8grxCAnkFeYYMyDPIO1SP
vGPk6Wgd8hDyEl1EXkKeolLkqX8B5igKrQ==
       "]]}, 
     {RGBColor[0.560181, 0.691569, 0.194885], PointSize[
       NCache[
        Rational[1, 90], 0.011111111111111112`]], AbsoluteThickness[1.6], 
      Dashing[{Small, Small}], LineBox[CompressedData["
1:eJxVlg1QVFUYhpdlWWTBhWVZ2F32Byi0AYImssmQ7jdYDcYwZpOmgCkGpW3K
IDgpooNUFuk4looJ4yijJX9S+YtKnE9zBBPEzLQQdCBsEY0ElRUIKbmvzXBm
dnbu3Hufc+453/e+b+iirDcylQqFovi/36P/5qZHw8orUqf2fftZOL87Nqwc
cWDzcJPRxoqxYeVw+2p1YUkIl+x4NCycczWXSBHCsWPDwr4pgwlJ/XaWecH8
xZ/fJ+RssYMXzBfVWx+mJtrBC+Zctw1RmgEbeGY+6chrLNtjA8/Me70PvBYy
0waeiT9+/ULNvQdW8Ez887aE9j92W8EzceEHPnntr1rBM/Ilj7ilp3os4Bn5
y+VxImejBbwgLl/ztas50gJeEOedG9pS0RgMXhCvC60d/n1RMHiBnOjoPRg1
ZAYvkH8oM6Qs3mQGz8CiI2Jjkt0MnoGn1X90akO1CTwD3w1rnHJpigm8AHa0
lbtOHzeCF8D7vtOu6n/RCJ6eJwY81XLjcBB4ej40rT/EFhkEnp4rB385oS8J
BM+fl2/InhuvDATPn3c/f05rfMcAno47nhHJz9YFgKfjpBe+ujh1YgB4Or6b
v17vM0cPnh+HteS2NhT7g+fHNsmlvtaiw31ftlx1nbEpdeBrOaU0fyZH+4Gn
ZVuV553aGi3en8hznkvLbBj2wfw+nD4cHeU9wxs8b47xXDY3rNQLPA3bVNeu
lw14gqfhddr3i88vUIPnxbc4P2dhqwq8CRykmOf11hJ38Dy5Pd6nsFOrBE/N
lQXX6hY2KcBT89Kz7VmXXx4VMs+D9/dlb+sIHREyT8V16cO1VdHDQua5c+K8
ooaoJYNC5im5tLhtZtN5l5B5Sq6JjAksSRsAz42XRfdszfe9D56CZ3vvUM/u
uov7o2L9mZRjpt/6wR8Rk/wne3U7+8D7R+yyTNvuq+vD+0NiUoMh2TjrDuZ/
IJ54Za+5KOlv8Fxi6f2XckLNveDdF5W2zt50zV/g3RMP3WN+CjbdBq9fpF0p
Klw3/RZ4d0R5YdFJ26c9uN8r9hxJS7/QcRP8W+Lt+Sda62bdBK9bHBmdnpz8
azfe7xKpYYr4yY5uzN8hrJ87/Sb7P77fJhZnHXwz9awT/MsiI7bquGKzE7wL
InBnxJW1mU7M96NQzdu1KXOGE7wKoXxaFeOI+/9aGomSr/G85IbnwZM04GE+
6fF8WI9UgPVgvZJm3Hq7pPfwPfhe6TC+F/shzcd+YL+kCuwX9lPaOW4/+6UM
7DfOQ5qgks8D5yXtx3nhPKXVOE+ctxSO80Y9SGGoB9SLdAj1gnqSHtcT6k2y
ot5Qj3R0XD260QLUK+qZClDPqHdyot7RDxSOfkC/kBP9gn6iavQT+o3i0G/o
RzqGfkS/0m30K/qZBkfnjvUz+p0G0O/QA9oEPYBe0EroBfSEPlHLegK9oevQ
G+gRVcfKegS9oj7oFfSMVkDPoHe0s1XWO+ghHR6nh35U2izrJfSUHGtkPYXe
Uiz0FnpMN6DH0GvaB72GnlM29Bx6T1XQe/gB1cIP4BfkAb+An9BR+An8hjLg
N/AjGoIfwa9Igl/Bz+g0/Ax+R/XwO/ghEfwQfklb4ZfwU1oLP4XfUiX8Fn5M
pfBj+DW1wa/h55QHP4ffUyf8HnmA1iAPIC/QN8gLyBNUjzyBvEGrkDeQR6gF
eQR5hbYjryDPkB/yDPIOrUTekXlWehJ5CHmJ7MhLyFP0IfLUv4a+Phs=
       "]]}}, {{}, {}}}, 
   {Dashing[{Small, Small}], LineBox[{{1, -10}, {1, 10}}]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox[
    "\"[1\\!\\(\\*SuperscriptBox[\\(]\\), \\(dr\\)]\\)(v)\"", 
     TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{
   "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox[
   "\"\[Phi]=1, \\!\\(\\*SubscriptBox[\\(\[Beta]\\), \\(L\\)]\\)=1, \
\\!\\(\\*SubscriptBox[\\(P\\), \\(L\\)]\\)=1/2, \\!\\(\\*SubscriptBox[\\(\
\[Beta]\\), \\(R\\)]\\)=1, \\!\\(\\*SubscriptBox[\\(P\\), \\(R\\)]\\)=2\"", 
    TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-10.766967333079931`, 20.230116548240993`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->"Out[91]=",ExpressionUUID->"ab681a76-fd35-4da8-9c90-2d1dea18bdd3"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}], ",", 
      RowBox[{"numpoints", "=", "150"}], ",", 
      RowBox[{"\[Phi]", "=", "3"}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"vlist", "=", 
        RowBox[{"\[CapitalDelta]x", " ", 
         RowBox[{"Range", "[", 
          RowBox[{
           RowBox[{"-", 
            FractionBox[
             RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
           FractionBox[
            RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], "}"}], ",", 
      RowBox[{"Show", "[", 
       RowBox[{
        RowBox[{"ListLinePlot", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Transpose", "[", 
             RowBox[{"{", 
              RowBox[{"vlist", ",", 
               SubscriptBox["onedr", "\[Phi]"]}], "}"}], "]"}], ",", 
            RowBox[{"Transpose", "[", 
             RowBox[{"{", 
              RowBox[{"vlist", ",", 
               SubscriptBox["onedr", 
                RowBox[{
                 SubscriptBox["\[Beta]", "L"], ",", 
                 SubscriptBox["P", "L"], ",", "\[CapitalDelta]x"}]]}], "}"}], 
             "]"}], ",", 
            RowBox[{"Transpose", "[", 
             RowBox[{"{", 
              RowBox[{"vlist", ",", 
               SubscriptBox["onedr", 
                RowBox[{
                 SubscriptBox["\[Beta]", "R"], ",", 
                 SubscriptBox["P", "R"], ",", "\[CapitalDelta]x"}]]}], "}"}], 
             "]"}]}], "}"}], ",", 
          RowBox[{"PlotStyle", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{"Automatic", ",", "Dashed", ",", "Dashed"}], "}"}]}], ",", 
          RowBox[{"AxesLabel", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{
            "\"\<v\>\"", ",", 
             "\"\<[1\!\(\*SuperscriptBox[\(]\), \(dr\)]\)(v)\>\""}], "}"}]}], 
          ",", 
          RowBox[{"PlotLabel", "\[Rule]", 
           RowBox[{"\"\<\[Phi]=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             RowBox[{"InputForm", "[", "\[Phi]", "]"}], "]"}], "<>", 
            "\"\<, \!\(\*SubscriptBox[\(\[Beta]\), \(L\)]\)=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             SubscriptBox["\[Beta]", "L"], "]"}], "<>", 
            "\"\<, \!\(\*SubscriptBox[\(P\), \(L\)]\)=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             RowBox[{"InputForm", "[", 
              SubscriptBox["P", "L"], "]"}], "]"}], "<>", 
            "\"\<, \!\(\*SubscriptBox[\(\[Beta]\), \(R\)]\)=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             SubscriptBox["\[Beta]", "R"], "]"}], "<>", 
            "\"\<, \!\(\*SubscriptBox[\(P\), \(R\)]\)=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             RowBox[{"InputForm", "[", 
              SubscriptBox["P", "R"], "]"}], "]"}]}]}]}], "]"}], ",", 
        RowBox[{"Graphics", "[", 
         RowBox[{"{", 
          RowBox[{"Dashed", ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"\[Phi]", ",", 
                RowBox[{"-", "10"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"\[Phi]", ",", "10"}], "}"}]}], "}"}], "]"}]}], "}"}], 
         "]"}]}], "]"}]}], "]"}]}], "]"}]}]], "Input",
 CellLabel->"In[92]:=",ExpressionUUID->"edcd2923-d480-4acc-bcce-d2bcff874a60"],

Cell[BoxData[
 GraphicsBox[{{{}, {{}, {}, 
     {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
       NCache[
        Rational[1, 90], 0.011111111111111112`]], AbsoluteThickness[1.6], 
      LineBox[CompressedData["
1:eJw91glQU0cYAOAYBTkTQkI4cnAL4QhVA1RA3qowoiIteCtWRPBALYgieIyD
hQ6i9QJFxYIteFE8sV4Veb8yVVoT6gkKShUBtSoiFIgBtVX+fTvDZDKb9+1j
d//DOT45JpHP4/EK/v/79KnTfhoKaM7KuZBkooGFn4cCgrIGtdxP8wHe56EA
iyrN2c4gPyjc92nI4aZZ8KTlbmoY+XnIgR+S2vlaooYBTwZb+DUTxl/2RU8G
Xj+X+gSk+6Ing+7rk94Xevmi5wCF5rl36x75oOcA4688LJVv90HPHpI6tCm1
oT7o2UNNeILDuVfe6NkDf1FXXvVeb/TsoKHMY92Dsd7o2cEobXhiwz9e6NlC
dtnmsoM7vNCzhZr0OzXWGi/0bCFdcHWF4a4KPSnotaFV3itV6Ekh5L5VSIpA
hZ4NPFjW3Jx72BM9G6g9J/8wPNgTPRvQ3LirtNN6oCeB6EbBmCczPdCTwLGe
4VM9ngxDTwxZ/qp1axKGoScG1T6L+XOb3dETwxVdo2PMbHf0rOFp/7jAezfc
0LMGiVApTApwQ08EU0r7Yg7uc0VPBMotGR7+3S7oiWDXWqszhggX9KzgKTn3
p9VuZ/SsoCLfov7xAyecF0JzRMxCtZ0T+gK4GJAXFFyiRE8AJRsj7eItFPi8
JXRL+9rWpspwfQuQ9Q6PPnLfHj1zOCmPmxI+zg49MzhmbKIqPydFzwxmhqtt
WwJs0DMFUl/+ZPV1MXom4J+Znhay1Bq9oVCurOqe4CZCzxiKb64obXwmRM8Y
BP7inDVnLdEzArP9YcZTT5ujNwQ+tl2bPKnBFL3BUB5ekrFGbYIeH44dLd6c
XG6MHh+C+Su6kqKM0BsETel7CjZKhqDHA11cfGe1gY/zH9lYqzCH6R8Gof+e
fRuYUpspH4RePxvf9tGnMoaHzxvY2Sej2pNGf2QH1tezTiYpySX979kBr5ft
+ivj2rS/+9kBr5sdGrd8v3tzHzvg/csGyqYxUn4fO+B1sheuF+VuCjGg18EO
GdE5Y8T2dzjfzir6l3na6vXov2TlMN1+Y5oevedsfVJCpsFIj8+3sGU38oZH
HO3F9Z+wq1Yvz06Y04vzD9ln2gSHdcpe9OvYGetmJrZ29KB3kz2j8n7pcbsH
16tmo5z3j+m40oNeGWub6QFi4L4zqZJVrdu03O+ZR2NWpn7/jPOYd0XrQ8eJ
uPWYpVd/0Y6eyL0Pk/Vi8XFpPve+DNsmqCx+RedbGOH1uMiGGdz/y6hu18UZ
13H7wews6jU+sJjbL2bWth/7F4q4/WSMXIJ/T7ltoPvNuFUvmqM6wZ0H0/bd
gRMJR7jzYpTBaudlV7jzZM50TBgt5HHnzcwOXPRt40juPjC/rVZmXf7Ao/eF
CSvY+rLoKXefmNOnwwxNrdx9Y0hwUnWiKXcfyZ6ZZ7KOx3D3lewIPr/18TXu
PpPCxaeiepdy9510Z7fv7Ygwo/FA+FJRq+n/cYzxQhJvfWlzUSeg8USadzQU
hV2zovFGNj+3rC+ItabxSNh7i4oMGgmNV3K4wlE6ZruUxjNxFJ+PNWu1p/FO
Rrbz6ryi5TQfEBeLre6tEUqaL0jE1w/nhRnT/GROUpe0bF9/x4nmG7KBZ6lf
sZPmM0tiOWt1m3YszX8CIuM36QpfuNB8RgIDDgyekuNK8x2pmGOYqFDQ/GpF
5hXCm9ZyN5ovyVr4Y0GyhuZnEWk6m2sRe96d5luiSs6Z6+9P87uI/CqyqE05
MYzma9LY9SZvpSutD9Yku6h6ze5dHjTfkx0ZW1SufFpfxORthuTtvGWetF6Q
S6FzQnPueNJ6Qkaq397SBdL6JSGV44Iq4/epaD0iJet5fil6Fa1XJOL0Vm/5
NFofbUjUUp0496QXrXekIKTStW4ora9S4hS0pN7xG1p/bUmfvI1kVnjTekoS
T2RHC41o/bYlKTu3SJ9Oo/XdjhwQfdUlPORD6zUxypdVHu2k/YY9cTu0y5UN
pf2DPdmse1Efn+tL+wHiH2+SfOi2L+0XSGd+ZuQPDmraTxBNVe6l8Plq9GRk
/8qr3gsOq2k/QrZtqi++9JLrV8gHXZPzUS8/2s+Q17XSRr/1XL9DTiqUp2RZ
fugpSJp7dM/lyV/QfolE/jRq/IYK+n4K4mr+ekRNowb+A98DNhg=
       "]]}, 
     {RGBColor[0.880722, 0.611041, 0.142051], PointSize[
       NCache[
        Rational[1, 90], 0.011111111111111112`]], AbsoluteThickness[1.6], 
      Dashing[{Small, Small}], LineBox[CompressedData["
1:eJxVlntMlWUcx8/9gApykTunEmeZqwHamabm8wOFxBoriz/EyRbIJRPEMFME
JCSKWyAipog4BlaLzDLABfX+8oA40GQskQwbCETIJUDu14LzPW0829nZu/d9
P8/zPs/v9/1+VwYf3BWqkMlkef/95v/v3J4fOi4qD28uOLOMwhaGji/pf4rJ
6tWQbGHo2GN7fdyG18zo/Ln54co373CXTa2W1i8MV74RHtFdZtCSkefC2x76
vb2lQAueC2etTnBMP6EFz4XNpJqG34O04DnzxxG5Izu3mnjOvPJkaIRcZ+I5
cXb1xLDnlAY8J07TbyisbTatz4kv1BVWc5kGPEcOafd8yj5HA54je2WUhv8S
qQHPgUtSMtMqd5h4DhxWsctixs3Ec+AH/S6d8dNq8Oz5YsJYlP6eGjx7LhQf
7nH+Rg2eHUdbbDrvlqwGz47jXpihbYFq8OzYPiQhKtrdxFvBMRXL1xQoTbwV
nJYz7VHZpALPlltPVTz48UsVeLb88m93b6cdU4Fny+9trjM4+KnAs+GDs36+
rzuowLNh3ZWUN6w6lOBZc6fT3OiOb5XgWfOse42i+agSPGvWBlen55MSPCuu
aHX+PFKjBM+Ki7fY1K+qU+D+cg55ev+6rHQF+JYcm+nvE7dTAZ4lH/ve5sVr
GgXet+B4pycx45Ic8y/jokNlGy2PyMFbyo2tJeryNXLwlvBLlcX7rt2XgbeE
g79zE3eTZOCZ8+XiPzQtz8vAM2PVR252H5ybE0aeliNWRR/+uWlWGHkaDqgp
Hr2ydFYYeRruG9zrWrBxRhh5au6uvPrQLWhaGHkqPnLc3dMtfgo8JZ+d/MS/
Jm8SPAUL78uy2NIJ8BTcdbKzs0saB0/O6/N0zzxqHANPxq7BUbkBXaO4Pyfd
TMl/Sz83Av6M5J2ZNBvmOgLetFTkdavnKg3j/UkpJOCdpK8jn2D+cakqtLiq
vHgIvDHJd/9u/fBfg+CNSLK0uLM++kHwhqXV+ff+9M8eAG9IyhhpXzs28A94
A5IhMNlrWUs/7vdLp961jJE96gO/RzJv2pxToegD729pnFpWdb3Si/c7JO/Y
yQPPnu7B/G3Sr2ZV16flPbjfIqUez87tS30MfpN0/9WoJ0lrH4PXIKkjTvsF
tHdjPoPkm9hmsP6hG7yvpOSEDEPChf+vxQlc43mxHc+DJ8zAw3yiFvNhPeIM
1oP1ioZF6+0QG/E9+F7Ri+/Ffggl9gP7JfKwX9hPcWvRfg6JQ9hvnIfwwHng
vMREqvG8cJ7iTZwnzlvcwHmjHkQg6gH1IgpQL6gn4YN6Qr2JRtQb6pHsFtWj
nDxRr6hn6kY9o95pE+od/UCmfkC/UCL6Bf1Enegn9BuNot/QjxSEfkS/0gH0
K/qZphKN/Yx+p0L0O/SA9kAPoBfkCb2AnlAT9AR6Q4XQG+gRJUKPoFd0GHoF
PSOTnkHvaB/0DnpIXyzSQyu6Dr2EnpI59BR6SwoPo95Cj6kDegy9JhfoNfSc
oqHn0HvaC72HH9BW+AH8gtrgF/AT+hR+Ar+h9+E38CNyhB/Br+go/Ap+RlHw
M/gdlcDv4Id0CX4Iv6QW+CX8lELhp/BbMvkt/JgE/Bh+Tbvh1/BzKoKfw+/p
M/g98gClIg8gL9BzyAvIE5SKPIG8QRbIG8gjlIE8grxCAnkFeYYMyDPIO1SP
vGPk6Wgd8hDyEl1EXkKeolLkqX8B5igKrQ==
       "]]}, 
     {RGBColor[0.560181, 0.691569, 0.194885], PointSize[
       NCache[
        Rational[1, 90], 0.011111111111111112`]], AbsoluteThickness[1.6], 
      Dashing[{Small, Small}], LineBox[CompressedData["
1:eJxVlg1QVFUYhpdlWWTBhWVZ2F32Byi0AYImssmQ7jdYDcYwZpOmgCkGpW3K
IDgpooNUFuk4looJ4yijJX9S+YtKnE9zBBPEzLQQdCBsEY0ElRUIKbmvzXBm
dnbu3Hufc+453/e+b+iirDcylQqFovi/36P/5qZHw8orUqf2fftZOL87Nqwc
cWDzcJPRxoqxYeVw+2p1YUkIl+x4NCycczWXSBHCsWPDwr4pgwlJ/XaWecH8
xZ/fJ+RssYMXzBfVWx+mJtrBC+Zctw1RmgEbeGY+6chrLNtjA8/Me70PvBYy
0waeiT9+/ULNvQdW8Ez887aE9j92W8EzceEHPnntr1rBM/Ilj7ilp3os4Bn5
y+VxImejBbwgLl/ztas50gJeEOedG9pS0RgMXhCvC60d/n1RMHiBnOjoPRg1
ZAYvkH8oM6Qs3mQGz8CiI2Jjkt0MnoGn1X90akO1CTwD3w1rnHJpigm8AHa0
lbtOHzeCF8D7vtOu6n/RCJ6eJwY81XLjcBB4ej40rT/EFhkEnp4rB385oS8J
BM+fl2/InhuvDATPn3c/f05rfMcAno47nhHJz9YFgKfjpBe+ujh1YgB4Or6b
v17vM0cPnh+HteS2NhT7g+fHNsmlvtaiw31ftlx1nbEpdeBrOaU0fyZH+4Gn
ZVuV553aGi3en8hznkvLbBj2wfw+nD4cHeU9wxs8b47xXDY3rNQLPA3bVNeu
lw14gqfhddr3i88vUIPnxbc4P2dhqwq8CRykmOf11hJ38Dy5Pd6nsFOrBE/N
lQXX6hY2KcBT89Kz7VmXXx4VMs+D9/dlb+sIHREyT8V16cO1VdHDQua5c+K8
ooaoJYNC5im5tLhtZtN5l5B5Sq6JjAksSRsAz42XRfdszfe9D56CZ3vvUM/u
uov7o2L9mZRjpt/6wR8Rk/wne3U7+8D7R+yyTNvuq+vD+0NiUoMh2TjrDuZ/
IJ54Za+5KOlv8Fxi6f2XckLNveDdF5W2zt50zV/g3RMP3WN+CjbdBq9fpF0p
Klw3/RZ4d0R5YdFJ26c9uN8r9hxJS7/QcRP8W+Lt+Sda62bdBK9bHBmdnpz8
azfe7xKpYYr4yY5uzN8hrJ87/Sb7P77fJhZnHXwz9awT/MsiI7bquGKzE7wL
InBnxJW1mU7M96NQzdu1KXOGE7wKoXxaFeOI+/9aGomSr/G85IbnwZM04GE+
6fF8WI9UgPVgvZJm3Hq7pPfwPfhe6TC+F/shzcd+YL+kCuwX9lPaOW4/+6UM
7DfOQ5qgks8D5yXtx3nhPKXVOE+ctxSO80Y9SGGoB9SLdAj1gnqSHtcT6k2y
ot5Qj3R0XD260QLUK+qZClDPqHdyot7RDxSOfkC/kBP9gn6iavQT+o3i0G/o
RzqGfkS/0m30K/qZBkfnjvUz+p0G0O/QA9oEPYBe0EroBfSEPlHLegK9oevQ
G+gRVcfKegS9oj7oFfSMVkDPoHe0s1XWO+ghHR6nh35U2izrJfSUHGtkPYXe
Uiz0FnpMN6DH0GvaB72GnlM29Bx6T1XQe/gB1cIP4BfkAb+An9BR+An8hjLg
N/AjGoIfwa9Igl/Bz+g0/Ax+R/XwO/ghEfwQfklb4ZfwU1oLP4XfUiX8Fn5M
pfBj+DW1wa/h55QHP4ffUyf8HnmA1iAPIC/QN8gLyBNUjzyBvEGrkDeQR6gF
eQR5hbYjryDPkB/yDPIOrUTekXlWehJ5CHmJ7MhLyFP0IfLUv4a+Phs=
       "]]}}, {{}, {}}}, 
   {Dashing[{Small, Small}], LineBox[{{3, -10}, {3, 10}}]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox[
    "\"[1\\!\\(\\*SuperscriptBox[\\(]\\), \\(dr\\)]\\)(v)\"", 
     TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{
   "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox[
   "\"\[Phi]=3, \\!\\(\\*SubscriptBox[\\(\[Beta]\\), \\(L\\)]\\)=1, \
\\!\\(\\*SubscriptBox[\\(P\\), \\(L\\)]\\)=1/2, \\!\\(\\*SubscriptBox[\\(\
\[Beta]\\), \\(R\\)]\\)=1, \\!\\(\\*SubscriptBox[\\(P\\), \\(R\\)]\\)=2\"", 
    TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-20.85852354323573, 3.5730549723292224`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->"Out[92]=",ExpressionUUID->"d1ab41c7-86ee-45e7-b837-9d7d3fcd92e6"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[{
 "Particle density ",
 Cell[BoxData[
  RowBox[{
   SubscriptBox["\[Rho]", "p"], "=", " ", 
   SuperscriptBox[
    RowBox[{
     SubscriptBox["\[Rho]", "n"], " ", "[", "1", "]"}], "dr"]}]],
  ExpressionUUID->"fdddb6f9-fdc6-4f84-aec7-85bd06b2195a"]
}], "Subsubsection",ExpressionUUID->"9b819ad2-d582-4c36-8c39-a7dae2092f63"],

Cell[BoxData[
 RowBox[{
  RowBox[{"Table", "[", 
   RowBox[{
    RowBox[{
     SubscriptBox["\[Rho]p", "\[Phi]"], "=", 
     RowBox[{
      SubscriptBox["\[Rho]ndwlist", "\[Phi]"], 
      SubscriptBox["onedr", "\[Phi]"]}]}], ",", 
    RowBox[{"{", 
     RowBox[{"\[Phi]", ",", 
      SubscriptBox["\[Phi]v", "list"]}], "}"}]}], "]"}], ";"}]], "Input",
 CellLabel->"In[93]:=",ExpressionUUID->"afbc8897-5912-4eec-ba1e-3ba8ca9e4a5b"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}], ",", 
      RowBox[{"numpoints", "=", "150"}], ",", 
      RowBox[{"\[Phi]", "=", "1"}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"vlist", "=", 
        RowBox[{"\[CapitalDelta]x", " ", 
         RowBox[{"Range", "[", 
          RowBox[{
           RowBox[{"-", 
            FractionBox[
             RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
           FractionBox[
            RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], "}"}], ",", 
      RowBox[{"ListLinePlot", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Transpose", "[", 
           RowBox[{"{", 
            RowBox[{"vlist", ",", 
             SubscriptBox["\[Rho]p", "\[Phi]"]}], "}"}], "]"}], ",", 
          RowBox[{"Transpose", "[", 
           RowBox[{"{", 
            RowBox[{"vlist", ",", 
             SubscriptBox["\[Rho]p", 
              RowBox[{
               SubscriptBox["\[Beta]", "L"], ",", 
               SubscriptBox["P", "L"], ",", "\[CapitalDelta]x"}]]}], "}"}], 
           "]"}], ",", 
          RowBox[{"Transpose", "[", 
           RowBox[{"{", 
            RowBox[{"vlist", ",", 
             SubscriptBox["\[Rho]p", 
              RowBox[{
               SubscriptBox["\[Beta]", "R"], ",", 
               SubscriptBox["P", "R"], ",", "\[CapitalDelta]x"}]]}], "}"}], 
           "]"}]}], "}"}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<v\>\"", ",", 
           "\"\<\!\(\*SubscriptBox[\(\[Rho]\), \(p\)]\)(v)\>\""}], "}"}]}], 
        ",", 
        RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Automatic", ",", "Dashed", ",", "Dashed"}], "}"}]}], ",", 
        RowBox[{"PlotLabel", "\[Rule]", 
         RowBox[{"\"\<\[Phi]=\>\"", "<>", 
          RowBox[{"ToString", "[", 
           RowBox[{"InputForm", "[", "\[Phi]", "]"}], "]"}], "<>", 
          "\"\<, \!\(\*SubscriptBox[\(\[Beta]\), \(L\)]\)=\>\"", "<>", 
          RowBox[{"ToString", "[", 
           SubscriptBox["\[Beta]", "L"], "]"}], "<>", 
          "\"\<, \!\(\*SubscriptBox[\(P\), \(L\)]\)=\>\"", "<>", 
          RowBox[{"ToString", "[", 
           RowBox[{"InputForm", "[", 
            SubscriptBox["P", "L"], "]"}], "]"}], "<>", 
          "\"\<, \!\(\*SubscriptBox[\(\[Beta]\), \(R\)]\)=\>\"", "<>", 
          RowBox[{"ToString", "[", 
           SubscriptBox["\[Beta]", "R"], "]"}], "<>", 
          "\"\<, \!\(\*SubscriptBox[\(P\), \(R\)]\)=\>\"", "<>", 
          RowBox[{"ToString", "[", 
           RowBox[{"InputForm", "[", 
            SubscriptBox["P", "R"], "]"}], "]"}]}]}]}], "]"}]}], "]"}]}], 
   "]"}]}]], "Input",
 CellLabel->"In[94]:=",ExpressionUUID->"a9e10da6-6fbd-4dcb-840a-0e4a93752939"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      NCache[
       Rational[1, 90], 0.011111111111111112`]], AbsoluteThickness[1.6], 
     LineBox[CompressedData["
1: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
4+GKrf8DIYwc6w==
      "]]}, 
    {RGBColor[0.880722, 0.611041, 0.142051], PointSize[
      NCache[
       Rational[1, 90], 0.011111111111111112`]], AbsoluteThickness[1.6], 
     Dashing[{Small, Small}], LineBox[CompressedData["
1:eJxVlg1QVFUYhoEVMFT+EViERWNchogQahRl93yoZaODghU/hqEYqKNEPyiC
hKFYjYSBo6BgkKigFrgbJILA+RKpptAYRUNEbdPUXAXkR52yKN2XJs7Mzs6d
e+9zzj3n+973nZyQsjjRwszMrPDf3+P/022PhyePu6K3e86mSJP0ZHjyNe2i
ZSVu+zVmT4YnU32lU2dNraZ4z+MxiRNaL1iX5ZzSBD8Zk1j/ZZf35bwOjYnn
wemdR4eWz7kOngeP7fupTnl6ADwPVsyy35vlo9CaeEoOytxR/kyko9bEU3LV
Ww0N2TGTtSaeO+/y6he7wwK1Jp47B6vHVJartVoTz52DXsv6sLRqAXhurN34
ZtEUn1jw3HjJ5ZWJb+xJAs+Vf5z2cdrzylTwXDmxp9jQpc8Gz5X9ao+nB5/b
Dt5EXpGf0xNZUAzeRDbeap8TfagCPBfW+/d9u82rBjwX3m3oiHC5K8FzYc+b
BR5b4n8Az5mtvEIsDHnnwXPmxhfTEnOSDeA58dJW3Zn1BiN4Tuy9tdr3pN19
8Jw4t6XP59Bcc2HiOfL0rI3pqiYbYeI5slfljTVfpTsLE8+Bi9WzC1cqVMLE
c2CbVz4rnjJTLUw8B9Z1LMncHjwNPHuetfFR3LnAEPDs2f3pbVHzQmfjvh33
dtxefddtPvi2POkXqw0PUheDZ8svf5O1aVVbLN6fwK93F9imtC/H/ON5h+fU
ynXhq8Abx3NtbGM18W+DZ8OBqpP853frwLPhvd5OCwNLMsF7iq2cQ3NnbtsM
3lhO6Eooyj/2EXjWbAw4U3nJmAeeFV9c03P8SOkO8KzYLzq0r7GrEDxLjll+
ZV/r4RLwxvAd1YLwtZs/B0/BGQtLhxUp+8GzYBe1cWhefgV4FuwbG5Xa2XkY
PHMef35LycSQKvDMODX75Gr7CB3uD8uoQ/XL0v7Wg/+X9LGcdbG2rAa8R3LT
1Qh/nf/XeP8PaaiveLW07Bjmfyhr57znO32wDrwH8uegay+dUteDNyTjgtfG
2IY0gDcoz2bsPBLoewK8frnorqog7v4J8Prk8IGBwl0HG3G/R7bo3n2YPKMJ
fKMczImQ3+ubwLsll16tPnLAuRnvX5d+E94JuLeiGfMb5E3l9rXJ5SP3u6XF
cMbk/LPN4F+Qm77oNU+73wxeu/xt38VfL9lJzNciP8mV7rbeErzD8v304qYe
9X/XYgOu8bzIw/PgiTvgYT6RgPmwHjEO68F6xe1R670ufPA9+F4Rju/Ffoib
2A/sl2jDfmE/xZiD/9/PfhGK/cZ5iN9xHjgvEYnzwnmKazhPnLeow3mjHkQ3
6gH1IjJQL6gnoUY9od7EMtQb6pFSRtWjOSlQr6hnehb1jHonZ9Q7+oFG+gH9
QgPoF/QTRaKf0G80Df2GfqQr6Ef0K/WiX9HPFI1+Rr+TJfodekCfQg+gFzSi
F9ATmg89gd7QTugN9IiioUfQKwqDXkHPSAk9g97RDegd9JA8RumhPWmgl9BT
qoaeQm/JDnoLPaZd0GPoNXlCr6HnNAN6Dr2nD6D38AOaCj+AX1A8/AJ+Qg3w
E/gNWcJv4Eekgh/Br6gQfgU/oxr4GfyO7sHv4IeUCD+EX1IA/BJ+SiN+Cr+l
Nvgt/Jhi4MfwawqCX8PPaSb8HH5PM+D3yAOUjzyAvEA65AXkCXoBeQJ5g6yR
N5BHyBp5BHmF1iOvIM/QUeQZ5B1KQt5BHqIw5CHkJTIgLyFPkRPy1D/SBRDA

      "]]}, 
    {RGBColor[0.560181, 0.691569, 0.194885], PointSize[
      NCache[
       Rational[1, 90], 0.011111111111111112`]], AbsoluteThickness[1.6], 
     Dashing[{Small, Small}], LineBox[CompressedData["
1:eJxVlgtQVFUYxxcwcXnoLq91ebiQGhRmDEaT6Mz9wpGaUiG0ZtRiTMEBXAc1
xXwAk0rDYKKDYAMhvihg8hHBhhnt+VhqBlw13F02mlTCFlMMi0dJhlB6/7cZ
zszOzp177++ce873/f//iLXZKenuKpXqyH+/R/+XLz0aYXz4Oav6vU2J5vWP
RxiXbQ2N6/JMMqsejzCOtUQYPVvWmCvKH41Q9q229n2ekG2e93iEsvvGvISl
PblmmRfCI1O+n68b2Q9eCA9GrXo6cLgcvBBe3BlTsMhaA14w+2a3RnuXmMAL
5oGNIdWHVrSCp+fmtCcfNhuugqfnI9P2/npr9Dp4el4/e9RlGroD3nReGj4c
PSP2L/Cmc+ZyP+cCi7uQeTquLiuOSV0xTcg8Hcd7zFv2c5deyDwd53iXrt6v
mS1kXhDfNDve/GQ4Rsi8IM67ORDQPBwPXiAftkw1jEcuBi+Qs9M2l+vSksEL
5G1vu4J7NSvBC+CG0Nhe/Z214AXwukzHpdFZRvD82a/7mQ2mT7eC589irnaN
tjsXPH8+Vruya+yVAvD8+N32i5sXdh8Az4/n/r3d2nSiFDwtGy4uyQtRV4Kn
5ai6OSnxF06Cp+WMktr6fWW14Gn46PmoG1vqz4Gn4el1OSk7fRtxfxr7zKnx
6uo9D/5Ufn9K+K2A5WbwpvJq45ft+jAL3vfluu2G/pz47zC/D/u1R554PqsN
PG8uqhp96kyJFTwvTqzrKdpacQU8L06oP61KNXWAp+ZrrkNZVSNXwZvC78wI
sNVr7OB5suvV5K9THtjBm8zXI8++7G1ygDeZZ2q39TQndIL3BH+kPzM6qaYT
vEncUhheUXmrEzwPPkk7NW2TneC588cZgxG/+DjBc+ehrGPP+o4pPDe+Xf3j
waEbCk/Fr2UOhpkalPvjYuCFbw515Sv8h0JfMPZ7UmIneKOirPKO2z618v4D
Ych6/d46qwPzj4jMuLfScw44wLsvvhL9RX3JDvD+FEWVe47XBCnfOyzuJy/r
W9VtB29QrI9KP7X3M2V//hADloVeubuU+/dESHPx6Q+S7ODfFbMO5kdaI+3g
3Rb5zqbS9EnK+y6xLs7jp/ReG+bvER35l/wdF224f0388EZcTEOjDXynqNVV
uXmcsoHXIUrSLltaymyYr1XY7G0v9n+o8OrEhYJ7u/cW/n8tNeIaz0uX8Tx4
UiF4mE9S5sN6pD6sB+uVWias1yUZ8T34Xmk3vhf7IUVgP7BfkgH7hf2U7k7Y
z0FpA/Yb5yGN4TxwXlIxzgvnKVlwnjhvKQPnjXqQglEPqBfpHOoF9STpUE+o
N2kH6g31SF9MqEc3cqJeUc/UhnpGvVMP6h39QHnoB/QLXUe/oJ/oCPoJ/Ubj
Grnf0I/0G/oR/Ur/oF/Rz/QS+hn9Tr3od+gBLYEeQC/oW+gF9ISuHJX1BHpD
BdAb6BHNhB5Br8gGvYKe0XHoGfSOFkXLegc9JMsEPdTQfZOsl9BTcjss6yn0
lrTQW+gxxUKPodc0H3oNPact0HPoPVVB7+EHZIEfwC9IDb+An9A2+An8hs7C
b+BHtAN+BL+iTfAr+BmVws/gd7QLfgc/pGvwQ/gl7YFfwk9pAfwUfku18Fv4
MRnhx/BrSoJfw88pFX4Ov6dT8HvkAWpCHkBeICUvIE+QGnkCeYOWIm8gj9AQ
8gjyCil5BXmGxoxynkHeoSDkHeQhmos8hLxEhchLyFOk5Kl/Afyadz4=
      "]]}}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox[
    "\"\\!\\(\\*SubscriptBox[\\(\[Rho]\\), \\(p\\)]\\)(v)\"", 
     TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{
   "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox[
   "\"\[Phi]=1, \\!\\(\\*SubscriptBox[\\(\[Beta]\\), \\(L\\)]\\)=1, \
\\!\\(\\*SubscriptBox[\\(P\\), \\(L\\)]\\)=1/2, \\!\\(\\*SubscriptBox[\\(\
\[Beta]\\), \\(R\\)]\\)=1, \\!\\(\\*SubscriptBox[\\(P\\), \\(R\\)]\\)=2\"", 
    TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-0.3445365745079823, 1.015722850169513}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->"Out[94]=",ExpressionUUID->"fa18261e-3c90-47e4-8a32-5073d5bd42b8"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}], ",", 
      RowBox[{"numpoints", "=", "150"}], ",", 
      RowBox[{"\[Phi]", "=", "3"}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"vlist", "=", 
        RowBox[{"\[CapitalDelta]x", " ", 
         RowBox[{"Range", "[", 
          RowBox[{
           RowBox[{"-", 
            FractionBox[
             RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
           FractionBox[
            RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], "}"}], ",", 
      RowBox[{"ListLinePlot", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Transpose", "[", 
           RowBox[{"{", 
            RowBox[{"vlist", ",", 
             SubscriptBox["\[Rho]p", "\[Phi]"]}], "}"}], "]"}], ",", 
          RowBox[{"Transpose", "[", 
           RowBox[{"{", 
            RowBox[{"vlist", ",", 
             SubscriptBox["\[Rho]p", 
              RowBox[{
               SubscriptBox["\[Beta]", "L"], ",", 
               SubscriptBox["P", "L"], ",", "\[CapitalDelta]x"}]]}], "}"}], 
           "]"}], ",", 
          RowBox[{"Transpose", "[", 
           RowBox[{"{", 
            RowBox[{"vlist", ",", 
             SubscriptBox["\[Rho]p", 
              RowBox[{
               SubscriptBox["\[Beta]", "R"], ",", 
               SubscriptBox["P", "R"], ",", "\[CapitalDelta]x"}]]}], "}"}], 
           "]"}]}], "}"}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<v\>\"", ",", 
           "\"\<\!\(\*SubscriptBox[\(\[Rho]\), \(p\)]\)(v)\>\""}], "}"}]}], 
        ",", 
        RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Automatic", ",", "Dashed", ",", "Dashed"}], "}"}]}], ",", 
        RowBox[{"PlotLabel", "\[Rule]", 
         RowBox[{"\"\<\[Phi]=\>\"", "<>", 
          RowBox[{"ToString", "[", 
           RowBox[{"InputForm", "[", "\[Phi]", "]"}], "]"}], "<>", 
          "\"\<, \!\(\*SubscriptBox[\(\[Beta]\), \(L\)]\)=\>\"", "<>", 
          RowBox[{"ToString", "[", 
           SubscriptBox["\[Beta]", "L"], "]"}], "<>", 
          "\"\<, \!\(\*SubscriptBox[\(P\), \(L\)]\)=\>\"", "<>", 
          RowBox[{"ToString", "[", 
           RowBox[{"InputForm", "[", 
            SubscriptBox["P", "L"], "]"}], "]"}], "<>", 
          "\"\<, \!\(\*SubscriptBox[\(\[Beta]\), \(R\)]\)=\>\"", "<>", 
          RowBox[{"ToString", "[", 
           SubscriptBox["\[Beta]", "R"], "]"}], "<>", 
          "\"\<, \!\(\*SubscriptBox[\(P\), \(R\)]\)=\>\"", "<>", 
          RowBox[{"ToString", "[", 
           RowBox[{"InputForm", "[", 
            SubscriptBox["P", "R"], "]"}], "]"}]}]}]}], "]"}]}], "]"}]}], 
   "]"}]}]], "Input",
 CellLabel->"In[95]:=",ExpressionUUID->"f93fce11-5089-4714-ba3c-1a3a75478b36"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      NCache[
       Rational[1, 90], 0.011111111111111112`]], AbsoluteThickness[1.6], 
     LineBox[CompressedData["
1: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
/gdpLHDr
      "]]}, 
    {RGBColor[0.880722, 0.611041, 0.142051], PointSize[
      NCache[
       Rational[1, 90], 0.011111111111111112`]], AbsoluteThickness[1.6], 
     Dashing[{Small, Small}], LineBox[CompressedData["
1:eJxVlg1QVFUYhoEVMFT+EViERWNchogQahRl93yoZaODghU/hqEYqKNEPyiC
hKFYjYSBo6BgkKigFrgbJILA+RKpptAYRUNEbdPUXAXkR52yKN2XJs7Mzs6d
e+9zzj3n+973nZyQsjjRwszMrPDf3+P/022PhyePu6K3e86mSJP0ZHjyNe2i
ZSVu+zVmT4YnU32lU2dNraZ4z+MxiRNaL1iX5ZzSBD8Zk1j/ZZf35bwOjYnn
wemdR4eWz7kOngeP7fupTnl6ADwPVsyy35vlo9CaeEoOytxR/kyko9bEU3LV
Ww0N2TGTtSaeO+/y6he7wwK1Jp47B6vHVJartVoTz52DXsv6sLRqAXhurN34
ZtEUn1jw3HjJ5ZWJb+xJAs+Vf5z2cdrzylTwXDmxp9jQpc8Gz5X9ao+nB5/b
Dt5EXpGf0xNZUAzeRDbeap8TfagCPBfW+/d9u82rBjwX3m3oiHC5K8FzYc+b
BR5b4n8Az5mtvEIsDHnnwXPmxhfTEnOSDeA58dJW3Zn1BiN4Tuy9tdr3pN19
8Jw4t6XP59Bcc2HiOfL0rI3pqiYbYeI5slfljTVfpTsLE8+Bi9WzC1cqVMLE
c2CbVz4rnjJTLUw8B9Z1LMncHjwNPHuetfFR3LnAEPDs2f3pbVHzQmfjvh33
dtxefddtPvi2POkXqw0PUheDZ8svf5O1aVVbLN6fwK93F9imtC/H/ON5h+fU
ynXhq8Abx3NtbGM18W+DZ8OBqpP853frwLPhvd5OCwNLMsF7iq2cQ3NnbtsM
3lhO6Eooyj/2EXjWbAw4U3nJmAeeFV9c03P8SOkO8KzYLzq0r7GrEDxLjll+
ZV/r4RLwxvAd1YLwtZs/B0/BGQtLhxUp+8GzYBe1cWhefgV4FuwbG5Xa2XkY
PHMef35LycSQKvDMODX75Gr7CB3uD8uoQ/XL0v7Wg/+X9LGcdbG2rAa8R3LT
1Qh/nf/XeP8PaaiveLW07Bjmfyhr57znO32wDrwH8uegay+dUteDNyTjgtfG
2IY0gDcoz2bsPBLoewK8frnorqog7v4J8Prk8IGBwl0HG3G/R7bo3n2YPKMJ
fKMczImQ3+ubwLsll16tPnLAuRnvX5d+E94JuLeiGfMb5E3l9rXJ5SP3u6XF
cMbk/LPN4F+Qm77oNU+73wxeu/xt38VfL9lJzNciP8mV7rbeErzD8v304qYe
9X/XYgOu8bzIw/PgiTvgYT6RgPmwHjEO68F6xe1R670ufPA9+F4Rju/Ffoib
2A/sl2jDfmE/xZiD/9/PfhGK/cZ5iN9xHjgvEYnzwnmKazhPnLeow3mjHkQ3
6gH1IjJQL6gnoUY9od7EMtQb6pFSRtWjOSlQr6hnehb1jHonZ9Q7+oFG+gH9
QgPoF/QTRaKf0G80Df2GfqQr6Ef0K/WiX9HPFI1+Rr+TJfodekCfQg+gFzSi
F9ATmg89gd7QTugN9IiioUfQKwqDXkHPSAk9g97RDegd9JA8RumhPWmgl9BT
qoaeQm/JDnoLPaZd0GPoNXlCr6HnNAN6Dr2nD6D38AOaCj+AX1A8/AJ+Qg3w
E/gNWcJv4Eekgh/Br6gQfgU/oxr4GfyO7sHv4IeUCD+EX1IA/BJ+SiN+Cr+l
Nvgt/Jhi4MfwawqCX8PPaSb8HH5PM+D3yAOUjzyAvEA65AXkCXoBeQJ5g6yR
N5BHyBp5BHmF1iOvIM/QUeQZ5B1KQt5BHqIw5CHkJTIgLyFPkRPy1D/SBRDA

      "]]}, 
    {RGBColor[0.560181, 0.691569, 0.194885], PointSize[
      NCache[
       Rational[1, 90], 0.011111111111111112`]], AbsoluteThickness[1.6], 
     Dashing[{Small, Small}], LineBox[CompressedData["
1:eJxVlgtQVFUYxxcwcXnoLq91ebiQGhRmDEaT6Mz9wpGaUiG0ZtRiTMEBXAc1
xXwAk0rDYKKDYAMhvihg8hHBhhnt+VhqBlw13F02mlTCFlMMi0dJhlB6/7cZ
zszOzp177++ce873/f//iLXZKenuKpXqyH+/R/+XLz0aYXz4Oav6vU2J5vWP
RxiXbQ2N6/JMMqsejzCOtUQYPVvWmCvKH41Q9q229n2ekG2e93iEsvvGvISl
PblmmRfCI1O+n68b2Q9eCA9GrXo6cLgcvBBe3BlTsMhaA14w+2a3RnuXmMAL
5oGNIdWHVrSCp+fmtCcfNhuugqfnI9P2/npr9Dp4el4/e9RlGroD3nReGj4c
PSP2L/Cmc+ZyP+cCi7uQeTquLiuOSV0xTcg8Hcd7zFv2c5deyDwd53iXrt6v
mS1kXhDfNDve/GQ4Rsi8IM67ORDQPBwPXiAftkw1jEcuBi+Qs9M2l+vSksEL
5G1vu4J7NSvBC+CG0Nhe/Z214AXwukzHpdFZRvD82a/7mQ2mT7eC589irnaN
tjsXPH8+Vruya+yVAvD8+N32i5sXdh8Az4/n/r3d2nSiFDwtGy4uyQtRV4Kn
5ai6OSnxF06Cp+WMktr6fWW14Gn46PmoG1vqz4Gn4el1OSk7fRtxfxr7zKnx
6uo9D/5Ufn9K+K2A5WbwpvJq45ft+jAL3vfluu2G/pz47zC/D/u1R554PqsN
PG8uqhp96kyJFTwvTqzrKdpacQU8L06oP61KNXWAp+ZrrkNZVSNXwZvC78wI
sNVr7OB5suvV5K9THtjBm8zXI8++7G1ygDeZZ2q39TQndIL3BH+kPzM6qaYT
vEncUhheUXmrEzwPPkk7NW2TneC588cZgxG/+DjBc+ehrGPP+o4pPDe+Xf3j
waEbCk/Fr2UOhpkalPvjYuCFbw515Sv8h0JfMPZ7UmIneKOirPKO2z618v4D
Ych6/d46qwPzj4jMuLfScw44wLsvvhL9RX3JDvD+FEWVe47XBCnfOyzuJy/r
W9VtB29QrI9KP7X3M2V//hADloVeubuU+/dESHPx6Q+S7ODfFbMO5kdaI+3g
3Rb5zqbS9EnK+y6xLs7jp/ReG+bvER35l/wdF224f0388EZcTEOjDXynqNVV
uXmcsoHXIUrSLltaymyYr1XY7G0v9n+o8OrEhYJ7u/cW/n8tNeIaz0uX8Tx4
UiF4mE9S5sN6pD6sB+uVWias1yUZ8T34Xmk3vhf7IUVgP7BfkgH7hf2U7k7Y
z0FpA/Yb5yGN4TxwXlIxzgvnKVlwnjhvKQPnjXqQglEPqBfpHOoF9STpUE+o
N2kH6g31SF9MqEc3cqJeUc/UhnpGvVMP6h39QHnoB/QLXUe/oJ/oCPoJ/Ubj
Grnf0I/0G/oR/Ur/oF/Rz/QS+hn9Tr3od+gBLYEeQC/oW+gF9ISuHJX1BHpD
BdAb6BHNhB5Br8gGvYKe0XHoGfSOFkXLegc9JMsEPdTQfZOsl9BTcjss6yn0
lrTQW+gxxUKPodc0H3oNPact0HPoPVVB7+EHZIEfwC9IDb+An9A2+An8hs7C
b+BHtAN+BL+iTfAr+BmVws/gd7QLfgc/pGvwQ/gl7YFfwk9pAfwUfku18Fv4
MRnhx/BrSoJfw88pFX4Ov6dT8HvkAWpCHkBeICUvIE+QGnkCeYOWIm8gj9AQ
8gjyCil5BXmGxoxynkHeoSDkHeQhmos8hLxEhchLyFOk5Kl/Afyadz4=
      "]]}}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox[
    "\"\\!\\(\\*SubscriptBox[\\(\[Rho]\\), \\(p\\)]\\)(v)\"", 
     TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{
   "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox[
   "\"\[Phi]=3, \\!\\(\\*SubscriptBox[\\(\[Beta]\\), \\(L\\)]\\)=1, \
\\!\\(\\*SubscriptBox[\\(P\\), \\(L\\)]\\)=1/2, \\!\\(\\*SubscriptBox[\\(\
\[Beta]\\), \\(R\\)]\\)=1, \\!\\(\\*SubscriptBox[\\(P\\), \\(R\\)]\\)=2\"", 
    TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-0.780292151286828, 0.12170307282437949`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->"Out[95]=",ExpressionUUID->"f4cb3271-9a63-49f9-9ede-8682c3fd039a"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[Cell[BoxData[
 RowBox[{
  SuperscriptBox[
   RowBox[{"[", "v", "]"}], "dr"], 
  " "}]],ExpressionUUID->"378fc500-f584-4e0f-862e-d49ad4ad1d15"]], \
"Subsubsection",ExpressionUUID->"eb73b21a-1fc7-484a-a253-9c0178f82fcf"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   SuperscriptBox[
    RowBox[{"[", "v", "]"}], "dr"], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"With", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"\[CapitalDelta]x", "=", 
        FractionBox["1", "10"]}], ",", 
       RowBox[{"numpoints", "=", "150"}]}], "}"}], ",", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"vlist", "=", 
         RowBox[{"\[CapitalDelta]x", " ", 
          RowBox[{"Range", "[", 
           RowBox[{
            RowBox[{"-", 
             FractionBox[
              RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
            FractionBox[
             RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], "}"}], ",", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{
          SubscriptBox["vdr", "\[Phi]"], "=", 
          RowBox[{"DressingTransformation", "[", 
           RowBox[{"\[CapitalDelta]x", ",", 
            SubscriptBox["\[Rho]ndwlist", "\[Phi]"], ",", "vlist"}], "]"}]}], 
         ",", 
         RowBox[{"{", 
          RowBox[{"\[Phi]", ",", 
           SubscriptBox["\[Phi]v", "list"]}], "}"}]}], "]"}]}], "]"}]}], 
    "]"}], ";"}]}]], "Input",
 CellLabel->"In[96]:=",ExpressionUUID->"ead2e417-f063-4e4d-b789-673e3ca636f4"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}], ",", 
      RowBox[{"numpoints", "=", "150"}], ",", 
      RowBox[{"\[Phi]", "=", "1"}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"vlist", "=", 
        RowBox[{"\[CapitalDelta]x", " ", 
         RowBox[{"Range", "[", 
          RowBox[{
           RowBox[{"-", 
            FractionBox[
             RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
           FractionBox[
            RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], "}"}], ",", 
      RowBox[{"Show", "[", 
       RowBox[{
        RowBox[{"ListLinePlot", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Transpose", "[", 
             RowBox[{"{", 
              RowBox[{"vlist", ",", 
               SubscriptBox["vdr", "\[Phi]"]}], "}"}], "]"}], ",", 
            RowBox[{"Transpose", "[", 
             RowBox[{"{", 
              RowBox[{"vlist", ",", 
               SubscriptBox["vdr", 
                RowBox[{
                 SubscriptBox["\[Beta]", "L"], ",", 
                 SubscriptBox["P", "L"], ",", "\[CapitalDelta]x"}]]}], "}"}], 
             "]"}], ",", 
            RowBox[{"Transpose", "[", 
             RowBox[{"{", 
              RowBox[{"vlist", ",", 
               SubscriptBox["vdr", 
                RowBox[{
                 SubscriptBox["\[Beta]", "R"], ",", 
                 SubscriptBox["P", "R"], ",", "\[CapitalDelta]x"}]]}], "}"}], 
             "]"}]}], "}"}], ",", 
          RowBox[{"PlotStyle", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{"Automatic", ",", "Dashed", ",", "Dashed"}], "}"}]}], ",", 
          RowBox[{"AxesLabel", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{
            "\"\<v\>\"", ",", 
             "\"\<[v\!\(\*SuperscriptBox[\(]\), \(dr\)]\)(v)\>\""}], "}"}]}], 
          ",", 
          RowBox[{"PlotLabel", "\[Rule]", 
           RowBox[{"\"\<\[Phi]=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             RowBox[{"InputForm", "[", "\[Phi]", "]"}], "]"}], "<>", 
            "\"\<, \!\(\*SubscriptBox[\(\[Beta]\), \(L\)]\)=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             SubscriptBox["\[Beta]", "L"], "]"}], "<>", 
            "\"\<, \!\(\*SubscriptBox[\(P\), \(L\)]\)=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             RowBox[{"InputForm", "[", 
              SubscriptBox["P", "L"], "]"}], "]"}], "<>", 
            "\"\<, \!\(\*SubscriptBox[\(\[Beta]\), \(R\)]\)=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             SubscriptBox["\[Beta]", "R"], "]"}], "<>", 
            "\"\<, \!\(\*SubscriptBox[\(P\), \(R\)]\)=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             RowBox[{"InputForm", "[", 
              SubscriptBox["P", "R"], "]"}], "]"}]}]}]}], "]"}], ",", 
        RowBox[{"Graphics", "[", 
         RowBox[{"{", 
          RowBox[{"Dashed", ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"\[Phi]", ",", 
                RowBox[{"-", "10"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"\[Phi]", ",", "10"}], "}"}]}], "}"}], "]"}]}], "}"}], 
         "]"}]}], "]"}]}], "]"}]}], "]"}]}]], "Input",
 CellLabel->"In[97]:=",ExpressionUUID->"2d7dd873-6cab-499d-84cf-986ae83852bc"],

Cell[BoxData[
 GraphicsBox[{{{}, {{}, {}, 
     {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
       NCache[
        Rational[1, 90], 0.011111111111111112`]], AbsoluteThickness[1.6], 
      LineBox[CompressedData["
1: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
HtmfDMXYJsunOxqDJ0NNEi//C7Xm+D+JkDl6
       "]]}, 
     {RGBColor[0.880722, 0.611041, 0.142051], PointSize[
       NCache[
        Rational[1, 90], 0.011111111111111112`]], AbsoluteThickness[1.6], 
      Dashing[{Small, Small}], LineBox[CompressedData["
1:eJw11gtMlWUYB/DD4SIXOXDu93mhxsgyFZlOWe9D6pRpaWeolU0ngcwpGY3W
Zqll85KVgTCbimApGyjpdJolyfcAumXg0tHBJUfBG2IonqEIIWh6nn/vdnZ2
9n7v7/3O973PZUz2Gl+uXqfT7Xz2ef59vvn58HJ3U8snfU4vrwgNL0/vaizu
7PCwLjS8vL78Z//RVR7evev58HDt5t7+TVEeTg0NDx/a3p42UOZm8dycP8k8
sGGyG56bF/tfdlY2ueC5+bvPjaObsl3wXDyqyB/V+q8TnovLcpdfbipywnPy
8SzPyupkJzwnJ72d3JZf54Dn5OkLVpfYFzrgOXjnoW1hld12eA5uqTyXY9lo
h2fnYFGg9X2HHZ6d832FrxcftsGz87SvjEt3z7TBs/H40swDn122wrPx8A/6
uWkfWuFZOeebjqn1kVZ4Vn5UXzXg2WOBZ+U8/ysHZ06wwLOwvjUrmHrWDM/C
xQe57dY7Znhmvu3+9WJWjwmemRsLn3ywdqMJnplLx320Yr7NBM/EBTMCS5qq
jfBMnLyzuvZmuhGekbfsWVxc9GciPCNff231soblifCMXP5L7eClzgR4iVxb
kxP+ODoBXiIHblR88UeKAfMJbPafah2VGQ/fwCNu1R+7uGIkPAMnz1k49sTG
OKyP58sHrqZWlMVi/2fXbXnJl3c8Bl4cH/dtWvXPuWh4sZykAj2GKyPgxfLo
Zf4d5+5FwYvhwPgxp8cORcKL5u/S70xPj46EN4LnnrjbtsgUAS+Kd50PZFxy
hcOL4sxB38LMsXp4kbx3XMnW5Slh8CK4viIi+/EEHbxwrrFWN6cUPtHE0/OD
vvhj3349pImn59UNBdmFBwc18cJ4eG+uYUrLgCaejrWCRaPd0f2Yf6r5OrY1
T5nbp4k/rLWtu79/afkDeENaRGlcUkx4L9YPavtfvbph3tog9h/QOutPzqmK
6YHXr835NKP3zKxueH1a7byu2MNVXfAeau/tPmssmNgJr1fzByclfXn1Bryg
1uFOezPw0zXM92jNDXV5L05rh9+t3S2teeu2rw1el5Y28caS1H2XsP6mlv77
lpnD7r+w/zXt9uEjkRa+gPmAllvwcH3+yCb4rdp12rZj1oUz8C5oWe9SyZr1
p7Ffo2Zu2VdVt+sovGqtfnJ2cVbe9///VhXyW+F6lSLXK3hqtngK+6l22U/h
ftRKuR+F+1Xtcr+Yv6mmyv+B16Vmy//Fft3qjjwP+D3qpDwvrA+qTnmemO9V
f8vzhvdQLZD3gf371G/yvuD3qxnyPuENqFvyvuENqko5D/CG1OOS0HmBN6zu
y3mC91S9IecN63XUIOcR82EUXR46r/D0lCPnGfvr6a6cd/jhdETiAV4E1Um8
EOKJfpR4IsQbZUi8EeKRyiUeCfFK8yVeCfFMmySe4cXQPYl3eLHklHwAL5aS
JV/Ai6MaySfwRtKTzaF8Ay+ekI/gGcgr+QqegcIln8FLILvkO6xPpCuSDzGf
SA2SL+EZqUjyKfY3UofkW/hG2ir5GJ6JvJKv4ZnoY8nn8My0Q/I9PDNpUg/g
malT6gU8C22XegLPQlFSb+BZaZnUI3hWCkq9gmcl1DN4Nnoq9Q6ejV6QegjP
TulSL+HZqVDqKTw7PZJ6C89BbVKP4TmoTOo1PCcpqefwnGSXeg/PSY3SD8Bz
0R7pF+C5yCP9BDw3lUu/Ac9NS6QfgeemHOlX4HmoSvoZeB46Jf0OPC+tk34I
npcypF+C56XI5lA/Rf8BEpIp7A==
       "]]}, 
     {RGBColor[0.560181, 0.691569, 0.194885], PointSize[
       NCache[
        Rational[1, 90], 0.011111111111111112`]], AbsoluteThickness[1.6], 
      Dashing[{Small, Small}], LineBox[CompressedData["
1:eJw11mlMVFcUB/AZhn1zhtmYGaaxtpYmpNGhH7TG8o7jVuyaRlDEpVql8QMl
brUNIqKmNJG2gFoVTa1GosaFLi6Tir7jUotErAsoShXEUVEQKUJZHKH6zr8v
mUxe7rzfffPevf9zXp6X8/GCIJ1O98Pzz4vvmvMvDje/OliwZtVDJ2dph5vr
Cw/dWJ3iYp12uPkzQ2hBZpmTy7a8OBK4vf5IbepoJ7+pHQncO+TaffMZB4vn
4kWNE0smTHXAc3F42nWqbo6H5+K65K5Jby+Kh+fkgebc3MRBOzwnO2uWNv1Y
ZIfn4GLdxlulDjs8B6/cu1YXKLfBc/ADW1HXBY8NXjxfmZlXNVhphRfPvsxg
ddVkKzw7t3k7vd5LFnh2PnnkeG7yDAs8Ox87VXx/bLMZno31gd2NqQvN8Gyc
MXW+MeVxHDwrP/mrrKVvSRw8K49OoqiMHhM8K+/pC6/zfGWCZ+GEntdMaX1G
eBaem+szfLfcCM/M43vX9U+8PwSemfUn/dkHbsTCM/O4Odn5dVUx8OJ4gaPx
60m/RMOL44wPLDWb10fBM3FqbPi21TmR8Ezckro988GECHgmrg6ZcrzLHA7P
yPbp7S8NuxkKz8hFnm1L0naEYHwIH9v3eIF/bjD8WN7z+daMzUMN8GL5bHB+
xa5GPa6P4dbqyinFO3SYP5rvXAgMT7w8oIoXxd4/F5tvLgqo4kXy2drcn75M
7FfFi+SUiuO0oadHFS+C7/obDO13u1XxwrnprWefKN1P4IXx4eH7CkckdsIL
5Y3Hzt+ataIDXiifGB8yY6DlEbwQ3u99/DDa3QovmJ9+mPpFeUkLPAMffTTC
4/PegxfEa9vSy31JfnhBPLJkS+Htyc3w9NxQ2lizsLQJno5HvD/UPS3mFsYH
1aUj89QV1AD/mTryaMid2CP18AKqf9fNuWuyruL6fjV5xoME3bu1mL9XTbcn
zZ426zK8588lfd29gU0X4XWro3wV28LaauB1qTsu5ZT23a2G16luGbOsqsda
Ba9D3fnPqDbdsj8w3q7+bryYdSVwCn6revAeT6ndzfBa1BOZ36zouF2J6/1q
evLhyzN3+zD/bXVg5dPtZZsOYfxv1fBtQUPQvp/hX1Xrfm1Y2n1oL7yLaqX/
HeVAyk7Md1q1H/adCZzfCG+v+u/AsMUF+rz/z5U5T7VzBb9XxsjvFXjKWPEU
zKek/abNp+B+lIoi7X4U3K/iydfuF+N+5VP5P/BalO/l/2K+VmWXPA/47Uqp
PC9c36Hky/PEeKdSLs8bXpeySd4H5u9W5sj7gt+jeOR9wutVnPK+4fUrb8h6
gBdQfLJe4D1T8mQ9wRtUwjzaesP1Otr6nrYeMa6n2eu19QoviIqKtfWM+YNI
/0hb7/ANNE/2A7xgapL9Ai+Ejsp+ghdKJbLf4IXSAdmP8MKoVfYrvHC6LvsZ
XgTVyn6HF0ltB7U8gBdJr9dpeQEvikySJ/CiqUfyBl4MzZc8IuQVLQ/R8oqQ
Z1SfreUZIe9o+n4t7wh5SImShxg30jXJS3gmWil5Sshb6pS8hW+ijySP4cVR
muQ1vDiaJ3kOz0ypkvfwzGSQegDPTF6pF/AslCX1BJ6FUG/gWalc6hE8K42T
egXPSu1Sz+DZaJbUO3g20kk9hGen01Iv4dnpnNRTeHZqlnoLL55OSz2GF081
Uq/hOQj1HJ6D1ki9h+egQukH4DnpFekX4Dkp5o7WT8BzUa30G/BcFCH9CDwX
5Ui/Ai+BuqWfgff8XPodeG7Kln4InpvOSb8Ez01J0k/Rf2OhSj4=
       "]]}}, {{}, {}}}, 
   {Dashing[{Small, Small}], LineBox[{{1, -10}, {1, 10}}]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox[
    "\"[v\\!\\(\\*SuperscriptBox[\\(]\\), \\(dr\\)]\\)(v)\"", 
     TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{
   "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox[
   "\"\[Phi]=1, \\!\\(\\*SubscriptBox[\\(\[Beta]\\), \\(L\\)]\\)=1, \
\\!\\(\\*SubscriptBox[\\(P\\), \\(L\\)]\\)=1/2, \\!\\(\\*SubscriptBox[\\(\
\[Beta]\\), \\(R\\)]\\)=1, \\!\\(\\*SubscriptBox[\\(P\\), \\(R\\)]\\)=2\"", 
    TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-20.228259216626746`, 7.275350448896465}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->"Out[97]=",ExpressionUUID->"3da99db6-5849-4022-9834-a61345bc78a0"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Inverse stretch", "Subsubsection",ExpressionUUID->"592c7efb-a74d-4462-acf6-ce2c75aea2a4"],

Cell[BoxData[
 RowBox[{
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"\[CapitalDelta]x", "=", 
      FractionBox["1", "10"]}], "}"}], ",", 
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{
       SubscriptBox["\[Nu]inv", "\[Phi]"], "=", 
       RowBox[{"\[CapitalDelta]x", " ", 
        RowBox[{"Total", "[", 
         SubscriptBox["\[Rho]p", "\[Phi]"], "]"}]}]}], ",", 
      RowBox[{"{", 
       RowBox[{"\[Phi]", ",", 
        SubscriptBox["\[Phi]v", "list"]}], "}"}]}], "]"}]}], "]"}], 
  ";"}]], "Input",
 CellLabel->"In[98]:=",ExpressionUUID->"e7485dc6-bedc-4109-880e-ec7c6c579479"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"\[CapitalDelta]x", "=", 
     FractionBox["1", "10"]}], "}"}], ",", 
   RowBox[{"Show", "[", 
    RowBox[{
     RowBox[{"ListPlot", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"\[Phi]", ",", 
            SubscriptBox["\[Nu]inv", "\[Phi]"]}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"\[Phi]", ",", 
            SubscriptBox["\[Phi]v", "list"]}], "}"}]}], "]"}], "}"}], ",", 
       RowBox[{"AxesLabel", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{
         "\"\<\[Phi]\>\"", ",", 
          "\"\<\!\(\*SuperscriptBox[\(\[Nu]\), \(-1\)]\)\>\""}], "}"}]}], ",", 
       RowBox[{"PlotLabel", "\[Rule]", 
        RowBox[{"\"\<\!\(\*SubscriptBox[\(\[Beta]\), \(L\)]\)=\>\"", "<>", 
         RowBox[{"ToString", "[", 
          SubscriptBox["\[Beta]", "L"], "]"}], "<>", 
         "\"\<, \!\(\*SubscriptBox[\(P\), \(L\)]\)=\>\"", "<>", 
         RowBox[{"ToString", "[", 
          RowBox[{"InputForm", "[", 
           SubscriptBox["P", "L"], "]"}], "]"}], "<>", 
         "\"\<, \!\(\*SubscriptBox[\(\[Beta]\), \(R\)]\)=\>\"", "<>", 
         RowBox[{"ToString", "[", 
          SubscriptBox["\[Beta]", "R"], "]"}], "<>", 
         "\"\<, \!\(\*SubscriptBox[\(P\), \(R\)]\)=\>\"", "<>", 
         RowBox[{"ToString", "[", 
          RowBox[{"InputForm", "[", 
           SubscriptBox["P", "R"], "]"}], "]"}]}]}]}], "]"}], ",", 
     RowBox[{"Plot", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"\[Nu]func", "[", 
           RowBox[{
            SubscriptBox["\[Beta]", "L"], ",", 
            SubscriptBox["P", "L"]}], "]"}]], ",", 
         FractionBox["1", 
          RowBox[{"\[Nu]func", "[", 
           RowBox[{
            SubscriptBox["\[Beta]", "R"], ",", 
            SubscriptBox["P", "R"]}], "]"}]]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"\[Phi]", ",", 
         RowBox[{
          SubscriptBox["\[Phi]v", "list"], "\[LeftDoubleBracket]", "1", 
          "\[RightDoubleBracket]"}], ",", 
         RowBox[{
          SubscriptBox["\[Phi]v", "list"], "\[LeftDoubleBracket]", 
          RowBox[{"-", "1"}], "\[RightDoubleBracket]"}]}], "}"}], ",", 
       RowBox[{"PlotStyle", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"ColorData", "[", "97", "]"}], "[", "2", "]"}], ",", 
            "Dashed"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"ColorData", "[", "97", "]"}], "[", "3", "]"}], ",", 
            "Dashed"}], "}"}]}], "}"}]}]}], "]"}]}], "]"}]}], "]"}]], "Input",
 CellLabel->"In[99]:=",ExpressionUUID->"939d9854-0cdc-4d04-804c-30bb20975231"],

Cell[BoxData[
 GraphicsBox[{{{}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.011000000000000001`],
      AbsoluteThickness[1.6], PointBox[CompressedData["
1:eJxd0GtIk2EUB/C3qdta09zm3s1tbkrJSIXCdEFjvI/BEppmufRLljYq07xR
sqz0gy5wrRgEVhRFIeoHFRUS8zb2iDYKKW19CKJoC0nxkmZi89oFz/MOPHA4
/DgcDvzjLOXZFzgURaX96/9zq2Jxb5xwTJ3hY7as2Wb1NsdgHp3jDVqFj63l
fw5aiSWbV/ZpWCvwCdq8EXQ0tjbqSuNZy/GoUO5IZi3DP8xDomrWND7/cWWE
ziSW4t7uDP3vLOIoHFo1efdgDrEEZ5elXk0oJhbj080o0OcgFmF9HF/Rskwc
ibXx19Y66vzgCKyUGJOsq9/AQvy0VMlJsk+ABbhc27ez58skmI8L/La3/oFp
MBcX8BtfH/fMg0Px4niVaabnJ5iDw3PtK8O1S2AK53Q+eWg4tQxed2t8l53D
8wFwwF3cNVXx+P4qeMldf7Ps2a/FdfCCO73QNvKgehM85W5bOVryspBCW/a5
W786Zu/odoDH3abro4cstzlgikovScvbcISQPYMbYnLzzoSReybT2iBomuSC
p5iEwTaJN1wAXmAqI2b+MPJw8BJjfC+zNRvE4ABjztJ51O00eJ3xa332s+f2
kP+osq1UGGtJAXOQd+xTqhUfxpAf6nce6Z0Y2wvmogoTXYRkNJiPIk/mNV5M
FIEFyDdT09TZLgALkcxTY1z28sARKPr5fmWdKQwciXS7sqdvmUPBIjR441Ey
1xYCFiOVtLa1X08sQXokNXp4xFHIcqm78HuAA5YiVZjD6ZonplFXx2rRvTli
GTLMeXlls8Ry5HvRZUhhHY1S7ENaBWsFepWkfSNlrUSJ9XOiKNYq5DqQ/0HC
OgZZxe9cQauRy7l7IGjNNsey/gvg8yMI
      "]]}, {{}, {}}}, {{{}, {}, 
     TagBox[
      {RGBColor[0.880722, 0.611041, 0.142051], AbsoluteThickness[1.6], 
       Opacity[1.], Dashing[{Small, Small}], LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAWIQrWcv9ur/f/kDkzPWn5LzeWAf1H52tXE8gl9+viU3
fZ8cnH/lCverg4mycL7sgXwRcxkZOH9r9hFW/rtScH5Cj+GHm02ScP6PSdUd
++0l4PzFfPckZzwUg/PneBkWXe4UhfObchIrND1F4Pxq5lXlRW+F4PzEhvMq
11YIwvlT9z6dMSdLAM7fdV+DZ40SH5yvLODgFDKPG87fpNWR9egxB5x//+hG
BTMzNjj/qc5Uo/3bmOF8wbqVZnqMjHC+jtl7naWf/+yH8Ztd3l7YWfEdzhcN
WTchUvwTnL/p21H+Eyqv4Pylt5/2vmy5B+fHBspsuZ18BM7fyVV99VDpYXsY
3/QRo1xjxH04X/nD7p9Wh17C+Z6Lb571i/gE57v6CjF/3fodzu+Pv95gsP0P
nH/cT5Y3QIjRAcZ/qyhad2kWM5xfWqKd2C/GBudfvyMQlHaCA85PqLR5zu7D
Decf1jbvOszKB+erce55scRDAM6X3ZPtytohCOcz/GJaWfRICM7/Hrg37qiq
CJx/2yReWrVFFM4vCBcQVLojBudLTnkSwSIrAeevi16w/HOFJJwfblvvcWKv
FJy/MS5XyeqPNJz/g8uZeWeoLJwfdNHaTHaGHJzvwKE5gc9HHs6H5hc4HwBv
vYwi
        "]]},
      Annotation[#, "Charting`Private`Tag$203488#1"]& ], 
     TagBox[
      {RGBColor[0.560181, 0.691569, 0.194885], AbsoluteThickness[1.6], 
       Opacity[1.], Dashing[{Small, Small}], LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAWIQrWcv9ur/f/kDiRJ3Twq/YToQ1H52tXE8gl9+viU3
fZ8cnH/lCverg4mycL7sgXwRcxkZOH9r9hFW/rtScH5Cj+GHm02ScP6PSdUd
++0l4PzFfPckZzwUg/PneBkWXe4UhfObchIrND1F4Pxq5lXlRW+F4PzEhvMq
11YIwvlT9z6dMSdLAM7fdV+DZ40SH5yvLODgFDKPG87fpNWR9egxB5x//+hG
BTMzNjj/qc5Uo/3bmOF8wbqVZnqMjHC+jtl7naWf/+yH8Ztd3l7YWfEdzhcN
WTchUvwTnL/p21H+Eyqv4Pylt5/2vmy5B+fHBspsuZ18BM7fyVV99VDpYXsY
3/QRo1xjxH04X/nD7p9Wh17C+Z6Lb571i/gE57v6CjF/3fodzu+Pv95gsP0P
nH/cT5Y3QIjRAcZ/qyhad2kWM5xfWqKd2C/GBudfvyMQlHaCA85PqLR5zu7D
Decf1jbvOszKB+erce55scRDAM6X3ZPtytohCOcz/GJaWfRICM7/Hrg37qiq
CJx/2yReWrVFFM4vCBcQVLojBudLTnkSwSIrAeevi16w/HOFJJwfblvvcWKv
FJy/MS5XyeqPNJz/g8uZeWeoLJwfdNHaTHaGHJzvwKE5gc9HHs6H5hc4HwCY
Z4Y+
        "]]},
      Annotation[#, "Charting`Private`Tag$203488#2"]& ]}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"\[Phi]\"", TraditionalForm], 
    FormBox[
    "\"\\!\\(\\*SuperscriptBox[\\(\[Nu]\\), \\(-1\\)]\\)\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{
   "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox[
   "\"\\!\\(\\*SubscriptBox[\\(\[Beta]\\), \\(L\\)]\\)=1, \
\\!\\(\\*SubscriptBox[\\(P\\), \\(L\\)]\\)=1/2, \\!\\(\\*SubscriptBox[\\(\
\[Beta]\\), \\(R\\)]\\)=1, \\!\\(\\*SubscriptBox[\\(P\\), \\(R\\)]\\)=2\"", 
    TraditionalForm],
  PlotRange->{{-8., 8.}, {-9.004797262532003, 8.68390686996426}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->"Out[99]=",ExpressionUUID->"39c2901d-dd93-4630-929d-c0fe1b194760"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"\[CapitalDelta]x", "=", 
     FractionBox["1", "10"]}], "}"}], ",", 
   RowBox[{"Show", "[", 
    RowBox[{
     RowBox[{"ListPlot", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"\[Phi]", ",", 
            FractionBox["1", 
             SubscriptBox["\[Nu]inv", "\[Phi]"]]}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"\[Phi]", ",", 
            SubscriptBox["\[Phi]v", "list"]}], "}"}]}], "]"}], "}"}], ",", 
       RowBox[{"AxesLabel", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{"\"\<\[Phi]\>\"", ",", "\"\<\[Nu]\>\""}], "}"}]}], ",", 
       RowBox[{"PlotLabel", "\[Rule]", 
        RowBox[{"\"\<\!\(\*SubscriptBox[\(\[Beta]\), \(L\)]\)=\>\"", "<>", 
         RowBox[{"ToString", "[", 
          SubscriptBox["\[Beta]", "L"], "]"}], "<>", 
         "\"\<, \!\(\*SubscriptBox[\(P\), \(L\)]\)=\>\"", "<>", 
         RowBox[{"ToString", "[", 
          RowBox[{"InputForm", "[", 
           SubscriptBox["P", "L"], "]"}], "]"}], "<>", 
         "\"\<, \!\(\*SubscriptBox[\(\[Beta]\), \(R\)]\)=\>\"", "<>", 
         RowBox[{"ToString", "[", 
          SubscriptBox["\[Beta]", "R"], "]"}], "<>", 
         "\"\<, \!\(\*SubscriptBox[\(P\), \(R\)]\)=\>\"", "<>", 
         RowBox[{"ToString", "[", 
          RowBox[{"InputForm", "[", 
           SubscriptBox["P", "R"], "]"}], "]"}]}]}]}], "]"}], ",", 
     RowBox[{"Plot", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"\[Nu]func", "[", 
          RowBox[{
           SubscriptBox["\[Beta]", "L"], ",", 
           SubscriptBox["P", "L"]}], "]"}], ",", 
         RowBox[{"\[Nu]func", "[", 
          RowBox[{
           SubscriptBox["\[Beta]", "R"], ",", 
           SubscriptBox["P", "R"]}], "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"\[Phi]", ",", 
         RowBox[{
          SubscriptBox["\[Phi]v", "list"], "\[LeftDoubleBracket]", "1", 
          "\[RightDoubleBracket]"}], ",", 
         RowBox[{
          SubscriptBox["\[Phi]v", "list"], "\[LeftDoubleBracket]", 
          RowBox[{"-", "1"}], "\[RightDoubleBracket]"}]}], "}"}], ",", 
       RowBox[{"PlotStyle", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"ColorData", "[", "97", "]"}], "[", "2", "]"}], ",", 
            "Dashed"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"ColorData", "[", "97", "]"}], "[", "3", "]"}], ",", 
            "Dashed"}], "}"}]}], "}"}]}]}], "]"}]}], "]"}]}], "]"}]], "Input",
 CellLabel->
  "In[100]:=",ExpressionUUID->"38b4995b-7649-4269-89e3-8e1f9124fcf5"],

Cell[BoxData[
 GraphicsBox[{{{}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.011000000000000001`],
      AbsoluteThickness[1.6], PointBox[CompressedData["
1:eJxd0G1Ik1EUB/BhssyN4TY3H3XzpYUGOcli4Rd9rvbB0PDDEssUJWeUJim4
6GWWkIaa0AfdDFGslIolpYsoFfK5WZhR6cym5XxNm5KSovN1Sys89xl44XL5
cbj3f+4JzsxTn3XjcDgx//b/c3sF4TXNB215zha97cAdDthhOdYlaC+6LMO1
OVSqy/6YF32rq4y1H14s8wkvZe2LmTbn80LWFD4zsDdXw9oHry+PmizZxFKs
NLZUNZ0nlmDriRcVwRpibzwqTu8TphCLsb6He84jgliEL0VbJxqWNsFCfM08
dbI1nNgLd67o405F/QELsCrFMKPZ2ADz8ZhK222eXwN7YkGo/o2jYBnsgVeP
RvIGQpbAXFytMTn48gWwO6bNUbOB03NgN1yXlEHVrs6AOXi2JfSy+28b2Mnk
9fJtR8qmwGuMUp5cnx07CbYzm/kC/bPmCfACI+F1KNQfx8EzzP6wRUOLagw8
zgz9SLzxtGMEbGaCIn7dXKm3knxOryj/2PihIVKnbbK3xY6VQXKfLvjKcWhP
D5D36ZEK2XT3o36STystlbFuNX2kPzqtqPzxQ+En0j+dGpI3rDB0kf/RcRnJ
zYoL7SQf7TN0V6UFGMl80Jemhpd3FI0MzA/d9tytmqhpBXMRV39Yr1a+B3sg
Kqyo2tn3GeyJVKZMKRPRD+aj4lyD0XjdAhagjnZ7u4j3DeyFYnQ98dkHv4OF
KMOG4iujhsAiVGLZlTRYTyxGWcqNqyXTxN4oJTIxvc5JLEFTx0cFT/ZYwVJ0
t02te8cn9kFUYepmloCYQsP2K/desfZFOm7+3DBrP9T4YOvAJGt/1Nkvvv+T
tQzFTpauuyxHr+fTKRvrAJRZnCBzOXCHg1j/Bd4DShg=
      "]]}, {{}, {}}}, {{{}, {}, 
     TagBox[
      {RGBColor[0.880722, 0.611041, 0.142051], AbsoluteThickness[1.6], 
       Opacity[1.], Dashing[{Small, Small}], LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAWIQrWcv9ur/f/kDf0SMajuz/tsHtZ9dbRyP4Jefb8lN
3ycH51+5wv3qYKIsnC97IF/EXEYGzt+afYSV/64UnJ/QY/jhZpMknP9jUnXH
fnsJOH8x3z3JGQ/F4Pw5XoZFlztF4fymnMQKTU8ROL+aeVV50VshOD+x4bzK
tRWCcP7UvU9nzMkSgPN33dfgWaPEB+crCzg4hczjhvM3aXVkPXrMAeffP7pR
wcyMDc5/qjPVaP82ZjhfsG6lmR4jI5yvY/ZeZ+nnP/th/GaXtxd2VnyH80VD
1k2IFP8E52/6dpT/hMorOH/p7ae9L1vuwfmxgTJbbicfgfN3clVfPVR62B7G
N33EKNcYcR/OV/6w+6fVoZdwvufim2f9Ij7B+a6+Qsxft36H8/vjrzcYbP8D
5x/3k+UNEGJ0gPHfKorWXZrFDOeXlmgn9ouxwfnX7wgEpZ3ggPMTKm2es/tw
w/mHtc27DrPywflqnHteLPEQgPNl92S7snYIwvkMv5hWFj0SgvO/B+6NO6oq
AuffNomXVm0RhfMLwgUEle6IwfmSU55EsMhKwPnrohcs/1whCeeH29Z7nNgr
BedvjMtVsvojDef/4HJm3hkqC+cHXbQ2k50hB+c7cGhO4PORh/Oh+QXOBwD8
hol+
        "]]},
      Annotation[#, "Charting`Private`Tag$203601#1"]& ], 
     TagBox[
      {RGBColor[0.560181, 0.691569, 0.194885], AbsoluteThickness[1.6], 
       Opacity[1.], Dashing[{Small, Small}], LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAWIQrWcv9ur/f/kD5yYrsD/ju70/qP3sauN4BL/8fEtu
+j45OP/KFe5XBxNl4XzZA/ki5jIycP7W7COs/Hel4PyEHsMPN5sk4fwfk6o7
9ttLwPmL+e5JzngoBufP8TIsutwpCuc35SRWaHqKwPnVzKvKi94KwfmJDedV
rq0QhPOn7n06Y06WAJy/674GzxolPjhfWcDBKWQeN5y/Sasj69FjDjj//tGN
CmZmbHD+U52pRvu3McP5gnUrzfQYGeF8HbP3Oks//9kP4ze7vL2ws+I7nC8a
sm5CpPgnOH/Tt6P8J1RewflLbz/tfdlyD86PDZTZcjv5CJy/k6v66qHSw/Yw
vukjRrnGiPtwvvKH3T+tDr2E8z0X3zzrF/EJznf1FWL+uvU7nN8ff73BYPsf
OP+4nyxvgBCjA4z/VlG07tIsZji/tEQ7sV+MDc6/fkcgKO0EB5yfUGnznN2H
G84/rG3edZiVD85X49zzYomHAJwvuyfblbVDEM5n+MW0suiREJz/PXBv3FFV
ETj/tkm8tGqLKJxfEC4gqHRHDM6XnPIkgkVWAs5fF71g+ecKSTg/3Lbe48Re
KTh/Y1yuktUfaTj/B5cz885QWTg/6KK1mewMOTjfgUNzAp+PPJwPzS9wPgBF
dZE2
        "]]},
      Annotation[#, "Charting`Private`Tag$203601#2"]& ]}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"\[Phi]\"", TraditionalForm], 
    FormBox["\"\[Nu]\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{
   "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox[
   "\"\\!\\(\\*SubscriptBox[\\(\[Beta]\\), \\(L\\)]\\)=1, \
\\!\\(\\*SubscriptBox[\\(P\\), \\(L\\)]\\)=1/2, \\!\\(\\*SubscriptBox[\\(\
\[Beta]\\), \\(R\\)]\\)=1, \\!\\(\\*SubscriptBox[\\(P\\), \\(R\\)]\\)=2\"", 
    TraditionalForm],
  PlotRange->{{-8., 8.}, {-0.4227843548124409, 1.9635099946956398`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->
  "Out[100]=",ExpressionUUID->"5f63f1de-e47f-4558-882a-9b3bec41bd50"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"critical", " ", "\[Phi]"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"\[Nu]ip", "=", 
      RowBox[{"Interpolation", "[", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"\[Phi]", ",", 
           FractionBox["1", 
            SubscriptBox["\[Nu]inv", "\[Phi]"]]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"\[Phi]", ",", 
           SubscriptBox["\[Phi]v", "list"]}], "}"}]}], "]"}], "]"}]}], "}"}], 
    ",", 
    RowBox[{
     SubscriptBox["\[Phi]", 
      RowBox[{"c", ",", 
       SubscriptBox["\[Beta]", "L"], ",", 
       SubscriptBox["P", "L"], ",", 
       SubscriptBox["\[Beta]", "R"], ",", 
       SubscriptBox["P", "R"]}]], "=", 
     RowBox[{"\[Phi]", "/.", 
      RowBox[{"FindRoot", "[", 
       RowBox[{
        RowBox[{"\[Nu]ip", "[", "\[Phi]", "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"\[Phi]", ",", "2"}], "}"}]}], "]"}]}]}]}], "]"}]}]], "Input",
 CellLabel->
  "In[102]:=",ExpressionUUID->"2e414694-f4b4-44a9-8d9d-65b0d5ff7d11"],

Cell[BoxData["2.142212521624097`"], "Output",
 CellLabel->
  "Out[102]=",ExpressionUUID->"33733f03-1668-44c4-bf98-c247a8185b1d"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Average momentum", "Subsubsection",ExpressionUUID->"a8a7e194-7534-4caf-b8e5-636e61f728c5"],

Cell[BoxData[
 RowBox[{
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}], ",", 
      RowBox[{"numpoints", "=", "150"}]}], "}"}], ",", 
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{
       SubscriptBox["q1", "\[Phi]"], "=", 
       FractionBox[
        RowBox[{"\[CapitalDelta]x", " ", 
         RowBox[{"Total", "[", 
          RowBox[{
           SubscriptBox["\[Rho]ndwlist", "\[Phi]"], 
           SubscriptBox["vdr", "\[Phi]"]}], "]"}]}], 
        SubscriptBox["\[Nu]inv", "\[Phi]"]]}], ",", 
      RowBox[{"{", 
       RowBox[{"\[Phi]", ",", 
        SubscriptBox["\[Phi]v", "list"]}], "}"}]}], "]"}]}], "]"}], 
  ";"}]], "Input",
 CellLabel->
  "In[105]:=",ExpressionUUID->"17c4a040-b6f4-4555-bac0-40dbfdb151ee"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"\[CapitalDelta]x", "=", 
     FractionBox["1", "10"]}], "}"}], ",", 
   RowBox[{"ListPlot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"\[Phi]", ",", 
          SubscriptBox["q1", "\[Phi]"]}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"\[Phi]", ",", 
          SubscriptBox["\[Phi]v", "list"]}], "}"}]}], "]"}], "}"}], ",", 
     RowBox[{"AxesLabel", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
       "\"\<\[Phi]\>\"", ",", "\"\<\!\(\*SubscriptBox[\(q\), \(1\)]\)\>\""}], 
       "}"}]}], ",", 
     RowBox[{"PlotLabel", "\[Rule]", 
      RowBox[{"\"\<\!\(\*SubscriptBox[\(\[Beta]\), \(L\)]\)=\>\"", "<>", 
       RowBox[{"ToString", "[", 
        SubscriptBox["\[Beta]", "L"], "]"}], "<>", 
       "\"\<, \!\(\*SubscriptBox[\(P\), \(L\)]\)=\>\"", "<>", 
       RowBox[{"ToString", "[", 
        RowBox[{"InputForm", "[", 
         SubscriptBox["P", "L"], "]"}], "]"}], "<>", 
       "\"\<, \!\(\*SubscriptBox[\(\[Beta]\), \(R\)]\)=\>\"", "<>", 
       RowBox[{"ToString", "[", 
        SubscriptBox["\[Beta]", "R"], "]"}], "<>", 
       "\"\<, \!\(\*SubscriptBox[\(P\), \(R\)]\)=\>\"", "<>", 
       RowBox[{"ToString", "[", 
        RowBox[{"InputForm", "[", 
         SubscriptBox["P", "R"], "]"}], "]"}]}]}]}], "]"}]}], "]"}]], "Input",
 CellLabel->
  "In[106]:=",ExpressionUUID->"ad863224-06cc-4651-8db8-202831999f8a"],

Cell[BoxData[
 GraphicsBox[{{}, 
   {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.011000000000000001`], 
    AbsoluteThickness[1.6], PointBox[CompressedData["
1:eJxd03lIk3EYB/C1Vq5hM7V5TOcJZYcmiZrn+xP2R3To8sgJ2sksMI8hamDl
ERmKGuWa5kFMh1qYB1Ie6d4fNUWt4TAPcCbiOWszFwoLIir2e/zDF15ePvz+
eJ/f83wfzxuZsRImg8GI+vf+/1oeD5y43bOuKZYMWOy+y267LMC9/dI22vuK
ymJXbFdrVZr75AGxC+6e9FJVx7wi5mNZhlA49UFN7IxZOS/ngkINxE5YdvtI
8N46Fm2xI05na5PVz44SO+CcvATOhjKSmIezfyRKXVJSiA9jAyddLtZnEdvj
j53+Aae/lBHb4fohZaMfp47YFrcXFFx7KuwiPoT/GNYMbq8HibnY0VU808jR
EFvj8Y3C2XrFJDEHx1035S/nzROzcdfFeZancJF4P44Qcbb5phViFl4qUjdz
6TViJg5UjuZRDevEDOzfpDMV3/lG/JuO9M5uve/3ndhMKwMLbz28C96ixQer
1x93gDfpGWdN/M9esJ6WNpQIc1vBC7RaHCZ3LAdr6coen8vzZ8EMxpgx3lTF
2TmnGlKLlv0qoZ4FqpmvM+/3AuupS2mKKFU01L9JJXT45A/U6KE+ykYQ/ik6
BO5rpj47dO8R2q7C/ajplglXnXEJ/o+yvY9fyAiH/jGRafiUPaMP+stCzKCr
9ik1s9BflHnuxXSFCObBRry+qvdd57UwH1SzyM43Dw/B/FDZqExUfo+G+aKg
oeEVgXxn/igsVcM8hpohH2jwjS6By5VBfpBkLiTNvPQI8oXUvSVTcS2ZkD9k
fM4ynTBBHnlItfGraaQ2CvKLCpOk46KTvpBvNFZlI7CKtSZ2QsEx7UUT/Vuw
H+hrUvIib0QL+4NuKiLifDVvYb/Q5r4DAr6kAvYPhU52egXIs4gFSCU1ttme
iSB2Q5TvqrT0nSLcYvdd9tjxX00vT+w=
     "]]}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"\[Phi]\"", TraditionalForm], 
    FormBox[
    "\"\\!\\(\\*SubscriptBox[\\(q\\), \\(1\\)]\\)\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{
   "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox[
   "\"\\!\\(\\*SubscriptBox[\\(\[Beta]\\), \\(L\\)]\\)=1, \
\\!\\(\\*SubscriptBox[\\(P\\), \\(L\\)]\\)=1/2, \\!\\(\\*SubscriptBox[\\(\
\[Beta]\\), \\(R\\)]\\)=1, \\!\\(\\*SubscriptBox[\\(P\\), \\(R\\)]\\)=2\"", 
    TraditionalForm],
  PlotRange->{{-8., 8.}, {-0.8663264900467834, 1.2290886879802885`*^-16}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->
  "Out[106]=",ExpressionUUID->"7eeb78cf-3b3b-4100-9236-1f5fda237593"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Effective velocity", "Subsubsection",ExpressionUUID->"2092d6b7-d5d8-44dd-9008-e9db0a46f174"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"effective", " ", "velocity"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{
      SubscriptBox["veff", "\[Phi]"], "=", 
      FractionBox[
       SubscriptBox["vdr", "\[Phi]"], 
       SubscriptBox["onedr", "\[Phi]"]]}], ",", 
     RowBox[{"{", 
      RowBox[{"\[Phi]", ",", 
       SubscriptBox["\[Phi]v", "list"]}], "}"}]}], "]"}], ";"}]}]], "Input",
 CellLabel->
  "In[107]:=",ExpressionUUID->"74282bbb-0efe-42cc-90d2-15247113d9e5"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}], ",", 
      RowBox[{"numpoints", "=", "150"}], ",", 
      RowBox[{"\[Phi]", "=", "1"}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"vlist", "=", 
        RowBox[{"\[CapitalDelta]x", " ", 
         RowBox[{"Range", "[", 
          RowBox[{
           RowBox[{"-", 
            FractionBox[
             RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
           FractionBox[
            RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], "}"}], ",", 
      RowBox[{"Show", "[", 
       RowBox[{
        RowBox[{"ListLinePlot", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Transpose", "[", 
             RowBox[{"{", 
              RowBox[{"vlist", ",", 
               SubscriptBox["veff", "\[Phi]"]}], "}"}], "]"}], ",", 
            RowBox[{"Transpose", "[", 
             RowBox[{"{", 
              RowBox[{"vlist", ",", 
               SubscriptBox["veff", 
                RowBox[{
                 SubscriptBox["\[Beta]", "L"], ",", 
                 SubscriptBox["P", "L"], ",", "\[CapitalDelta]x"}]]}], "}"}], 
             "]"}], ",", 
            RowBox[{"Transpose", "[", 
             RowBox[{"{", 
              RowBox[{"vlist", ",", 
               SubscriptBox["veff", 
                RowBox[{
                 SubscriptBox["\[Beta]", "R"], ",", 
                 SubscriptBox["P", "R"], ",", "\[CapitalDelta]x"}]]}], "}"}], 
             "]"}]}], "}"}], ",", 
          RowBox[{"PlotStyle", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{"Automatic", ",", "Dashed", ",", "Dashed"}], "}"}]}], ",", 
          RowBox[{"AxesLabel", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{
            "\"\<v\>\"", ",", 
             "\"\<\!\(\*SuperscriptBox[\(v\), \(eff\)]\)(v)\>\""}], "}"}]}], 
          ",", 
          RowBox[{"PlotLabel", "\[Rule]", 
           RowBox[{"\"\<\[Phi]=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             RowBox[{"InputForm", "[", "\[Phi]", "]"}], "]"}], "<>", 
            "\"\<, \!\(\*SubscriptBox[\(\[Beta]\), \(L\)]\)=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             SubscriptBox["\[Beta]", "L"], "]"}], "<>", 
            "\"\<, \!\(\*SubscriptBox[\(P\), \(L\)]\)=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             RowBox[{"InputForm", "[", 
              SubscriptBox["P", "L"], "]"}], "]"}], "<>", 
            "\"\<, \!\(\*SubscriptBox[\(\[Beta]\), \(R\)]\)=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             SubscriptBox["\[Beta]", "R"], "]"}], "<>", 
            "\"\<, \!\(\*SubscriptBox[\(P\), \(R\)]\)=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             RowBox[{"InputForm", "[", 
              SubscriptBox["P", "R"], "]"}], "]"}]}]}]}], "]"}], ",", 
        RowBox[{"Graphics", "[", 
         RowBox[{"{", 
          RowBox[{"Dashed", ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"\[Phi]", ",", 
                RowBox[{"-", "10"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"\[Phi]", ",", "10"}], "}"}]}], "}"}], "]"}]}], "}"}], 
         "]"}]}], "]"}]}], "]"}]}], "]"}]}]], "Input",
 CellLabel->
  "In[108]:=",ExpressionUUID->"d2bc93cf-4be1-4dd3-a3d3-cd852962590c"],

Cell[BoxData[
 GraphicsBox[{{{}, {{}, {}, 
     {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
       NCache[
        Rational[1, 90], 0.011111111111111112`]], AbsoluteThickness[1.6], 
      LineBox[CompressedData["
1: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
4qkh97nyIAVnNv0vB6OgXg==
       "]]}, 
     {RGBColor[0.880722, 0.611041, 0.142051], PointSize[
       NCache[
        Rational[1, 90], 0.011111111111111112`]], AbsoluteThickness[1.6], 
      Dashing[{Small, Small}], LineBox[CompressedData["
1:eJw11gtQVGUUB/Dd5SULIrDLY1nWfKA1TqlJ5aP0HoXS0TLFsswxBkYRTfNZ
pINYkoo12OSMJoqjY5ZDGyqajzHzHnlYmYyaowlLTiqPhV2YdVlcXBZIOX/u
DMPsfPv9vrv3ft/5n6GZq9KW6DQazZ4nf0//V199elm40lDfbpip4ay+y8LX
6+584Hw2kDV9l4W3TixuunpWx/uKnl6J7LUuDlJtOk7uuxJ5/97Nry34Tsfi
mXlZXr2j9mMdPDN3HLn/Bk/RwTPzjKSGNZsi+70ELrQdnfv1PS28BB63sXXW
7pNaeCYeMudwxop8LTwTn7/Re9n8jhaeiW1fZcYfTNLCi+fucbkDHnk08OJ5
hPXK4GeqNPDiuGxvbaJpd//vjeM9RXEH7i/WwIvjesf+URtf0sCL5eod6ybc
Dej3Yjl7/oZpCT/2quLFsNWxYIY+tVcVL4btm0orC+71qOLF8NunfjrzbV6P
Kp6RSz09fw8x96jiGXltt3Pji2e74RnYf7Gl7GJaNzwD5y1aEVXR6odn4CxT
7vkJBX540Ry4z5pqGuaHF82Hqm6XLPq1C14Up3sTRvfM64IXxVbrnBS3wwcv
iqc1pSwdm++DF8lNTltXqckHL5LLvsmITz/+GOODWDEOm/dK6mP4EZy7/8aW
pDud8CK45UJaTvxHnZg/kKdXuUp6/F6sH85Z5aUNXOiFF8Z1Rn3z6xYvPD1v
H3U4YI31ETw9Z/+QdGrohEfwQrnauyI1uaID3gBuyWzOy32zA14If+Evz7h2
0wMvmE+WLOrqfN8DL5hTlxcsvmRrhxfEkyKddsfCdniBvFZbvmR8jRteAAed
2ND44Tw3PB1/nnfwy4QrD+E92fe2+MIhkx/C03LJoEr7yJ9d8DRc96muvD7W
hfFeVR9uPPecrw1+t7rKFWBqudAKz6+uW/9bwb5PnJjvUxfkvDCiZrgD63eq
Ez1248Lfm+F51eMzprja0u3wOtSa4quHNrc2wvOotbsyimJXN8Bzq7tow9x/
mx7Ac6m9I97yWd69j/E21dl7a2XKuf/gO9Q/XjVWnBh+F55dvZmTVRdWVYv5
9eqWW+7g4fP/wfr31InZ0Zd+uXMT43Xq7O1p75XOvg7/thpSEh44df2f8K6r
x6ZnjN86qRzrVahNlp2ztjWfhleiFjamW2yTD/R/VrLls4LvK0GD+76vwFOO
iKdgPcUg6ym4H2Wm3I+C+1XGyP1ivF7ZKr8Hnl1pl9+L9RzKX/I84Lcpd+V5
Yb5L0Y7se54YdytH5XnD8ygs7wPrdygP5H3B9yrF8j7hdSpj5X3D8ynLZD/A
8ysrZb/A61Z2yH6C16u4w/r2G+Zr6IHsR4xr6aTsV3g6uiz7GevraLPsd/gB
FCLnAV4gLZXzAi+Ipsp5ghdML8t5gxdMZXIe4YVQvpxXeAOoUc4zvFBqkvMO
T0/LpR7A09NOqRfwwuia1BN44ZQt9QbeQEqRegQvguxSr+BF0GdSz+ANIpJ6
h/mRdEzqIcYjySn1El4UJUs9xfpR9L3UW/hRlCn1GF407ZJ6DS+aQqWewzNQ
jtR7eAZaI3kAz0CPJS/gGWm15Ak8I52WvIEXQyR5BC+GGiSv4MXQMckzeLGU
KXkHL5YqJQ8JeUnIS0KeUrHkKSFv6YzkLSGP6XnJY0JeU2hyX17DM1GN5Dk8
E52QvIdnojHSD8BLoNHSL8BLoO3ST8Az02zpN+CZySf9CDwzZUm/Ai+RiqSf
gZdI7dLvwLNQvvRD8Cx0W/oleBaqln6K/gdtnmYt
       "]]}, 
     {RGBColor[0.560181, 0.691569, 0.194885], PointSize[
       NCache[
        Rational[1, 90], 0.011111111111111112`]], AbsoluteThickness[1.6], 
      Dashing[{Small, Small}], LineBox[CompressedData["
1:eJw11g9M1GUYB/AT5UDAg7vjOI67M0lTKU0bU7PE31NIy1j+13RjqyxxCh5s
CMZMl5MGpWu6gAT/MKUaaGWYZTPzfWYqYBCgdiog/w/ukJHx90SM9Pd+fbfb
7bf33s/zu9/vfZ/nidyYsmqTj0ajyX/8efJdXfVk2DnKMWq8MNauJKrDzkp9
SlTOcI+iUYedky8bFled8CiFBU+Gjc+eytvXsqBbiVaHjRNuz7gRWeNRpGfl
b092XHznlAeelbV2x5TW7R54Vh4u6b0bHfvUi2DdzbMxY8EeeBG8dvBaTn+j
G56FK589vq6w1A3PwkbfT8P0GW54Fl44LyX27dfd8MJ5b/ny+mU6N7xw1sQc
umio74Jn5kV3p63P/6YLnpkNoY79ztQueGaOq9w/UPNqF7ww5rzw87u1XfDC
OLPh5eym2k54Jt5hyEvqLuyEZ+L+kuELRz7shGfirLlL7vfO7oQXymNvPdpy
Z8gFL5T3m5xLVgsXPCMX5Fsmrcp2wTPy9N39KZXLXPCMnBq3qOmkyQXPwOOs
a6a6GjrgGXhgo+ffD453wNNzVe4bW4MTO+DpOWuxp+jPqA54ek5OyZ3+UU87
vBBOjs0t++f7dnghXFc287qf4+l8ML+ZUtB+YFY7fB3vuVgRvc7TBk/Hmd3n
0id/3Yb1kzji1lD2dwltiB/Er52J/5INbfACecXR2N2Wq63wAjjplazSjIxW
eAFcd+l8c8HUVngTeeLK2ISl1S3w/Dnt/R1XV6a1wPPj0ju6/7JNLfC0PO3Y
0jl5m5vhabl6i6nJ90gTPF++5XTsiq+4C28Cuz3ntyX2NMIbz1k/1EZv82+E
58MrD+U2fG5rgOfDMZG6stGZ9fDG8c/ezKzgF+/A0/C6pHmnbbNuY35MPDyw
KTB76i34j8T8yRn+v4Y64Y0Ky9pTozbN31g/Ii548yundd5AfK/wM3/SHFN+
Hd6w8Huwt/hmcR28QXE4qXzeqo9r4Q2I9AhT5IITf8HrE8+3r++JjKuCd1+s
qDgXZ22rxHyvOPaCZltNZjn8e8I61PdVS9AVeG5hymjc3HX4EtZ3CM3cNXlp
MxjxW4VmOCjH8t5vmG8U3vWrOxOTf4HvFI0zc8Zf3l4Gr1bs0SdpFgyUIN4f
YlHgpXgaPAqvVJiuLZ8z9GDv02ulqFy9Fvi9kip/L+ApzSGqJxBPiY5S4wnc
j5Iq70fgfpUN8n4x//hcyP8Dz61409X/i3j3lGD5POD3KonyeWH9fWWufJ6Y
71Neks8b3oDyrnwfiD+onJbvC/6wMupV3yc8r1IRpr5veCMK9gO8UcW5Rt0v
8B4pO+V+gjemjBxU9xvWa2jLVnU/Yn4cffFA3a/wfOizKep+RnwfKpb7Hf54
Inke4E2gQnle4PmSS54neFqqkecNnpbmy/MIz4+q5HmF50/Z8jzDm0j9K9Tz
Di+A9sl8AC+AkC/gBVKJzCfwgmikTM038CZRn1PNR/B0VCbzFTwd5f6u5jN4
wZSUquY7rA+huh/VfIj5EDodp+ZLeHo641DzKeLrqVjmW/h6qpb5GJ6BumW+
hmcgjczn8IyULvM9PCM9J+sBPCMVyXoBL5SyZD2BF0oT4tV6A89EO2U9gmei
h7JewTORQ9YzeGG0S9Y7eGF0VdZDeGZSZL2EZyaLrKfwzDRH1lt44aSV9Rhe
OKXLeg3PQiTrOTwLBch6D89CV2Q/AC+CEmS/AC+CnpH9BDwr9cl+A56VAmQ/
As9KRbJfgWejDbKfgWejn2S/A89OabIfgmenhbJfgmen2bKfEv8DhGFovg==

       "]]}}, {{}, {}}}, 
   {Dashing[{Small, Small}], LineBox[{{1, -10}, {1, 10}}]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox[
    "\"\\!\\(\\*SuperscriptBox[\\(v\\), \\(eff\\)]\\)(v)\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{
   "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox[
   "\"\[Phi]=1, \\!\\(\\*SubscriptBox[\\(\[Beta]\\), \\(L\\)]\\)=1, \
\\!\\(\\*SubscriptBox[\\(P\\), \\(L\\)]\\)=1/2, \\!\\(\\*SubscriptBox[\\(\
\[Beta]\\), \\(R\\)]\\)=1, \\!\\(\\*SubscriptBox[\\(P\\), \\(R\\)]\\)=2\"", 
    TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-2.5194937798911283`, 2.519493779891131}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->
  "Out[108]=",ExpressionUUID->"1a2264bd-099b-44f7-a93a-e61110210117"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}], ",", 
      RowBox[{"numpoints", "=", "150"}], ",", 
      RowBox[{"\[Phi]", "=", "3"}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"vlist", "=", 
        RowBox[{"\[CapitalDelta]x", " ", 
         RowBox[{"Range", "[", 
          RowBox[{
           RowBox[{"-", 
            FractionBox[
             RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
           FractionBox[
            RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], "}"}], ",", 
      RowBox[{"Show", "[", 
       RowBox[{
        RowBox[{"ListLinePlot", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Transpose", "[", 
             RowBox[{"{", 
              RowBox[{"vlist", ",", 
               SubscriptBox["veff", "\[Phi]"]}], "}"}], "]"}], ",", 
            RowBox[{"Transpose", "[", 
             RowBox[{"{", 
              RowBox[{"vlist", ",", 
               SubscriptBox["veff", 
                RowBox[{
                 SubscriptBox["\[Beta]", "L"], ",", 
                 SubscriptBox["P", "L"], ",", "\[CapitalDelta]x"}]]}], "}"}], 
             "]"}], ",", 
            RowBox[{"Transpose", "[", 
             RowBox[{"{", 
              RowBox[{"vlist", ",", 
               SubscriptBox["veff", 
                RowBox[{
                 SubscriptBox["\[Beta]", "R"], ",", 
                 SubscriptBox["P", "R"], ",", "\[CapitalDelta]x"}]]}], "}"}], 
             "]"}]}], "}"}], ",", 
          RowBox[{"PlotStyle", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{"Automatic", ",", "Dashed", ",", "Dashed"}], "}"}]}], ",", 
          RowBox[{"AxesLabel", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{
            "\"\<v\>\"", ",", 
             "\"\<\!\(\*SuperscriptBox[\(v\), \(eff\)]\)(v)\>\""}], "}"}]}], 
          ",", 
          RowBox[{"PlotLabel", "\[Rule]", 
           RowBox[{"\"\<\[Phi]=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             RowBox[{"InputForm", "[", "\[Phi]", "]"}], "]"}], "<>", 
            "\"\<, \!\(\*SubscriptBox[\(\[Beta]\), \(L\)]\)=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             SubscriptBox["\[Beta]", "L"], "]"}], "<>", 
            "\"\<, \!\(\*SubscriptBox[\(P\), \(L\)]\)=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             RowBox[{"InputForm", "[", 
              SubscriptBox["P", "L"], "]"}], "]"}], "<>", 
            "\"\<, \!\(\*SubscriptBox[\(\[Beta]\), \(R\)]\)=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             SubscriptBox["\[Beta]", "R"], "]"}], "<>", 
            "\"\<, \!\(\*SubscriptBox[\(P\), \(R\)]\)=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             RowBox[{"InputForm", "[", 
              SubscriptBox["P", "R"], "]"}], "]"}]}]}]}], "]"}], ",", 
        RowBox[{"Graphics", "[", 
         RowBox[{"{", 
          RowBox[{"Dashed", ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"\[Phi]", ",", 
                RowBox[{"-", "10"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"\[Phi]", ",", "10"}], "}"}]}], "}"}], "]"}]}], "}"}], 
         "]"}]}], "]"}]}], "]"}]}], "]"}]}]], "Input",
 CellLabel->
  "In[109]:=",ExpressionUUID->"e3b3cdf5-aa28-4f84-aabf-0716a49c66c5"],

Cell[BoxData[
 GraphicsBox[{{{}, {{}, {}, 
     {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
       NCache[
        Rational[1, 90], 0.011111111111111112`]], AbsoluteThickness[1.6], 
      LineBox[CompressedData["
1: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
       "]]}, 
     {RGBColor[0.880722, 0.611041, 0.142051], PointSize[
       NCache[
        Rational[1, 90], 0.011111111111111112`]], AbsoluteThickness[1.6], 
      Dashing[{Small, Small}], LineBox[CompressedData["
1:eJw11gtQVGUUB/Dd5SULIrDLY1nWfKA1TqlJ5aP0HoXS0TLFsswxBkYRTfNZ
pINYkoo12OSMJoqjY5ZDGyqajzHzHnlYmYyaowlLTiqPhV2YdVlcXBZIOX/u
DMPsfPv9vrv3ft/5n6GZq9KW6DQazZ4nf0//V199elm40lDfbpip4ay+y8LX
6+584Hw2kDV9l4W3TixuunpWx/uKnl6J7LUuDlJtOk7uuxJ5/97Nry34Tsfi
mXlZXr2j9mMdPDN3HLn/Bk/RwTPzjKSGNZsi+70ELrQdnfv1PS28BB63sXXW
7pNaeCYeMudwxop8LTwTn7/Re9n8jhaeiW1fZcYfTNLCi+fucbkDHnk08OJ5
hPXK4GeqNPDiuGxvbaJpd//vjeM9RXEH7i/WwIvjesf+URtf0sCL5eod6ybc
Dej3Yjl7/oZpCT/2quLFsNWxYIY+tVcVL4btm0orC+71qOLF8NunfjrzbV6P
Kp6RSz09fw8x96jiGXltt3Pji2e74RnYf7Gl7GJaNzwD5y1aEVXR6odn4CxT
7vkJBX540Ry4z5pqGuaHF82Hqm6XLPq1C14Up3sTRvfM64IXxVbrnBS3wwcv
iqc1pSwdm++DF8lNTltXqckHL5LLvsmITz/+GOODWDEOm/dK6mP4EZy7/8aW
pDud8CK45UJaTvxHnZg/kKdXuUp6/F6sH85Z5aUNXOiFF8Z1Rn3z6xYvPD1v
H3U4YI31ETw9Z/+QdGrohEfwQrnauyI1uaID3gBuyWzOy32zA14If+Evz7h2
0wMvmE+WLOrqfN8DL5hTlxcsvmRrhxfEkyKddsfCdniBvFZbvmR8jRteAAed
2ND44Tw3PB1/nnfwy4QrD+E92fe2+MIhkx/C03LJoEr7yJ9d8DRc96muvD7W
hfFeVR9uPPecrw1+t7rKFWBqudAKz6+uW/9bwb5PnJjvUxfkvDCiZrgD63eq
Ez1248Lfm+F51eMzprja0u3wOtSa4quHNrc2wvOotbsyimJXN8Bzq7tow9x/
mx7Ac6m9I97yWd69j/E21dl7a2XKuf/gO9Q/XjVWnBh+F55dvZmTVRdWVYv5
9eqWW+7g4fP/wfr31InZ0Zd+uXMT43Xq7O1p75XOvg7/thpSEh44df2f8K6r
x6ZnjN86qRzrVahNlp2ztjWfhleiFjamW2yTD/R/VrLls4LvK0GD+76vwFOO
iKdgPcUg6ym4H2Wm3I+C+1XGyP1ivF7ZKr8Hnl1pl9+L9RzKX/I84Lcpd+V5
Yb5L0Y7se54YdytH5XnD8ygs7wPrdygP5H3B9yrF8j7hdSpj5X3D8ynLZD/A
8ysrZb/A61Z2yH6C16u4w/r2G+Zr6IHsR4xr6aTsV3g6uiz7GevraLPsd/gB
FCLnAV4gLZXzAi+Ipsp5ghdML8t5gxdMZXIe4YVQvpxXeAOoUc4zvFBqkvMO
T0/LpR7A09NOqRfwwuia1BN44ZQt9QbeQEqRegQvguxSr+BF0GdSz+ANIpJ6
h/mRdEzqIcYjySn1El4UJUs9xfpR9L3UW/hRlCn1GF407ZJ6DS+aQqWewzNQ
jtR7eAZaI3kAz0CPJS/gGWm15Ak8I52WvIEXQyR5BC+GGiSv4MXQMckzeLGU
KXkHL5YqJQ8JeUnIS0KeUrHkKSFv6YzkLSGP6XnJY0JeU2hyX17DM1GN5Dk8
E52QvIdnojHSD8BLoNHSL8BLoO3ST8Az02zpN+CZySf9CDwzZUm/Ai+RiqSf
gZdI7dLvwLNQvvRD8Cx0W/oleBaqln6K/gdtnmYt
       "]]}, 
     {RGBColor[0.560181, 0.691569, 0.194885], PointSize[
       NCache[
        Rational[1, 90], 0.011111111111111112`]], AbsoluteThickness[1.6], 
      Dashing[{Small, Small}], LineBox[CompressedData["
1:eJw11g9M1GUYB/AT5UDAg7vjOI67M0lTKU0bU7PE31NIy1j+13RjqyxxCh5s
CMZMl5MGpWu6gAT/MKUaaGWYZTPzfWYqYBCgdiog/w/ukJHx90SM9Pd+fbfb
7bf33s/zu9/vfZ/nidyYsmqTj0ajyX/8efJdXfVk2DnKMWq8MNauJKrDzkp9
SlTOcI+iUYedky8bFled8CiFBU+Gjc+eytvXsqBbiVaHjRNuz7gRWeNRpGfl
b092XHznlAeelbV2x5TW7R54Vh4u6b0bHfvUi2DdzbMxY8EeeBG8dvBaTn+j
G56FK589vq6w1A3PwkbfT8P0GW54Fl44LyX27dfd8MJ5b/ny+mU6N7xw1sQc
umio74Jn5kV3p63P/6YLnpkNoY79ztQueGaOq9w/UPNqF7ww5rzw87u1XfDC
OLPh5eym2k54Jt5hyEvqLuyEZ+L+kuELRz7shGfirLlL7vfO7oQXymNvPdpy
Z8gFL5T3m5xLVgsXPCMX5Fsmrcp2wTPy9N39KZXLXPCMnBq3qOmkyQXPwOOs
a6a6GjrgGXhgo+ffD453wNNzVe4bW4MTO+DpOWuxp+jPqA54ek5OyZ3+UU87
vBBOjs0t++f7dnghXFc287qf4+l8ML+ZUtB+YFY7fB3vuVgRvc7TBk/Hmd3n
0id/3Yb1kzji1lD2dwltiB/Er52J/5INbfACecXR2N2Wq63wAjjplazSjIxW
eAFcd+l8c8HUVngTeeLK2ISl1S3w/Dnt/R1XV6a1wPPj0ju6/7JNLfC0PO3Y
0jl5m5vhabl6i6nJ90gTPF++5XTsiq+4C28Cuz3ntyX2NMIbz1k/1EZv82+E
58MrD+U2fG5rgOfDMZG6stGZ9fDG8c/ezKzgF+/A0/C6pHmnbbNuY35MPDyw
KTB76i34j8T8yRn+v4Y64Y0Ky9pTozbN31g/Ii548yundd5AfK/wM3/SHFN+
Hd6w8Huwt/hmcR28QXE4qXzeqo9r4Q2I9AhT5IITf8HrE8+3r++JjKuCd1+s
qDgXZ22rxHyvOPaCZltNZjn8e8I61PdVS9AVeG5hymjc3HX4EtZ3CM3cNXlp
MxjxW4VmOCjH8t5vmG8U3vWrOxOTf4HvFI0zc8Zf3l4Gr1bs0SdpFgyUIN4f
YlHgpXgaPAqvVJiuLZ8z9GDv02ulqFy9Fvi9kip/L+ApzSGqJxBPiY5S4wnc
j5Iq70fgfpUN8n4x//hcyP8Dz61409X/i3j3lGD5POD3KonyeWH9fWWufJ6Y
71Neks8b3oDyrnwfiD+onJbvC/6wMupV3yc8r1IRpr5veCMK9gO8UcW5Rt0v
8B4pO+V+gjemjBxU9xvWa2jLVnU/Yn4cffFA3a/wfOizKep+RnwfKpb7Hf54
Inke4E2gQnle4PmSS54neFqqkecNnpbmy/MIz4+q5HmF50/Z8jzDm0j9K9Tz
Di+A9sl8AC+AkC/gBVKJzCfwgmikTM038CZRn1PNR/B0VCbzFTwd5f6u5jN4
wZSUquY7rA+huh/VfIj5EDodp+ZLeHo641DzKeLrqVjmW/h6qpb5GJ6BumW+
hmcgjczn8IyULvM9PCM9J+sBPCMVyXoBL5SyZD2BF0oT4tV6A89EO2U9gmei
h7JewTORQ9YzeGG0S9Y7eGF0VdZDeGZSZL2EZyaLrKfwzDRH1lt44aSV9Rhe
OKXLeg3PQiTrOTwLBch6D89CV2Q/AC+CEmS/AC+CnpH9BDwr9cl+A56VAmQ/
As9KRbJfgWejDbKfgWejn2S/A89OabIfgmenhbJfgmen2bKfEv8DhGFovg==

       "]]}}, {{}, {}}}, 
   {Dashing[{Small, Small}], LineBox[{{3, -10}, {3, 10}}]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox[
    "\"\\!\\(\\*SuperscriptBox[\\(v\\), \\(eff\\)]\\)(v)\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{
   "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox[
   "\"\[Phi]=3, \\!\\(\\*SubscriptBox[\\(\[Beta]\\), \\(L\\)]\\)=1, \
\\!\\(\\*SubscriptBox[\\(P\\), \\(L\\)]\\)=1/2, \\!\\(\\*SubscriptBox[\\(\
\[Beta]\\), \\(R\\)]\\)=1, \\!\\(\\*SubscriptBox[\\(P\\), \\(R\\)]\\)=2\"", 
    TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-2.5194937798911283`, 2.519493779891131}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->
  "Out[109]=",ExpressionUUID->"bbff8278-8b7c-4e79-9934-27fb21f13dc7"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"normalized", " ", "effective", " ", "velocity"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{
      SubscriptBox["vefftilde", "\[Phi]"], "=", 
      RowBox[{
       SubscriptBox["\[Nu]inv", "\[Phi]"], 
       RowBox[{"(", 
        RowBox[{
         SubscriptBox["veff", "\[Phi]"], "-", 
         SubscriptBox["q1", "\[Phi]"]}], ")"}]}]}], ",", 
     RowBox[{"{", 
      RowBox[{"\[Phi]", ",", 
       SubscriptBox["\[Phi]v", "list"]}], "}"}]}], "]"}], ";"}]}]], "Input",
 CellLabel->
  "In[110]:=",ExpressionUUID->"b44e5f7e-ab7b-4ad6-b019-9ff70744c6aa"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}], ",", 
      RowBox[{"numpoints", "=", "150"}], ",", 
      RowBox[{"\[Phi]", "=", "1"}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"vlist", "=", 
        RowBox[{"\[CapitalDelta]x", " ", 
         RowBox[{"Range", "[", 
          RowBox[{
           RowBox[{"-", 
            FractionBox[
             RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
           FractionBox[
            RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], "}"}], ",", 
      RowBox[{"Show", "[", 
       RowBox[{
        RowBox[{"ListLinePlot", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Transpose", "[", 
             RowBox[{"{", 
              RowBox[{"vlist", ",", 
               SubscriptBox["vefftilde", "\[Phi]"]}], "}"}], "]"}], ",", 
            RowBox[{"Transpose", "[", 
             RowBox[{"{", 
              RowBox[{"vlist", ",", 
               SubscriptBox["vefftilde", 
                RowBox[{
                 SubscriptBox["\[Beta]", "L"], ",", 
                 SubscriptBox["P", "L"], ",", "\[CapitalDelta]x"}]]}], "}"}], 
             "]"}], ",", 
            RowBox[{"Transpose", "[", 
             RowBox[{"{", 
              RowBox[{"vlist", ",", 
               SubscriptBox["vefftilde", 
                RowBox[{
                 SubscriptBox["\[Beta]", "R"], ",", 
                 SubscriptBox["P", "R"], ",", "\[CapitalDelta]x"}]]}], "}"}], 
             "]"}]}], "}"}], ",", 
          RowBox[{"PlotStyle", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{"Automatic", ",", "Dashed", ",", "Dashed"}], "}"}]}], ",", 
          RowBox[{"AxesLabel", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{
            "\"\<v\>\"", ",", 
             "\"\<\!\(\*SuperscriptBox[OverscriptBox[\(v\), \(~\)], \
\(eff\)]\)(v)\>\""}], "}"}]}], ",", 
          RowBox[{"PlotLabel", "\[Rule]", 
           RowBox[{"\"\<\[Phi]=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             RowBox[{"InputForm", "[", "\[Phi]", "]"}], "]"}], "<>", 
            "\"\<, \!\(\*SubscriptBox[\(\[Beta]\), \(L\)]\)=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             SubscriptBox["\[Beta]", "L"], "]"}], "<>", 
            "\"\<, \!\(\*SubscriptBox[\(P\), \(L\)]\)=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             RowBox[{"InputForm", "[", 
              SubscriptBox["P", "L"], "]"}], "]"}], "<>", 
            "\"\<, \!\(\*SubscriptBox[\(\[Beta]\), \(R\)]\)=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             SubscriptBox["\[Beta]", "R"], "]"}], "<>", 
            "\"\<, \!\(\*SubscriptBox[\(P\), \(R\)]\)=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             RowBox[{"InputForm", "[", 
              SubscriptBox["P", "R"], "]"}], "]"}]}]}]}], "]"}], ",", 
        RowBox[{"Graphics", "[", 
         RowBox[{"{", 
          RowBox[{"Dashed", ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"\[Phi]", ",", 
                RowBox[{"-", "10"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"\[Phi]", ",", "10"}], "}"}]}], "}"}], "]"}]}], "}"}], 
         "]"}]}], "]"}]}], "]"}]}], "]"}]}]], "Input",
 CellLabel->
  "In[111]:=",ExpressionUUID->"276498a8-983f-441f-a53e-9fe48d12d628"],

Cell[BoxData[
 GraphicsBox[{{{}, {{}, {}, 
     {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
       NCache[
        Rational[1, 90], 0.011111111111111112`]], AbsoluteThickness[1.6], 
      LineBox[CompressedData["
1:eJw10QlQE1cYB/AQkIRDTICQhBCpiNcIWiugSGWfOraiAioq2oqggDpVi0q1
CIIWNCJV8ECHK15VvKroiNIIdR9EEEQOiwdHVQTCTQjJ5iBB0ypfvpmdnTf/
/X7/N7MTNsesiqbTaLRz/z+f3zXPP48Q/xO/k/1bv4rc8mWE2Oe2m6WOYSBp
X0aIm1NZYVnROjIn+/O44K0ela3TK3Xk7C/jgo3zZ7S4/5+PegJckpjJ2TdH
B54Au5llZPobtOAJ8K0lysbLZVrwnDHDlRZZlqoFzxnL+/5c1xOkBY+P40Lk
zcWOWvD42LeTmR7crAGPj+2OeG/OvaABj4dFB1/5nY/SgMfD3LKK1NXTNOBx
cUkyx/hoQA0eF4+VHqqvuacGj4trJZKa1L1q8JywU5jP4q65avCcsHDGWnm7
gQKPg3feMzyLe0yBx8G7K0PoFw5R4HHwg0RRYdBCCjxHTEy1kSaZU+A54sya
3enuT1TgOWAX+/f5sw+b/ocD9mh/+LN4kQo8ByzynnhnBV0Fnj3+rqWI74uV
4NnjqHeN1f6JSvDYeIL4bdFiXyV4bEzJrjl7UkPgsbF8+xuq9vYQeCzMiy7L
MkYPgcfCpUcqN5xwMeXj8NzwomT0QgG+He7a+CmqJUUBnh2eHW5hcPZSwP5Y
XNgYeDBGOgj9tjjQ63daLW8QPBvM/pUzQbJVDp41nuQ5fCu7YAA8a9yRccn9
3WA/eFa4O+XZOeOUfvCYeOvHsJWi0D7wGFjKlvvYJfWCZ4lj7FasXZrbA54l
9h0UH2MUdIM3Bl+9Y0Z5SrrAs8DZdd2BpZJO8Mzxxtli29a7MvDoeFyAOLX0
fAd4dHxvt1vo/ZR28Mywj1Tg5BTRBh4N72qK7F3v9QFyI6mYWT2gp7WC/5H8
cW9UkuH4W/BGyIprmkeN1i2wryf99kjr8g80Qr+OnMJ/ce1g+yvwtOSbnrRv
41EDeGrSc4q851pmPXgUWff0ybJJZdXgKUnu+2TbuMAK8BRkZbFQ71uDIZeT
T6vIuizRQ/D7SKrtehqjIh+8blI1OLaq/2IA7HeQ+/rWF26yzidG+z+Qazb0
RrYufEiM5v+Scx6XLJ9eiolR/zW55ZxXAiOighj16sk7lg3+XiPVxGiflJQw
E/1kVfXg3SCTasOCNp1uMJ2JhMbrVOza16bvCWPw+CyZY5PJI0Y29kxc/bzF
1EcsodG8v054Z7oPof17zpTyjFbTfYlY8cX4my0fIO8gzG84SM+6toPXTXwV
Jtyx7YcO6OsjZI9yKelRGfhyYqh56h838zthX0EYZcWPN+d3Qa4kErx/Oh56
vBs8igjat843fFsP9KsJH/Eai2i/XvC1xNXtHkHRjD7wdEQrEfNE+rwPPD1x
K3KLv/nxfvBGiJN7zAS7Fw+A95GoOpZ8af3wAHhGYpZ8/jyL63LYp6GGC6EK
ycpByM2QqHZNbrlmEDw6itUR9EfLFNBPRzO7ZSKrHAX45kipfBsc16kAzwLZ
LHUo8Zg1BN4YlHO52Xx5/BB4lmhlulQyXDoEniXqvpsXFcpUgsdAp31TvA8H
KsFjoqIqenPeKSV4Vuh1ybRtxS+V4Fmj1nTuJq2TCjxrJOQ8L49epwLPBsVz
K3z52SrwbFFfzOSZbk0q8Mai9ZwUXgaPAs8OtQ1MFu8IpcCzQznzPGvKz1Lg
jUOi02khVxoo2GchpbzwCouthpyFLsucp9kHqcFjo4/5rMiCNDX0s9Ht8c4s
eYUafDYyO1u9uIGuAc8eudQmp0X6a8CzR7X0Xb2X92vAc0D1zFVWZws14Dkg
q+kRs+YPasBzQOxdT8PPT9OC54hiM7jBxZFa8BxRXjrz0DmxFjwOagp/gr55
owWPg1gLePdPsnTgcVDoBPGL+wE68JxQjqv7L+JkHXhOaMGZ2JDgYh14XCRf
ddS2WqUDj4saOzkT7T2GweOiyJZPFpOjhsHjoXbJFiYzbxg8Hipft+eApGEY
PD5KPeQW62ejB4+PFjnyz2Qs1IPHR0cKjtg92K8HzxklsXyM9+/qwXNGCte6
T3u69OAJkGvTzvQ14w3gCVDay5ad/SEG8ATIMbvNPOuEATwXlKxvKwgoMoDn
grx9GBHuLiPgCZGAG9FEXTV5QnTqr7ye79M+gSdE97Zvco3L1RD/Abr3b0U=

       "]]}, 
     {RGBColor[0.880722, 0.611041, 0.142051], PointSize[
       NCache[
        Rational[1, 90], 0.011111111111111112`]], AbsoluteThickness[1.6], 
      Dashing[{Small, Small}], LineBox[CompressedData["
1:eJw11gtwjFcUB/DNSjbykOwmu9lsdjejarQxHRNp0ZFwjzRtqVJNBq3HMKQY
NWLqPYqplmjjFRFaU9OKt9FSTAXhOwahCJvQSEWFPCTktbt5kSZSnL87k8l8
c/f+zve495zz2rS05C/0Op1u6/O/F/8Lrr0YTl5wfEJs1ja3NuPlcPKq8YMK
XOnNmu7lcLLjd+76x9ikbf/pxXDwm7kFPRcPaNLefjkc/Mn8U+6rjV5NPDuP
//WN9nX5Xnh2XpPRsnR9theenXdNn7dh7gwvvChOXHbcsmOgF14Uj6v27L5k
eOXZuLh0xeSzxR54Nm6dV75/3V4PPBtnLNoW0m+RB14kTywtUznve+A9vx42
+Ey12QPPyleShid2Vrx6Xiu/l+ya9uCoG56Vv9r6LGfzN254EWxZu2Ju6Bg3
vAh+Z5ctcly0G56FZ5ZM+u2vkkZ4Fk6bXfjd/AWN8CzcFZuXsye0EZ6Zr6RP
2jfxYAM8MxcMa/93U1IDvHD+sU9yHN2rhxfO90v79E5dXA8vnDlpS25raD28
MN635/Asz746eGHcHvc4eJSqg2fipobsCz7FtfBMHLTzdolhTi08E9ekD92e
7FMLz8htK/q9eyf7MTwj5/sOz8yMeYz5UI5f2r1jdt4j+CEcv0vvP370I3gh
3LowJTaprAbre/C2K1O3RKfVIH4wtw1Ys+VGZzW8IL71mWPxkIxqeIFs/yGx
20hrNbxAHuHqtN/e+RBeAMf7bZqS1/chvO48ZdzIQtcfVfD8Wfvw6+yqgVXw
DJyri7mcf7ISnoHnHOu7JH5wJTw/Nh+Z5PLLrYDny/ZzliUVcRXwurGt4s+4
DQfL4en50dTT5/Oiy+Hp+azPLFvvjQ/g+bDh2+i8Jf/dh6fjtjFnls2bfh/z
XZrzyIxf1q4vg9+pBaX4Hk/96B68Dm3gtY1NXR13sb5d+3JzwOG23aWI/0R7
60L9/q5hd+C1aVmmlRuqbpbAa9EqTgdUZU24Da9Z+6F69Mfm4r/hebU0Y5hP
5ge34Lm18NTV2WMPFWG+QYvJay+77l8Iv1a7UZ6TYj52HV6NNr//jqkzk65i
faXm3V7oiLl4CfEfaOmRBck9B13A/F3NLythYeLPDL9YO91rSMKE+pPwXFpq
0MURQzOPIt55bfqee6cufroX3gHtybF1CU8vr391rYrkWuH3apX8XsFTn4un
EE9dkngK96N85H4U7lctl/vFfKVqkeeBV6Oy5HkRr1YVyfuA36Ds8r6w3q0s
8j4x71Wr5X3Da1Zp8j0Qv0XVy/eC36ZWyveE90S9Lt8bXrtaJvsBXoeKlf0C
r1P1kf0Er0v5yX7Deh09k/2IeR8yyn6Fp6cTsp8RX081st/hdyO7nAd4vmSU
8wLPj+xynuAZaLKcN3gGOiHnEZ4/nZPzCq87TZTzDC+Axsp5hxdIIyUfwAuk
XpIv4AVRvuQTeMH0VPINvB6UJfkIXgg1S76CF0KDJJ/BC6UEyXdYb6Tzkg8x
b6QOyZfwTFQi+RTxTaSXfAvfRK2Sj+GFUZ3ka3hhdEjyObxwKpR8Dy+cbko9
gBdO2VIv4JnpqtQTeGYqknoDz0JuqUfwLDRH6hU8C82WegYvgvpLvYMXQcFS
D+FZCfUSnpVGSD2FZyWX1Ft4kTRN6jG8SJop9Rqejb6Xeg7PRnVS7+HZqEr6
AXhRlCz9ArwoSpB+Ap6dDki/Ac9OGdKPwLNTivQr8Bw0SvoZeA7qLf0OPCdF
ST8Ez0lrpV+C56Tl0k+p/wHyfnI9
       "]]}, 
     {RGBColor[0.560181, 0.691569, 0.194885], PointSize[
       NCache[
        Rational[1, 90], 0.011111111111111112`]], AbsoluteThickness[1.6], 
      Dashing[{Small, Small}], LineBox[CompressedData["
1:eJw11ntQVHUUB/DdRVYeiiy7y75Yzf5omsY341DqeI9JZjWaWoZlq6WjjkLq
mPgcMB3FEs0IEjMctHzE+AhLhDS8x1lThMQnpIJkBMqA4AoLy77Y8v6+/WZ2
du789vc5d+/9/c45QxesmLVIo1Kp9vz3efZ99Y9nw84pa59/r+KIR16sDDsn
dV8NPXlOzSpl2Lm1btXRxTP75H3fPhsJ/HK6e2iJOiQnKiOBD2YMN9Rs65OF
Z+OiI3nHN8/tg2fjESlbD5ptfbLwbLwi7375nAdBeFb+PWKCpvKHIDwrz3Ya
j6UuCcKzcMGu4p9OvRSEZ+HBVTl/nW8PwLPwffW9K1nFAXhmHmhtXRb5aQCe
mS+XlRkmjw3AM/HRtNqSUR4/PBOvzC78vrrMD8/EZBpcY97ghxfPJR9mOKPG
++HF8xvxY6YV+n3wjKzd4N13/ZwPnpHTTl3w5m/0wTNyUlXm8fZxPngG/qWx
3+kKrxeegd+elZA9uMwLT8/TXB/XNKZ74en5oPtGSJvohafn9LQvb65/0gsv
jocPyXK/cKwXXhx/xiMX9izqhafjTa79jVVDeuHpeLP/bFrWHQ88Hb9+21EU
2u2BF8s/ljdujJ7igRfLfOW7krW+HswP4rrkSX3RJ3rgx/D57e1hOxw98GI4
szhbczK6B+sHckb/bSdHlnYj/gDeMtq53Tm/G140r5luz0kI74YXxZbd1xwd
R9zwopj2Buc+SXbDi+RF7+vH1TV0wYvgqryzE9NXd8Hrz8W1M5buCO+Cp+XF
M9oSu3I64Wn51ciLf+ZZOuGF86FRM1ULCp7C68cF5V8//MD6FF4YW8cvrNuZ
64Kn4dNLw9/RRbjgaThR3WK2uDrgqXlehupRyuV2eCoO7Rx9buqex5gPydWr
V2Z85GiDH5Rz7zobbPZWeAF52JW1wwM1LVjvk6cOnZO99fNHiN8rm61j85LG
PoTnkW0XXlz/TX0TvG755sR1u6yb/oHnltWf5E6YaG+E1ykvcS13rCp9AM8l
f5V87dhrBQ2Y75BdnKxOddbBb5MrJ5lzDM134LXIJYFL9T3qWqxvkvWO3fXn
rLcQ/2+5uLTFGzbqOubr5TfDLqVUb62EXysXnmmb/fjQRXjX5bvpmTc6tpQj
nlP+ufILh+fMKXhF8qTq21nuwvz/r6U5Vcq1hN9LN8TvJXiSRXgS4knaUiWe
hPuRijTK/Ui4X6lZ3C/mmyT8H3gtUq74v4jXJv0mngf8DumkeF5Y75KWieeJ
+U4pVTxveG7Jnaa8D8TvllrF+4LvkWLE+4TXK121KO8bnk/CfoAXkO5XKPsF
XlBqEvsJXkjypyv7DetV9Chb2Y+YV9P8TGW/wtPQPJWynxFfQ81iv8MPo85x
ynmA14+Wi/MCL5xOiPMET0uTxXmDp6WV4jzC60/3xHmFF0GN4jzDi6S3xHmH
F0Xt+Uo+gBdFyBfwoqlB5BN4A2iEyDfwBtJ0kY/gxRCLfAUvhg5nKfkM3iBK
nKLkO6yPpZwKJR9iPpZms5Iv4eko9ZaSTxFfR4dFvoWvo80iH8OLo9UiX8OL
o2Ein8PT00aR7+Hp6YCoB/D09K6oF/AMNEXUE3gG+lXUG3hGGibqETwjrRH1
Cp6RAuuVegYvnqaLegcvnspFPYRnoldEvYRnonWinsIzUb6ot/DMVC3qMTwz
BS1KvYZnoWZRz+FZyCDqPTwL7RX9ADwrOUS/AM9Kd0U/Ac9GS0W/Ac9GY0Q/
As9GB0S/Ai+B9ot+Bl4CJYl+B56dOkU/BM9OiaJfIvRTNFf0U9K/n/SF+g==

       "]]}}, {{}, {}}}, 
   {Dashing[{Small, Small}], LineBox[{{1, -10}, {1, 10}}]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox[
    "\"\\!\\(\\*SuperscriptBox[OverscriptBox[\\(v\\), \\(~\\)], \
\\(eff\\)]\\)(v)\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{
   "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox[
   "\"\[Phi]=1, \\!\\(\\*SubscriptBox[\\(\[Beta]\\), \\(L\\)]\\)=1, \
\\!\\(\\*SubscriptBox[\\(P\\), \\(L\\)]\\)=1/2, \\!\\(\\*SubscriptBox[\\(\
\[Beta]\\), \\(R\\)]\\)=1, \\!\\(\\*SubscriptBox[\\(P\\), \\(R\\)]\\)=2\"", 
    TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-2.1410827622154573`, 2.1410827622154556`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->
  "Out[111]=",ExpressionUUID->"fe0c157f-f43e-4b59-abc6-6e64a984aa7d"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}], ",", 
      RowBox[{"numpoints", "=", "150"}], ",", 
      RowBox[{"\[Phi]", "=", "3"}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"vlist", "=", 
        RowBox[{"\[CapitalDelta]x", " ", 
         RowBox[{"Range", "[", 
          RowBox[{
           RowBox[{"-", 
            FractionBox[
             RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
           FractionBox[
            RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], "}"}], ",", 
      RowBox[{"Show", "[", 
       RowBox[{
        RowBox[{"ListLinePlot", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Transpose", "[", 
             RowBox[{"{", 
              RowBox[{"vlist", ",", 
               SubscriptBox["vefftilde", "\[Phi]"]}], "}"}], "]"}], ",", 
            RowBox[{"Transpose", "[", 
             RowBox[{"{", 
              RowBox[{"vlist", ",", 
               SubscriptBox["vefftilde", 
                RowBox[{
                 SubscriptBox["\[Beta]", "L"], ",", 
                 SubscriptBox["P", "L"], ",", "\[CapitalDelta]x"}]]}], "}"}], 
             "]"}], ",", 
            RowBox[{"Transpose", "[", 
             RowBox[{"{", 
              RowBox[{"vlist", ",", 
               SubscriptBox["vefftilde", 
                RowBox[{
                 SubscriptBox["\[Beta]", "R"], ",", 
                 SubscriptBox["P", "R"], ",", "\[CapitalDelta]x"}]]}], "}"}], 
             "]"}]}], "}"}], ",", 
          RowBox[{"PlotStyle", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{"Automatic", ",", "Dashed", ",", "Dashed"}], "}"}]}], ",", 
          RowBox[{"AxesLabel", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{
            "\"\<v\>\"", ",", 
             "\"\<\!\(\*SuperscriptBox[OverscriptBox[\(v\), \(~\)], \
\(eff\)]\)(v)\>\""}], "}"}]}], ",", 
          RowBox[{"PlotLabel", "\[Rule]", 
           RowBox[{"\"\<\[Phi]=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             RowBox[{"InputForm", "[", "\[Phi]", "]"}], "]"}], "<>", 
            "\"\<, \!\(\*SubscriptBox[\(\[Beta]\), \(L\)]\)=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             SubscriptBox["\[Beta]", "L"], "]"}], "<>", 
            "\"\<, \!\(\*SubscriptBox[\(P\), \(L\)]\)=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             RowBox[{"InputForm", "[", 
              SubscriptBox["P", "L"], "]"}], "]"}], "<>", 
            "\"\<, \!\(\*SubscriptBox[\(\[Beta]\), \(R\)]\)=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             SubscriptBox["\[Beta]", "R"], "]"}], "<>", 
            "\"\<, \!\(\*SubscriptBox[\(P\), \(R\)]\)=\>\"", "<>", 
            RowBox[{"ToString", "[", 
             RowBox[{"InputForm", "[", 
              SubscriptBox["P", "R"], "]"}], "]"}]}]}]}], "]"}], ",", 
        RowBox[{"Graphics", "[", 
         RowBox[{"{", 
          RowBox[{"Dashed", ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"\[Phi]", ",", 
                RowBox[{"-", "10"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"\[Phi]", ",", "10"}], "}"}]}], "}"}], "]"}]}], "}"}], 
         "]"}]}], "]"}]}], "]"}]}], "]"}]}]], "Input",
 CellLabel->
  "In[112]:=",ExpressionUUID->"66e06bbd-3177-4991-a436-8bb4e480b146"],

Cell[BoxData[
 GraphicsBox[{{{}, {{}, {}, 
     {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
       NCache[
        Rational[1, 90], 0.011111111111111112`]], AbsoluteThickness[1.6], 
      LineBox[CompressedData["
1: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
pA==
       "]]}, 
     {RGBColor[0.880722, 0.611041, 0.142051], PointSize[
       NCache[
        Rational[1, 90], 0.011111111111111112`]], AbsoluteThickness[1.6], 
      Dashing[{Small, Small}], LineBox[CompressedData["
1:eJw11gtwjFcUB/DNSjbykOwmu9lsdjejarQxHRNp0ZFwjzRtqVJNBq3HMKQY
NWLqPYqplmjjFRFaU9OKt9FSTAXhOwahCJvQSEWFPCTktbt5kSZSnL87k8l8
c/f+zve495zz2rS05C/0Op1u6/O/F/8Lrr0YTl5wfEJs1ja3NuPlcPKq8YMK
XOnNmu7lcLLjd+76x9ikbf/pxXDwm7kFPRcPaNLefjkc/Mn8U+6rjV5NPDuP
//WN9nX5Xnh2XpPRsnR9theenXdNn7dh7gwvvChOXHbcsmOgF14Uj6v27L5k
eOXZuLh0xeSzxR54Nm6dV75/3V4PPBtnLNoW0m+RB14kTywtUznve+A9vx42
+Ey12QPPyleShid2Vrx6Xiu/l+ya9uCoG56Vv9r6LGfzN254EWxZu2Ju6Bg3
vAh+Z5ctcly0G56FZ5ZM+u2vkkZ4Fk6bXfjd/AWN8CzcFZuXsye0EZ6Zr6RP
2jfxYAM8MxcMa/93U1IDvHD+sU9yHN2rhxfO90v79E5dXA8vnDlpS25raD28
MN635/Asz746eGHcHvc4eJSqg2fipobsCz7FtfBMHLTzdolhTi08E9ekD92e
7FMLz8htK/q9eyf7MTwj5/sOz8yMeYz5UI5f2r1jdt4j+CEcv0vvP370I3gh
3LowJTaprAbre/C2K1O3RKfVIH4wtw1Ys+VGZzW8IL71mWPxkIxqeIFs/yGx
20hrNbxAHuHqtN/e+RBeAMf7bZqS1/chvO48ZdzIQtcfVfD8Wfvw6+yqgVXw
DJyri7mcf7ISnoHnHOu7JH5wJTw/Nh+Z5PLLrYDny/ZzliUVcRXwurGt4s+4
DQfL4en50dTT5/Oiy+Hp+azPLFvvjQ/g+bDh2+i8Jf/dh6fjtjFnls2bfh/z
XZrzyIxf1q4vg9+pBaX4Hk/96B68Dm3gtY1NXR13sb5d+3JzwOG23aWI/0R7
60L9/q5hd+C1aVmmlRuqbpbAa9EqTgdUZU24Da9Z+6F69Mfm4r/hebU0Y5hP
5ge34Lm18NTV2WMPFWG+QYvJay+77l8Iv1a7UZ6TYj52HV6NNr//jqkzk65i
faXm3V7oiLl4CfEfaOmRBck9B13A/F3NLythYeLPDL9YO91rSMKE+pPwXFpq
0MURQzOPIt55bfqee6cufroX3gHtybF1CU8vr391rYrkWuH3apX8XsFTn4un
EE9dkngK96N85H4U7lctl/vFfKVqkeeBV6Oy5HkRr1YVyfuA36Ds8r6w3q0s
8j4x71Wr5X3Da1Zp8j0Qv0XVy/eC36ZWyveE90S9Lt8bXrtaJvsBXoeKlf0C
r1P1kf0Er0v5yX7Deh09k/2IeR8yyn6Fp6cTsp8RX081st/hdyO7nAd4vmSU
8wLPj+xynuAZaLKcN3gGOiHnEZ4/nZPzCq87TZTzDC+Axsp5hxdIIyUfwAuk
XpIv4AVRvuQTeMH0VPINvB6UJfkIXgg1S76CF0KDJJ/BC6UEyXdYb6Tzkg8x
b6QOyZfwTFQi+RTxTaSXfAvfRK2Sj+GFUZ3ka3hhdEjyObxwKpR8Dy+cbko9
gBdO2VIv4JnpqtQTeGYqknoDz0JuqUfwLDRH6hU8C82WegYvgvpLvYMXQcFS
D+FZCfUSnpVGSD2FZyWX1Ft4kTRN6jG8SJop9Rqejb6Xeg7PRnVS7+HZqEr6
AXhRlCz9ArwoSpB+Ap6dDki/Ac9OGdKPwLNTivQr8Bw0SvoZeA7qLf0OPCdF
ST8Ez0lrpV+C56Tl0k+p/wHyfnI9
       "]]}, 
     {RGBColor[0.560181, 0.691569, 0.194885], PointSize[
       NCache[
        Rational[1, 90], 0.011111111111111112`]], AbsoluteThickness[1.6], 
      Dashing[{Small, Small}], LineBox[CompressedData["
1:eJw11ntQVHUUB/DdRVYeiiy7y75Yzf5omsY341DqeI9JZjWaWoZlq6WjjkLq
mPgcMB3FEs0IEjMctHzE+AhLhDS8x1lThMQnpIJkBMqA4AoLy77Y8v6+/WZ2
du789vc5d+/9/c45QxesmLVIo1Kp9vz3efZ99Y9nw84pa59/r+KIR16sDDsn
dV8NPXlOzSpl2Lm1btXRxTP75H3fPhsJ/HK6e2iJOiQnKiOBD2YMN9Rs65OF
Z+OiI3nHN8/tg2fjESlbD5ptfbLwbLwi7375nAdBeFb+PWKCpvKHIDwrz3Ya
j6UuCcKzcMGu4p9OvRSEZ+HBVTl/nW8PwLPwffW9K1nFAXhmHmhtXRb5aQCe
mS+XlRkmjw3AM/HRtNqSUR4/PBOvzC78vrrMD8/EZBpcY97ghxfPJR9mOKPG
++HF8xvxY6YV+n3wjKzd4N13/ZwPnpHTTl3w5m/0wTNyUlXm8fZxPngG/qWx
3+kKrxeegd+elZA9uMwLT8/TXB/XNKZ74en5oPtGSJvohafn9LQvb65/0gsv
jocPyXK/cKwXXhx/xiMX9izqhafjTa79jVVDeuHpeLP/bFrWHQ88Hb9+21EU
2u2BF8s/ljdujJ7igRfLfOW7krW+HswP4rrkSX3RJ3rgx/D57e1hOxw98GI4
szhbczK6B+sHckb/bSdHlnYj/gDeMtq53Tm/G140r5luz0kI74YXxZbd1xwd
R9zwopj2Buc+SXbDi+RF7+vH1TV0wYvgqryzE9NXd8Hrz8W1M5buCO+Cp+XF
M9oSu3I64Wn51ciLf+ZZOuGF86FRM1ULCp7C68cF5V8//MD6FF4YW8cvrNuZ
64Kn4dNLw9/RRbjgaThR3WK2uDrgqXlehupRyuV2eCoO7Rx9buqex5gPydWr
V2Z85GiDH5Rz7zobbPZWeAF52JW1wwM1LVjvk6cOnZO99fNHiN8rm61j85LG
PoTnkW0XXlz/TX0TvG755sR1u6yb/oHnltWf5E6YaG+E1ykvcS13rCp9AM8l
f5V87dhrBQ2Y75BdnKxOddbBb5MrJ5lzDM134LXIJYFL9T3qWqxvkvWO3fXn
rLcQ/2+5uLTFGzbqOubr5TfDLqVUb62EXysXnmmb/fjQRXjX5bvpmTc6tpQj
nlP+ufILh+fMKXhF8qTq21nuwvz/r6U5Vcq1hN9LN8TvJXiSRXgS4knaUiWe
hPuRijTK/Ui4X6lZ3C/mmyT8H3gtUq74v4jXJv0mngf8DumkeF5Y75KWieeJ
+U4pVTxveG7Jnaa8D8TvllrF+4LvkWLE+4TXK121KO8bnk/CfoAXkO5XKPsF
XlBqEvsJXkjypyv7DetV9Chb2Y+YV9P8TGW/wtPQPJWynxFfQ81iv8MPo85x
ynmA14+Wi/MCL5xOiPMET0uTxXmDp6WV4jzC60/3xHmFF0GN4jzDi6S3xHmH
F0Xt+Uo+gBdFyBfwoqlB5BN4A2iEyDfwBtJ0kY/gxRCLfAUvhg5nKfkM3iBK
nKLkO6yPpZwKJR9iPpZms5Iv4eko9ZaSTxFfR4dFvoWvo80iH8OLo9UiX8OL
o2Ein8PT00aR7+Hp6YCoB/D09K6oF/AMNEXUE3gG+lXUG3hGGibqETwjrRH1
Cp6RAuuVegYvnqaLegcvnspFPYRnoldEvYRnonWinsIzUb6ot/DMVC3qMTwz
BS1KvYZnoWZRz+FZyCDqPTwL7RX9ADwrOUS/AM9Kd0U/Ac9GS0W/Ac9GY0Q/
As9GB0S/Ai+B9ot+Bl4CJYl+B56dOkU/BM9OiaJfIvRTNFf0U9K/n/SF+g==

       "]]}}, {{}, {}}}, 
   {Dashing[{Small, Small}], LineBox[{{3, -10}, {3, 10}}]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox[
    "\"\\!\\(\\*SuperscriptBox[OverscriptBox[\\(v\\), \\(~\\)], \
\\(eff\\)]\\)(v)\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{
   "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox[
   "\"\[Phi]=3, \\!\\(\\*SubscriptBox[\\(\[Beta]\\), \\(L\\)]\\)=1, \
\\!\\(\\*SubscriptBox[\\(P\\), \\(L\\)]\\)=1/2, \\!\\(\\*SubscriptBox[\\(\
\[Beta]\\), \\(R\\)]\\)=1, \\!\\(\\*SubscriptBox[\\(P\\), \\(R\\)]\\)=2\"", 
    TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-2.1410827622154573`, 2.1410827622154556`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->
  "Out[112]=",ExpressionUUID->"1064c17b-799e-4d19-908c-9861e5360d27"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Compute G(v)", "Subsubsection",ExpressionUUID->"94b1fa9a-8dc2-4f03-8dc5-dbbbdd9908a5"],

Cell[BoxData[
 RowBox[{
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}], ",", 
      RowBox[{"numpoints", "=", "150"}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"vlist", "=", 
        RowBox[{"\[CapitalDelta]x", " ", 
         RowBox[{"Range", "[", 
          RowBox[{
           RowBox[{"-", 
            FractionBox[
             RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
           FractionBox[
            RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], "}"}], ",", 
      RowBox[{
       SubscriptBox["G", "list"], "=", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"\[Phi]", ",", 
           RowBox[{
            RowBox[{"Interpolation", "[", 
             RowBox[{"Transpose", "[", 
              RowBox[{"{", 
               RowBox[{"vlist", ",", 
                SubscriptBox["vefftilde", "\[Phi]"]}], "}"}], "]"}], "]"}], 
            "[", "\[Phi]", "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"\[Phi]", ",", 
           RowBox[{"Select", "[", 
            RowBox[{
             SubscriptBox["\[Phi]v", "list"], ",", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 RowBox[{
                 "vlist", "\[LeftDoubleBracket]", "1", 
                  "\[RightDoubleBracket]"}], "\[LessEqual]", "#"}], "\[And]", 
                RowBox[{"#", "\[LessEqual]", 
                 RowBox[{"vlist", "\[LeftDoubleBracket]", 
                  RowBox[{"-", "1"}], "\[RightDoubleBracket]"}]}]}], ")"}], 
              "&"}]}], "]"}]}], "}"}]}], "]"}]}]}], "]"}]}], "]"}], 
  ";"}]], "Input",
 CellLabel->
  "In[113]:=",ExpressionUUID->"de0b9b6c-20fc-4c6b-97c0-84761802f294"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"\[CapitalDelta]x", "=", 
      FractionBox["1", "10"]}], ",", 
     RowBox[{"numpoints", "=", "150"}]}], "}"}], ",", 
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"vlist", "=", 
       RowBox[{"\[CapitalDelta]x", " ", 
        RowBox[{"Range", "[", 
         RowBox[{
          RowBox[{"-", 
           FractionBox[
            RowBox[{"numpoints", "-", "1"}], "2"]}], ",", 
          FractionBox[
           RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], "}"}], ",", 
     RowBox[{"Show", "[", 
      RowBox[{
       RowBox[{"ListLinePlot", "[", 
        RowBox[{
         SubscriptBox["G", "list"], ",", 
         RowBox[{"PlotRange", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"Automatic", ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "2"}], ",", "2"}], "}"}]}], "}"}]}], ",", 
         RowBox[{"AxesLabel", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"\"\<\[Phi]\>\"", ",", "\"\<G(\[Phi])\>\""}], "}"}]}], ",", 
         RowBox[{"PlotLabel", "\[Rule]", 
          RowBox[{
          "\"\<dashed: \!\(\*SubsuperscriptBox[OverscriptBox[\(v\), \(~\)], \
\(\[PlusMinus]\), \(eff\)]\)(\[Phi])\>\"", "<>", 
           "\"\<, \!\(\*SubscriptBox[\(\[Beta]\), \(L\)]\)=\>\"", "<>", 
           RowBox[{"ToString", "[", 
            SubscriptBox["\[Beta]", "L"], "]"}], "<>", 
           "\"\<, \!\(\*SubscriptBox[\(P\), \(L\)]\)=\>\"", "<>", 
           RowBox[{"ToString", "[", 
            RowBox[{"InputForm", "[", 
             SubscriptBox["P", "L"], "]"}], "]"}], "<>", 
           "\"\<, \!\(\*SubscriptBox[\(\[Beta]\), \(R\)]\)=\>\"", "<>", 
           RowBox[{"ToString", "[", 
            SubscriptBox["\[Beta]", "R"], "]"}], "<>", 
           "\"\<, \!\(\*SubscriptBox[\(P\), \(R\)]\)=\>\"", "<>", 
           RowBox[{"ToString", "[", 
            RowBox[{"InputForm", "[", 
             SubscriptBox["P", "R"], "]"}], "]"}]}]}]}], "]"}], ",", 
       RowBox[{"ListLinePlot", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Transpose", "[", 
            RowBox[{"{", 
             RowBox[{"vlist", ",", 
              SubscriptBox["vefftilde", 
               RowBox[{
                SubscriptBox["\[Beta]", "L"], ",", 
                SubscriptBox["P", "L"], ",", "\[CapitalDelta]x"}]]}], "}"}], 
            "]"}], ",", 
           RowBox[{"Transpose", "[", 
            RowBox[{"{", 
             RowBox[{"vlist", ",", 
              SubscriptBox["vefftilde", 
               RowBox[{
                SubscriptBox["\[Beta]", "R"], ",", 
                SubscriptBox["P", "R"], ",", "\[CapitalDelta]x"}]]}], "}"}], 
            "]"}]}], "}"}], ",", 
         RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
         RowBox[{"PlotStyle", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{
               RowBox[{"ColorData", "[", "97", "]"}], "[", "2", "]"}], ",", 
              "Dashed"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{
               RowBox[{"ColorData", "[", "97", "]"}], "[", "3", "]"}], ",", 
              "Dashed"}], "}"}]}], "}"}]}]}], "]"}]}], "]"}]}], "]"}]}], 
  "]"}]], "Input",
 CellLabel->
  "In[114]:=",ExpressionUUID->"c7aa2a3b-8b49-4ace-99c3-da035ba0c82b"],

Cell[BoxData[
 GraphicsBox[{{{}, {{}, {}, 
     {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
       NCache[
        Rational[1, 60], 0.016666666666666666`]], AbsoluteThickness[1.6], 
      LineBox[CompressedData["
1:eJw10WtIk2EUB/A13Jyiazq3d3POJiSlJZIhhlrvA5qmpaGUF8TMahJ0UT8o
FiGIlPdEU6OIUUFZ2JxoalT4PmHZ7EMXK20opuJlbrZe3cxXXXbB8xw4HH4c
DufDP+BUfqqWz+Pxov71/7lZarx7nPljktiZTfthSn/s+aRpCazCiuJHdRfz
iH3xY27fK6NtEazER5tjnCHFxAq83602tsTJgin8oKa/sKGMWI411fWCkwJi
GU6WPC2t2PoT7INDPJq3y71sYCnWLGS0DYt/gL2xJejAwRrXBbAXvqMt70pc
tYAlOCt7IVP/fR4sxqmed1Xp3WawB+632Kig/DmwO66JCi/kXGbBIlxpPqE3
5U2Dhbi+4UKTqXEK7ILVAz02/ZUJMB/vyu6xaHPGwDysEr87JDg8AnYyPg8V
K/dnPoE5JjjRsRydbAQ7GKPnV/8x7hmYZQpEkbqwlFywmckNL9DtWe+lNz3B
7NTSI6ocI/gjcy82QVgVN0STRGcDje2hyd/Inr5tK8miAsbJPY0p5kXXzCTY
TJvPZRQFtkyDWbosifdBFjwHdtAVta3915vmwRxdeSn9+JFJK9hJC+KUjWdc
beQ/EoZwhrfuLJiPDH2Bsk7+ItgFyakIXeMSsRC1vY+WRowsgUWoT7OSZui2
g93RXqnQ3F3tAHug+Df2XlHmMliMZC0ya4X/L7AETXl/nv0yRuyFOq+6pXXc
WAF7o4GspOHSWA4sRQ6nEW1hiX3Q4Gi7IubmKliGnsQPaJyRa2A5qkt5GTo4
SkyhtSHdhvLyOliB1FUGNkbuBCuRX5h19FoHsS+irNtWqYTfYBUqOnurL2OC
2A/tOJ3A2s9vgNXodXlBa17KBv0XHxQrRQ==
       "]]}}, {{}, {}}}, {{}, {{}, {}, 
     {RGBColor[0.880722, 0.611041, 0.142051], PointSize[
       NCache[
        Rational[1, 90], 0.011111111111111112`]], AbsoluteThickness[1.6], 
      Dashing[{Small, Small}], LineBox[CompressedData["
1:eJw11gtwjFcUB/DNSjbykOwmu9lsdjejarQxHRNp0ZFwjzRtqVJNBq3HMKQY
NWLqPYqplmjjFRFaU9OKt9FSTAXhOwahCJvQSEWFPCTktbt5kSZSnL87k8l8
c/f+zve495zz2rS05C/0Op1u6/O/F/8Lrr0YTl5wfEJs1ja3NuPlcPKq8YMK
XOnNmu7lcLLjd+76x9ikbf/pxXDwm7kFPRcPaNLefjkc/Mn8U+6rjV5NPDuP
//WN9nX5Xnh2XpPRsnR9theenXdNn7dh7gwvvChOXHbcsmOgF14Uj6v27L5k
eOXZuLh0xeSzxR54Nm6dV75/3V4PPBtnLNoW0m+RB14kTywtUznve+A9vx42
+Ey12QPPyleShid2Vrx6Xiu/l+ya9uCoG56Vv9r6LGfzN254EWxZu2Ju6Bg3
vAh+Z5ctcly0G56FZ5ZM+u2vkkZ4Fk6bXfjd/AWN8CzcFZuXsye0EZ6Zr6RP
2jfxYAM8MxcMa/93U1IDvHD+sU9yHN2rhxfO90v79E5dXA8vnDlpS25raD28
MN635/Asz746eGHcHvc4eJSqg2fipobsCz7FtfBMHLTzdolhTi08E9ekD92e
7FMLz8htK/q9eyf7MTwj5/sOz8yMeYz5UI5f2r1jdt4j+CEcv0vvP370I3gh
3LowJTaprAbre/C2K1O3RKfVIH4wtw1Ys+VGZzW8IL71mWPxkIxqeIFs/yGx
20hrNbxAHuHqtN/e+RBeAMf7bZqS1/chvO48ZdzIQtcfVfD8Wfvw6+yqgVXw
DJyri7mcf7ISnoHnHOu7JH5wJTw/Nh+Z5PLLrYDny/ZzliUVcRXwurGt4s+4
DQfL4en50dTT5/Oiy+Hp+azPLFvvjQ/g+bDh2+i8Jf/dh6fjtjFnls2bfh/z
XZrzyIxf1q4vg9+pBaX4Hk/96B68Dm3gtY1NXR13sb5d+3JzwOG23aWI/0R7
60L9/q5hd+C1aVmmlRuqbpbAa9EqTgdUZU24Da9Z+6F69Mfm4r/hebU0Y5hP
5ge34Lm18NTV2WMPFWG+QYvJay+77l8Iv1a7UZ6TYj52HV6NNr//jqkzk65i
faXm3V7oiLl4CfEfaOmRBck9B13A/F3NLythYeLPDL9YO91rSMKE+pPwXFpq
0MURQzOPIt55bfqee6cufroX3gHtybF1CU8vr391rYrkWuH3apX8XsFTn4un
EE9dkngK96N85H4U7lctl/vFfKVqkeeBV6Oy5HkRr1YVyfuA36Ds8r6w3q0s
8j4x71Wr5X3Da1Zp8j0Qv0XVy/eC36ZWyveE90S9Lt8bXrtaJvsBXoeKlf0C
r1P1kf0Er0v5yX7Deh09k/2IeR8yyn6Fp6cTsp8RX081st/hdyO7nAd4vmSU
8wLPj+xynuAZaLKcN3gGOiHnEZ4/nZPzCq87TZTzDC+Axsp5hxdIIyUfwAuk
XpIv4AVRvuQTeMH0VPINvB6UJfkIXgg1S76CF0KDJJ/BC6UEyXdYb6Tzkg8x
b6QOyZfwTFQi+RTxTaSXfAvfRK2Sj+GFUZ3ka3hhdEjyObxwKpR8Dy+cbko9
gBdO2VIv4JnpqtQTeGYqknoDz0JuqUfwLDRH6hU8C82WegYvgvpLvYMXQcFS
D+FZCfUSnpVGSD2FZyWX1Ft4kTRN6jG8SJop9Rqejb6Xeg7PRnVS7+HZqEr6
AXhRlCz9ArwoSpB+Ap6dDki/Ac9OGdKPwLNTivQr8Bw0SvoZeA7qLf0OPCdF
ST8Ez0lrpV+C56Tl0k+p/wHyfnI9
       "]]}, 
     {RGBColor[0.560181, 0.691569, 0.194885], PointSize[
       NCache[
        Rational[1, 90], 0.011111111111111112`]], AbsoluteThickness[1.6], 
      Dashing[{Small, Small}], LineBox[CompressedData["
1:eJw11ntQVHUUB/DdRVYeiiy7y75Yzf5omsY341DqeI9JZjWaWoZlq6WjjkLq
mPgcMB3FEs0IEjMctHzE+AhLhDS8x1lThMQnpIJkBMqA4AoLy77Y8v6+/WZ2
du789vc5d+/9/c45QxesmLVIo1Kp9vz3efZ99Y9nw84pa59/r+KIR16sDDsn
dV8NPXlOzSpl2Lm1btXRxTP75H3fPhsJ/HK6e2iJOiQnKiOBD2YMN9Rs65OF
Z+OiI3nHN8/tg2fjESlbD5ptfbLwbLwi7375nAdBeFb+PWKCpvKHIDwrz3Ya
j6UuCcKzcMGu4p9OvRSEZ+HBVTl/nW8PwLPwffW9K1nFAXhmHmhtXRb5aQCe
mS+XlRkmjw3AM/HRtNqSUR4/PBOvzC78vrrMD8/EZBpcY97ghxfPJR9mOKPG
++HF8xvxY6YV+n3wjKzd4N13/ZwPnpHTTl3w5m/0wTNyUlXm8fZxPngG/qWx
3+kKrxeegd+elZA9uMwLT8/TXB/XNKZ74en5oPtGSJvohafn9LQvb65/0gsv
jocPyXK/cKwXXhx/xiMX9izqhafjTa79jVVDeuHpeLP/bFrWHQ88Hb9+21EU
2u2BF8s/ljdujJ7igRfLfOW7krW+HswP4rrkSX3RJ3rgx/D57e1hOxw98GI4
szhbczK6B+sHckb/bSdHlnYj/gDeMtq53Tm/G140r5luz0kI74YXxZbd1xwd
R9zwopj2Buc+SXbDi+RF7+vH1TV0wYvgqryzE9NXd8Hrz8W1M5buCO+Cp+XF
M9oSu3I64Wn51ciLf+ZZOuGF86FRM1ULCp7C68cF5V8//MD6FF4YW8cvrNuZ
64Kn4dNLw9/RRbjgaThR3WK2uDrgqXlehupRyuV2eCoO7Rx9buqex5gPydWr
V2Z85GiDH5Rz7zobbPZWeAF52JW1wwM1LVjvk6cOnZO99fNHiN8rm61j85LG
PoTnkW0XXlz/TX0TvG755sR1u6yb/oHnltWf5E6YaG+E1ykvcS13rCp9AM8l
f5V87dhrBQ2Y75BdnKxOddbBb5MrJ5lzDM134LXIJYFL9T3qWqxvkvWO3fXn
rLcQ/2+5uLTFGzbqOubr5TfDLqVUb62EXysXnmmb/fjQRXjX5bvpmTc6tpQj
nlP+ufILh+fMKXhF8qTq21nuwvz/r6U5Vcq1hN9LN8TvJXiSRXgS4knaUiWe
hPuRijTK/Ui4X6lZ3C/mmyT8H3gtUq74v4jXJv0mngf8DumkeF5Y75KWieeJ
+U4pVTxveG7Jnaa8D8TvllrF+4LvkWLE+4TXK121KO8bnk/CfoAXkO5XKPsF
XlBqEvsJXkjypyv7DetV9Chb2Y+YV9P8TGW/wtPQPJWynxFfQ81iv8MPo85x
ynmA14+Wi/MCL5xOiPMET0uTxXmDp6WV4jzC60/3xHmFF0GN4jzDi6S3xHmH
F0Xt+Uo+gBdFyBfwoqlB5BN4A2iEyDfwBtJ0kY/gxRCLfAUvhg5nKfkM3iBK
nKLkO6yPpZwKJR9iPpZms5Iv4eko9ZaSTxFfR4dFvoWvo80iH8OLo9UiX8OL
o2Ein8PT00aR7+Hp6YCoB/D09K6oF/AMNEXUE3gG+lXUG3hGGibqETwjrRH1
Cp6RAuuVegYvnqaLegcvnspFPYRnoldEvYRnonWinsIzUb6ot/DMVC3qMTwz
BS1KvYZnoWZRz+FZyCDqPTwL7RX9ADwrOUS/AM9Kd0U/Ac9GS0W/Ac9GY0Q/
As9GB0S/Ai+B9ot+Bl4CJYl+B56dOkU/BM9OiaJfIvRTNFf0U9K/n/SF+g==

       "]]}}, {{}, {}}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"\[Phi]\"", TraditionalForm], 
    FormBox["\"G(\[Phi])\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{
   "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox[
   "\"dashed: \\!\\(\\*SubsuperscriptBox[OverscriptBox[\\(v\\), \\(~\\)], \\(\
\[PlusMinus]\\), \\(eff\\)]\\)(\[Phi]), \\!\\(\\*SubscriptBox[\\(\[Beta]\\), \
\\(L\\)]\\)=1, \\!\\(\\*SubscriptBox[\\(P\\), \\(L\\)]\\)=1/2, \
\\!\\(\\*SubscriptBox[\\(\[Beta]\\), \\(R\\)]\\)=1, \
\\!\\(\\*SubscriptBox[\\(P\\), \\(R\\)]\\)=2\"", TraditionalForm],
  PlotRange->{{-7.25, 7.25}, {-2., 2.}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {0, 0}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->
  "Out[114]=",ExpressionUUID->"b32d2ebe-769b-43fa-8d02-632fd96b76dd"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Visualize average density (inverse stretch) as function of x", \
"Subsubsection",ExpressionUUID->"0eb04a56-11ec-48db-8b43-de957c633233"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Module", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"xc", "=", 
     RowBox[{
      RowBox[{"Interpolation", "[", 
       SubscriptBox["G", "list"], "]"}], "[", 
      SubscriptBox["\[Phi]", 
       RowBox[{"c", ",", 
        SubscriptBox["\[Beta]", "L"], ",", 
        SubscriptBox["P", "L"], ",", 
        SubscriptBox["\[Beta]", "R"], ",", 
        SubscriptBox["P", "R"]}]], "]"}]}], "}"}], ",", 
   RowBox[{"Show", "[", 
    RowBox[{
     RowBox[{"ListLinePlot", "[", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Last", "[", "#", "]"}], ",", 
           RowBox[{"Abs", "[", 
            SubscriptBox["\[Nu]inv", 
             RowBox[{"First", "[", "#", "]"}]], "]"}]}], "}"}], "&"}], "/@", 
        SubscriptBox["G", "list"]}], ",", 
       RowBox[{"AxesLabel", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{
         "\"\<x\>\"", ",", 
          "\"\<\[LeftBracketingBar]\!\(\*SuperscriptBox[\(\[Nu]\), \
\(-1\)]\)(x)\[RightBracketingBar]\>\""}], "}"}]}]}], "]"}], ",", 
     RowBox[{"Plot", "[", 
      RowBox[{
       FractionBox["1", 
        RowBox[{"Abs", "[", 
         RowBox[{"\[Nu]func", "[", 
          RowBox[{
           SubscriptBox["\[Beta]", "L"], ",", 
           SubscriptBox["P", "L"]}], "]"}], "]"}]], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", 
         RowBox[{"-", "2"}], ",", 
         RowBox[{"-", "0.2"}]}], "}"}], ",", 
       RowBox[{"PlotStyle", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{
           RowBox[{"ColorData", "[", "97", "]"}], "[", "2", "]"}], ",", 
          "Dashed"}], "}"}]}]}], "]"}], ",", 
     RowBox[{"Plot", "[", 
      RowBox[{
       RowBox[{"{", 
        FractionBox["1", 
         RowBox[{"Abs", "[", 
          RowBox[{"\[Nu]func", "[", 
           RowBox[{
            SubscriptBox["\[Beta]", "R"], ",", 
            SubscriptBox["P", "R"]}], "]"}], "]"}]], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "1.3", ",", "2"}], "}"}], ",", 
       RowBox[{"PlotStyle", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{
           RowBox[{"ColorData", "[", "97", "]"}], "[", "3", "]"}], ",", 
          "Dashed"}], "}"}]}]}], "]"}], ",", 
     RowBox[{"Graphics", "[", 
      RowBox[{"{", 
       RowBox[{"Dashed", ",", 
        RowBox[{"Line", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"xc", ",", "0"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"xc", ",", "10"}], "}"}]}], "}"}], "]"}]}], "}"}], 
      "]"}]}], "]"}]}], "]"}]], "Input",
 CellLabel->
  "In[115]:=",ExpressionUUID->"827a5e15-8122-43f7-9288-23885bce92d7"],

Cell[BoxData[
 GraphicsBox[{{{}, {{}, {}, 
     {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
       NCache[
        Rational[1, 60], 0.016666666666666666`]], AbsoluteThickness[1.6], 
      LineBox[CompressedData["
1:eJwBYQKe/SFib1JlAgAAACUAAAACAAAALN6//9kQ878HFlXSHkzgPxetVLrh
2fK/Svtf3B5M4D8YdqiNbmbyvxP+cikfTOA/qfg4wcju8b9QFlP9H0zgP0+V
Q/wtdvG/dqI2bSVM4D89CYxEePzwv8sMGIoyTOA/pYvDcZGB8L/uU8ERfEzg
PyCKjwVgBfC/ZNf5xBZN4D9OELR+hw/vv7i0TDv3T+A/LQyVJBYR7r8EeOeM
M1XgPyDsWKvWDu2/Um41cypq4D/qKT5Fiwfsv1ulQPi5iuA/nGWDs0r56r87
IQgapvbgP1td7Fmt3+m/JyV3+66C4T9SDaAbV7XovxsTRSx2+uI/w+ruFylv
57+dbRsCLIjkP4s7NXH4BOa/bye5Cbbd5z+I6F6t2Wbkv2Dhg83hu+o/j5Ft
lNmS4r9gCKLITsbvPx3Gtu6tfOC/8tB4S+u28T8rXbbqZV/cvw1WiPnDgfQ/
Gw7KSAVL179Vr5yXPVT2PxSmGPei5dG/H+BrjsPv+D8qSvT1PE7Iv2qw6HCa
lfo/yA3VHtz4uL+He26f8/L8P3AIOp4yUWG/R2eDxJZ8/j9hNXCeMfu3P6v5
Rmy3ZwBAKGU/1xtfyD+q34rsizYBQKFESQaJRtI/S3nLN2KJAkDmJciuL07Y
P0dsQVz9igNAmu54Wxch3j/AlB1WXF0FQMAXv7uz5eE/TXaUCqTnBkDoa1h1
JZbkPyq8qxPSDQpAgU0AzxUq5z90Duv/PxgNQIeMp8OOlOk/RdEXg6U9EkCI
eVdVTOHrP1NPNsYerBZALNHKFmbK7D+FpvyiXn0dQIzMLIc=
       "]], LineBox[CompressedData["
1:eJwBUQGu/iFib1JlAgAAABQAAAACAAAAtyLB+JuA8j+FpvyiXn0dQKvOPBM3
1/I/cEsWaUAXFkC+IPdWr7XzPxBRXKJmKxFAMxMG6LWK9D/g632kr6wKQEfF
87cIWfU/F8Z9RfbSB0AVlhXrhx72PxmgLxuCSwVA4hLT5tTc9j82C1LqhFME
QLKFCVawk/c/vHqZMgaDA0DGW03WfkT4PxwVgaq6OwNA9PzIQAHw+D87QBVF
xgcDQMnbrhhDl/k/Ymi0Z+b4AkCsR8Yg/Dr6PxwFio697wJAjVG8L8nb+j+w
rvppke0CQPrSnv4Zevs/Pe3SB27sAkAdia/wQxb8P+CzsD007AJAHDLr24aw
/D80iMEnGuwCQBfrH/kXSf0/xSwnyRXsAkB1aJm+WOD9PyuH7REU7AJAJ2NJ
8PNs/j+9MF/TE+wCQMSDcKdmUf4/dhLOvRPsAkC8ypkn
       "]]}}, {{}, {}}}, {{{}, {}, 
     TagBox[
      {RGBColor[0.880722, 0.611041, 0.142051], AbsoluteThickness[1.6], 
       Opacity[1.], Dashing[{Small, Small}], LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAWIQnTdH+dv////3T85Yf0rO54G9xAZ/3iXbEfxDh6tV
PPIRfJ22Hfwpl/7B+SVi/6c+tUfw1yTPOOS24S+c/9NbbE21CIKvwjTPQKz5
D5yfEsxV1PL0N5w/JfFk5CUvBH+R7aQ7rbt+wflHt9jL8Moh+Md+fvv2s/sn
nL/9N0PFsT8/4Px9M95vTUtE8Bcxv+jLufAdzp/DeVTFzRjBbzvzJeH/jG9w
vl+snoUcJ4Kv3elzRiD3K5z/rKnkd8btL3D+NvHG51NsEfyyzAeVCxZ9hvNF
Oj2XCwoh+Medp08MK/0E50eceSfG+PgjnH9TcKZTdzCCX/BJXfvl9g9w/pMF
B9atUUPw71ypvtcu9B7Ov/BQek3p3bdwfn3X+fV6e9/A+ZGZPrr9La/h/HeP
7zzYlfAKET83hB4udXoJ57MyC0Vb8LyA8xNPqnBPe/UMzn9xlMF09oancL5W
3Icp2d1P4HyfglbH39mP4fyZOx6nG5k8QsTPnNAjJoIP4fzVuYqme1ffh/Mv
T31U1e9wF84v/HpK58e/W3B+6kHXS+t7biD8f+T547/O1+D837uv9J1iuwLn
18iH6D6bcRHOf17yNd9g5Tk4v13UUidV8Qycr76t5sXMmSfhfADpE8mk
        "]]},
      Annotation[#, "Charting`Private`Tag$204449#1"]& ]}, {}}, {{{}, {}, 
     TagBox[
      {RGBColor[0.560181, 0.691569, 0.194885], AbsoluteThickness[1.6], 
       Opacity[1.], Dashing[{Small, Small}], LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAWIQvb9x0YUzZ77YJ0rcPSn8hskhiGNP34cXCP7Tvqs+
Iqxf4fwvb21XiTsh+LrcbN/4qxF81dxT2q82IfjsikecGt4j+MKTZT24Nb7B
+Rzha/SCUhH8PfHm/6sWIviz1JT2zbiJ4CfaO8UViX1HuFfs0BsHfwSfycgu
9WMbgj9n/vt9sYcR/PjTDOz7fyP4PJ7uBncsfsD5FdxdzrdLEHy+Hh3X82sQ
/N44Fo36lwi+2Xvrn8pKP+H8ExdXrG6JR/Alfwp6HJ+N4E+5d+vSv8sI/k/R
m3afBH7B+e3c5jNveSL4V1wn3l3SiOBzX1Jg1t6H4OfICIgv+4bgb9thwnPX
+Decv39m6Ouv+Qj+J4trO5hXIPh8Wj3pZ58g+CE3F7L0yP6B8yPPbu7WCUXw
PYR/f+6YiOAnii/yunUSwU/OrWt6zvYXzu9v3LXipT2CX3Xr046z5Qi+X2vC
qtwtCL7PO90uprcIvslKA+9grX9w/u0V+t9a0xD81Wl9/WvnIfipZUpcE28j
+J4uYsWZIv/h/DdhbMeUfRD8it3av2Z2IPh69zbIsB5E8OdNye1peoDg83lr
/fn/H8EHAGwHiGA=
        "]]},
      Annotation[#, "Charting`Private`Tag$204502#1"]& ]}, {}}, 
   {Dashing[{Small, Small}], 
    LineBox[{{1.0374047078294788`, 0}, {1.0374047078294788`, 10}}]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"x\"", TraditionalForm], 
    FormBox[
    "\"\[LeftBracketingBar]\\!\\(\\*SuperscriptBox[\\(\[Nu]\\), \
\\(-1\\)]\\)(x)\[RightBracketingBar]\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{
   "OptimizePlotMarkers" -> True, "OptimizePlotMarkers" -> True, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& )}},
  PlotRange->{{-1.191614150067731, 1.9015998254964843`}, {
    0, 7.372431322737275}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellLabel->
  "Out[115]=",ExpressionUUID->"8372e846-8137-411b-bb67-d4746ada3486"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1269, 721},
WindowMargins->{{0, Automatic}, {Automatic, 0}},
FrontEndVersion->"13.1 for Microsoft Windows (64-bit) (August 22, 2022)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"12cf1d5b-2acd-4864-8b7e-4b19947e13da"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 121, 0, 67, "Section",ExpressionUUID->"98acd184-691c-49c2-9c35-e03b8e74bf1c"],
Cell[1610, 37, 82, 0, 35, "Text",ExpressionUUID->"50404d28-2c34-49cf-bd43-356ccdfa96c3"],
Cell[1695, 39, 612, 14, 74, "Item",ExpressionUUID->"486f5e5f-ceb3-4d4c-aacb-46d3e0402918"],
Cell[2310, 55, 352, 8, 74, "Item",ExpressionUUID->"c2a8a7df-92fc-4358-8cce-2e9f47a13a6b"],
Cell[CellGroupData[{
Cell[2687, 67, 117, 0, 54, "Subsection",ExpressionUUID->"c40eadb7-8133-4813-8206-2eb812436431"],
Cell[2807, 69, 739, 21, 78, "Input",ExpressionUUID->"42cb7594-1b60-4468-b80c-83cb83cabf2e"],
Cell[CellGroupData[{
Cell[3571, 94, 668, 18, 28, "Input",ExpressionUUID->"50e1855e-cab0-4e7b-bd8e-5b1d172c9a28"],
Cell[4242, 114, 9735, 179, 258, "Output",ExpressionUUID->"08914c92-73bf-4a08-8d37-51772dd1137e"]
}, Open  ]],
Cell[CellGroupData[{
Cell[14014, 298, 506, 14, 48, "Input",ExpressionUUID->"7feddeca-333f-47ed-806b-8d6312fde511"],
Cell[14523, 314, 260, 6, 32, "Output",ExpressionUUID->"c41b6861-3533-4585-a8c7-f9e5755a96bd"]
}, Open  ]],
Cell[CellGroupData[{
Cell[14820, 325, 531, 15, 30, "Input",ExpressionUUID->"44f81f8d-fa52-4de9-a01f-ffa9525a918f"],
Cell[15354, 342, 124, 1, 32, "Output",ExpressionUUID->"98286ea7-3064-4645-b917-7a667ecff86d"]
}, Open  ]],
Cell[15493, 346, 488, 12, 48, "Input",ExpressionUUID->"da5645df-4552-44b8-8aee-5755838e4fa7"],
Cell[CellGroupData[{
Cell[16006, 362, 396, 10, 48, "Input",ExpressionUUID->"fb8f99e1-974c-4372-959c-2fe18130d0e8"],
Cell[16405, 374, 106, 1, 32, "Output",ExpressionUUID->"4b32e4a5-065a-4363-9f09-8f2655e26ddd"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[16560, 381, 282, 7, 54, "Subsection",ExpressionUUID->"52d68d2d-80ed-4d58-af2e-a4c556bbe4c6"],
Cell[16845, 390, 1164, 33, 85, "Input",ExpressionUUID->"4dd0a39e-c913-405a-ab6c-e75474d1e956"],
Cell[CellGroupData[{
Cell[18034, 427, 1029, 27, 48, "Input",ExpressionUUID->"d6f43d21-f399-4dcd-9366-65579a51ee66"],
Cell[19066, 456, 19833, 346, 267, "Output",ExpressionUUID->"446924a9-d4c6-442c-bb42-ff31924f092e"]
}, Open  ]],
Cell[CellGroupData[{
Cell[38936, 807, 771, 22, 48, "Input",ExpressionUUID->"bc1cf4bc-65eb-47bf-8f41-2d51585abdab"],
Cell[39710, 831, 129, 1, 32, "Output",ExpressionUUID->"8f8724db-adbc-4338-a945-11b5bb0bf467"]
}, Open  ]],
Cell[39854, 835, 1582, 45, 105, "Input",ExpressionUUID->"58ef3672-42d6-42e8-a603-6aad54119fa7"]
}, Open  ]],
Cell[CellGroupData[{
Cell[41473, 885, 182, 3, 54, "Subsection",ExpressionUUID->"6371a8ce-c890-40e0-bc76-62b023a0b0ae"],
Cell[41658, 890, 768, 24, 45, "Input",ExpressionUUID->"8e8ed210-88ae-48fb-ae14-4178bd5aa721"],
Cell[CellGroupData[{
Cell[42451, 918, 536, 15, 65, "Input",ExpressionUUID->"e953d182-0725-4469-9f5e-4cb2eb611db7"],
Cell[42990, 935, 4668, 95, 242, "Output",ExpressionUUID->"78c25e9e-b087-467a-8e42-ce008e0dd33e"]
}, Open  ]],
Cell[CellGroupData[{
Cell[47695, 1035, 409, 11, 28, "Input",ExpressionUUID->"5de1add0-95c9-48e5-b86e-7f565d7aba87"],
Cell[48107, 1048, 107, 1, 32, "Output",ExpressionUUID->"b26df9ea-5db4-4c20-8639-ea032ef11e7c"]
}, Open  ]],
Cell[CellGroupData[{
Cell[48251, 1054, 1601, 47, 88, "Input",ExpressionUUID->"94f5a481-a6b4-4ca2-b04b-f202f72c5585"],
Cell[49855, 1103, 150, 3, 48, "Output",ExpressionUUID->"6f5729a0-78f2-4aa4-ac83-3f0584a6690a"],
Cell[50008, 1108, 127, 2, 48, "Output",ExpressionUUID->"859792d3-bccc-4caf-9f6e-410b1c027fec"],
Cell[50138, 1112, 107, 1, 32, "Output",ExpressionUUID->"af69cb3d-4a53-492c-8cbd-ab5553c93c00"]
}, Open  ]],
Cell[50260, 1116, 824, 23, 65, "Input",ExpressionUUID->"538de06e-af5a-458a-893d-6cd3f65eff19"],
Cell[CellGroupData[{
Cell[51109, 1143, 286, 6, 48, "Input",ExpressionUUID->"197c6c56-d9cd-4fbb-bcb7-1995854b1356"],
Cell[51398, 1151, 1334, 44, 185, "Output",ExpressionUUID->"8f9b3718-d778-47aa-9046-0fce975328e3"]
}, Open  ]],
Cell[52747, 1198, 2877, 91, 160, "Input",ExpressionUUID->"de72f1f3-c5e4-40e2-9dca-29dbc9ecab72"],
Cell[CellGroupData[{
Cell[55649, 1293, 409, 11, 50, "Input",ExpressionUUID->"d0bccfb1-55b6-4d69-b6d3-d32295f711ca"],
Cell[56061, 1306, 107, 1, 32, "Output",ExpressionUUID->"92ed0162-259a-4ba7-846a-fa0c67ccaf73"]
}, Open  ]],
Cell[CellGroupData[{
Cell[56205, 1312, 2702, 75, 181, "Input",ExpressionUUID->"db164629-f4db-41af-99a6-796a23213bfe"],
Cell[58910, 1389, 380, 11, 48, "Output",ExpressionUUID->"abce1665-af47-4843-932f-1afe56719bfe"],
Cell[59293, 1402, 107, 1, 32, "Output",ExpressionUUID->"4acd2c50-a842-4cb5-a683-c196b7c4cbd8"]
}, Open  ]],
Cell[CellGroupData[{
Cell[59437, 1408, 4161, 117, 248, "Input",ExpressionUUID->"3560aaa8-0cee-459d-8dba-96e333246db1"],
Cell[63601, 1527, 450, 13, 48, "Output",ExpressionUUID->"584aae0b-40ef-41c2-b9a9-f02f4512c42a"],
Cell[64054, 1542, 107, 1, 32, "Output",ExpressionUUID->"edf39b3d-6754-4199-8d03-5ad83081277f"]
}, Open  ]],
Cell[CellGroupData[{
Cell[64198, 1548, 4749, 143, 208, "Input",ExpressionUUID->"2340cf98-7468-4c9f-b121-3faf9ea8c121"],
Cell[68950, 1693, 1361, 43, 48, "Output",ExpressionUUID->"658d49cb-9343-455d-b3ee-a9379ba473f0"]
}, Open  ]],
Cell[CellGroupData[{
Cell[70348, 1741, 1613, 44, 114, "Input",ExpressionUUID->"1217a3b1-67bf-4fcf-889d-45595fbbf4d8"],
Cell[71964, 1787, 339, 7, 35, "Output",ExpressionUUID->"16866168-e2a8-4561-bf9b-86e7f43a3ef0"]
}, Open  ]],
Cell[72318, 1797, 1528, 41, 113, "Input",ExpressionUUID->"64a9b466-e128-4d7d-a18c-04d7e8f3d206"]
}, Open  ]],
Cell[CellGroupData[{
Cell[73883, 1843, 325, 8, 54, "Subsection",ExpressionUUID->"ffb02aa5-4e52-40f8-bc96-c07748658aed"],
Cell[CellGroupData[{
Cell[74233, 1855, 213, 4, 42, "Subsubsection",ExpressionUUID->"65e03219-e63e-4455-9a1a-76eaec239477"],
Cell[74449, 1861, 1240, 33, 95, "Input",ExpressionUUID->"c455d724-6083-46ea-b8e6-f7b5f6878c16"],
Cell[CellGroupData[{
Cell[75714, 1898, 1665, 45, 133, "Input",ExpressionUUID->"9da64d35-aa97-40d8-8dc0-301da6355981"],
Cell[77382, 1945, 3229, 71, 272, "Output",ExpressionUUID->"43573cea-a349-42df-9ace-c09498618337"]
}, Open  ]],
Cell[CellGroupData[{
Cell[80648, 2021, 1639, 44, 133, "Input",ExpressionUUID->"95bce5a9-2483-4433-a919-81dd78099410"],
Cell[82290, 2067, 3271, 72, 270, "Output",ExpressionUUID->"e803abc7-d7c7-4d31-9110-b708e7ec7980"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[85610, 2145, 338, 9, 46, "Subsubsection",ExpressionUUID->"b3151452-bcd7-4151-9319-a25adf897203"],
Cell[85951, 2156, 958, 26, 45, "Input",ExpressionUUID->"ac8d678e-f88c-48cc-9681-0d3f228df99a"],
Cell[CellGroupData[{
Cell[86934, 2186, 1667, 45, 133, "Input",ExpressionUUID->"b56e228d-84bf-4f00-9aee-ecbb9f0ef2af"],
Cell[88604, 2233, 3248, 72, 276, "Output",ExpressionUUID->"2ee24bca-6713-4181-aa7f-668560cc0a0a"]
}, Open  ]],
Cell[CellGroupData[{
Cell[91889, 2310, 1641, 44, 133, "Input",ExpressionUUID->"516632fa-9587-46f4-8f59-76e4aa2b2bc9"],
Cell[93533, 2356, 3279, 72, 266, "Output",ExpressionUUID->"7f0635bf-863d-4514-a9d5-4f92ff8b7b4b"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[96861, 2434, 232, 5, 42, "Subsubsection",ExpressionUUID->"9ce7a66a-6110-4f91-93fe-712d987572fb"],
Cell[97096, 2441, 1606, 44, 106, "Input",ExpressionUUID->"8ae74796-4875-4a73-bb31-99cc4816256f"],
Cell[CellGroupData[{
Cell[98727, 2489, 1663, 45, 133, "Input",ExpressionUUID->"fcbfd3b1-54df-4940-965f-91d8f5195b29"],
Cell[100393, 2536, 3282, 72, 267, "Output",ExpressionUUID->"ae26103f-2686-444b-ae80-45a9ce74f531"]
}, Open  ]],
Cell[CellGroupData[{
Cell[103712, 2613, 1637, 44, 133, "Input",ExpressionUUID->"93afed92-87ee-46e7-9290-3c7ea17e361e"],
Cell[105352, 2659, 3358, 73, 267, "Output",ExpressionUUID->"983cffe4-6536-4e30-ba2b-45f805814325"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[108759, 2738, 258, 6, 50, "Subsubsection",ExpressionUUID->"9ee4cf40-472a-4219-a629-681f3dcf88a0"],
Cell[109020, 2746, 1658, 46, 108, "Input",ExpressionUUID->"635425c9-11ff-42fc-b312-8f98d1aeb10b"],
Cell[CellGroupData[{
Cell[110703, 2796, 1692, 45, 133, "Input",ExpressionUUID->"b21c0e5e-80b8-4e18-a44b-05c7b28befaa"],
Cell[112398, 2843, 3268, 72, 276, "Output",ExpressionUUID->"3b737d14-9474-4977-bdee-f3fa85d96c40"]
}, Open  ]],
Cell[CellGroupData[{
Cell[115703, 2920, 1666, 44, 133, "Input",ExpressionUUID->"2192790b-e3be-43c2-96ee-e3541178e451"],
Cell[117372, 2966, 3342, 73, 267, "Output",ExpressionUUID->"5b28bda3-949c-4aea-9afe-b67da8ef2d16"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[120763, 3045, 95, 0, 45, "Subsubsection",ExpressionUUID->"18557e01-60b2-4f28-993d-a89f47f9849d"],
Cell[120861, 3047, 929, 26, 45, "Input",ExpressionUUID->"7e420e9b-1bbb-4009-899f-eabe25ccd8a2"],
Cell[CellGroupData[{
Cell[121815, 3077, 2097, 59, 87, "Input",ExpressionUUID->"f97267f9-addf-43a6-8310-30ab5ce0d010"],
Cell[123915, 3138, 11417, 206, 261, "Output",ExpressionUUID->"07cc0858-ce6f-418b-b7e2-082352637768"]
}, Open  ]],
Cell[CellGroupData[{
Cell[135369, 3349, 2099, 58, 117, "Input",ExpressionUUID->"668250cd-7d86-42dc-b294-6c395d011db8"],
Cell[137471, 3409, 6984, 133, 262, "Output",ExpressionUUID->"938f21a5-75ea-41eb-9bae-71ffdc6acf72"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[144504, 3548, 96, 0, 45, "Subsubsection",ExpressionUUID->"06a33fb1-9077-4395-aded-58399ef33588"],
Cell[CellGroupData[{
Cell[144625, 3552, 1205, 34, 86, "Input",ExpressionUUID->"10d0d5f9-cfa5-4aac-9562-8a7812f483b2"],
Cell[145833, 3588, 1853, 34, 95, "Output",ExpressionUUID->"44548774-236c-44b2-96c2-7cc7e8da2af7"],
Cell[147689, 3624, 129, 1, 32, "Output",ExpressionUUID->"2b27b3af-2e8a-4cd1-912d-e35c84b91b99"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[147867, 3631, 375, 11, 45, "Subsubsection",ExpressionUUID->"d8d442bb-b1e0-46fd-aa9b-cf6f9077a1fa"],
Cell[CellGroupData[{
Cell[148267, 3646, 1240, 35, 71, "Input",ExpressionUUID->"b3bd7eae-368d-4175-ae82-59ccdace9729"],
Cell[149510, 3683, 1287, 21, 52, "Output",ExpressionUUID->"175aec8f-cdb1-45bd-b422-63c82fbf99d9"],
Cell[150800, 3706, 125, 1, 32, "Output",ExpressionUUID->"6b22dab1-bb23-4f2e-9036-4152c1ca22a8"]
}, Open  ]],
Cell[CellGroupData[{
Cell[150962, 3712, 1568, 43, 105, "Input",ExpressionUUID->"30897dd4-e879-4021-a567-4cd9007c04d6"],
Cell[152533, 3757, 3286, 72, 252, "Output",ExpressionUUID->"a34a43d4-7495-41de-aa45-7c5416c148af"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[155868, 3835, 385, 11, 50, "Subsubsection",ExpressionUUID->"0fd25799-d9e4-492a-bed7-a535500cb619"],
Cell[156256, 3848, 1176, 33, 45, "Input",ExpressionUUID->"4aad7e8c-1953-42f7-b082-41ac86a3be3e"],
Cell[CellGroupData[{
Cell[157457, 3885, 1619, 43, 105, "Input",ExpressionUUID->"1832c3a7-22b0-4769-ba9d-5c257603e845"],
Cell[159079, 3930, 130, 1, 32, "Output",ExpressionUUID->"b572365b-efea-4c8e-95ff-fd735a5a5172"]
}, Open  ]],
Cell[CellGroupData[{
Cell[159246, 3936, 1764, 46, 143, "Input",ExpressionUUID->"6297f369-4a5f-408e-8bf9-6961145b5618"],
Cell[161013, 3984, 3395, 75, 282, "Output",ExpressionUUID->"f152ad50-364d-4d30-8dd8-acd454af9108"]
}, Open  ]],
Cell[CellGroupData[{
Cell[164445, 4064, 1738, 45, 143, "Input",ExpressionUUID->"112c5143-acde-4065-8395-1d1ed6292f76"],
Cell[166186, 4111, 3460, 76, 282, "Output",ExpressionUUID->"dded8f92-eabf-4989-95ab-f1dad280bee7"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[169695, 4193, 98, 0, 45, "Subsubsection",ExpressionUUID->"c4cd9708-a4fb-48c1-b5f0-cb6ad6112cbc"],
Cell[169796, 4195, 1093, 30, 71, "Input",ExpressionUUID->"e55b7c7d-ff22-4c3f-a891-757680948220"],
Cell[CellGroupData[{
Cell[170914, 4229, 1663, 45, 133, "Input",ExpressionUUID->"4bfe8fd9-b2a8-4ebd-8908-16cd059a225d"],
Cell[172580, 4276, 3274, 71, 267, "Output",ExpressionUUID->"f37965cc-79cb-4d28-b3ab-5c79ab257cff"]
}, Open  ]],
Cell[CellGroupData[{
Cell[175891, 4352, 1637, 44, 133, "Input",ExpressionUUID->"069fd4f2-40ee-45a2-86f6-1e71f50a9843"],
Cell[177531, 4398, 3353, 72, 267, "Output",ExpressionUUID->"a0127a0e-5c0b-453a-9247-b21c999edf02"]
}, Open  ]],
Cell[180899, 4473, 1238, 34, 65, "Input",ExpressionUUID->"0cabe8d7-43a5-4abe-b7f3-9a333109c492"],
Cell[CellGroupData[{
Cell[182162, 4511, 1683, 45, 133, "Input",ExpressionUUID->"6980fdea-56e8-4a3a-ac2e-0746b1fd1c90"],
Cell[183848, 4558, 3288, 72, 267, "Output",ExpressionUUID->"ae271eb1-e47c-46fe-98db-88e343187624"]
}, Open  ]],
Cell[CellGroupData[{
Cell[187173, 4635, 1657, 44, 133, "Input",ExpressionUUID->"fcca8763-3dd9-480d-8228-5a1e44d714e6"],
Cell[188833, 4681, 3383, 73, 270, "Output",ExpressionUUID->"b582de57-4a16-458d-b7b1-03778ff9ba8a"]
}, Open  ]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[192277, 4761, 99, 0, 54, "Subsection",ExpressionUUID->"950b21d5-e430-4037-a16d-9dabaf298a91"],
Cell[192379, 4763, 442, 13, 35, "Text",ExpressionUUID->"2896e760-aae3-404f-a16d-595dd84a23e2"],
Cell[192824, 4778, 4058, 100, 190, "Input",ExpressionUUID->"c34ed9da-631d-4543-9df2-9534837f2600"],
Cell[CellGroupData[{
Cell[196907, 4882, 1855, 49, 94, "Input",ExpressionUUID->"18fd82c2-84a7-4b1c-a326-3d74699bf22e"],
Cell[198765, 4933, 18593, 373, 336, "Output",ExpressionUUID->"c6a810c6-a7b9-4d1c-932b-0d8a2b0a6c17"]
}, Open  ]],
Cell[CellGroupData[{
Cell[217395, 5311, 1829, 48, 94, "Input",ExpressionUUID->"bc84fa53-23d8-431e-8f01-3a1be781cf6b"],
Cell[219227, 5361, 18574, 374, 337, "Output",ExpressionUUID->"fdc3f4d3-361d-4d66-a38a-b729ea6071eb"]
}, Open  ]],
Cell[CellGroupData[{
Cell[237838, 5740, 1930, 52, 94, "Input",ExpressionUUID->"e98fbdd0-78cd-4da1-8cf1-aaf86830ee0b"],
Cell[239771, 5794, 18645, 373, 327, "Output",ExpressionUUID->"e02bbfed-eed0-4bbe-9fa7-e2af1f71a3e6"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[258465, 6173, 308, 8, 54, "Subsection",ExpressionUUID->"010e8cdd-5ac1-4c13-9a1d-21de86172a2c"],
Cell[258776, 6183, 478, 14, 105, "Input",ExpressionUUID->"ed483ced-de03-421d-8096-a479cfb3894d"],
Cell[259257, 6199, 550, 15, 28, "Input",ExpressionUUID->"44616580-9991-44db-9093-4f0df58ff297"],
Cell[CellGroupData[{
Cell[259832, 6218, 2665, 66, 132, "Input",ExpressionUUID->"ee996136-9b38-4d0c-aef6-87ecf8c2aae5"],
Cell[262500, 6286, 63481, 1066, 267, "Output",ExpressionUUID->"caefc955-961e-413b-9354-9bcc17c9e73a"]
}, Open  ]],
Cell[325996, 7355, 97, 0, 35, "Text",ExpressionUUID->"aabd5506-5222-4436-973f-bc499c4c88c5"],
Cell[326096, 7357, 291, 8, 45, "Input",ExpressionUUID->"5f0bfd56-d494-444d-b0c2-29bcb68542f0"],
Cell[326390, 7367, 1381, 40, 66, "Input",ExpressionUUID->"5b8d941d-9a87-419a-8561-7fafcdf0a185"]
}, Open  ]],
Cell[CellGroupData[{
Cell[327808, 7412, 329, 8, 54, "Subsection",ExpressionUUID->"46ba174b-70d9-4bee-89d5-7a5b5d5fea87"],
Cell[CellGroupData[{
Cell[328162, 7424, 213, 4, 42, "Subsubsection",ExpressionUUID->"85ceee48-c03f-487b-a05b-62415b03ba9d"],
Cell[328378, 7430, 945, 26, 66, "Input",ExpressionUUID->"38c69884-e07c-4431-bd24-50f83fdfcad0"],
Cell[CellGroupData[{
Cell[329348, 7460, 3558, 88, 158, "Input",ExpressionUUID->"6fb480e7-5972-443a-a70a-95dd9b839d14"],
Cell[332909, 7550, 7929, 152, 267, "Output",ExpressionUUID->"ab681a76-fd35-4da8-9c90-2d1dea18bdd3"]
}, Open  ]],
Cell[CellGroupData[{
Cell[340875, 7707, 3558, 88, 178, "Input",ExpressionUUID->"edcd2923-d480-4acc-bcce-d2bcff874a60"],
Cell[344436, 7797, 7898, 151, 267, "Output",ExpressionUUID->"d1ab41c7-86ee-45e7-b837-9d7d3fcd92e6"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[352383, 7954, 338, 9, 46, "Subsubsection",ExpressionUUID->"9b819ad2-d582-4c36-8c39-a7dae2092f63"],
Cell[352724, 7965, 430, 12, 31, "Input",ExpressionUUID->"afbc8897-5912-4eec-ba1e-3ba8ca9e4a5b"],
Cell[CellGroupData[{
Cell[353179, 7981, 3048, 76, 152, "Input",ExpressionUUID->"a9e10da6-6fbd-4dcb-840a-0e4a93752939"],
Cell[356230, 8059, 7869, 152, 269, "Output",ExpressionUUID->"fa18261e-3c90-47e4-8a32-5073d5bd42b8"]
}, Open  ]],
Cell[CellGroupData[{
Cell[364136, 8216, 3048, 76, 152, "Input",ExpressionUUID->"f93fce11-5089-4714-ba3c-1a3a75478b36"],
Cell[367187, 8294, 7863, 152, 266, "Output",ExpressionUUID->"f4cb3271-9a63-49f9-9ede-8682c3fd039a"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[375099, 8452, 232, 5, 42, "Subsubsection",ExpressionUUID->"eb73b21a-1fc7-484a-a253-9c0178f82fcf"],
Cell[375334, 8459, 1307, 37, 67, "Input",ExpressionUUID->"ead2e417-f063-4e4d-b789-673e3ca636f4"],
Cell[CellGroupData[{
Cell[376666, 8500, 3552, 88, 178, "Input",ExpressionUUID->"2d7dd873-6cab-499d-84cf-986ae83852bc"],
Cell[380221, 8590, 7992, 153, 267, "Output",ExpressionUUID->"3da99db6-5849-4022-9834-a61345bc78a0"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[388262, 8749, 95, 0, 45, "Subsubsection",ExpressionUUID->"592c7efb-a74d-4462-acf6-ce2c75aea2a4"],
Cell[388360, 8751, 617, 18, 45, "Input",ExpressionUUID->"e7485dc6-bedc-4109-880e-ec7c6c579479"],
Cell[CellGroupData[{
Cell[389002, 8773, 2870, 74, 136, "Input",ExpressionUUID->"939d9854-0cdc-4d04-804c-30bb20975231"],
Cell[391875, 8849, 4341, 92, 266, "Output",ExpressionUUID->"39c2901d-dd93-4630-929d-c0fe1b194760"]
}, Open  ]],
Cell[CellGroupData[{
Cell[396253, 8946, 2785, 72, 117, "Input",ExpressionUUID->"38b4995b-7649-4269-89e3-8e1f9124fcf5"],
Cell[399041, 9020, 4312, 92, 263, "Output",ExpressionUUID->"5f63f1de-e47f-4558-882a-9b3bec41bd50"]
}, Open  ]],
Cell[CellGroupData[{
Cell[403390, 9117, 1136, 33, 70, "Input",ExpressionUUID->"2e414694-f4b4-44a9-8d9d-65b0d5ff7d11"],
Cell[404529, 9152, 128, 2, 32, "Output",ExpressionUUID->"33733f03-1668-44c4-bf98-c247a8185b1d"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[404706, 9160, 96, 0, 45, "Subsubsection",ExpressionUUID->"a8a7e194-7534-4caf-b8e5-636e61f728c5"],
Cell[404805, 9162, 820, 25, 52, "Input",ExpressionUUID->"17c4a040-b6f4-4555-bac0-40dbfdb151ee"],
Cell[CellGroupData[{
Cell[405650, 9191, 1495, 38, 74, "Input",ExpressionUUID->"ad863224-06cc-4651-8db8-202831999f8a"],
Cell[407148, 9231, 2577, 60, 264, "Output",ExpressionUUID->"7eeb78cf-3b3b-4100-9236-1f5fda237593"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[409774, 9297, 98, 0, 45, "Subsubsection",ExpressionUUID->"2092d6b7-d5d8-44dd-9008-e9db0a46f174"],
Cell[409875, 9299, 549, 16, 71, "Input",ExpressionUUID->"74282bbb-0efe-42cc-90d2-15247113d9e5"],
Cell[CellGroupData[{
Cell[410449, 9319, 3558, 89, 178, "Input",ExpressionUUID->"d2bc93cf-4be1-4dd3-a3d3-cd852962590c"],
Cell[414010, 9410, 7998, 154, 267, "Output",ExpressionUUID->"1a2264bd-099b-44f7-a93a-e61110210117"]
}, Open  ]],
Cell[CellGroupData[{
Cell[422045, 9569, 3558, 89, 178, "Input",ExpressionUUID->"e3b3cdf5-aa28-4f84-aabf-0716a49c66c5"],
Cell[425606, 9660, 8022, 154, 267, "Output",ExpressionUUID->"bbff8278-8b7c-4e79-9934-27fb21f13dc7"]
}, Open  ]],
Cell[433643, 9817, 671, 20, 50, "Input",ExpressionUUID->"b44e5f7e-ab7b-4ad6-b019-9ff70744c6aa"],
Cell[CellGroupData[{
Cell[434339, 9841, 3586, 89, 178, "Input",ExpressionUUID->"276498a8-983f-441f-a53e-9fe48d12d628"],
Cell[437928, 9932, 8051, 156, 267, "Output",ExpressionUUID->"fe0c157f-f43e-4b59-abc6-6e64a984aa7d"]
}, Open  ]],
Cell[CellGroupData[{
Cell[446016, 10093, 3586, 89, 178, "Input",ExpressionUUID->"66e06bbd-3177-4991-a436-8bb4e480b146"],
Cell[449605, 10184, 8055, 156, 267, "Output",ExpressionUUID->"1064c17b-799e-4d19-908c-9861e5360d27"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[457709, 10346, 92, 0, 45, "Subsubsection",ExpressionUUID->"94b1fa9a-8dc2-4f03-8dc5-dbbbdd9908a5"],
Cell[457804, 10348, 1854, 52, 75, "Input",ExpressionUUID->"de0b9b6c-20fc-4c6b-97c0-84761802f294"],
Cell[CellGroupData[{
Cell[459683, 10404, 3432, 88, 119, "Input",ExpressionUUID->"c7aa2a3b-8b49-4ace-99c3-da035ba0c82b"],
Cell[463118, 10494, 6676, 130, 270, "Output",ExpressionUUID->"b32d2ebe-769b-43fa-8d02-632fd96b76dd"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[469843, 10630, 142, 1, 45, "Subsubsection",ExpressionUUID->"0eb04a56-11ec-48db-8b43-de957c633233"],
Cell[CellGroupData[{
Cell[470010, 10635, 2715, 80, 106, "Input",ExpressionUUID->"827a5e15-8122-43f7-9288-23885bce92d7"],
Cell[472728, 10717, 4729, 100, 261, "Output",ExpressionUUID->"8372e846-8137-411b-bb67-d4746ada3486"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* NotebookSignature 0vDlwBTRo1ljFDK5bCkW73KP *)
