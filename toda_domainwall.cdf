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
NotebookDataLength[    625392,      14934]
NotebookOptionsPosition[    592668,      14133]
NotebookOutlinePosition[    593013,      14148]
CellTagsIndexPosition[    592970,      14145]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Toda chain with domain-wall boundary conditions", "Section",ExpressionUUID->"98acd184-691c-49c2-9c35-e03b8e74bf1c"],

Cell[TextData[{
 "Reference:\n  Christian B. Mendl and Herbert Spohn\n  Classical Toda \
lattice with domain wall initial conditions\n  ",
 ButtonBox["arXiv:2011.11008",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["https://arxiv.org/abs/2011.11008"], None},
  ButtonNote->"https://arxiv.org/abs/2011.11008"],
 " (2020)"
}], "Text",ExpressionUUID->"3d263d29-0d9c-428f-a310-6ed00c65f3b1"],

Cell[CellGroupData[{

Cell["General definitions", "Subsection",ExpressionUUID->"98003d4f-d2aa-4601-8834-cb4925070b2f"],

Cell[BoxData[
 RowBox[{
  RowBox[{"SparseIdentityMatrix", "[", "n_", "]"}], ":=", 
  RowBox[{"SparseArray", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"{", 
      RowBox[{"i_", ",", "i_"}], "}"}], "\[RuleDelayed]", "1"}], ",", 
    RowBox[{"{", 
     RowBox[{"n", ",", "n"}], "}"}]}], "]"}]}]], "Input",ExpressionUUID->\
"e5e9d5bd-7651-44b0-8311-b8143613aa88"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"SparseIdentityMatrix", "[", "5", "]"}], "//", 
  "MatrixForm"}]], "Input",ExpressionUUID->"70bcf4a3-b2da-4898-957c-\
c7bfe3e96483"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"1", "0", "0", "0", "0"},
     {"0", "1", "0", "0", "0"},
     {"0", "0", "1", "0", "0"},
     {"0", "0", "0", "1", "0"},
     {"0", "0", "0", "0", "1"}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[
   SparseArray[
    Automatic, {5, 5}, 0, {
     1, {{0, 1, 2, 3, 4, 5}, {{1}, {2}, {3}, {4}, {5}}}, {1, 1, 1, 1, 
      1}}]]]]], "Output",ExpressionUUID->"08a698f7-41db-4933-b008-\
af503fd4ea37"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"Gauss", "[", 
   RowBox[{"\[Beta]_", ",", "x_"}], "]"}], ":=", 
  RowBox[{
   FractionBox["1", 
    SqrtBox[
     RowBox[{"2", 
      RowBox[{"\[Pi]", "/", "\[Beta]"}]}]]], 
   RowBox[{"Exp", "[", 
    RowBox[{
     RowBox[{"-", 
      FractionBox["1", "2"]}], "\[Beta]", " ", 
     SuperscriptBox["x", "2"]}], "]"}]}]}]], "Input",ExpressionUUID->\
"bc2df0a8-b664-4c1c-ad5f-8ca140c7ba4b"]
}, Open  ]],

Cell[CellGroupData[{

Cell["\<\
Toda integral operator applied to Gauss distribution, for benchmarking\
\>", "Subsection",ExpressionUUID->"c6c99a46-ffb6-42d2-af69-d62a1612d777"],

Cell[BoxData[
 RowBox[{
  RowBox[{"ScatteredGauss", "[", 
   RowBox[{"\[Beta]_", ",", "x_"}], "]"}], ":=", 
  RowBox[{
   RowBox[{"\[Beta]", " ", 
    SuperscriptBox["x", "2"], " ", 
    RowBox[{"HypergeometricPFQ", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"1", ",", "1"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{
        FractionBox["3", "2"], ",", "2"}], "}"}], ",", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["1", "2"]}], "\[Beta]", " ", 
       SuperscriptBox["x", "2"]}]}], "]"}]}], "-", 
   RowBox[{"Log", "[", 
    RowBox[{"2", "\[Beta]"}], "]"}], "-", "EulerGamma"}]}]], "Input",Expressio\
nUUID->"19e987ff-e7e4-486f-a161-7a5fc3c26656"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "test", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"v", "=", "0.9"}], ",", 
      RowBox[{"\[Beta]", "=", "2.3"}]}], "}"}], ",", 
    RowBox[{"Abs", "[", 
     RowBox[{
      RowBox[{"NIntegrate", "[", 
       RowBox[{
        RowBox[{"2", 
         RowBox[{"Log", "[", 
          RowBox[{"Abs", "[", 
           RowBox[{"v", "-", "w"}], "]"}], "]"}], 
         RowBox[{"Gauss", "[", 
          RowBox[{"\[Beta]", ",", "w"}], "]"}]}], ",", 
        RowBox[{"{", 
         RowBox[{"w", ",", 
          RowBox[{"-", "\[Infinity]"}], ",", "\[Infinity]"}], "}"}]}], "]"}], 
      "-", 
      RowBox[{"ScatteredGauss", "[", 
       RowBox[{"\[Beta]", ",", "v"}], "]"}]}], "]"}]}], "]"}]}]], "Input",Expr\
essionUUID->"bbe23bd4-68f8-4723-85dd-bad3faf5ff75"],

Cell[BoxData["1.5754064721817322`*^-13"], "Output",ExpressionUUID->"17688fa1-bee5-4a6a-8bdd-f88a3bce7201"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Block", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"\[Beta]list", "=", 
     RowBox[{"{", 
      RowBox[{"1", ",", 
       FractionBox["1", "8"]}], "}"}]}], "}"}], ",", 
   RowBox[{"Plot", "[", 
    RowBox[{
     RowBox[{"Evaluate", "[", 
      RowBox[{"Append", "[", 
       RowBox[{
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"ScatteredGauss", "[", 
           RowBox[{"\[Beta]", ",", "v"}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"\[Beta]", ",", "\[Beta]list"}], "}"}]}], "]"}], ",", 
        RowBox[{"2", 
         RowBox[{"Log", "[", 
          RowBox[{"Abs", "[", "v", "]"}], "]"}]}]}], "]"}], "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"v", ",", 
       RowBox[{"-", "10"}], ",", "10"}], "}"}], ",", 
     RowBox[{"AxesLabel", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
       "\"\<v\>\"", ",", 
        "\"\<(T \!\(\*SubscriptBox[\(f\), \(Gauss, \[Beta]\)]\))(v)\>\""}], 
       "}"}]}], ",", 
     RowBox[{"PlotLegends", "\[Rule]", 
      RowBox[{"Placed", "[", 
       RowBox[{
        RowBox[{"Append", "[", 
         RowBox[{
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"\"\<\[Beta]=\>\"", "<>", 
             RowBox[{"ToString", "[", 
              RowBox[{"InputForm", "[", "\[Beta]", "]"}], "]"}]}], ",", 
            RowBox[{"{", 
             RowBox[{"\[Beta]", ",", "\[Beta]list"}], "}"}]}], "]"}], ",", 
          RowBox[{"2", 
           RowBox[{"Log", "[", 
            RowBox[{"Abs", "[", "v", "]"}], "]"}]}]}], "]"}], ",", "Above"}], 
       "]"}]}], ",", 
     RowBox[{"PlotStyle", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"Automatic", ",", "Automatic", ",", "Dashed"}], "}"}]}]}], 
    "]"}]}], "]"}]], "Input",ExpressionUUID->"8e965e24-c148-4e7b-9f58-\
fd5d5a1e11c7"],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{{{}, {}, 
       TagBox[{
         Directive[
          Opacity[1.], 
          RGBColor[0.368417, 0.506779, 0.709798], 
          AbsoluteThickness[1.6]], 
         LineBox[CompressedData["
1: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
6F5aZOKxxZ6OPkc6/j9/if/fX/4Pws4+Ag==
          "]]}, Annotation[#, "Charting`Private`Tag$479#1"]& ], 
       TagBox[{
         Directive[
          Opacity[1.], 
          RGBColor[0.880722, 0.611041, 0.142051], 
          AbsoluteThickness[1.6]], 
         LineBox[CompressedData["
1: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
3uKuUeA8FYlf+tB0jtSj/6dX0f/r1f8BBQKJrw==
          "]]}, Annotation[#, "Charting`Private`Tag$479#2"]& ], 
       TagBox[{
         Directive[
          Opacity[1.], 
          RGBColor[0.560181, 0.691569, 0.194885], 
          AbsoluteThickness[1.6], 
          Dashing[{Small, Small}]], 
         LineBox[CompressedData["
1:eJwVyXk81PkfwPFxDBNiTBK2HI32F1JUUsp+vq4kR1ZWi0VYpItCRbkapdVv
5aaEdDmyrrJR2fenHJVsFkOEhtwyDGPGTI2Z3/7+eD2ef7z0AsLcgqRJJNLZ
f/u/sZPOixIJHbPGLP6sOUEjJi6q8wZEdDzcEyMbfpxGuFBZy0+FdPyEbai7
NZRG6O4JXwnj/vtn86EsmEa8SsmgDE/QMZckXVDoTyMoWz9o47/pWNWzvSnu
CI3IijzqmJBPx190dh7SsKERj6Qi7pPM6Vi2R6W2QpNGkIPst2v6bMR12OrU
yAtVYk1fy8m76XpY29OUYRugSrg13Qo0aNPFdRL9ol/IqsTFecuTaaM6WIvd
uS0zn0rUn791vOqQNtY3rj9YtoNKuGT8pCu+uR5fb9VXZESrEPYFjS4HZrVw
xw7thTeJysTD19G9Ed6aOI/97YLvf1cTvklZaztK1+GXuiotCeFKRNxRmUrF
Neo4z1k8Ee2uSJCMdcDmihoeEEqdTDRQID5ev5n8qIeGF40yyrzbKMR6hWNl
S9aquCdOQVU7SJ44YWZIHlivgps2u/+z9jmZCDT/VNrUpIgv1JUcxlMyhOEF
C8np+xR8HyX3aZCkieKhw83RVmScnBL/Zr2dBG0f2/6VuZOMh4LZZsrbJah5
RtXEZDMZbxMjmyVtCZpY7sifUCZjfypFvlAgRoY0p4jDg7JYyXK2KviRGNXu
t91ofF4Wa9tWaGJlMWqu2pkwXCGDk/vWexi2i9Bk4tp99hrSuISZtcdE+ytS
iK2az1SQxikytkmz5K9o6wWHe8MiKZzCYXrlsIXo3OlYhZgRKWzOAIvaF0Ik
5z3eV1EuhQM++hfLewmR/s66KJqlFD5lpkdRSReggAn3qiF/Eh541qxTM89H
V0fmAgzdSfhOdARplMlH5YPX1M/vJ+HDiTpe4gY+Wux6EUs1ImE2R3OYw+Aj
6XiHvKtTEnhc+JmP1fkImU53/rhaAg91o2RmzHnoWfZmuymPFVBP1gvbGsJF
FO/JQKl9K1CdlpL21oGLPHQfXtbSWwGERHkOW7hosZyOnb6I4OnSYPYyZxEZ
YO29NfEiuFLbdoccvYjyZtRMY0q/wavR9A3PGQsoCkltUPoqhE+NSzkTMvPo
lSzeu4klBAcarrz0cg5R2+K8fmgWAn8uN/PvuDlU4S7KDU8VQpB6THyBgI3G
QpdpPRuFkK0zmTs+NYvcstiUQkcBZK2U2aY+n0Em0/1L2wr4sCPE4MHv+hMo
kmNssC6JDzXBInu/oXFUv5zoIz7OB5mgIyEj2ePISs6wtX03H1rP3Tq0RB5H
bvSY3FAmD3R5DY+Iz6MoykfL4p4iD6h7RCFtKSPoWadXvHoMF8o90jhXjPqR
uK/y8cpRLtiEiB23XO1D1sPSU2P2XJBvKBJ8Y31A7+bKXR+v5QKHf+eicnov
GlT8pudaswhFhNVTPNWNJHb5zb9NLYDESM06vq8d2T4bWLXiwYEE/Schy0kP
UGX5gz2v93Kg1j7qgWtFAdLIDwtN1+WA/0Fzv92701DvslyGI3MeKNR1/SbT
V2DTRQ9qwdc5EPsk87xvVcOrRJ4SYc8G544dccEvWyEn4LeTTCobKrKaTwoK
30CozYb2Yx9nIdH0aYdiQhtQyXbX00/NQtiBHI9Zp/fgdy1r1WjmF/DbTiv+
fVU3iFJ3yF0dnoZSNxdfq20D8E/Y6yCt8mngt2r/nGo5CPdcvVsqI6ZBTazF
0nIZgoM0RtIHuWnorm05o3mOBTezu6QNjKegGkIjgxZGYNftM5J30RNAM84v
C7s9AeFlVQLVNaMwozRYcyyVAybKpxnWw59h1Pf7Jo0xDiyc3aIc8cdnoNet
qqu2WICz+8roTPvPsNna1KxiZgGiOu665FwaAffLGePBHlzgzhg5mLWz4Ise
s908gA+RT0p9c4JZcOMhXU7vLR/4sZsil0ks6E5aOOFpugwCqk5Rg9kneD8Q
VPyRLADRLhrPsmgQwvyH2N9jIcgxBHf2n+2HJ3KhN1IZK5DsFPVniVI/uP9i
7+MtKwaK+uI7SkkfxESljOxKFoNC2Rd+28AHuP1rkrNfpgRUOj45HbLrhf+w
XPJaR0k4Lc87oJrVA7zqaM0zxlKYFtB3XjWmB36N3SeOvCCF1Xidd7srmdCZ
8WlvI00aa3zXIjii0Q3Bpq9Xz3jK4JtjVsoNtV0QYTwly6+SwVqVf9G1nLvg
p5XAqo/ysniDVb3LYGInFMfbnr3cKItt3ns4vOztgCx91ep5azm83981kqHY
ATci97z0KZfDB5YciuyI90Dp9W+LVpPHTlqWvLdl7ZB9P6vedUEeewTTi7su
vYX+I/XnDnStwilnIq5l1L2BJAtHC9cfFXDjpaYwt7nXINMSOHmMqYD1MwN/
6PJrhRvficMnJxWxU+4fJYmerbAZnFUSZhXx/wBGb7gK
          "]], 
         LineBox[CompressedData["
1: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
          "]]}, 
        Annotation[#, 
         "Charting`Private`Tag$479#3"]& ]}, {{}, {}, {}, {}, {}}}, {}, {}}, {
    DisplayFunction -> Identity, Ticks -> {Automatic, Automatic}, 
     AxesOrigin -> {0, 0}, FrameTicks -> {{Automatic, 
        Charting`ScaledFrameTicks[{Identity, Identity}]}, {Automatic, 
        Charting`ScaledFrameTicks[{Identity, Identity}]}}, 
     GridLines -> {None, None}, DisplayFunction -> Identity, 
     PlotRangePadding -> {{
        Scaled[0.02], 
        Scaled[0.02]}, {
        Scaled[0.05], 
        Scaled[0.05]}}, PlotRangeClipping -> True, ImagePadding -> All, 
     DisplayFunction -> Identity, AspectRatio -> 
     NCache[GoldenRatio^(-1), 0.6180339887498948], Axes -> {True, True}, 
     AxesLabel -> {
       FormBox["\"v\"", TraditionalForm], 
       FormBox[
       "\"(T \\!\\(\\*SubscriptBox[\\(f\\), \\(Gauss, \[Beta]\\)]\\))(v)\"", 
        TraditionalForm]}, AxesOrigin -> {0, 0}, DisplayFunction :> Identity, 
     Frame -> {{False, False}, {False, False}}, 
     FrameLabel -> {{None, None}, {None, None}}, 
     FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
     GridLines -> {None, None}, GridLinesStyle -> Directive[
       GrayLevel[0.5, 0.4]], 
     Method -> {
      "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
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
     PlotRange -> {{-10, 10}, {-3.490478629646436, 4.6051701043554365`}}, 
     PlotRangeClipping -> True, PlotRangePadding -> {{
        Scaled[0.02], 
        Scaled[0.02]}, {
        Scaled[0.02], 
        Scaled[0.02]}}, Ticks -> {Automatic, Automatic}}],FormBox[
    FormBox[
     TemplateBox[{"\"\[Beta]=1\"", "\"\[Beta]=1/8\"", 
       RowBox[{"2", " ", 
         RowBox[{"log", "(", 
           TemplateBox[{
             TagBox["v", HoldForm]}, "Abs"], ")"}]}]}, "LineLegend", 
      DisplayFunction -> (FormBox[
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
                    Opacity[1.], 
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10}, {40, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    Opacity[1.], 
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    AbsoluteThickness[1.6]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {40, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #, 
                   GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    Opacity[1.], 
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10}, {40, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    Opacity[1.], 
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    AbsoluteThickness[1.6]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {40, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #2, 
                   GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    Opacity[1.], 
                    RGBColor[0.560181, 0.691569, 0.194885], 
                    AbsoluteThickness[1.6], 
                    Dashing[{Small, Small}]], {
                    LineBox[{{0, 10}, {40, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    Opacity[1.], 
                    RGBColor[0.560181, 0.691569, 0.194885], 
                    AbsoluteThickness[1.6], 
                    Dashing[{Small, Small}]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {40, 10}, PlotRangePadding -> None, 
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
                   RowBox[{"Opacity", "[", "1.`", "]"}], ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> 
                    RGBColor[
                    0.24561133333333335`, 0.3378526666666667, 
                    0.4731986666666667], FrameTicks -> None, PlotRangePadding -> 
                    None, ImageSize -> 
                    Dynamic[{
                    Automatic, 1.35 CurrentValue["FontCapHeight"]/
                    AbsoluteCurrentValue[Magnification]}]], 
                    "RGBColor[0.368417, 0.506779, 0.709798]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.368417, 0.506779, 0.709798]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.368417, 0.506779, 0.709798], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
               ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"Opacity", "[", "1.`", "]"}], ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> 
                    RGBColor[
                    0.587148, 0.40736066666666665`, 0.09470066666666668], 
                    FrameTicks -> None, PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 1.35 CurrentValue["FontCapHeight"]/
                    AbsoluteCurrentValue[Magnification]}]], 
                    "RGBColor[0.880722, 0.611041, 0.142051]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.880722, 0.611041, 0.142051]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.880722, 0.611041, 0.142051], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
               ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"Opacity", "[", "1.`", "]"}], ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.560181, 0.691569, 0.194885], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> 
                    RGBColor[
                    0.37345400000000006`, 0.461046, 0.12992333333333334`], 
                    FrameTicks -> None, PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 1.35 CurrentValue["FontCapHeight"]/
                    AbsoluteCurrentValue[Magnification]}]], 
                    "RGBColor[0.560181, 0.691569, 0.194885]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.560181, 0.691569, 0.194885]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.560181, 0.691569, 0.194885], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}], ",", 
                   RowBox[{"Dashing", "[", 
                    RowBox[{"{", 
                    RowBox[{"Small", ",", "Small"}], "}"}], "]"}]}], "]"}]}], 
             "}"}], ",", 
           RowBox[{"{", 
             RowBox[{#, ",", #2, ",", #3}], "}"}], ",", 
           RowBox[{"LegendMarkers", "\[Rule]", "None"}], ",", 
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
         RowBox[{#2, ",", "Above"}], "]"}]}], "]"}]& )]], "Output",ExpressionU\
UID->"04fdad47-dbba-4e8e-801f-79ea661b4594"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ScatteredGauss", "[", 
  RowBox[{"\[Beta]", ",", "0"}], "]"}]], "Input",ExpressionUUID->"669a0975-\
cc55-4ad9-bfa8-3ba987e17283"],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", "EulerGamma"}], "-", 
  RowBox[{"Log", "[", 
   RowBox[{"2", " ", "\[Beta]"}], "]"}]}]], "Output",ExpressionUUID->\
"57c637cd-ff16-47dc-a0df-9b85b596451a"]
}, Open  ]],

Cell[BoxData[{
 RowBox[{
  RowBox[{"ScatteredGaussPoly", "[", 
   RowBox[{"\[Beta]_", ",", "x_", ",", "0"}], "]"}], ":=", 
  RowBox[{"ScatteredGauss", "[", 
   RowBox[{"\[Beta]", ",", "x"}], "]"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ScatteredGaussPoly", "[", 
   RowBox[{"\[Beta]_", ",", "x_", ",", "1"}], "]"}], ":=", 
  RowBox[{"x", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      SuperscriptBox["Hypergeometric1F1", 
       TagBox[
        RowBox[{"(", 
         RowBox[{"1", ",", "0", ",", "0"}], ")"}],
        Derivative],
       MultilineFunction->None], "[", 
      RowBox[{"0", ",", 
       FractionBox["3", "2"], ",", 
       RowBox[{"-", 
        FractionBox[
         RowBox[{
          SuperscriptBox["x", "2"], " ", "\[Beta]"}], "2"]}]}], "]"}], "+", 
     RowBox[{"\[Beta]", " ", 
      SuperscriptBox["x", "2"], 
      RowBox[{"HypergeometricPFQ", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"1", ",", "1"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{
          FractionBox["3", "2"], ",", "2"}], "}"}], ",", 
        RowBox[{"-", 
         FractionBox[
          RowBox[{
           SuperscriptBox["x", "2"], " ", "\[Beta]"}], "2"]}]}], "]"}]}], "-",
      "2"}], ")"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ScatteredGaussPoly", "[", 
   RowBox[{"\[Beta]_", ",", "x_", ",", "n_Integer"}], "]"}], ":=", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", "b", "}"}], ",", 
    RowBox[{
     RowBox[{"FullSimplify", "[", 
      RowBox[{
       RowBox[{"-", "2"}], 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"D", "[", 
          RowBox[{
           RowBox[{"ScatteredGaussPoly", "[", 
            RowBox[{"b", ",", "x", ",", 
             RowBox[{"n", "-", "2"}]}], "]"}], ",", "b"}], "]"}], "-", 
         RowBox[{
          FractionBox["1", 
           RowBox[{"2", " ", "b"}]], 
          RowBox[{"ScatteredGaussPoly", "[", 
           RowBox[{"b", ",", "x", ",", 
            RowBox[{"n", "-", "2"}]}], "]"}]}]}], ")"}]}], "]"}], "/.", 
     RowBox[{"{", 
      RowBox[{"b", "\[Rule]", "\[Beta]"}], "}"}]}]}], "]"}]}]}], "Input",Expre\
ssionUUID->"5a39b1ac-f5f0-44b1-97c2-9ce889c00bae"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"ScatteredGaussPoly", "[", 
   RowBox[{"\[Beta]", ",", "v", ",", "2"}], "]"}]}]], "Input",ExpressionUUID->\
"c8197f63-c01c-4c85-8a26-939fc65732ed"],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox[
   RowBox[{
    RowBox[{"-", "2"}], "+", "EulerGamma", "+", 
    RowBox[{"2", " ", 
     SqrtBox["2"], " ", "v", " ", 
     SqrtBox["\[Beta]"], " ", 
     RowBox[{"DawsonF", "[", 
      FractionBox[
       RowBox[{"v", " ", 
        SqrtBox["\[Beta]"]}], 
       SqrtBox["2"]], "]"}]}], "-", 
    RowBox[{
     SuperscriptBox["v", "2"], " ", "\[Beta]", " ", 
     RowBox[{"HypergeometricPFQ", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"1", ",", "1"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         FractionBox["3", "2"], ",", "2"}], "}"}], ",", 
       RowBox[{"-", 
        FractionBox[
         RowBox[{
          SuperscriptBox["v", "2"], " ", "\[Beta]"}], "2"]}]}], "]"}]}], "+", 
    RowBox[{"Log", "[", 
     RowBox[{"2", " ", "\[Beta]"}], "]"}]}], "\[Beta]"]}]], "Output",Expressio\
nUUID->"3352de06-8611-49d0-bd35-0084af135fda"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"ScatteredGaussPoly", "[", 
   RowBox[{"\[Beta]", ",", "v", ",", "3"}], "]"}]}]], "Input",ExpressionUUID->\
"dac08dfd-c066-45bf-86bd-fdde847b6316"],

Cell[BoxData[
 FractionBox[
  RowBox[{"v", " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"-", "2"}], "-", 
     RowBox[{"2", " ", 
      SqrtBox["2"], " ", "v", " ", 
      SqrtBox["\[Beta]"], " ", 
      RowBox[{"DawsonF", "[", 
       FractionBox[
        RowBox[{"v", " ", 
         SqrtBox["\[Beta]"]}], 
        SqrtBox["2"]], "]"}]}], "+", 
     RowBox[{
      SuperscriptBox["Hypergeometric1F1", 
       TagBox[
        RowBox[{"(", 
         RowBox[{"1", ",", "0", ",", "0"}], ")"}],
        Derivative],
       MultilineFunction->None], "[", 
      RowBox[{"0", ",", 
       FractionBox["3", "2"], ",", 
       RowBox[{"-", 
        FractionBox[
         RowBox[{
          SuperscriptBox["v", "2"], " ", "\[Beta]"}], "2"]}]}], "]"}], "+", 
     RowBox[{
      SuperscriptBox["v", "2"], " ", "\[Beta]", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"HypergeometricPFQ", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"1", ",", "1"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{
            FractionBox["3", "2"], ",", "2"}], "}"}], ",", 
          RowBox[{"-", 
           FractionBox[
            RowBox[{
             SuperscriptBox["v", "2"], " ", "\[Beta]"}], "2"]}]}], "]"}], "+", 
        RowBox[{
         SuperscriptBox["Hypergeometric1F1", 
          TagBox[
           RowBox[{"(", 
            RowBox[{"1", ",", "0", ",", "1"}], ")"}],
           Derivative],
          MultilineFunction->None], "[", 
         RowBox[{"0", ",", 
          FractionBox["3", "2"], ",", 
          RowBox[{"-", 
           FractionBox[
            RowBox[{
             SuperscriptBox["v", "2"], " ", "\[Beta]"}], "2"]}]}], "]"}]}], 
       ")"}]}]}], ")"}]}], "\[Beta]"]], "Output",ExpressionUUID->"f90e4ae7-\
f4aa-4905-b3e9-8a21a1a8f816"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "test", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"v", "=", "0.9"}], ",", 
      RowBox[{"\[Beta]", "=", "2.3"}]}], "}"}], ",", 
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{"Abs", "[", 
       RowBox[{
        RowBox[{"NIntegrate", "[", 
         RowBox[{
          RowBox[{"2", 
           RowBox[{"Log", "[", 
            RowBox[{"Abs", "[", 
             RowBox[{"v", "-", "w"}], "]"}], "]"}], 
           SuperscriptBox["w", "n"], 
           RowBox[{"Gauss", "[", 
            RowBox[{"\[Beta]", ",", "w"}], "]"}]}], ",", 
          RowBox[{"{", 
           RowBox[{"w", ",", 
            RowBox[{"-", "\[Infinity]"}], ",", "\[Infinity]"}], "}"}]}], 
         "]"}], "-", 
        RowBox[{"ScatteredGaussPoly", "[", 
         RowBox[{"\[Beta]", ",", "v", ",", "n"}], "]"}]}], "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"n", ",", "0", ",", "5"}], "}"}]}], "]"}]}], "]"}]}]], "Input",\
ExpressionUUID->"579d8a96-1925-43b9-be8d-5fd2af7b03a2"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "1.5754064721817322`*^-13", ",", "2.2692958624680101`*^-13", ",", 
   "1.546818229060594`*^-12", ",", "7.797096301942731`*^-12", ",", 
   "1.1879761390640005`*^-14", ",", "3.552713682490209`*^-14"}], 
  "}"}]], "Output",ExpressionUUID->"a3f91e6e-7a0b-44f8-8ad5-f74dac709ad5"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"corresponds", " ", "to", " ", 
    RowBox[{"1", "/", "x"}], " ", "kernel"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"FullSimplify", "[", 
   RowBox[{"D", "[", 
    RowBox[{
     RowBox[{"ScatteredGauss", "[", 
      RowBox[{"\[Beta]", ",", "x"}], "]"}], ",", "x"}], "]"}], 
   "]"}]}]], "Input",ExpressionUUID->"2f6ba527-4be5-4943-8e85-c82415d2fe03"],

Cell[BoxData[
 RowBox[{"2", " ", 
  SqrtBox["2"], " ", 
  SqrtBox["\[Beta]"], " ", 
  RowBox[{"DawsonF", "[", 
   FractionBox[
    RowBox[{"x", " ", 
     SqrtBox["\[Beta]"]}], 
    SqrtBox["2"]], "]"}]}]], "Output",ExpressionUUID->"9812f8b4-23d1-4b3a-\
b3c4-609ba96cadb0"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Finite element basis functions", "Subsection",ExpressionUUID->"571d6d15-a5c4-41e5-97c2-a616c9c63355"],

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
   "]"}]}]], "Input",ExpressionUUID->"299199c3-78c8-4d37-940d-5d52ba6a4d07"],

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
        RowBox[{"-", "3"}], ",", "3"}], "}"}]}], "]"}]}], "]"}]}]], "Input",Ex\
pressionUUID->"20806a5a-87b2-4921-93f1-847ff90bea9e"],

Cell[BoxData[
 GraphicsBox[{{{{}, {}, 
     TagBox[
      {RGBColor[0.368417, 0.506779, 0.709798], AbsoluteThickness[1.6], 
       Opacity[1.], LineBox[CompressedData["
1:eJxTTMoPSmViYGDQAGIQnbx+wvv//9kPMECByG8pNes/CP4Rt6UxZT8QfLV7
O0+++YDgv+J5vPjmQwS/IMs0YvNhBL9O9daBtHYEf9Zs5Uln+RD8+fc78gM5
2eB8sQvB/pqirHD+iYBgl9OqLHC+h6ZqibISM5xvtS5m2Xl9Jjj/V1easJEm
I5z/9fuSqXHqDAj/KE0y2Zf7bz+Mb81av1k75Q+cP8XB3Nyx9hecnzwn4umr
+T/g/PPL5TgZZ32D8+V4Nhju3/YFzudSeHb+5apPcH5OSOuMFSs+wPkJh++f
lpv0Fs5Xsv0XeLTxJZy/MmPzw93bnsL5WZ83xnTPegjn69WxRrIp34bzpXZd
mP6CBcFn/Tb72qlnt+D8O7lGIf2rEPyu2Hh/CSME/7nNTlctx5tw/oLfOUZ+
8dfh/B5zi0IDRwS/vJh5g5Aygu/3eqbu9WfX4Py/t45pJOQh+FG7FOSLaq/C
+XelA9TWlSD4ADUEql4=
        "]], LineBox[CompressedData["
1:eJwB0QIu/SFib1JlAgAAACwAAAACAAAAzY5ahPw11b8A5hS8nIJ3PwiqTRr7
BNW/4DzgItYhjj/05RhZ3ebUvzDiVEt/tpQ/3yHkl7/I1L8gpjmFE1yaP7aZ
ehWEjNS/6JaB/J3Toj+i1UVUZm7Uv8j4cxlopqU/jRERk0hQ1L/AWmY2Mnmo
P2SJpxANFNS/mB5LcMYerj8TedQLlpvTvxhTCnL3tLQ/+P/5Ee96079cAEgo
yzy2P96GHxhIWtO/lK2F3p7Etz+olGok+hjTvxwIAUtG1Lo/PrAAPV6W0r+K
3vuRynnAP2nnLG4mkdG/iJPyahmZxj9+qwqhbQ3Pv8L+b47ba9E/12RsKq/j
xr+8aF1AeardP77dUDe2psa/YrMGre4F3j+mVjVEvWnGvwb+rxlkYd4/dEj+
Xcvvxb9RkwLzThjfPxAskJHn+8S/9N7TUhJD4D9J87P4HxTDv4kJeQXosOE/
dQP3jSGJvr+0XsNqk4zkP0T1v6cvD76/BgQYIU665D8S54jBPZW9v1mpbNcI
6OQ/rsoa9VmhvL/+8xVEfkPlP+aRPlySubq/SYloHWn65T9YIIYqA+q2v96z
DdA+aOc/d3oqjsmVrr8JCVg16kPqP07u8Navpq2/UNOyB79w6j8mYrcflres
v5idDdqTneo/1UlEsWLZqr8nMsN+PffqPzMZXtT7HKe/RlsuyJCq6z/ebyM1
XEifv4KtBFs3Ee0/jVewxihqnb/Kd18tDD7tPzw/PVj1i5u/EkK6/+Bq7T+a
Dld7js+Xv6DWb6SKxO0/Vq2KwcBWkL/A/9rt3XfuPwoqL6Ya8Yy/CMo1wLKk
7j9o+UjJszSJv0+UkJKH0e4/I5h8D+a7gb/eKEY3MSvvPwLPLGX+/nu/JvOg
CQZY7z+9bWCrMIZ0v229+9vahO8/8Rgo48Uaar+0h1aur7HvP9aHxvrQWF+/
NNaHxvrQ7z+yp3YI
        "]], LineBox[CompressedData["
1:eJwBgQJ+/SFib1JlAgAAACcAAAACAAAA1ofG+tBYXz801ofG+tDvP93Zaa+h
Tng/5YTjNShu7z8iOzZpb8d/P5y6iGNTQe8/M06BkR6ggz9U8C2RfhTvP3ev
TUvsGIs/xlt47NS67j8a4DMoU9WOP36RHRoAju4/XgiNAt1IkT82x8JHK2Hu
PwA5c99DBZU/qDINo4EH7j9Emj+ZEX6cP4oJolkuVO0/qo84QKQwrT8QZfUz
4YbqPwTEn7wHNK4/PguijD5W6j9f+AY5azevP26xTuWbJeo/irDqGBmfsD/L
/aeWVsTpPz4ZuRHgpbI/iZZa+csB6T+m6lUDbrO2PwHIv762fOc/eI2P5onO
vj/yKopJjHLkP45pgdZggsc/quE9vm683D+IywG15L7HP7NOffCoYdw/gi2C
k2j7xz+8u7wi4wbcP3fxglBwdMg/zJU7h1dR2z9geYTKf2bJP+9JOVBA5tk/
MYmHvp5Kyz82sjTiERDXP9SojabcEs8/wYIrBrVj0T/OCg6FYE/PP8rvajjv
CNE/yGyOY+SLzz/TXKpqKa7QP16YRxB2AtA/ym1Snjvxzz9TXEjNfXvQPwzW
TTANG80/PORJR41t0T+WpkRUsG7HPw30TDusUdM/YI9kOO0ruD8Q2jJjd3LT
PzzHnVlnorY/FMAYi0KT0z8M/9Z64Ri1PxqM5NrY1NM/xG5JvdUFsj8oJHx6
BVjUPzicXIR8v6c/KwpiotB41D/wC8/GcKykPy7wR8qbmdQ/qHtBCWWZoT81
vBMaMtvUPwC2TByb5pY/OKL5Qf371D9wlTGhg8CQPzyI32nIHNU/YOksTNg0
hT/NjlqE/DXVPwDmFLycgnc/Tpsx1Q==
        "]], LineBox[CompressedData["
1:eJxFx2tIUwEYxvGz6RoGHShd0Ba1FQpS9Cll2CwbDkUmhjZLMh01ScwhiW3O
ioqmcznhBKNoQUuoVCZasuw6UTfkBF3sYnN1NFcWytSFrk3Omqug3veBPw8/
ybG64iouQRCyP/39SdGBtN6G8X3EvymyrvjTz6Pzxfqkn3Z00by8rM2PLjd+
XHmo+QDWOZOk6096wQZbsJJpQ5+9MG7q7EFfUnZ4sxfR1IxUX3NqAuxIqR5w
633g6YbR3TrjJzBD84Rdt9ETmxVxnwc95nE/z+Yx4KGU4QpeC9rufNpqNU2C
K0L3mP7Ln8GLjwtH9LQffNfUodaYv4FTw47kxhtz4Kn+ra491Qtg1bXp1gD1
A3zzjsWlvLoETjyiXeAZQuBX6u7OYmMY/GCd8GikdgWcZpPM8pUsmNUZY46S
X+AAKyK7pKvgWydM70XbiZz/pva/sGxK5YDJOofcLeCCB3MfuQaECeCYtjKz
lEwEc/hvr++IoTPz60cKiDVglumZFSyhc2tpqjCMbo9+lTazaLFQZA5x+eC8
Q+b0d8lo65uqGioDvWt0y/xaA7pRlWWVn0MPz6hkTRfRBxPaLXNm9Jmc6E7a
hqafeLXNz9AbCpYFriF0uY8cDHnQwYiC1LxEb8xw9sqn0GrP69KmL+juksDq
/e9oWf22IkkQ3cLZGzm8jB6jyuxUBC0Un86jo+jjfVQwHkf/BlcO5tU=
        "]]},
      Annotation[#, 
       "Charting`Private`Tag$7403#1"]& ], {}}, {{}, {}, {}}}, {}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{None, None},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}, {Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{
   "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
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
  PlotRange->{{-3, 3}, {0., 0.9942602040816326}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"e69df6c3-5e7c-\
4771-bdb8-d7331cac4c26"]
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
     RowBox[{"h", ">", "0"}], "}"}]}]}], "]"}]], "Input",ExpressionUUID->\
"298b2557-fd46-416c-a211-c474b7eeb128"],

Cell[BoxData["h"], "Output",ExpressionUUID->"1b487469-1299-4a23-a806-4e76731db4c5"]
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
       RowBox[{"h", ">", "0"}], "}"}]}]}], "]"}]}]}]], "Input",ExpressionUUID-\
>"831729ed-4753-4bc1-954a-7624928dd41c"],

Cell[BoxData[
 FractionBox[
  RowBox[{"2", " ", "h"}], "3"]], "Output",ExpressionUUID->"6913e72e-2ef0-4fd7-aa09-24e51a63dcb8"],

Cell[BoxData[
 FractionBox["h", "6"]], "Output",ExpressionUUID->"fc1d31ed-c176-45fd-8063-1664891bc085"],

Cell[BoxData["0"], "Output",ExpressionUUID->"7d272208-fb1f-48e6-9c93-9bc7dc4497e5"]
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
       RowBox[{"-", "1"}]}], "]"}]}], ")"}]}]}]], "Input",ExpressionUUID->\
"07de77ec-9bba-40ce-abdb-a4c55f2aea88"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"HatGramMatrix", "[", 
    RowBox[{"h", ",", "6"}], "]"}], "//", "MatrixForm"}]}]], "Input",Expressio\
nUUID->"24432f2d-5963-4869-9913-5f8113794664"],

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
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",ExpressionUUID->"c114490c-0ad3-4d38-\
9eaa-a462ebde8985"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Finite element discretization of scattering kernel", "Subsection",ExpressionUUID->"462abb0a-bde3-41c2-95dc-806dc36a2626"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"HatScatteringIntegral", "[", 
   RowBox[{"h_", ",", "0"}], "]"}], ":=", 
  RowBox[{"h", " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"2", " ", 
      RowBox[{"Log", "[", "h", "]"}]}], "-", "3"}], 
    ")"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"HatScatteringIntegral", "[", 
   RowBox[{"h_", ",", "h_"}], "]"}], ":=", 
  RowBox[{"h", " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"2", " ", 
      RowBox[{"Log", "[", "h", "]"}]}], "+", 
     RowBox[{"4", 
      RowBox[{"Log", "[", "2", "]"}]}], "-", "3"}], 
    ")"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"HatScatteringIntegral", "[", 
   RowBox[{"h_", ",", "v_"}], "]"}], ":=", 
  RowBox[{
   RowBox[{"h", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"2", " ", 
       RowBox[{"Log", "[", "h", "]"}]}], "+", 
      RowBox[{"4", 
       RowBox[{"Log", "[", "2", "]"}]}], "-", "3"}], ")"}]}], "/;", 
   RowBox[{"v", "\[Equal]", 
    RowBox[{"-", "h"}]}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"HatScatteringIntegral", "[", 
   RowBox[{"h_", ",", "v_"}], "]"}], ":=", " ", 
  FractionBox[
   RowBox[{
    RowBox[{
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"h", "+", "v"}], ")"}], "2"], 
     RowBox[{"Log", "[", 
      RowBox[{"Abs", "[", 
       RowBox[{"h", "+", "v"}], "]"}], "]"}]}], "+", 
    RowBox[{
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"h", "-", "v"}], ")"}], "2"], " ", 
     RowBox[{"Log", "[", 
      RowBox[{"Abs", "[", 
       RowBox[{"h", "-", "v"}], "]"}], "]"}]}], "-", 
    RowBox[{"2", 
     SuperscriptBox["v", "2"], " ", 
     RowBox[{"Log", "[", 
      RowBox[{"Abs", "[", "v", "]"}], "]"}]}], "-", 
    RowBox[{"3", " ", 
     SuperscriptBox["h", "2"]}]}], "h"]}]}], "Input",ExpressionUUID->\
"804a1887-5e8c-476f-b5b7-6e9c5627e436"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "test", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"FullSimplify", "[", 
    RowBox[{
     RowBox[{"Limit", "[", 
      RowBox[{
       RowBox[{"HatScatteringIntegral", "[", 
        RowBox[{"h", ",", "v"}], "]"}], ",", 
       RowBox[{"v", "\[Rule]", "0"}], ",", 
       RowBox[{"Assumptions", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{"h", ">", "0"}], "}"}]}]}], "]"}], "-", 
     RowBox[{"HatScatteringIntegral", "[", 
      RowBox[{"h", ",", "0"}], "]"}]}], "]"}], "\[IndentingNewLine]", 
   RowBox[{"FullSimplify", "[", 
    RowBox[{
     RowBox[{"Limit", "[", 
      RowBox[{
       RowBox[{"HatScatteringIntegral", "[", 
        RowBox[{"h", ",", "v"}], "]"}], ",", 
       RowBox[{"v", "\[Rule]", "h"}], ",", 
       RowBox[{"Assumptions", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{"h", ">", "0"}], "}"}]}]}], "]"}], "-", 
     RowBox[{"HatScatteringIntegral", "[", 
      RowBox[{"h", ",", "h"}], "]"}]}], "]"}], "\[IndentingNewLine]", 
   RowBox[{"FullSimplify", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"Limit", "[", 
       RowBox[{
        RowBox[{"HatScatteringIntegral", "[", 
         RowBox[{"h", ",", "v"}], "]"}], ",", 
        RowBox[{"v", "\[Rule]", 
         RowBox[{"-", "h"}]}], ",", 
        RowBox[{"Assumptions", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"h", ">", "0"}], "}"}]}]}], "]"}], "-", 
      RowBox[{"HatScatteringIntegral", "[", 
       RowBox[{"h", ",", 
        RowBox[{"-", "h"}]}], "]"}]}], ",", 
     RowBox[{"Assumptions", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"h", ">", "0"}], "}"}]}]}], "]"}]}]}]], "Input",ExpressionUUID-\
>"846fadfa-836a-478a-9b87-0262c88b1d66"],

Cell[BoxData["0"], "Output",ExpressionUUID->"01fca743-cf0f-43b4-b3aa-cb4057f65c1b"],

Cell[BoxData["0"], "Output",ExpressionUUID->"4978fb7d-7e97-432b-a316-bcb68078bc6e"],

Cell[BoxData["0"], "Output",ExpressionUUID->"764b6c00-bcb0-41af-80a6-fd0011f57ed9"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "test", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"FullSimplify", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"Integrate", "[", 
       RowBox[{
        RowBox[{"2", 
         RowBox[{"Log", "[", 
          RowBox[{"v", "-", "w"}], "]"}], 
         RowBox[{"(", 
          FractionBox[
           RowBox[{"w", "+", "h"}], "h"], ")"}]}], ",", 
        RowBox[{"{", 
         RowBox[{"w", ",", 
          RowBox[{"-", "h"}], ",", "0"}], "}"}], ",", 
        RowBox[{"Assumptions", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"0", "<", "v"}], ",", 
           RowBox[{"v", "<", "h"}]}], "}"}]}]}], "]"}], "+", 
      RowBox[{"Integrate", "[", 
       RowBox[{
        RowBox[{"2", 
         RowBox[{"Log", "[", 
          RowBox[{"v", "-", "w"}], "]"}], 
         RowBox[{"(", 
          FractionBox[
           RowBox[{"h", "-", "w"}], "h"], ")"}]}], ",", 
        RowBox[{"{", 
         RowBox[{"w", ",", "0", ",", "v"}], "}"}], ",", 
        RowBox[{"Assumptions", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"0", "<", "v"}], ",", 
           RowBox[{"v", "<", "h"}]}], "}"}]}]}], "]"}], "+", 
      RowBox[{"Integrate", "[", 
       RowBox[{
        RowBox[{"2", 
         RowBox[{"Log", "[", 
          RowBox[{"w", "-", "v"}], "]"}], 
         RowBox[{"(", 
          FractionBox[
           RowBox[{"h", "-", "w"}], "h"], ")"}]}], ",", 
        RowBox[{"{", 
         RowBox[{"w", ",", "v", ",", "h"}], "}"}], ",", 
        RowBox[{"Assumptions", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"v", "<", "h"}], "}"}]}]}], "]"}], "-", 
      RowBox[{"HatScatteringIntegral", "[", 
       RowBox[{"h", ",", "v"}], "]"}]}], ",", 
     RowBox[{"Assumptions", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"0", "<", "v"}], ",", 
        RowBox[{"v", "<", "h"}]}], "}"}]}]}], "]"}], "\[IndentingNewLine]", 
   RowBox[{"FullSimplify", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"Integrate", "[", 
       RowBox[{
        RowBox[{"2", 
         RowBox[{"Log", "[", 
          RowBox[{"v", "-", "w"}], "]"}], 
         RowBox[{"(", 
          FractionBox[
           RowBox[{"w", "+", "h"}], "h"], ")"}]}], ",", 
        RowBox[{"{", 
         RowBox[{"w", ",", 
          RowBox[{"-", "h"}], ",", "0"}], "}"}], ",", 
        RowBox[{"Assumptions", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"0", "<", "h"}], ",", 
           RowBox[{"h", "<", "v"}]}], "}"}]}]}], "]"}], "+", 
      RowBox[{"Integrate", "[", 
       RowBox[{
        RowBox[{"2", 
         RowBox[{"Log", "[", 
          RowBox[{"v", "-", "w"}], "]"}], 
         RowBox[{"(", 
          FractionBox[
           RowBox[{"h", "-", "w"}], "h"], ")"}]}], ",", 
        RowBox[{"{", 
         RowBox[{"w", ",", "0", ",", "h"}], "}"}], ",", 
        RowBox[{"Assumptions", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"0", "<", "h"}], ",", 
           RowBox[{"h", "<", "v"}]}], "}"}]}]}], "]"}], "-", 
      RowBox[{"HatScatteringIntegral", "[", 
       RowBox[{"h", ",", "v"}], "]"}]}], ",", 
     RowBox[{"Assumptions", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"0", "<", "h"}], ",", 
        RowBox[{"h", "<", "v"}]}], "}"}]}]}], "]"}]}]}]], "Input",ExpressionUU\
ID->"b7d1f55f-b246-4dcd-95a3-73b85075300b"],

Cell[BoxData["0"], "Output",ExpressionUUID->"83d12aa4-dec8-461b-9fec-6924d3314993"],

Cell[BoxData["0"], "Output",ExpressionUUID->"07d5c478-d3f3-4e8a-a901-378a9562114f"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"h", "=", 
     FractionBox["1", "3"]}], "}"}], ",", 
   RowBox[{"Plot", "[", 
    RowBox[{
     RowBox[{"HatScatteringIntegral", "[", 
      RowBox[{"h", ",", "v"}], "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"v", ",", 
       RowBox[{"-", "2"}], ",", "2"}], "}"}], ",", 
     RowBox[{"AxesLabel", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
       "\"\<v\>\"", ",", 
        "\"\<\[Integral]2Log[v-w] \!\(\*SubscriptBox[\(f\), \(hat\)]\)[w]\
\[DifferentialD]w\>\""}], "}"}]}], ",", 
     RowBox[{"PlotLabel", "\[Rule]", 
      RowBox[{"\"\<h=\>\"", "<>", 
       RowBox[{"ToString", "[", 
        RowBox[{"InputForm", "[", "h", "]"}], "]"}]}]}]}], "]"}]}], 
  "]"}]], "Input",ExpressionUUID->"5b0a583e-b5b0-4dcc-9171-13cc284e9093"],

Cell[BoxData[
 GraphicsBox[{{{{}, {}, 
     TagBox[
      {RGBColor[0.368417, 0.506779, 0.709798], AbsoluteThickness[1.6], 
       Opacity[1.], LineBox[CompressedData["
1:eJwVjmkwnAcAhlXpJFK3RhG6yMiuutPQJuRzDjJDG5MtVurqhIw4UqWkRBBB
TmlaKqpClIgkpVLqmHjXJs66wx7sZ9eudVsSx2LIVn+88/x45pl5jcPj/M4p
KigoOO3tf1oRB+flcjnSw2kTBZdIIm7LNHdrWw5h2TXKeDxJ1D63NVtdlyOU
PHfaKJok7Kg+4dMLctQa0i+XBZOEg2bWWC9nr08OXCtyIwln8Zue+zVyKGy/
1GSokoRfTt+ToyFy3C0o/vWDUj6RNJAVE9n6Ds5BHo+VWOPEyMiB+bawXVA8
ih1SB3mEITNOx+HQDu6WnFWMnOcQ9RdeKauT28jdGKpvlY0SobdsV3iZWxj0
yhz8Ga+JzXspuSA2YSOidqj8NESUq03oFU5uwEsrx7HWpJ8oPmUb//r6Oi52
b6okLnYRmdFhyTTvNXQZSAK2mS+JlPerk+KX3oKr3JvwY04LEZY+cJhd9QY2
rbx9D1VqiPwXksLiqBWEfmNpnDCQTTQLqB8+NZHi490wp0NmVTDVcHY9U7IA
pRR/t/rTLagzz40SiWeh/OltelRvBwTtf1Hs7adxK4iynHFxEBKLfDs0iKET
/HReq3MU5mkV0tknYtT51nbzBaOIHaiv1ioT43N1/Xf1m6PY/I5tEnFTjJ6W
xMYCczZU/tHVVg0Vo7v1RIN2Hhs2LkWrjP1iRLfFZKoFcZBCf/D3RpAIc1+F
9FfKudBMe2xv9d4kalwrjQwy+MhuoHZpyISQugzvXivmY1v6KHB1UYjhpC2a
UiMfopDK1EauEJC1Tx5f5qPOpZzlWitE5tvLFvnBJPyUf/f1DxHi1DM7qp7L
BI7oGfcppAjgFX+jinpACI0bn6y0Rwhg1J3z9VF9ITa3DbVv+glQUPhiypsm
RBdfP/AjcwG+YNNlRZ5CnC/VkdB4E7DxjGQMZAlRfWTfrp/DBLy9X9Hy935b
2C9bVKzycaHZnPRQFiHC6sqVJpKPFp/K9jBdER6YqQ/3dfLh/gfvUh5NBC1d
66SN3/hIqDNYpPiKIJPFtnm673kH0TNKoQisJil9/pdx3OFpD7ZYixHgJE2z
th/D2dIMl6HYKdw7ljbkRhnD7vXO4zlXp/CvpdrhAJUx7HgXr9ELp3DSyKo7
fYIHRkgPeZI1BVN5jPZwNg8HWeYMT10JpMylRwkcLhy/J8rSOyS46r402JTM
wfBzrtN9xxmwvBa//OxbDuocRxKbz8xAwWeh/08fDqbU66MUY2aQSp/rLTfh
oIJGY+4vmcEPEZKu271scC0T19UUZ3E+l2SGUdioLfN/uDQ8C0bWzrETUaOY
ziNVqcw5/AcBdyrm
        "]], LineBox[CompressedData["
1:eJwVx3881HcAx/HLFjJZP4aKLlqUK6EkV6N4+NGmQvSD1KYfo9jIjxsVlcqj
lDo3c8klv4oov+6SH/FedReXxLlLze2qh3WGcJpz7r4f81j74/V4Pl7WB2J2
HNaj0Wjffep/A2wrE2I2v0QnYvUXUoPI6HrucK5Whg8Mlr2heAhtsvbKaZ4M
AusY36jBIXgrxHfHj8mgpcuYcsYHuI+KyhQWMkiGmnhLqz/AcU5LQU2MFKna
nuHnj4dhGlzJDjHvxqucqQE7mgq1tpcavT/rhqI+/caepSoE6CLeO6kk6OuO
TrvmpUJGvrWrUasElg6Nud9eVGF6IPttI0uCZTGfS6tnjaE/5cRqy54uJNm0
JlPZY/jZP+tas10nHDVKp4rKj6jViL5sW/YMOu1kdXvfOK6UFz1214mhsN9Q
JJgYR9T+U4n3O8Q4/pBVwzVUY9lTV3kRSwzpo3g3v9Vq5PxWcTulrQ1mCyK5
4clqHHfOclsb3YrpbX+KzE0m4BkXFpXPF0JOO21h7KgB3ZZJN70gxPZnvuue
emhA/jCVXAoTwrqwaiouSAOBR6dL8kwhIsuz84tZGtjO9dQL3v0EawtfHwl9
qIFR9fLcWeQRYm8ftPnbaxK35MrMwXMtcHM4MSLYokXvSbObN9a2QMVfmrh5
txYmdN/qwL5mVOQNrmw4rAXrh7Luhk3NaLpuvf5YmhY+yqPmGVQTLHNlFhON
WgyMqgoYsQ042hGwwnSFDpZsq9o39AYM5ylTdq3TIcAp8Amnox4lLon6Zzx1
qI+vVVKMeqQeU+Wxw3S4qE1gtCvr8N4sjs65qgNDj+JH7RXgn46+acWYDvuL
GaIlRgL87ukRw57SgeO1t0daz0fYnJD9yw0pUOkPtRvN+GDYcyNnLKHQ/sUp
N2NJDYJZ7LowPwqvGYZXQjIrccA0VPl9PoXNPx2pfjR0D7vEFfqOZRTKqp51
2225h1SjN81vaigkO2eaU3p3wcn66NwjpLDIfV7h9aQ7OF9fVms1SGFfoKVA
frAEU6JE1zoGwfD4BDNRWAy/ETvG3DUEJ3M6YWJTjEN1ksVeTAKePK3do78Q
0ZfVeQ6+BKtSwwLlPoVY9M6qr38bQZOVy6uE0gJstR4siA8mELR3i/wl+ej9
xgxG4QSyOemSNM4NzJe/LJsfQTC+k6m4H8SD1dZWuiqaYM27m2qLnly4PDeI
XpREEGgTRPPnXoPRuYmLkSkEsUf1jdP2cFE5Eo/zaQRV6uivB3qzkfpg5JTd
ZYIXTCsHC96vCK3oH73HJhhNlW7Yvo+D4+GTzH+zCWYL033O0LPwqih0uVku
wZ55CSWRuIokVkjEJI+Ay+tteuGRiTGTCfbNAoIeWw+pszADSveWxbNLCL6q
KR267nMBMvWVQ+6lBEEbTfRmiM8jQyPgOJUTcEQJCyP8zqLc9W3R+7sEXf5y
x46O09hxhB+ws4qALjjL/rHgJLpmMAzO1BDktQVgza1fkGPv+fQQn2CBYvHo
9J04xNHW66YEBCv/esnM2ReFVbdk9t51BLbGsdzVEeHY7RV/dv0DAuZMh9J3
ymAYSL2D73z6/wBYZal5
        "]], LineBox[CompressedData["
1:eJwVxX041AccAPAUXVt1PLEX6xLnIWdDmIzGt/KS9yHlpkRbqoXcqpt5SeHE
GR6OZBEmee9cdV5K+ubtmddxd509KQ+yPXR0c52Xu9+PbPvj83yMvosJjNi4
YcMGt//8v4OWVfXk30FAkbgF1baQmJDv3h/5JQs4Y3lBtU0kvk+KKy6zYsOJ
/Jvr9kISr51viJKYx4PeTDM17gGJm45NOFFMr4IjLseyBCR2GXLTb+ukQMil
z5OM+CRyCuks+xwOCD1MZnLqSXTf9oQp2poOY84sWlsNiZSUowcjuVxY4dYd
qLlLYu+KnKFFyYJfKXbOzAoSM6MzdpRxcmBbPYoGS0msUuReoSXnQica8CjF
JJ49a36m+T0P6Inyb6U8Ej3osSGpTgXwePSoRmQOiWbjXX7+iTcgvMeONsgl
URYYai9T34RQW2PdpaskRjnnbjFYKoG4U/n8tR9I9FW/WpXZlkJzpgNt62kS
LYUMRcvFMqjafCphLpREVcHUvJmqHDr2eWqbBZD46MMEaSf7DoS0XdSttCOx
3OIjSSO9Eny4zuNPLEi87t84UjJcCa/+qX5fZUJiUOH0wE+MKggbjLd+p0fi
gpFPp/l4DTQnSTmxCgJNHXY18lz5UPnuyIXeCgK3nWhpuKrgw+LgwE7XIgKV
SQF1UaWNYGXb+uxWNoHhrzsDjRMF8OBS3fRYLIGWZiu+a9L7sOfNcsNDLwL7
Hoa53ucKIdImLZEhU+PXPV907ZkUgquH253McTUKRtUHS/c1gS2mlw+NqLFQ
nQ+/TDdBlQm3hGhW42nodYxwagHNWKKbSFbjev9ea33FIxAdunF+aoca7V5r
GCQzEZbaq/VS6Sq0fBys2FuL0L0fGWJdFZry7nVPqhEEX9mhtpYKt/7WYFfu
+wxuDxR4B8+s4Ko/89W6/BkkUrxVu+pXcFzQyEDrTjhQIVhttVrBMtbJbqeW
btjXJpzLs1xG44U2tWNnH8RHMNl52xcxcciFs/i2D+6VaFKLCSWO1g1Q+fr9
IP6YXlM6o8TMiJfGRj/2g3ZOxkhBhxIXxghfiuEAaCR1pLmwlfi0x6FCcmUQ
3HX0UydevsOQ4havKIdh8CkJKO+qVqDwZ5CaRAyDwSyTwylQIPXY72ETucPw
wYzI9XCyAjt0/rwcODsM4X6jUZIQBeq5JHxT4j0CQjf64naqAhNab8WlECNg
IxUOeLEX0PPOiyE/phgOFfYoqTw5LqTxz/REi6GMEyl6ES3HonOp6/tTxTA/
Yk+0ecpx1sLCmsEXQ0z71JE+DTlmtF4r2KQpgTqGo9/uS2+xd2jP8dZGCWRn
67pcPz6PLMGq0rJHAjWa2n/tdZjHT/NFWXfHJKDdLkrd+Mk8nmMmPOVpPYeg
aj1jQ8kcbpn+wyj6+HNo7nu0dsF3Dg+r2LNGFCl8fzIreKePDOVjXslFNCkk
scVUmoUMC9t3f6ZtIwXatGcIiypDf1P+5ZgDUhhG1mZ94g3+Cw9uV2M=
        "]], LineBox[CompressedData["
1:eJwVjn8w23ccxjOK0CbtDFs38SN3tNQ063Wlxb11yrFGD6vayUqEqqULqjXi
NnRKVa1+NB36YzNSadj82NYzEz4MC1MlVJLK96u+qWasW9H6ESn5Lvvjueee
u9c9z+PKS4s6ZUahUMCk/z324sb7fvxJ0JXhtN0986iIxmhR/jQJSdrGH3fF
z6M/mP2ZV+KUkK9aiLApmkPB4bbmK/dU0GHObER6HbqaYL20PqSCe7EhXWNa
HVJnUh4bcRWwUzzPUUZ0iP/t89+olmpw4ueOdHxv4hf+zHA8oYbDss7oS2wT
X1GgDVpVQ/FRG+d9kqeIr1zurTwwBZby7LZzqbOoLF6Vz2rHYN37iJTno0VF
//iD7j4GnsdtmcfdtChXWLd5U4vBp5frvGPe0KLUa4IcKzoOh1f1vIoFAh2T
m5+fTsKBd7jGoLhLIPpe1ulS22mo1PioEp0IdNVYHD4neAwlHIsts3YzSH6M
QYuwJaCvOU+sjMKQnTfhkOFIgGjAbrTSB0Nc2h0XkTsB47ToZwmOGDIMe+1X
HyKgiugp9NVpkFeYP4ebSICdD3j152hQeRBHmv4LAV9J3dMCJFMo1rcmuOKE
FrQMmZMl7RH619U+d/zGE0gU/O5ga6VEmef3JJQ56KC2ajnZvnUMqbAdUcmD
cyBwXNu1+a4ccYX+f1mxn4E+jeqyGteF+vb4lPRZPAfRe4r7pzOlyN1aNicO
XYR8logu25YFDNmZYIviJeBeztPNFfwAFIOZNEP7AnoYVlcmmJ2wFtkVN+C2
DNQVT/GoRx9o9se/43ZxBajX42t/nhyE9JgdrzOxVdAPOdQ50x/ATtHsx1sY
ehhbq5sJ/EgBzZxaycvsdaDoGkTa5gmICcgLHewyQMpbeyO/G5iEtjgB89DG
K9Cfeik526ECvU2QeUf0JrR6hPU/7X4EUQq/A4xqIyy+6eibU6oBG7+tvbLb
RhhTvjrJEWmgVzx19JN6I+S3t9D8bmmAlS1MuNlshHR277bVJg3QndtLdw6Y
ctOv1bHDGhj6bN8T+xdGYE0kcKetMQikepTT2STURsTwHhZioD+rf7s5koR0
0m740tcYtGjkd8JjSGBFX3hw8DoGTi3JnaU8E28USGrEGGxEi3U2QhLK51FL
aB8G7fXOAVYNJLRuFZckUXBIpS3IG5pMfYrGqdeoOLhndUeFtJGwmMMdub0d
B9GHJ1MKZSTMbB+9pXDCIWPpxjXzCRJ6vkxZ2h2AgyeH71SvNu3lVSV1HsGB
6D8o/WCaBJdWTi6bjUNEtbr7wjwJ3MEKCZ+DA9XsbpjrAgmBDEP7Gg8HdCbr
Yc+y6c8Xs+kFfBw+nwyJ5xpM/cLhcVoGDt7g8DdJkpDP85j+RojDf80lD00=

        "]]},
      Annotation[#, 
       "Charting`Private`Tag$21712#1"]& ], {}}, {{}, {}, {}}}, {}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox[
    "\"\[Integral]2Log[v-w] \\!\\(\\*SubscriptBox[\\(f\\), \\(hat\\)]\\)[w]\
\[DifferentialD]w\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}, {Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{
   "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
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
  PlotLabel->FormBox["\"h=1/3\"", TraditionalForm],
  PlotRange->{{-2, 2}, {-1.7323392192749354`, 0.4605462235972837}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"11c2379c-421d-\
44a9-a579-bd3cdcee8a00"]
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
     RowBox[{"Norm", "[", 
      RowBox[{
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"Abs", "[", 
          RowBox[{
           FractionBox[
            RowBox[{"NIntegrate", "[", 
             RowBox[{
              RowBox[{"2", 
               RowBox[{"Log", "[", 
                RowBox[{"Abs", "[", 
                 RowBox[{"v", "-", "w"}], "]"}], "]"}], 
               RowBox[{"HatFunction", "[", 
                RowBox[{"h", ",", "w"}], "]"}]}], ",", 
              RowBox[{"{", 
               RowBox[{"w", ",", 
                RowBox[{"-", "h"}], ",", "h"}], "}"}]}], "]"}], 
            RowBox[{"HatScatteringIntegral", "[", 
             RowBox[{"h", ",", "v"}], "]"}]], "-", "1"}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"v", ",", 
           RowBox[{"-", "2"}], ",", "2", ",", 
           RowBox[{"1", "/", "5"}]}], "}"}]}], "]"}], ",", "\[Infinity]"}], 
      "]"}]}], "]"}], "\[IndentingNewLine]"}]}]], "Input",ExpressionUUID->\
"e76ca031-615a-43e9-b3a9-687035afef19"],

Cell[BoxData["4.4575454438700035`*^-13"], "Output",ExpressionUUID->"20ae74b5-2196-4afe-8fa3-72b502cc28ad"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Limit", "[", 
  RowBox[{
   FractionBox[
    RowBox[{"HatScatteringIntegral", "[", 
     RowBox[{"h", ",", "v"}], "]"}], 
    RowBox[{"h", " ", "2", 
     RowBox[{"Log", "[", "v", "]"}]}]], ",", 
   RowBox[{"v", "\[Rule]", "\[Infinity]"}], ",", 
   RowBox[{"Assumptions", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"h", ">", "0"}], "}"}]}]}], "]"}]], "Input",ExpressionUUID->\
"be36f9af-85b3-4da2-87dc-b05f8cb45b87"],

Cell[BoxData["1"], "Output",ExpressionUUID->"f00d22af-5e68-4f97-b87c-9b5b7231e48c"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"h", "=", 
      FractionBox["1", "3"]}], "}"}], ",", 
    RowBox[{"NIntegrate", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"HatFunction", "[", 
        RowBox[{"h", ",", "v"}], "]"}], "2", 
       RowBox[{"Log", "[", 
        RowBox[{"Abs", "[", 
         RowBox[{"v", "-", "w"}], "]"}], "]"}], 
       RowBox[{"HatFunction", "[", 
        RowBox[{"h", ",", "w"}], "]"}]}], ",", 
      RowBox[{"{", 
       RowBox[{"v", ",", 
        RowBox[{"-", "h"}], ",", "h"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"w", ",", 
        RowBox[{"-", "h"}], ",", "h"}], "}"}]}], "]"}]}], "]"}]}]], "Input",Ex\
pressionUUID->"40ecec62-058c-44a0-88c5-0d2e9232e2c5"],

Cell[BoxData[
 RowBox[{"-", "0.5017220764477165`"}]], "Output",ExpressionUUID->"c9b621c7-027b-4375-890a-467840dab51d"]
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
     FractionBox["25", "6"]}], ")"}]}]}]}], "Input",ExpressionUUID->"e9dc4ddd-\
b1d7-4150-bb8d-b2cdd1e70131"],

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
   RowBox[{"k", "\[Rule]", "\[Infinity]"}]}], "]"}]], "Input",ExpressionUUID->\
"5655ae7c-638f-477a-9fb1-cf9ea30487d2"],

Cell[BoxData["1"], "Output",ExpressionUUID->"04ff13f8-939c-43e4-a70a-2440fd635c55"]
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
   RowBox[{"(*", " ", 
    RowBox[{"check", " ", 
     RowBox[{"(", 
      RowBox[{"actually", " ", "agrees"}], ")"}]}], " ", "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{"FullSimplify", "[", 
    RowBox[{"%", "-", 
     RowBox[{"HatScatteringOverlap", "[", 
      RowBox[{"h", ",", "0"}], "]"}]}], "]"}]}]}]], "Input",ExpressionUUID->\
"3e8d24ce-be15-4fc9-876e-32b5c10d3c7f"],

Cell[BoxData[
 RowBox[{
  FractionBox["1", "6"], " ", 
  SuperscriptBox["h", "2"], " ", 
  RowBox[{"(", 
   RowBox[{
    RowBox[{"-", "25"}], "+", 
    RowBox[{"3", " ", "\[ImaginaryI]", " ", "\[Pi]"}], "+", 
    RowBox[{"16", " ", 
     RowBox[{"Log", "[", "2", "]"}]}], "+", 
    RowBox[{"3", " ", 
     RowBox[{"Log", "[", 
      RowBox[{"-", "h"}], "]"}]}], "+", 
    RowBox[{"9", " ", 
     RowBox[{"Log", "[", "h", "]"}]}]}], ")"}]}]], "Output",ExpressionUUID->\
"b01afdfc-0813-44a9-8802-31d3496f54f5"],

Cell[BoxData[
 RowBox[{
  FractionBox["1", "2"], " ", 
  SuperscriptBox["h", "2"], " ", 
  RowBox[{"(", 
   RowBox[{
    RowBox[{"\[ImaginaryI]", " ", "\[Pi]"}], "+", 
    RowBox[{"Log", "[", 
     RowBox[{"-", "h"}], "]"}], "-", 
    RowBox[{"Log", "[", "h", "]"}]}], ")"}]}]], "Output",ExpressionUUID->\
"b33f1f4c-03b9-4fa7-8070-6b8e62680278"]
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
   RowBox[{"(*", " ", 
    RowBox[{"check", " ", 
     RowBox[{"(", 
      RowBox[{"actually", " ", "agrees"}], ")"}]}], " ", "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{"FullSimplify", "[", 
    RowBox[{"%", "-", 
     RowBox[{"HatScatteringOverlap", "[", 
      RowBox[{"h", ",", "1"}], "]"}]}], "]"}]}]}]], "Input",ExpressionUUID->\
"e65c47d3-01e6-47ac-b6ce-f0f31118aa0c"],

Cell[BoxData[
 RowBox[{
  FractionBox["1", "12"], " ", 
  SuperscriptBox["h", "2"], " ", 
  RowBox[{"(", 
   RowBox[{
    RowBox[{"-", "50"}], "+", 
    RowBox[{"\[ImaginaryI]", " ", "\[Pi]"}], "-", 
    RowBox[{"80", " ", 
     RowBox[{"Log", "[", "2", "]"}]}], "+", 
    RowBox[{"81", " ", 
     RowBox[{"Log", "[", "3", "]"}]}], "+", 
    RowBox[{"Log", "[", 
     RowBox[{
      RowBox[{"-", "65536"}], " ", "h"}], "]"}], "+", 
    RowBox[{"23", " ", 
     RowBox[{"Log", "[", "h", "]"}]}]}], ")"}]}]], "Output",ExpressionUUID->\
"28a9dba0-2289-4253-b0a0-a6f4af80424a"],

Cell[BoxData[
 RowBox[{
  FractionBox["1", "12"], " ", 
  SuperscriptBox["h", "2"], " ", 
  RowBox[{"(", 
   RowBox[{
    RowBox[{"\[ImaginaryI]", " ", "\[Pi]"}], "+", 
    RowBox[{"Log", "[", 
     RowBox[{"-", "h"}], "]"}], "-", 
    RowBox[{"Log", "[", "h", "]"}]}], ")"}]}]], "Output",ExpressionUUID->\
"e13cf10d-40a9-41d9-ad49-da9a14f7b5bb"]
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
   "]"}]}]], "Input",ExpressionUUID->"13ea61df-0304-4176-8d50-711c5d30dcc6"],

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
      RowBox[{"2", "+", "k"}], "]"}]}]}], ")"}]}]], "Output",ExpressionUUID->\
"70909aaf-7026-435c-bd14-a7056219d597"]
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
   "\[IndentingNewLine]"}]}]], "Input",ExpressionUUID->"6148d299-04d8-441a-\
97f8-0688a3834fce"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "1.6494357435448137`*^-8", ",", "2.6407642739201265`*^-9", ",", 
   "5.322936535989697`*^-10", ",", "1.261517557082925`*^-10", ",", 
   "2.6251667506471676`*^-11", ",", "4.872313663639716`*^-11"}], 
  "}"}]], "Output",ExpressionUUID->"a01cba18-88e5-4c4c-966b-31ac031cd5bd"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Finite element discretization of 1/x kernel", "Subsection",ExpressionUUID->"a6004ea4-234d-4ba1-8b84-fcf5573550c4"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"FullSimplify", "[", 
  RowBox[{
   RowBox[{"Integrate", "[", 
    RowBox[{
     RowBox[{
      FractionBox["2", 
       RowBox[{"w", "-", "v"}]], 
      RowBox[{"(", 
       FractionBox[
        RowBox[{"v", "+", "h"}], "h"], ")"}]}], ",", 
     RowBox[{"{", 
      RowBox[{"v", ",", 
       RowBox[{"-", "h"}], ",", "0"}], "}"}], ",", 
     RowBox[{"Assumptions", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"w", ">", "0"}], ",", 
        RowBox[{"h", ">", "0"}]}], "}"}]}]}], "]"}], "+", 
   RowBox[{"Integrate", "[", 
    RowBox[{
     RowBox[{
      FractionBox["2", 
       RowBox[{"w", "-", "v"}]], 
      RowBox[{"(", 
       FractionBox[
        RowBox[{"h", "-", "v"}], "h"], ")"}]}], ",", 
     RowBox[{"{", 
      RowBox[{"v", ",", "0", ",", "h"}], "}"}], ",", 
     RowBox[{"Assumptions", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"w", ">", "0"}], ",", 
        RowBox[{"w", "<", "h"}], ",", 
        RowBox[{"h", ">", "0"}]}], "}"}]}], ",", 
     RowBox[{"PrincipalValue", "\[Rule]", "True"}]}], "]"}]}], "]"}]], "Input",\
ExpressionUUID->"d009cf90-1069-4e74-9779-fa11c84f415c"],

Cell[BoxData[
 FractionBox[
  RowBox[{
   RowBox[{
    RowBox[{"-", "2"}], " ", "h", " ", 
    RowBox[{"Log", "[", 
     RowBox[{
      RowBox[{"-", "1"}], "+", 
      FractionBox["h", "w"]}], "]"}]}], "-", 
   RowBox[{"2", " ", "w", " ", 
    RowBox[{"Log", "[", 
     FractionBox["w", 
      RowBox[{"h", "-", "w"}]], "]"}]}], "+", 
   RowBox[{"2", " ", 
    RowBox[{"(", 
     RowBox[{"h", "+", "w"}], ")"}], " ", 
    RowBox[{"Log", "[", 
     FractionBox[
      RowBox[{"h", "+", "w"}], "w"], "]"}]}]}], "h"]], "Output",ExpressionUUID\
->"06060087-da9b-4d74-9a53-780ddea674ac"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"FullSimplify", "[", 
  RowBox[{
   RowBox[{"Integrate", "[", 
    RowBox[{
     RowBox[{
      FractionBox["2", 
       RowBox[{"w", "-", "v"}]], 
      RowBox[{"(", 
       FractionBox[
        RowBox[{"v", "+", "h"}], "h"], ")"}]}], ",", 
     RowBox[{"{", 
      RowBox[{"v", ",", 
       RowBox[{"-", "h"}], ",", "0"}], "}"}], ",", 
     RowBox[{"Assumptions", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"w", ">", "h"}], "}"}]}]}], "]"}], "+", 
   RowBox[{"Integrate", "[", 
    RowBox[{
     RowBox[{
      FractionBox["2", 
       RowBox[{"w", "-", "v"}]], 
      RowBox[{"(", 
       FractionBox[
        RowBox[{"h", "-", "v"}], "h"], ")"}]}], ",", 
     RowBox[{"{", 
      RowBox[{"v", ",", "0", ",", "h"}], "}"}], ",", 
     RowBox[{"Assumptions", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"w", ">", "h"}], "}"}]}]}], "]"}]}], "]"}]], "Input",Expression\
UUID->"6a6542b4-38e8-48d8-a5f6-16f5d0785ebf"],

Cell[BoxData[
 RowBox[{"ConditionalExpression", "[", 
  RowBox[{
   FractionBox[
    RowBox[{"2", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"\[ImaginaryI]", " ", "\[Pi]", " ", "w"}], "-", 
       RowBox[{"h", " ", 
        RowBox[{"Log", "[", 
         RowBox[{"1", "-", 
          FractionBox["h", "w"]}], "]"}]}], "+", 
       RowBox[{"w", " ", 
        RowBox[{"Log", "[", 
         RowBox[{
          RowBox[{"-", "1"}], "+", 
          FractionBox["h", "w"]}], "]"}]}], "+", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"h", "+", "w"}], ")"}], " ", 
        RowBox[{"Log", "[", 
         FractionBox[
          RowBox[{"h", "+", "w"}], "w"], "]"}]}]}], ")"}]}], "h"], ",", 
   RowBox[{"w", "\[LessEqual]", "0"}]}], "]"}]], "Output",ExpressionUUID->\
"2d2b25a2-9d3a-4f33-8dd6-c8d32cf84e17"]
}, Open  ]],

Cell[BoxData[{
 RowBox[{
  RowBox[{"HatScatteringDerivIntegral", "[", "0", "]"}], ":=", 
  "0"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"HatScatteringDerivIntegral", "[", "0.", "]"}], ":=", 
  "0"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"HatScatteringDerivIntegral", "[", "1", "]"}], ":=", 
  RowBox[{"4", 
   RowBox[{"Log", "[", "2", "]"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"HatScatteringDerivIntegral", "[", 
   RowBox[{"-", "1"}], "]"}], ":=", 
  RowBox[{
   RowBox[{"-", "4"}], 
   RowBox[{"Log", "[", "2", "]"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"HatScatteringDerivIntegral", "[", "x_", "]"}], ":=", 
  RowBox[{"2", " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{"(", 
       RowBox[{"1", "+", "x"}], ")"}], " ", 
      RowBox[{"Log", "[", 
       RowBox[{"Abs", "[", 
        RowBox[{"1", "+", 
         FractionBox["1", "x"]}], "]"}], "]"}]}], "-", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"1", "-", "x"}], ")"}], " ", 
      RowBox[{"Log", "[", 
       RowBox[{"Abs", "[", 
        RowBox[{"1", "-", 
         FractionBox["1", "x"]}], "]"}], "]"}]}]}], ")"}]}]}]}], "Input",Expre\
ssionUUID->"ec37354f-2278-4ca5-85be-3caa76d3573f"],

Cell[BoxData[
 RowBox[{
  RowBox[{"HatScatteringDerivIntegral", "[", 
   RowBox[{"h_", ",", "w_"}], "]"}], ":=", 
  RowBox[{"HatScatteringDerivIntegral", "[", 
   FractionBox["w", "h"], "]"}]}]], "Input",ExpressionUUID->"eadfcd33-9879-\
4ffc-b763-c0a17de33ed1"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"Limit", "[", 
  RowBox[{
   RowBox[{"HatScatteringDerivIntegral", "[", "x", "]"}], ",", 
   RowBox[{"x", "\[Rule]", "1"}]}], "]"}], "\[IndentingNewLine]", 
 RowBox[{"Limit", "[", 
  RowBox[{
   RowBox[{"HatScatteringDerivIntegral", "[", "x", "]"}], ",", 
   RowBox[{"x", "\[Rule]", 
    RowBox[{"-", "1"}]}]}], "]"}]}], "Input",ExpressionUUID->"6d80e087-6a13-\
4958-afeb-521739dfe5af"],

Cell[BoxData[
 RowBox[{"Log", "[", "16", "]"}]], "Output",ExpressionUUID->"928f8659-a383-4a16-87f8-b451d26554b9"],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", "4"}], " ", 
  RowBox[{"Log", "[", "2", "]"}]}]], "Output",ExpressionUUID->"01a7c8f8-3dfb-\
449d-b641-89351c600c19"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Series", "[", 
  RowBox[{
   RowBox[{"2", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{"1", "+", "x"}], ")"}], " ", 
       RowBox[{"Log", "[", 
        RowBox[{"1", "+", 
         FractionBox["1", "x"]}], "]"}]}], "-", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"1", "-", "x"}], ")"}], " ", 
       RowBox[{"Log", "[", 
        RowBox[{"1", "-", 
         FractionBox["1", "x"]}], "]"}]}]}], ")"}]}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", "\[Infinity]", ",", "2"}], "}"}]}], "]"}]], "Input",Expr\
essionUUID->"1e73f05d-4a1a-4e32-b42a-3745354881cb"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   FractionBox["2", "x"], "+", 
   InterpretationBox[
    SuperscriptBox[
     RowBox[{"O", "[", 
      FractionBox["1", "x"], "]"}], "3"],
    SeriesData[$CellContext`x, 
     DirectedInfinity[1], {}, 1, 3, 1],
    Editable->False]}],
  SeriesData[$CellContext`x, 
   DirectedInfinity[1], {2}, 1, 3, 1],
  Editable->False]], "Output",ExpressionUUID->"50bdeb4c-da20-4fb2-b455-\
e5f831127212"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"odd", " ", "function"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"Plot", "[", 
   RowBox[{
    RowBox[{"HatScatteringDerivIntegral", "[", "x", "]"}], ",", 
    RowBox[{"{", 
     RowBox[{"x", ",", 
      RowBox[{"-", "3"}], ",", "3"}], "}"}]}], "]"}]}]], "Input",ExpressionUUI\
D->"e1051be7-227e-429b-8632-562ed1f1fbd6"],

Cell[BoxData[
 GraphicsBox[{{{{}, {}, 
     TagBox[
      {RGBColor[0.368417, 0.506779, 0.709798], AbsoluteThickness[1.6], 
       Opacity[1.], LineBox[CompressedData["
1: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
tMZ8CYsU/Xed2ws2hWXBqW3tWhb5C8/Nhfw=
        "]], LineBox[CompressedData["
1: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
OfR2
        "]], LineBox[CompressedData["
1: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

        "]], LineBox[CompressedData["
1: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
bLYmz6mTDxG3uMKlJS1XDbLRPT78AxXNKkA=
        "]]},
      Annotation[#, 
       "Charting`Private`Tag$99671#1"]& ], {}}, {{}, {}, {}}}, {}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{None, None},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}, {Automatic, 
     Charting`ScaledFrameTicks[{Identity, Identity}]}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{
   "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
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
  PlotRange->{{-3, 3}, {-3.525491005717393, 3.5254938524632053`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"18e02bc3-949b-\
4370-97fb-f012bcd1dc2a"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "test", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"With", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"h", "=", 
        FractionBox["1", "3"]}], ",", 
       RowBox[{"w", "=", 
        FractionBox["11", "7"]}]}], "}"}], ",", 
     RowBox[{"Abs", "[", 
      RowBox[{
       RowBox[{"NIntegrate", "[", 
        RowBox[{
         RowBox[{
          FractionBox["2", 
           RowBox[{"w", "-", "v"}]], 
          RowBox[{"HatFunction", "[", 
           RowBox[{"h", ",", "v"}], "]"}]}], ",", 
         RowBox[{"{", 
          RowBox[{"v", ",", 
           RowBox[{"-", "h"}], ",", "h"}], "}"}]}], "]"}], "-", 
       RowBox[{"HatScatteringDerivIntegral", "[", 
        RowBox[{"h", ",", "w"}], "]"}]}], "]"}]}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"With", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"h", "=", 
        FractionBox["1", "3"]}], ",", 
       RowBox[{"w", "=", 
        FractionBox["2", "7"]}]}], "}"}], ",", 
     RowBox[{"Abs", "[", 
      RowBox[{
       RowBox[{"NIntegrate", "[", 
        RowBox[{
         RowBox[{
          FractionBox["2", 
           RowBox[{"w", "-", "v"}]], 
          RowBox[{"HatFunction", "[", 
           RowBox[{"h", ",", "v"}], "]"}]}], ",", 
         RowBox[{"{", 
          RowBox[{"v", ",", 
           RowBox[{"-", "h"}], ",", "w", ",", "h"}], "}"}], ",", 
         RowBox[{"Method", "\[Rule]", "\"\<PrincipalValue\>\""}]}], "]"}], 
       "-", 
       RowBox[{"HatScatteringDerivIntegral", "[", 
        RowBox[{"h", ",", "w"}], "]"}]}], "]"}]}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"With", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"h", "=", 
        FractionBox["1", "3"]}], ",", 
       RowBox[{"w", "=", 
        RowBox[{"-", 
         FractionBox["1", "8"]}]}]}], "}"}], ",", 
     RowBox[{"Abs", "[", 
      RowBox[{
       RowBox[{"NIntegrate", "[", 
        RowBox[{
         RowBox[{
          FractionBox["2", 
           RowBox[{"w", "-", "v"}]], 
          RowBox[{"HatFunction", "[", 
           RowBox[{"h", ",", "v"}], "]"}]}], ",", 
         RowBox[{"{", 
          RowBox[{"v", ",", 
           RowBox[{"-", "h"}], ",", "w", ",", "h"}], "}"}], ",", 
         RowBox[{"Method", "\[Rule]", "\"\<PrincipalValue\>\""}]}], "]"}], 
       "-", 
       RowBox[{"HatScatteringDerivIntegral", "[", 
        RowBox[{"h", ",", "w"}], "]"}]}], "]"}]}], "]"}]}]}]], "Input",Express\
ionUUID->"226859df-312b-4a56-97f2-aeda9862dfb5"],

Cell[BoxData["1.6653345369377348`*^-16"], "Output",ExpressionUUID->"25fb4ae0-32fc-4cf2-92bb-27de735c73a7"],

Cell[BoxData["7.682743330406083`*^-14"], "Output",ExpressionUUID->"4034d848-78f4-450c-9c65-a475cb4d7d88"],

Cell[BoxData["1.8829382497642655`*^-13"], "Output",ExpressionUUID->"a872e23a-b7dd-495b-8bc6-602ade5c61b5"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Diffusion equation", "Subsection",ExpressionUUID->"62acd339-d31f-40d7-bf47-72e0a34a8e78"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   SubscriptBox["\[PartialD]", "t"], 
   RowBox[{"u", "[", 
    RowBox[{"x", ",", "t"}], "]"}]}], "\[Equal]", 
  RowBox[{"a", " ", 
   RowBox[{
    SubsuperscriptBox["\[PartialD]", "x", "2"], 
    RowBox[{"u", "[", 
     RowBox[{"x", ",", "t"}], "]"}]}]}]}]], "DisplayFormula",ExpressionUUID->\
"c5927229-59e0-487b-a5bd-07d86b58fa7e"],

Cell[TextData[{
 "Using the Crank-Nicolson method, see ",
 ButtonBox["https://en.wikipedia.org/wiki/Crank% E2 %80 %93 Nicolson_method",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["https://en.wikipedia.org/wiki/Crank%E2%80%93Nicolson_method"], None},
  ButtonNote->"https://en.wikipedia.org/wiki/Crank%E2%80%93Nicolson_method"],
 ":"
}], "Text",ExpressionUUID->"2f7ed5d7-ce3f-4cf6-8060-5a4ee5fb10fc"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"assuming", " ", "zero", " ", "boundary", " ", "conditions"}], " ",
    "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"CrankNicolsonDiffusionStep", "[", 
    RowBox[{
    "a_", ",", "\[CapitalDelta]x_", ",", "\[CapitalDelta]t_", ",", "u_List"}],
     "]"}], ":=", 
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"r", "=", 
        FractionBox[
         RowBox[{"a", " ", "\[CapitalDelta]t"}], 
         RowBox[{"2", 
          SuperscriptBox["\[CapitalDelta]x", "2"]}]]}], ",", 
       RowBox[{"id", "=", 
        RowBox[{"SparseIdentityMatrix", "[", 
         RowBox[{
          RowBox[{"Length", "[", "u", "]"}], "-", "2"}], "]"}]}], ",", 
       RowBox[{"D", "=", 
        RowBox[{"SparseArray", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"Band", "[", 
              RowBox[{"{", 
               RowBox[{"1", ",", "1"}], "}"}], "]"}], "\[Rule]", 
             RowBox[{"-", "2"}]}], ",", 
            RowBox[{
             RowBox[{"Band", "[", 
              RowBox[{"{", 
               RowBox[{"2", ",", "1"}], "}"}], "]"}], "\[Rule]", "1"}], ",", 
            RowBox[{
             RowBox[{"Band", "[", 
              RowBox[{"{", 
               RowBox[{"1", ",", "2"}], "}"}], "]"}], "\[Rule]", "1"}]}], 
           "}"}], ",", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"Length", "[", "u", "]"}], "-", "2"}], ")"}], 
           RowBox[{"{", 
            RowBox[{"1", ",", "1"}], "}"}]}]}], "]"}]}]}], "}"}], ",", 
     RowBox[{"ArrayPad", "[", 
      RowBox[{
       RowBox[{"LinearSolve", "[", 
        RowBox[{
         RowBox[{"id", "-", 
          RowBox[{"r", " ", "D"}]}], ",", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"id", "+", 
            RowBox[{"r", " ", "D"}]}], ")"}], ".", 
          RowBox[{"u", "\[LeftDoubleBracket]", 
           RowBox[{"2", ";;", 
            RowBox[{"-", "2"}]}], "\[RightDoubleBracket]"}]}]}], "]"}], ",", 
       "1"}], "]"}]}], "]"}]}]}]], "Input",ExpressionUUID->"998dc8a2-734f-\
497d-8295-235d017ef77d"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"reference", " ", "solution"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"uheat", "[", 
    RowBox[{"L_", ",", "a_", ",", "n_", ",", "x_", ",", "t_"}], "]"}], ":=", 
   RowBox[{
    RowBox[{"Sin", "[", 
     RowBox[{
      FractionBox[
       RowBox[{"n", " ", "\[Pi]"}], "L"], "x"}], "]"}], 
    RowBox[{"Exp", "[", 
     RowBox[{
      RowBox[{"-", "a"}], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        FractionBox[
         RowBox[{"n", " ", "\[Pi]"}], "L"], ")"}], "2"], "t"}], 
     "]"}]}]}]}]], "Input",ExpressionUUID->"0f5856c6-7c29-4c61-a3d7-\
1f739ebcd657"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "check", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"D", "[", 
    RowBox[{
     RowBox[{"uheat", "[", 
      RowBox[{"L", ",", "a", ",", "n", ",", "x", ",", "t"}], "]"}], ",", 
     "t"}], "]"}], "-", 
   RowBox[{"a", " ", 
    RowBox[{"D", "[", 
     RowBox[{
      RowBox[{"uheat", "[", 
       RowBox[{"L", ",", "a", ",", "n", ",", "x", ",", "t"}], "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"x", ",", "2"}], "}"}]}], "]"}]}]}]}]], "Input",ExpressionUUID-\
>"864a7c89-72d8-4a8a-9eda-d36a80b96183"],

Cell[BoxData["0"], "Output",ExpressionUUID->"b2cc64f1-81f5-499a-949a-aa8a3260d147"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"L", "=", "4"}], ",", 
     RowBox[{"n", "=", "2"}], ",", 
     RowBox[{"a", "=", "1"}], ",", 
     RowBox[{"\[CapitalDelta]x", "=", 
      FractionBox["4", "20"]}], ",", 
     RowBox[{"\[CapitalDelta]t", "=", 
      FractionBox["1", "20"]}]}], "}"}], ",", 
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"u0", "=", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"uheat", "[", 
           RowBox[{"L", ",", "a", ",", "n", ",", 
            RowBox[{"N", "[", "x", "]"}], ",", "0"}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"x", ",", "0", ",", "L", ",", "\[CapitalDelta]x"}], 
           "}"}]}], "]"}]}], ",", "u"}], "}"}], ",", 
     RowBox[{
      RowBox[{"u", "=", 
       RowBox[{"NestList", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"CrankNicolsonDiffusionStep", "[", 
           RowBox[{
           "a", ",", "\[CapitalDelta]x", ",", "\[CapitalDelta]t", ",", "#"}], 
           "]"}], "&"}], ",", "u0", ",", "50"}], "]"}]}], ";", 
      RowBox[{"Animate", "[", 
       RowBox[{
        RowBox[{"Show", "[", 
         RowBox[{
          RowBox[{"ListPlot", "[", 
           RowBox[{
            RowBox[{"Transpose", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"Range", "[", 
                RowBox[{"0", ",", "L", ",", "\[CapitalDelta]x"}], "]"}], ",", 
               RowBox[{"u", "\[LeftDoubleBracket]", 
                RowBox[{"k", "+", "1"}], "\[RightDoubleBracket]"}]}], "}"}], 
             "]"}], ",", 
            RowBox[{"PlotRange", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{"Automatic", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"-", "1"}], ",", "1"}], "}"}]}], "}"}]}], ",", 
            RowBox[{"AxesLabel", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{"\"\<x\>\"", ",", "\"\<u[x,t]\>\""}], "}"}]}], ",", 
            RowBox[{"PlotLabel", "\[Rule]", 
             RowBox[{"\"\<t=\>\"", "<>", 
              RowBox[{"ToString", "[", 
               RowBox[{"N", "[", 
                RowBox[{"k", " ", "\[CapitalDelta]t"}], "]"}], "]"}]}]}]}], 
           "]"}], ",", 
          RowBox[{"Plot", "[", 
           RowBox[{
            RowBox[{"uheat", "[", 
             RowBox[{"L", ",", "a", ",", "n", ",", "x", ",", 
              RowBox[{"k", " ", "\[CapitalDelta]t"}]}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"x", ",", "0", ",", "L"}], "}"}], ",", 
            RowBox[{"PlotStyle", "\[Rule]", 
             RowBox[{
              RowBox[{"ColorData", "[", "97", "]"}], "[", "4", "]"}]}]}], 
           "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"k", ",", "0", ",", 
          RowBox[{
           RowBox[{"Length", "[", "u", "]"}], "-", "1"}], ",", "1"}], "}"}], 
        ",", 
        RowBox[{"AnimationRunning", "\[Rule]", "False"}]}], "]"}]}]}], 
    "]"}]}], "]"}]], "Input",ExpressionUUID->"b0a2d0c9-228d-477c-9e20-\
176db5494d9e"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`k$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`k$$], 0, 50, 1}}, Typeset`size$$ = {
    360., {120., 125.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`k$100111$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`k$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`k$$, $CellContext`k$100111$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[
        ListPlot[
         Transpose[{
           Range[0, 4, 
            Rational[1, 5]], 
           Part[$CellContext`u$100056, $CellContext`k$$ + 1]}], 
         PlotRange -> {Automatic, {-1, 1}}, AxesLabel -> {"x", "u[x,t]"}, 
         PlotLabel -> StringJoin["t=", 
           ToString[
            N[$CellContext`k$$ Rational[1, 20]]]]], 
        Plot[
         $CellContext`uheat[
         4, 1, 2, $CellContext`x, $CellContext`k$$ 
          Rational[1, 20]], {$CellContext`x, 0, 4}, PlotStyle -> 
         ColorData[97][4]]], 
      "Specifications" :> {{$CellContext`k$$, 0, 50, 1, AnimationRunning -> 
         False, AppearanceElements -> {
          "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
           "DirectionButton"}}}, 
      "Options" :> {
       ControlType -> Animator, AppearanceElements -> None, DefaultBaseStyle -> 
        "Animate", DefaultLabelStyle -> "AnimateLabel", SynchronousUpdating -> 
        True, ShrinkingDelay -> 10.}, "DefaultOptions" :> {}],
     ImageSizeCache->{411., {159., 165.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Animate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",ExpressionUUID->"553238a4-\
126e-4e00-b3c2-cdecab719282"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Fokker-Planck equation", "Subsection",ExpressionUUID->"67fc98f0-0f72-4479-aeac-9ddff4f8e343"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   SubscriptBox["\[PartialD]", "t"], 
   RowBox[{"p", "[", 
    RowBox[{"x", ",", "t"}], "]"}]}], "\[Equal]", 
  RowBox[{
   RowBox[{
    SubscriptBox["\[PartialD]", "x"], 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"a", "[", 
       RowBox[{"x", ",", "t"}], "]"}], 
      RowBox[{"p", "[", 
       RowBox[{"x", ",", "t"}], "]"}]}], ")"}]}], "+", 
   RowBox[{
    SubsuperscriptBox["\[PartialD]", "x", "2"], 
    RowBox[{"p", "[", 
     RowBox[{"x", ",", "t"}], "]"}]}]}]}]], "DisplayFormula",ExpressionUUID->\
"c0aa9aa5-acd3-4dec-9e3d-77e6965aed16"],

Cell[BoxData[
 RowBox[{
  RowBox[{"FokkerPlanckStep", "[", 
   RowBox[{
   "\[CapitalDelta]x_", ",", "\[CapitalDelta]t_", ",", "a_List", ",", 
    "p_List"}], "]"}], ":=", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", "pnext", "}"}], ",", 
    RowBox[{
     RowBox[{"pnext", "=", 
      RowBox[{"CrankNicolsonDiffusionStep", "[", 
       RowBox[{"1", ",", "\[CapitalDelta]x", ",", 
        RowBox[{
         FractionBox["1", "2"], "\[CapitalDelta]t"}], ",", "p"}], "]"}]}], 
     ";", 
     RowBox[{"pnext", "+=", 
      RowBox[{
       FractionBox["\[CapitalDelta]t", 
        RowBox[{"2", "\[CapitalDelta]x"}]], 
       RowBox[{"ArrayPad", "[", 
        RowBox[{
         RowBox[{"Differences", "[", 
          RowBox[{
           RowBox[{"a", " ", "pnext"}], ",", "1", ",", "2"}], "]"}], ",", 
         "1"}], "]"}]}]}], ";", 
     RowBox[{"pnext", "=", 
      RowBox[{"CrankNicolsonDiffusionStep", "[", 
       RowBox[{"1", ",", "\[CapitalDelta]x", ",", 
        RowBox[{
         FractionBox["1", "2"], "\[CapitalDelta]t"}], ",", "pnext"}], "]"}]}],
      ";", 
     RowBox[{"pnext", "/", 
      RowBox[{"(", 
       RowBox[{"\[CapitalDelta]x", " ", 
        RowBox[{"Total", "[", "pnext", "]"}]}], ")"}]}]}]}], "]"}]}]], "Input",\
ExpressionUUID->"532c4b43-785c-4c70-9b3a-1f6edad4846c"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"ArrayPad", "[", 
   RowBox[{
    RowBox[{"Differences", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"a", ",", "b", ",", "c", ",", "d", ",", "e", ",", "f"}], "}"}],
       ",", "1", ",", "2"}], "]"}], ",", "1"}], "]"}]}]], "Input",ExpressionUU\
ID->"bf1d2962-72f8-4c5d-860a-4ce9e5ba9ac7"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"0", ",", 
   RowBox[{
    RowBox[{"-", "a"}], "+", "c"}], ",", 
   RowBox[{
    RowBox[{"-", "b"}], "+", "d"}], ",", 
   RowBox[{
    RowBox[{"-", "c"}], "+", "e"}], ",", 
   RowBox[{
    RowBox[{"-", "d"}], "+", "f"}], ",", "0"}], "}"}]], "Output",ExpressionUUI\
D->"351c00a0-fa3d-45ba-845c-5f2886080a4f"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"TodaFokkerPlanckIteration", "[", 
   RowBox[{
   "\[Beta]_", ",", "P_", ",", "nstart_List", ",", "\[CapitalDelta]x_", ",", 
    "\[CapitalDelta]t_", ",", "numiter_"}], "]"}], ":=", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"numpoints", "=", 
       RowBox[{"Length", "[", "nstart", "]"}]}], ",", "vlist", ",", 
      "invxkernel"}], "}"}], ",", 
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
     RowBox[{"invxkernel", "=", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"HatScatteringDerivIntegral", "[", "i", "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"i", ",", 
          RowBox[{"-", "numpoints"}], ",", "numpoints"}], "}"}]}], "]"}]}], 
     ";", 
     RowBox[{"NestList", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"FokkerPlanckStep", "[", 
         RowBox[{"\[CapitalDelta]x", ",", "\[CapitalDelta]t", ",", 
          RowBox[{
           RowBox[{"\[Beta]", " ", "vlist"}], "-", 
           RowBox[{"P", " ", 
            RowBox[{"ListConvolve", "[", 
             RowBox[{"invxkernel", ",", "#", ",", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{"numpoints", "+", "1"}], ")"}], 
               RowBox[{"{", 
                RowBox[{"1", ",", "1"}], "}"}]}], ",", "0"}], "]"}]}]}], ",", 
          "#"}], "]"}], "&"}], ",", "nstart", ",", "numiter"}], "]"}]}]}], 
   "]"}]}]], "Input",ExpressionUUID->"724bbb77-a6cd-427e-b78f-317652c8df33"],

Cell[BoxData[
 RowBox[{
  RowBox[{"TodaFokkerPlanckError", "[", 
   RowBox[{"\[Beta]_", ",", "P_", ",", "\[CapitalDelta]x_", ",", "n_List"}], 
   "]"}], ":=", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"numpoints", "=", 
       RowBox[{"Length", "[", "n", "]"}]}], ",", "vlist", ",", "invxkernel"}],
      "}"}], ",", 
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
     RowBox[{"invxkernel", "=", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"HatScatteringDerivIntegral", "[", "i", "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"i", ",", 
          RowBox[{"-", "numpoints"}], ",", "numpoints"}], "}"}]}], "]"}]}], 
     ";", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"\[Beta]", " ", "vlist"}], "-", 
         RowBox[{"P", " ", 
          RowBox[{"ListConvolve", "[", 
           RowBox[{"invxkernel", ",", "n", ",", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"numpoints", "+", "1"}], ")"}], 
             RowBox[{"{", 
              RowBox[{"1", ",", "1"}], "}"}]}], ",", "0"}], "]"}]}]}], ")"}], 
       "n"}], "+", 
      RowBox[{
       FractionBox["1", 
        RowBox[{"2", "\[CapitalDelta]x"}]], 
       RowBox[{"ArrayPad", "[", 
        RowBox[{
         RowBox[{"Differences", "[", 
          RowBox[{"n", ",", "1", ",", "2"}], "]"}], ",", "1"}], "]"}]}]}]}]}],
    "]"}]}]], "Input",ExpressionUUID->"c33106d4-0d9a-486b-aab2-89801dfea7cf"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"ListConvolve", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"a", ",", "b", ",", "c", ",", "d", ",", "e"}], "}"}], ",", 
     RowBox[{"Range", "[", "10", "]"}], ",", 
     RowBox[{"3", 
      RowBox[{"{", 
       RowBox[{"1", ",", "1"}], "}"}]}], ",", "0"}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"Length", "[", "%", "]"}]}]}]], "Input",ExpressionUUID->"af7b866e-\
c3f2-4eee-a5c4-19f000a8b3d2"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    RowBox[{"3", " ", "a"}], "+", 
    RowBox[{"2", " ", "b"}], "+", "c"}], ",", 
   RowBox[{
    RowBox[{"4", " ", "a"}], "+", 
    RowBox[{"3", " ", "b"}], "+", 
    RowBox[{"2", " ", "c"}], "+", "d"}], ",", 
   RowBox[{
    RowBox[{"5", " ", "a"}], "+", 
    RowBox[{"4", " ", "b"}], "+", 
    RowBox[{"3", " ", "c"}], "+", 
    RowBox[{"2", " ", "d"}], "+", "e"}], ",", 
   RowBox[{
    RowBox[{"6", " ", "a"}], "+", 
    RowBox[{"5", " ", "b"}], "+", 
    RowBox[{"4", " ", "c"}], "+", 
    RowBox[{"3", " ", "d"}], "+", 
    RowBox[{"2", " ", "e"}]}], ",", 
   RowBox[{
    RowBox[{"7", " ", "a"}], "+", 
    RowBox[{"6", " ", "b"}], "+", 
    RowBox[{"5", " ", "c"}], "+", 
    RowBox[{"4", " ", "d"}], "+", 
    RowBox[{"3", " ", "e"}]}], ",", 
   RowBox[{
    RowBox[{"8", " ", "a"}], "+", 
    RowBox[{"7", " ", "b"}], "+", 
    RowBox[{"6", " ", "c"}], "+", 
    RowBox[{"5", " ", "d"}], "+", 
    RowBox[{"4", " ", "e"}]}], ",", 
   RowBox[{
    RowBox[{"9", " ", "a"}], "+", 
    RowBox[{"8", " ", "b"}], "+", 
    RowBox[{"7", " ", "c"}], "+", 
    RowBox[{"6", " ", "d"}], "+", 
    RowBox[{"5", " ", "e"}]}], ",", 
   RowBox[{
    RowBox[{"10", " ", "a"}], "+", 
    RowBox[{"9", " ", "b"}], "+", 
    RowBox[{"8", " ", "c"}], "+", 
    RowBox[{"7", " ", "d"}], "+", 
    RowBox[{"6", " ", "e"}]}], ",", 
   RowBox[{
    RowBox[{"10", " ", "b"}], "+", 
    RowBox[{"9", " ", "c"}], "+", 
    RowBox[{"8", " ", "d"}], "+", 
    RowBox[{"7", " ", "e"}]}], ",", 
   RowBox[{
    RowBox[{"10", " ", "c"}], "+", 
    RowBox[{"9", " ", "d"}], "+", 
    RowBox[{"8", " ", "e"}]}]}], "}"}]], "Output",ExpressionUUID->"c4403566-\
31e1-4087-8749-5159c46ef297"],

Cell[BoxData["10"], "Output",ExpressionUUID->"64a03641-7d93-46aa-a3cc-2c8fcadd4a74"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "test", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"\[Beta]", " ", "x", " ", 
    RowBox[{"Gauss", "[", 
     RowBox[{"\[Beta]", ",", "x"}], "]"}]}], "+", 
   RowBox[{"D", "[", 
    RowBox[{
     RowBox[{"Gauss", "[", 
      RowBox[{"\[Beta]", ",", "x"}], "]"}], ",", "x"}], "]"}]}]}]], "Input",Ex\
pressionUUID->"46981e2c-642c-4afe-ae89-0f291b5d165d"],

Cell[BoxData["0"], "Output",ExpressionUUID->"87ae79b9-e8fb-4fe1-922d-0283cc1a713e"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"test", ":", " ", 
    RowBox[{
    "should", " ", "converge", " ", "to", " ", "Gaussian", " ", 
     "function"}]}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", "0"}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}], ",", 
      RowBox[{"\[CapitalDelta]t", "=", 
       FractionBox["1", "20"]}], ",", 
      RowBox[{"numiter", "=", "100"}], ",", 
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
             RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], ",", "n"}], 
       "}"}], ",", 
      RowBox[{
       RowBox[{"n", "=", 
        RowBox[{"TodaFokkerPlanckIteration", "[", 
         RowBox[{"\[Beta]", ",", "P", ",", 
          RowBox[{
           RowBox[{
            RowBox[{"Gauss", "[", 
             RowBox[{
              RowBox[{"0.6", "\[Beta]"}], ",", "#"}], "]"}], "&"}], "/@", 
           RowBox[{"N", "[", "vlist", "]"}]}], ",", "\[CapitalDelta]x", ",", 
          "\[CapitalDelta]t", ",", "numiter"}], "]"}]}], ";", 
       RowBox[{
        SubscriptBox["nFP", 
         RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], "=", 
        RowBox[{"Last", "[", "n", "]"}]}], ";", 
       RowBox[{"Animate", "[", 
        RowBox[{
         RowBox[{"Show", "[", 
          RowBox[{
           RowBox[{"ListPlot", "[", 
            RowBox[{
             RowBox[{"Transpose", "[", 
              RowBox[{"{", 
               RowBox[{"vlist", ",", 
                RowBox[{"n", "\[LeftDoubleBracket]", 
                 RowBox[{"k", "+", "1"}], "\[RightDoubleBracket]"}]}], "}"}], 
              "]"}], ",", 
             RowBox[{"PlotRange", "\[Rule]", 
              RowBox[{"{", 
               RowBox[{"Automatic", ",", 
                RowBox[{"{", 
                 RowBox[{"0", ",", 
                  RowBox[{"1", "/", "2"}]}], "}"}]}], "}"}]}], ",", 
             RowBox[{"AxesLabel", "\[Rule]", 
              RowBox[{"{", 
               RowBox[{"\"\<v\>\"", ",", "\"\<n(v)/P\>\""}], "}"}]}], ",", 
             RowBox[{"PlotLabel", "\[Rule]", 
              RowBox[{"\"\<\[Beta]=\>\"", "<>", 
               RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", 
               "\"\<, P=\>\"", "<>", 
               RowBox[{"ToString", "[", 
                RowBox[{"InputForm", "[", "P", "]"}], "]"}], "<>", 
               "\"\<, t=\>\"", "<>", 
               RowBox[{"ToString", "[", 
                RowBox[{"N", "[", 
                 RowBox[{"k", " ", "\[CapitalDelta]t"}], "]"}], "]"}]}]}]}], 
            "]"}], ",", 
           RowBox[{"Plot", "[", 
            RowBox[{
             RowBox[{"Gauss", "[", 
              RowBox[{"\[Beta]", ",", "x"}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"x", ",", 
               RowBox[{"-", "6"}], ",", "6"}], "}"}], ",", 
             RowBox[{"PlotStyle", "\[Rule]", 
              RowBox[{
               RowBox[{"ColorData", "[", "97", "]"}], "[", "4", "]"}]}]}], 
            "]"}]}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"k", ",", "0", ",", "numiter", ",", "1"}], "}"}], ",", 
         RowBox[{"AnimationRunning", "\[Rule]", "False"}]}], "]"}]}]}], 
     "]"}]}], "]"}]}]], "Input",ExpressionUUID->"c2dafce8-3ff3-40d3-ba97-\
51a0071b49f8"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`k$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`k$$], 0, 100, 1}}, Typeset`size$$ = {
    360., {130., 135.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`k$100655$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`k$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`k$$, $CellContext`k$100655$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[
        ListPlot[
         Transpose[{$CellContext`vlist$100353, 
           Part[$CellContext`n$100353, $CellContext`k$$ + 1]}], 
         PlotRange -> {Automatic, {0, 1/2}}, AxesLabel -> {"v", "n(v)/P"}, 
         PlotLabel -> StringJoin["\[Beta]=", 
           ToString[1], ", P=", 
           ToString[
            InputForm[0]], ", t=", 
           ToString[
            N[$CellContext`k$$ Rational[1, 20]]]]], 
        Plot[
         $CellContext`Gauss[1, $CellContext`x], {$CellContext`x, -6, 6}, 
         PlotStyle -> ColorData[97][4]]], 
      "Specifications" :> {{$CellContext`k$$, 0, 100, 1, AnimationRunning -> 
         False, AppearanceElements -> {
          "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
           "DirectionButton"}}}, 
      "Options" :> {
       ControlType -> Animator, AppearanceElements -> None, DefaultBaseStyle -> 
        "Animate", DefaultLabelStyle -> "AnimateLabel", SynchronousUpdating -> 
        True, ShrinkingDelay -> 10.}, "DefaultOptions" :> {}],
     ImageSizeCache->{411., {169., 175.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Animate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",ExpressionUUID->"2a287d6c-\
907c-4fd6-b4df-11fa5f065233"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "error", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", "0"}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}]}], "}"}], ",", 
    RowBox[{"ListPlot", "[", 
     RowBox[{
      RowBox[{"Transpose", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"\[CapitalDelta]x", " ", 
          RowBox[{"Range", "[", 
           RowBox[{
            RowBox[{"-", 
             FractionBox[
              RowBox[{
               RowBox[{"Length", "[", 
                SubscriptBox["nFP", 
                 RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
                "]"}], "-", "1"}], "2"]}], ",", 
            FractionBox[
             RowBox[{
              RowBox[{"Length", "[", 
               SubscriptBox["nFP", 
                RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
               "]"}], "-", "1"}], "2"]}], "]"}]}], ",", 
         RowBox[{"TodaFokkerPlanckError", "[", 
          RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x", ",", 
           SubscriptBox["nFP", 
            RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], 
          "]"}]}], "}"}], "]"}], ",", 
      RowBox[{"AxesLabel", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"\"\<v\>\"", ",", "\"\<err(v)\>\""}], "}"}]}], ",", 
      RowBox[{"PlotLabel", "\[Rule]", 
       RowBox[{"\"\<\[Beta]=\>\"", "<>", 
        RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
        RowBox[{"ToString", "[", 
         RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}], ",", 
      RowBox[{"PlotRange", "\[Rule]", "All"}]}], "]"}]}], "]"}]}]], "Input",Ex\
pressionUUID->"82686317-b6f5-45c1-ad94-e27c4bb257de"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.009166666666666668], 
     AbsoluteThickness[1.6], PointBox[CompressedData["
1:eJw1lntQVVUUxg9XhAsqXh6Xh3CLl1qjEuMrFb1nVTJpPtC6KkGj5NvSeKkl
gV4NHBUlTUshMRzywWim/oFTFmc52GiGjqEROkAXYxxHE8F4aSDJWd85Mwxz
2OzfXt8+e3/filic+vYyk6IoXz3/6ft9tarvsbGCZ7n+2Djw34gVObdi7PJX
G18q6ahpfWSxFxX2PWH89dwxTYllYyvG6E8YFy21lpaXT7ILL5Rv+Ez1UWqi
7MIL5dotMbXfz4iuEF4oTz82K3ld6mTwhrD5ZbcLz25b7MIbwvNnz1Y31o+r
EF4Id/fO6Ld24vgK4YVwztqHKQvyEsAL4Zhbi7cO/i6xQnjBHGmNvDh8TTLq
C+as/elP9jiSwAvimc66q2v84sEL4ss90bYVF5OgN4j37Yx7NsW6HvUF8vbo
7aePdOWhvkAOPZs67FzqHui1csik3umNk/dDr5WDjnd8U59dCJ6V7y9v22o6
sRe8AFbiFox7Y9Vo1BfAYzM3tj4r/xb1+bP38d5jt4vPoz5/Tj68bNWllVeg
15+v9T/4aWzCH9Drx7sSg1OqX2sAz4/Djj4e6rh/BzxfPmef+Kj36d/g+TL9
8Ft8tWcDeL7svFxWdePFQ6jPwq/v/OWL3LRW6LVwyyL7T8O8zKqMD+ajZyuK
O/cFq8L34cAjjm3LHg1VhefDRbGxo+Yqo1WZP4jd1+a9MKMmTpX1B/LRjPzK
0p1TwRvAn63OdZWNmQWeN4dfXVTQ4u8A7/n7tPzWmutJ4Hmx3XHq5ry098Ez
c3a5uWFdxHLwPPnArw/2eqZ/CJ4HL75dXddRmgaeB5sfdsf8yJng9eexpaao
9e3rwXNn1/zIhSMis8DrxxMKRlyJjsgBz8TmUR3DCi5vAs/EB3IGFTo6nOC5
cW3d+Pz4M5vBUzg2zG1HsdsWjPdqJflRbTl/bga/R3O1OY/YX9oMXrfmmhd+
6MRfmzD/qab05A29sSQb63dp4UnbyqrbPgavUyuZ1pI9/HwGeO0ad76qLalf
BV6b5nx31rmTc5LBe6wpJeuaSkYOB69Fc+5eUt40xaHJeLPGrsLDVz5Yqgn/
gaY8cQYsrFutCe+e5nrlkypLdrom85u08F03bx0cnanJ+o0atTz86MusTIzX
aeH1cc1zHRng12h87b/KhtOp4F3XUhKKWt5bsxLrVWrOuCd3o6oWglemsWdC
0VaveONd5Z7Zfe/QX6nSeP3/ofe6SsKD3hpV+V1fD3rr1JQGvR7sV6PqbNXr
xXiTWlKg6wHvnqrE6nqx3gPVKfsBfrNKjfp+GfupKp/r+2nst6oc1PcbettU
5zv694CedpU79O8F/Z2qc7r+PbF/XapLvjf276lKch7A61aV+fp5Aa9HVdr1
8wRer5om5w3zFQqX84hxN+qS8wqeiXCesb6Jakfq5x38fjRH7gN47lQr9wW8
/oT7BJ4Hhct9A8+DcB/B86R9cl/BM5NT7jN4XoT7Dp43RYsfgOdNUeIX4A2g
DeIn4A2kU+I34A0iD/Ej8HwIfgWeD1nEz8AbTMXid5hvoX/EDzFuobfELw0/
JUX81PBbmiB+i7zwpTPix/BXP4Jfw3/9aIf4OfLDn+D3yBd/mid5AJ4/WSUv
wAugGMkTI29ImajnjZFHdEfyCPVZaaDkFfLCSjbJM+RJIFkl75A3gbRB8hB6
g6hQ8tLIUzopeWrkLe2WvEV9weQueYz6gild8hr1hdA0yXPoDaGsDD3voTeE
Qt1n9vUDRr9AzdIvGP0Ehb2p9xNGv0GbDun9BuoLpZ+lHzH6FaqL0vsVo5+h
gkS9n4HeMCqUfsfoh2jbBb0fAs9GuXf1fgl6bYR2Svkf2YYoHg==
      "]]}, {}}, {}, {}, {{}, {}}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox["\"err(v)\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=0\"", TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-0.00879214360624131, 0.008792143606241337}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"dc6dce5a-ccc6-\
4773-a4a8-c190f534fb24"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "normalization", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", "0"}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}]}], "}"}], ",", 
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
              RowBox[{
               RowBox[{"Length", "[", 
                SubscriptBox["nFP", 
                 RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
                "]"}], "-", "1"}], "2"]}], ",", 
            FractionBox[
             RowBox[{
              RowBox[{"Length", "[", 
               SubscriptBox["nFP", 
                RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
               "]"}], "-", "1"}], "2"]}], "]"}]}]}], ",", "nip"}], "}"}], ",", 
      RowBox[{
       RowBox[{"nip", "=", 
        RowBox[{"Interpolation", "[", 
         RowBox[{"Transpose", "[", 
          RowBox[{"{", 
           RowBox[{"vlist", ",", 
            SubscriptBox["nFP", 
             RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], "}"}],
           "]"}], "]"}]}], ";", 
       RowBox[{"NIntegrate", "[", 
        RowBox[{
         RowBox[{"nip", "[", "v", "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"v", ",", 
           RowBox[{
           "vlist", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
           ",", 
           RowBox[{"vlist", "\[LeftDoubleBracket]", 
            RowBox[{"-", "1"}], "\[RightDoubleBracket]"}]}], "}"}]}], 
        "]"}]}]}], "]"}]}], "]"}]}]], "Input",ExpressionUUID->"12e36b82-42b3-\
43b2-ae05-4fbe5f86fd23"],

Cell[BoxData["0.9999999999727819`"], "Output",ExpressionUUID->"712b377b-50da-4c9b-bde1-0b6f78e0d69c"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"\[Beta]", "=", "1"}], ",", 
     RowBox[{"P", "=", 
      FractionBox["1", "2"]}], ",", 
     RowBox[{"\[CapitalDelta]x", "=", 
      FractionBox["1", "10"]}], ",", 
     RowBox[{"\[CapitalDelta]t", "=", 
      FractionBox["1", "20"]}], ",", 
     RowBox[{"numiter", "=", "100"}], ",", 
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
            RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], ",", "n"}], 
      "}"}], ",", 
     RowBox[{
      RowBox[{"n", "=", 
       RowBox[{"TodaFokkerPlanckIteration", "[", 
        RowBox[{"\[Beta]", ",", "P", ",", 
         RowBox[{
          RowBox[{
           RowBox[{"Gauss", "[", 
            RowBox[{"\[Beta]", ",", "#"}], "]"}], "&"}], "/@", 
          RowBox[{"N", "[", "vlist", "]"}]}], ",", "\[CapitalDelta]x", ",", 
         "\[CapitalDelta]t", ",", "numiter"}], "]"}]}], ";", 
      RowBox[{
       SubscriptBox["nFP", 
        RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], "=", 
       RowBox[{"Last", "[", "n", "]"}]}], ";", 
      RowBox[{"Animate", "[", 
       RowBox[{
        RowBox[{"Show", "[", 
         RowBox[{
          RowBox[{"ListPlot", "[", 
           RowBox[{
            RowBox[{"Transpose", "[", 
             RowBox[{"{", 
              RowBox[{"vlist", ",", 
               RowBox[{"n", "\[LeftDoubleBracket]", 
                RowBox[{"k", "+", "1"}], "\[RightDoubleBracket]"}]}], "}"}], 
             "]"}], ",", 
            RowBox[{"PlotRange", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{"Automatic", ",", 
               RowBox[{"{", 
                RowBox[{"0", ",", 
                 RowBox[{"1", "/", "2"}]}], "}"}]}], "}"}]}], ",", 
            RowBox[{"AxesLabel", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{"\"\<v\>\"", ",", "\"\<n(v)/P\>\""}], "}"}]}], ",", 
            RowBox[{"PlotLabel", "\[Rule]", 
             RowBox[{"\"\<\[Beta]=\>\"", "<>", 
              RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"",
               "<>", 
              RowBox[{"ToString", "[", 
               RowBox[{"InputForm", "[", "P", "]"}], "]"}], "<>", 
              "\"\<, t=\>\"", "<>", 
              RowBox[{"ToString", "[", 
               RowBox[{"N", "[", 
                RowBox[{"k", " ", "\[CapitalDelta]t"}], "]"}], "]"}]}]}]}], 
           "]"}], ",", 
          RowBox[{"Plot", "[", 
           RowBox[{
            RowBox[{"Gauss", "[", 
             RowBox[{"\[Beta]", ",", "x"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"x", ",", 
              RowBox[{"-", "6"}], ",", "6"}], "}"}], ",", 
            RowBox[{"PlotStyle", "\[Rule]", 
             RowBox[{
              RowBox[{"ColorData", "[", "97", "]"}], "[", "2", "]"}]}]}], 
           "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"k", ",", "0", ",", "numiter", ",", "1"}], "}"}], ",", 
        RowBox[{"AnimationRunning", "\[Rule]", "False"}]}], "]"}]}]}], 
    "]"}]}], "]"}]], "Input",ExpressionUUID->"48cb0714-c5f2-4013-90b7-\
868a9e1cd018"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`k$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`k$$], 0, 100, 1}}, Typeset`size$$ = {
    360., {130., 135.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`k$101132$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`k$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`k$$, $CellContext`k$101132$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[
        ListPlot[
         Transpose[{$CellContext`vlist$100830, 
           Part[$CellContext`n$100830, $CellContext`k$$ + 1]}], 
         PlotRange -> {Automatic, {0, 1/2}}, AxesLabel -> {"v", "n(v)/P"}, 
         PlotLabel -> StringJoin["\[Beta]=", 
           ToString[1], ", P=", 
           ToString[
            InputForm[
             Rational[1, 2]]], ", t=", 
           ToString[
            N[$CellContext`k$$ Rational[1, 20]]]]], 
        Plot[
         $CellContext`Gauss[1, $CellContext`x], {$CellContext`x, -6, 6}, 
         PlotStyle -> ColorData[97][2]]], 
      "Specifications" :> {{$CellContext`k$$, 0, 100, 1, AnimationRunning -> 
         False, AppearanceElements -> {
          "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
           "DirectionButton"}}}, 
      "Options" :> {
       ControlType -> Animator, AppearanceElements -> None, DefaultBaseStyle -> 
        "Animate", DefaultLabelStyle -> "AnimateLabel", SynchronousUpdating -> 
        True, ShrinkingDelay -> 10.}, "DefaultOptions" :> {}],
     ImageSizeCache->{411., {169., 175.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Animate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",ExpressionUUID->"5cc9bb13-\
34ec-42bb-8d73-46bb4dc03426"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "error", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", 
       FractionBox["1", "2"]}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}]}], "}"}], ",", 
    RowBox[{"ListPlot", "[", 
     RowBox[{
      RowBox[{"Transpose", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"\[CapitalDelta]x", " ", 
          RowBox[{"Range", "[", 
           RowBox[{
            RowBox[{"-", 
             FractionBox[
              RowBox[{
               RowBox[{"Length", "[", 
                SubscriptBox["nFP", 
                 RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
                "]"}], "-", "1"}], "2"]}], ",", 
            FractionBox[
             RowBox[{
              RowBox[{"Length", "[", 
               SubscriptBox["nFP", 
                RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
               "]"}], "-", "1"}], "2"]}], "]"}]}], ",", 
         RowBox[{"TodaFokkerPlanckError", "[", 
          RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x", ",", 
           SubscriptBox["nFP", 
            RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], 
          "]"}]}], "}"}], "]"}], ",", 
      RowBox[{"AxesLabel", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"\"\<v\>\"", ",", "\"\<err(v)\>\""}], "}"}]}], ",", 
      RowBox[{"PlotLabel", "\[Rule]", 
       RowBox[{"\"\<\[Beta]=\>\"", "<>", 
        RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
        RowBox[{"ToString", "[", 
         RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}], ",", 
      RowBox[{"PlotRange", "\[Rule]", "All"}]}], "]"}]}], "]"}]}]], "Input",Ex\
pressionUUID->"f57ce8b2-eebd-4e5e-b566-a5bd3cd9a105"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.009166666666666668], 
     AbsoluteThickness[1.6], PointBox[CompressedData["
1:eJw1lgtMllUYxw+3T0QEPvg+4OMysdKRqUMlwxvvk8y7IOhEUlOnM3RYGshn
lqu3mbpcXjIwFceQUtG1RENBm7zPpBC8LFaKpOaNiwREihDfLDV9n/93NsZe
Dud3nvOc5/z/z8Clq2cv91RK7X7+8+L35UsvRjQrjHfMEc1B166Pbt3feFb+
Gs2b+zfUuO5HJ+7b+2JEsb3P3OKkgmGJo8wRxUsX7/xzz6jXEoUXyUq3ndoU
emeC8CI5prdo4iI1rlJ4kTzMY5DlQklapfAiOGPM+iFltxZXCi+Cu/wu/dTw
amal8Bx8KOHc7cNrsyqF52Df7Kflx2NXgOfgPT5nJ5wpSAYvnL3jBh6+WrUK
8YVz7Ss7/vjKbzPiC+Ou1JH7r76Unyi8MB7ukdNycnxRovDCeONan9c3XvsW
5w1l++ct11ZuOAheKCccSlmffqMAPDsXPWwubrv7BeKzM12+NcJxrxzx2fnn
cOexDRGXEJ+NX86w3Xw8+Xec18Yz6z6qKV3ViPOG8IyTb2ZWjmwDL4SH51tO
WHd3ghfC/o7khIKdHeAFc8URfW7JoxvgBXNRTuHWwe3NiM/K24vu/OostWjC
s3Jjz4GMXc0OTXhW/njwJw8vTo3VhBfEn479uiEnO14TXhBbdzbV7fckzAdy
fmFpeseZKZrwA7jlhkfTorpU8AJ4TvbkaXkd6VjfnwtzbAPOjFiE/f15eqDf
8beTloHXj89dORF48HomeH7cvc3+YeMPq8Dz42DHG0mHLqwBry+rHZVp70bl
gOfL1JpRfyA2F7w+XLFvvjOrxgmehWO9+06taVgHnoXjnupHDyd+AJ4Pl+Tt
KXm/bR143hw0MTVrwXUneF4ct+zKseDIXPA8+c6AL6N2VWeD9/z7n1qvKR7u
+DyYQ/K3eHasBE+xnrZwxqniZZh/ZqjVv5XN7pkP/hNDZf7yr70zBbz/DMVv
+ebdjsf6x4Zy1V+t9xlqyP4uQ1mq4gtjJhnC6zVUx6xJ1a2zDOH1GHrAlTGb
q+YYwus2VG5n5LpB6Ybwugx1PksvmzEPvAeGOr1y4eiseZjvNNRfpwd/V54O
fruhUoKzpi2ZC16robtych9tm4P1TQYzlW1Zmob97xpqSVtXw8NkzN80eMrY
8ukXp4Jfb+jHvt+2fHUSeHWG2jstM61lHParMjj2s/K02jjwjhj6uBGzH60I
dX9rVGR+I59Vmppo/j/yV6epNSYP+avX+BtzP9zfTY0XmPEg/3c1XeLFfJOm
/2ieB7xWjeS82K9d42QzH+B3anqHmS+sf6DpFWY+Md+l6dVmvsHr1vRs8z6w
f4+m9zPvC/xeTbWb9wmeS1M+5n2760FT3WY9uOtFUxVmvSA/TzS13Kwn5POZ
pku9If+K9FSzHjHvQTFSr7gPTyqVesb9edIDqXfwvShG3gN43oT3Ap4Plcp7
As9CSt4beBZyeZnvEbw+VCPvFTxfipX3DF5fcm033zt4fjRE9AA8PwrabuoF
eP2oWvQEPH+aKXoDXn8qFj0CL4AyRK/AC6Bm0TPwAmmH6B3WB5Fd9BDzQbRJ
9BI8K0FPsb+VWkRvwbfSLtFj8IKpQvTaredUInoOPwohb9F7+FUIJYgfQN9D
aLL4BfzJRiniJ/AvG0WJ34Bnp/PiR+DZabz4ldvPiMXP3H5H8eJ3iC+UYsQP
4Udh5BS/hF+F0VDxU/hZGLnEb+FP4XRU/Njt12QTv3b7OYWLnyM+B8WI3yM+
B+VIP4D4Igj9As4bQe9JP4HzRtJ9ZfYb4EVSifQj7n6FlNPsV86in6F7S8x+
BvFFUa+P2e8gvmj629/sh3DeaMqrNfulCeinCO2U+h8DyCFG
      "]]}, {}}, {}, {}, {{}, {}}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox["\"err(v)\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=1/2\"", TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-0.005919127412254976, 0.005919127412255018}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"23054882-7b18-\
4f6c-9a33-66472b07c530"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"example", " ", 
    RowBox[{"(", 
     RowBox[{
     "negative", " ", "entries", " ", "are", " ", "likely", " ", "numerical", 
      " ", "artifacts"}], ")"}]}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", 
       FractionBox["1", "2"]}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}]}], "}"}], ",", 
    SubscriptBox["nFP", 
     RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], 
   "]"}]}]], "Input",ExpressionUUID->"3de1bb70-234e-4a7e-9f50-2ef042039060"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"0.`", ",", 
   RowBox[{"-", "8.793909827695587`*^-11"}], ",", 
   RowBox[{"-", "1.5534848843862593`*^-10"}], ",", "3.93728265743588`*^-11", 
   ",", "5.891493536032974`*^-10", ",", "1.4861630313111206`*^-9", ",", 
   "2.6341542926047855`*^-9", ",", "3.758083423529035`*^-9", ",", 
   "4.303008182706589`*^-9", ",", "3.410746913675276`*^-9", ",", 
   "3.398017523543632`*^-11", ",", 
   RowBox[{"-", "6.7745533980544424`*^-9"}], ",", 
   RowBox[{"-", "1.734768815513523`*^-8"}], ",", 
   RowBox[{"-", "3.0638459215273487`*^-8"}], ",", 
   RowBox[{"-", "4.327790237844922`*^-8"}], ",", 
   RowBox[{"-", "4.866596130650196`*^-8"}], ",", 
   RowBox[{"-", "3.6488215050785576`*^-8"}], ",", "6.731443235078815`*^-9", 
   ",", "9.523413556377407`*^-8", ",", "2.3886516690413833`*^-7", ",", 
   "4.343174647592183`*^-7", ",", "6.523887419315989`*^-7", ",", 
   "8.218272658394141`*^-7", ",", "8.120173082338117`*^-7", ",", 
   "4.193070091863523`*^-7", ",", 
   RowBox[{"-", "6.346918372208217`*^-7"}], ",", 
   RowBox[{"-", "2.680016248646252`*^-6"}], ",", 
   RowBox[{"-", "6.032406619731483`*^-6"}], ",", 
   RowBox[{"-", "0.000010860835769795674`"}], ",", 
   RowBox[{"-", "0.00001695960814349601`"}], ",", 
   RowBox[{"-", "0.000023392253910039416`"}], ",", 
   RowBox[{"-", "0.000027973225794456525`"}], ",", 
   RowBox[{"-", "0.000026556341662336397`"}], ",", 
   RowBox[{"-", "0.000012107567060309205`"}], ",", "0.00002644449818506609`", 
   ",", "0.00010556324876264756`", ",", "0.0002486147110614415`", ",", 
   "0.00048744627560310424`", ",", "0.0008639028484697432`", ",", 
   "0.0014311078955402227`", ",", "0.0022543026960419256`", ",", 
   "0.0034110188529595333`", ",", "0.004990365269172712`", ",", 
   "0.0070912486223227295`", ",", "0.009819419720278026`", ",", 
   "0.013283345427097549`", ",", "0.01758903867214639`", ",", 
   "0.022834121876862457`", ",", "0.029101530913464874`", ",", 
   "0.0364533642278533`", ",", "0.04492542425992673`", ",", 
   "0.05452297238881544`", ",", "0.06521812212971888`", ",", 
   "0.07694913879743846`", ",", "0.0896217193342158`", ",", 
   "0.10311212277922051`", ",", "0.11727184061108695`", ",", 
   "0.13193336275963316`", ",", "0.14691652553896542`", ",", 
   "0.16203492599271604`", ",", "0.1771019453412484`", ",", 
   "0.19193602582705377`", ",", "0.20636496942761398`", ",", 
   "0.22022915312680336`", ",", "0.23338366716022876`", ",", 
   "0.2456994693340834`", ",", "0.257063705947938`", ",", 
   "0.2673793791372782`", ",", "0.27656454628229205`", ",", 
   "0.28455122591230536`", ",", "0.29128416283185804`", ",", 
   "0.29671957867348697`", ",", "0.30082400700001594`", ",", 
   "0.3035732871776874`", ",", "0.3049517699124678`", ",", 
   "0.3049517699124678`", ",", "0.30357328717768745`", ",", 
   "0.300824007000016`", ",", "0.2967195786734869`", ",", 
   "0.29128416283185804`", ",", "0.2845512259123054`", ",", 
   "0.27656454628229205`", ",", "0.2673793791372782`", ",", 
   "0.257063705947938`", ",", "0.2456994693340834`", ",", 
   "0.23338366716022876`", ",", "0.22022915312680336`", ",", 
   "0.20636496942761398`", ",", "0.19193602582705374`", ",", 
   "0.17710194534124837`", ",", "0.16203492599271602`", ",", 
   "0.1469165255389654`", ",", "0.13193336275963313`", ",", 
   "0.11727184061108695`", ",", "0.1031121227792205`", ",", 
   "0.0896217193342158`", ",", "0.07694913879743846`", ",", 
   "0.06521812212971889`", ",", "0.05452297238881545`", ",", 
   "0.04492542425992674`", ",", "0.03645336422785331`", ",", 
   "0.029101530913464877`", ",", "0.02283412187686246`", ",", 
   "0.0175890386721464`", ",", "0.013283345427097554`", ",", 
   "0.009819419720278031`", ",", "0.007091248622322736`", ",", 
   "0.0049903652691727154`", ",", "0.003411018852959534`", ",", 
   "0.002254302696041926`", ",", "0.001431107895540223`", ",", 
   "0.0008639028484697434`", ",", "0.0004874462756031043`", ",", 
   "0.0002486147110614415`", ",", "0.00010556324876264768`", ",", 
   "0.000026444498185066133`", ",", 
   RowBox[{"-", "0.000012107567060309207`"}], ",", 
   RowBox[{"-", "0.000026556341662336387`"}], ",", 
   RowBox[{"-", "0.000027973225794456525`"}], ",", 
   RowBox[{"-", "0.000023392253910039416`"}], ",", 
   RowBox[{"-", "0.000016959608143496016`"}], ",", 
   RowBox[{"-", "0.000010860835769795677`"}], ",", 
   RowBox[{"-", "6.032406619731489`*^-6"}], ",", 
   RowBox[{"-", "2.6800162486462525`*^-6"}], ",", 
   RowBox[{"-", "6.346918372208233`*^-7"}], ",", "4.1930700918635235`*^-7", 
   ",", "8.120173082338109`*^-7", ",", "8.218272658394138`*^-7", ",", 
   "6.523887419315986`*^-7", ",", "4.343174647592181`*^-7", ",", 
   "2.388651669041384`*^-7", ",", "9.523413556377386`*^-8", ",", 
   "6.731443235078816`*^-9", ",", 
   RowBox[{"-", "3.6488215050785496`*^-8"}], ",", 
   RowBox[{"-", "4.8665961306501993`*^-8"}], ",", 
   RowBox[{"-", "4.327790237844915`*^-8"}], ",", 
   RowBox[{"-", "3.063845921527344`*^-8"}], ",", 
   RowBox[{"-", "1.7347688155135246`*^-8"}], ",", 
   RowBox[{"-", "6.774553398054417`*^-9"}], ",", "3.398017523542001`*^-11", 
   ",", "3.4107469136752546`*^-9", ",", "4.3030081827066`*^-9", ",", 
   "3.758083423529014`*^-9", ",", "2.634154292604777`*^-9", ",", 
   "1.4861630313111338`*^-9", ",", "5.891493536032834`*^-10", ",", 
   "3.937282657435924`*^-11", ",", 
   RowBox[{"-", "1.553484884386169`*^-10"}], ",", 
   RowBox[{"-", "8.7939098276962`*^-11"}], ",", "0.`"}], "}"}]], "Output",Expr\
essionUUID->"c969965e-ac6e-4dcb-8ef8-c8217ec42766"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "normalization", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", 
       FractionBox["1", "2"]}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}]}], "}"}], ",", 
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
              RowBox[{
               RowBox[{"Length", "[", 
                SubscriptBox["nFP", 
                 RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
                "]"}], "-", "1"}], "2"]}], ",", 
            FractionBox[
             RowBox[{
              RowBox[{"Length", "[", 
               SubscriptBox["nFP", 
                RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
               "]"}], "-", "1"}], "2"]}], "]"}]}]}], ",", "nip"}], "}"}], ",", 
      RowBox[{
       RowBox[{"nip", "=", 
        RowBox[{"Interpolation", "[", 
         RowBox[{"Transpose", "[", 
          RowBox[{"{", 
           RowBox[{"vlist", ",", 
            SubscriptBox["nFP", 
             RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], "}"}],
           "]"}], "]"}]}], ";", 
       RowBox[{"NIntegrate", "[", 
        RowBox[{
         RowBox[{"nip", "[", "v", "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"v", ",", 
           RowBox[{
           "vlist", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
           ",", 
           RowBox[{"vlist", "\[LeftDoubleBracket]", 
            RowBox[{"-", "1"}], "\[RightDoubleBracket]"}]}], "}"}]}], 
        "]"}]}]}], "]"}]}], "]"}]}]], "Input",ExpressionUUID->"d0eba01b-076b-\
4ace-9c66-56d0c0758bbf"],

Cell[BoxData["1.0000000000003773`"], "Output",ExpressionUUID->"e50d5a3b-1652-4eef-80a0-5550f5305b5f"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"\[Beta]", "=", "1"}], ",", 
     RowBox[{"P", "=", "2"}], ",", 
     RowBox[{"\[CapitalDelta]x", "=", 
      FractionBox["1", "10"]}], ",", 
     RowBox[{"\[CapitalDelta]t", "=", 
      FractionBox["1", "20"]}], ",", 
     RowBox[{"numiter", "=", "100"}], ",", 
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
            RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], ",", "n"}], 
      "}"}], ",", 
     RowBox[{
      RowBox[{"n", "=", 
       RowBox[{"TodaFokkerPlanckIteration", "[", 
        RowBox[{"\[Beta]", ",", "P", ",", 
         RowBox[{
          RowBox[{
           RowBox[{"Gauss", "[", 
            RowBox[{"\[Beta]", ",", "#"}], "]"}], "&"}], "/@", 
          RowBox[{"N", "[", "vlist", "]"}]}], ",", "\[CapitalDelta]x", ",", 
         "\[CapitalDelta]t", ",", "numiter"}], "]"}]}], ";", 
      RowBox[{
       SubscriptBox["nFP", 
        RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], "=", 
       RowBox[{"Last", "[", "n", "]"}]}], ";", 
      RowBox[{"Animate", "[", 
       RowBox[{
        RowBox[{"Show", "[", 
         RowBox[{
          RowBox[{"ListPlot", "[", 
           RowBox[{
            RowBox[{"Transpose", "[", 
             RowBox[{"{", 
              RowBox[{"vlist", ",", 
               RowBox[{"n", "\[LeftDoubleBracket]", 
                RowBox[{"k", "+", "1"}], "\[RightDoubleBracket]"}]}], "}"}], 
             "]"}], ",", 
            RowBox[{"PlotRange", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{"Automatic", ",", 
               RowBox[{"{", 
                RowBox[{"0", ",", 
                 RowBox[{"1", "/", "2"}]}], "}"}]}], "}"}]}], ",", 
            RowBox[{"AxesLabel", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{"\"\<v\>\"", ",", "\"\<n(v)/P\>\""}], "}"}]}], ",", 
            RowBox[{"PlotLabel", "\[Rule]", 
             RowBox[{"\"\<\[Beta]=\>\"", "<>", 
              RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"",
               "<>", 
              RowBox[{"ToString", "[", 
               RowBox[{"InputForm", "[", "P", "]"}], "]"}], "<>", 
              "\"\<, t=\>\"", "<>", 
              RowBox[{"ToString", "[", 
               RowBox[{"N", "[", 
                RowBox[{"k", " ", "\[CapitalDelta]t"}], "]"}], "]"}]}]}]}], 
           "]"}], ",", 
          RowBox[{"Plot", "[", 
           RowBox[{
            RowBox[{"Gauss", "[", 
             RowBox[{"\[Beta]", ",", "x"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"x", ",", 
              RowBox[{"-", "6"}], ",", "6"}], "}"}], ",", 
            RowBox[{"PlotStyle", "\[Rule]", 
             RowBox[{
              RowBox[{"ColorData", "[", "97", "]"}], "[", "2", "]"}]}]}], 
           "]"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"k", ",", "0", ",", "numiter", ",", "1"}], "}"}], ",", 
        RowBox[{"AnimationRunning", "\[Rule]", "False"}]}], "]"}]}]}], 
    "]"}]}], "]"}]], "Input",ExpressionUUID->"fa032e4f-6269-464b-9487-\
bd5ce3d1ebc0"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`k$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`k$$], 0, 100, 1}}, Typeset`size$$ = {
    360., {130., 135.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`k$101610$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`k$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`k$$, $CellContext`k$101610$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[
        ListPlot[
         Transpose[{$CellContext`vlist$101308, 
           Part[$CellContext`n$101308, $CellContext`k$$ + 1]}], 
         PlotRange -> {Automatic, {0, 1/2}}, AxesLabel -> {"v", "n(v)/P"}, 
         PlotLabel -> StringJoin["\[Beta]=", 
           ToString[1], ", P=", 
           ToString[
            InputForm[2]], ", t=", 
           ToString[
            N[$CellContext`k$$ Rational[1, 20]]]]], 
        Plot[
         $CellContext`Gauss[1, $CellContext`x], {$CellContext`x, -6, 6}, 
         PlotStyle -> ColorData[97][2]]], 
      "Specifications" :> {{$CellContext`k$$, 0, 100, 1, AnimationRunning -> 
         False, AppearanceElements -> {
          "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
           "DirectionButton"}}}, 
      "Options" :> {
       ControlType -> Animator, AppearanceElements -> None, DefaultBaseStyle -> 
        "Animate", DefaultLabelStyle -> "AnimateLabel", SynchronousUpdating -> 
        True, ShrinkingDelay -> 10.}, "DefaultOptions" :> {}],
     ImageSizeCache->{411., {169., 175.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Animate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",ExpressionUUID->"44cb7832-\
cc12-49d5-afbb-a01ae0b8f9d2"]
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
      RowBox[{"ListLinePlot", "[", 
       RowBox[{
        RowBox[{"Transpose", "[", 
         RowBox[{"{", 
          RowBox[{"vlist", ",", 
           RowBox[{"(", 
            RowBox[{"P", " ", 
             SubscriptBox["nFP", 
              RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], 
            ")"}]}], "}"}], "]"}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"\"\<v\>\"", ",", "\"\<n(v)\>\""}], "}"}]}], ",", 
        RowBox[{"PlotLabel", "\[Rule]", 
         RowBox[{"\"\<\[Beta]=\>\"", "<>", 
          RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
          RowBox[{"ToString", "[", 
           RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}]}], "]"}]}], 
     "]"}]}], "]"}]}]], "Input",ExpressionUUID->"239169c3-9c8d-4991-90e0-\
6d9d3cf8a474"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.01388888888888889], 
     AbsoluteThickness[1.6], LineBox[CompressedData["
1:eJxVlgtQlFUYhhfQ1SiXXZBdWG41CuYSBnmZpqk9HzGihSLijDVJipBgqybR
IDJTZqYCaohWXrqY4SVT5OIyuQOy52vQSC6xgbCLNpIjhsllCm/I0FD6v9sM
Z2Zn599//+ec/5zve9/3qbT1yas8VSrVvv8+D7+bmx6OEFZhZDwaIby5PaUp
e3GsXfk1hBd5XkladCPW/sXBhyOYx5dP8U15N9U+89EI5jMVUelr9+bYFV4Q
H7PdCR05+rFd4QVxwaGrsfGWXeAFcfo6/eRzXAyekcOnO5Zoh3eBZ+QIP7Ox
gy3gBXJPWtq3UaOfmRVeIP99/Q3yspWZFV4gL1zSJJ2za80KL4CTjKXDpoSf
zAovgEtXRniqQ5vMCs/A63sKA63pjeAZeCT6SKLOWA2egdMMs6ylhp+xPj0v
H5cbeyy/B+vT8/5ZJXcyjz7A+vy5/1RucWiaWio8f64s/GhCVodWKjx/rphy
cPMcjV4qvMkcdkLXu2ZOgFR4k9n5pCiy2nylwvPjF62p9Wv4Mtbnx65FtbFn
W6cJhefHtarDWcwkFJ4vmxwUkLVtsVB4vlx9JdorbHCFUHg6zlKv+2CD3SIU
no77y+7pu31ywNNx3IOD7ccPfwielnOuHZp7u207eFrOjAq/8PaV3bjvw3Oj
l8+wfvo5+BqOXD2/+FTOV+Bp+HTKJW9Tcgmen8RbjvTlNft+h/mfYP/jcZWX
80rBe5wT7WHjXhGV4Hnz/N6YakthFXje/P7trZFqXxt4j3HGua8XPv1LDXgT
uW+bwdFVKcGbwJUN5QuzXT+Cp+bdJTun7++qA0/NfZOCk8/evADeeJ75R7Gr
aqAevHFsPfDDRH3/RfC8eGv0ph7t743geXLmDadxx/lm8Dz5kt3nG+8DLeB5
8Mp5XRdfK3WAp+KO/Nfzdm75FfdH5drZKyrCE1vB/0e+qbqX5NK0gTci86P2
tG0834bnh2Vnw4ZlQ+9cwvxD0tQ9OpCiaQfvvtzaOthcU9IO3l1p6spsmfVM
B3h3ZPW0OScGTnaANyiX6YOG/MKc4P0lcxs+GXEUOHF/QOpa+hsW33SC3yut
3Zb7/JILvJsyIPvunvhCF57vlhmmpRkTGl2Y/5q09XtkTfXqxP3f5Mi++Jzq
mE7wO+SMBC++trQTPIdccPXVvtPZnZivTm7eElofta0TvO9lkmbw+TVF/18L
9zX+L9z/B0+4eZhPPIv5sB7hXg/WK8aut1u43wfvKwLxvtgPUYX9wH4JLfYL
+yk2jtnPQZGC/cZ5iBqcB85LROK8cJ5iO84T5y0icd6oB3EZ9YB6EQWoF9ST
cNcT6k246w31SO1j6tGDUlGvqGdqRz2j3mk16h39QO5+QL/QGfQL+omeQz+h
3+gW+g39SEXoR/QrlaNf0c/0J/oZ/U6p6HfoAeVCD6AXFAe9gJ5QAvQEekM+
0BvoEW2CHkGv6CT0CnpG06Fn0DuKg95BD+mtMXqopfegl9BTMkNPobd0C3oL
Paa10GPoNZ2FXkPPKQJ6Dr0nG/QefkB18AP4BU09o/gF/ISuwk/gN2SE38CP
qBx+BL+i0/Ar+Bldh5/B76gAfgc/pAXwQ/glRcMv4acUGaP4KfyWLPBb+DEd
gR/Dr+ll+DX8nF6An8PvyQm/Rx6gWuQB5AXKRl5AniA98gTyBrnzBvIIrUIe
QV6hL5FXkGfoGPIM8g7VlCl5B3mI9iIPIS/RPOQl5ClCnFL9C8ZYKfs=
      "]]}}, {}, {}, {{}, {}}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox["\"n(v)\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=2\"", TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-0.00009236367874768156, 0.3993175560101223}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"2189858a-776d-\
4c07-a7ab-af5eb650066e"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "error", " ", "does", " ", "not", " ", "seem", " ", "to", " ", "decrease", 
    " ", "much", " ", "with", " ", "increasing", " ", "grid", " ", 
    "resolution"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", "2"}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}]}], "}"}], ",", 
    RowBox[{"ListPlot", "[", 
     RowBox[{
      RowBox[{"Transpose", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"\[CapitalDelta]x", " ", 
          RowBox[{"Range", "[", 
           RowBox[{
            RowBox[{"-", 
             FractionBox[
              RowBox[{
               RowBox[{"Length", "[", 
                SubscriptBox["nFP", 
                 RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
                "]"}], "-", "1"}], "2"]}], ",", 
            FractionBox[
             RowBox[{
              RowBox[{"Length", "[", 
               SubscriptBox["nFP", 
                RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
               "]"}], "-", "1"}], "2"]}], "]"}]}], ",", 
         RowBox[{"TodaFokkerPlanckError", "[", 
          RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x", ",", 
           SubscriptBox["nFP", 
            RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], 
          "]"}]}], "}"}], "]"}], ",", 
      RowBox[{"AxesLabel", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"\"\<v\>\"", ",", "\"\<err(v)\>\""}], "}"}]}], ",", 
      RowBox[{"PlotLabel", "\[Rule]", 
       RowBox[{"\"\<\[Beta]=\>\"", "<>", 
        RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
        RowBox[{"ToString", "[", 
         RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}], ",", 
      RowBox[{"PlotRange", "\[Rule]", "All"}]}], "]"}]}], "]"}]}]], "Input",ExpressionUUID->"b9aa39c3-1272-4ed5-9fd0-fd84934be0be"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.009166666666666668], 
     AbsoluteThickness[1.6], PointBox[CompressedData["
1:eJw1lgtQlFUYhj/BG15wL8CywBZeMm28obIiyv5nApU08EaSNpqK66CmNqOO
Wuis6ESTaYKXCPOWjormIN00xvb/WtLCoSIVNIMR1HGwNYeQVWEgWs5598ww
zNmz5zln///93vcbuHTtHGcQER3w/3X9/7Wya9iYMJbLYeOfWj30XcUkh/rU
xp7yDEOhZ5G76LOuEcMv5Y+vO7N8g3ucHDFMMRdbc+cvditeNMearAvTBuY6
FC+a4wty2uPri8CLZkNy6TGPo9iheFEc39N5M0n72qF4Ufz7wRWd5ccvOhTP
yk1x11faMr4Hz8orK455mrLPg2flqtK2ucJ3BPeLZHve0rqTVVdxv0juPHR1
2baQO7ifhW/FJnv1JK9b8Sw8anTno/eTWtyKZ+FH3xwvX09t4EXwF77SvPTg
dvAi+IOCmJiZl33ghbNrUfVZ+5Fz4IVz4wln5oIlPTTFC+f4vMr0uxU2TfHC
eO/o220ld0dqihfGr4Z4979wfaKmeGZ+bVzjvP1zUjTFM/O20l7J1/5KA8/M
UYsMu0rcGeCZuLXsflHdxrfAM3H655utG7OXgGfk6an25KmjnOAZ+cMbg6p3
/ZwNnpETDqXdG/FgFXgGPv/J87KcpDXgGdgw9sfUT3etxfoAFmMe1tedWwt+
KM9q7lY8b98a8EJ58da909sz38H+/lyVNXtfysgVOL8fN3mPHypc6ASvL58/
4a52Twrctw/TKVPopdELwOvDLl7QMHLVHPBC2LX76G9Zlmng9WbaMu7tzJcn
gNeLaZN5giHXDF5Ppvf+uTv51EBd8fzzO7daZ6wbqyteD6ZfLJuenkzQFa87
kz27fuegybriBfvnM4NT9yTpihfE9EPH2cIdSeD554PK3hixeTJ43ZgSL7tr
KxPBI6a43e1ZVxKw3qm7/s4vTi+0g9+hu8pWFwxzjgevXadpqwfPTR6L/W26
i403U8QYnP9cp6wD36ZcGQHeM50Ozv9488Lh4Pl0ulFTa5k6FLwWnSzrd2zJ
GQxes05pJXVP2mLBa9Jpy9Vq5wYb1h/rdPRJrGWFFXyvTkNvN53whIPXqFPe
zvyk9Sbsv6/TsIovzzSE4vwGnZ7OKtr6ZgjWa3XyLYvLtHcHv0anmikpGZX/
od6qdMqc+G7BaR/qq1ynxBcPr7v4EPVXrNOjcw4O/SMw18hU0jWHX5RrdE1+
H35QpZE9sYsHv6jR6Ct5HvykVqMCeR/opUGjoNld94Ve7vvX5e+B/ho1uiR/
L/Tn1ejen13PA/p7rNEF+bywv0mjB/J5Yr1Zo7nyeYPXolGkfB8436fRQ/m+
wH+mUaF8n+A912iKfN/gtWkut9QDeO3+3yv1Al6H5iqWegKvU6NaqTfsJ0FD
pB6x3k1QqtQreEGC4qSecb5/fkHqHfxgQcNlPYDX3f99WS/g9RDkkfUEXk+B
egvUo6Ctsh4D9Spon6xX6KO3oO2ynqG/EOHaK+sd+usjWPkB9OWfn5R+Af31
FbOUn4DXT9QrvwGvv9ij/Ai8UGFQfgVeqGj6V/oZeANEqvI77DeI3soPsW4Q
p5VfgmcUQvkpzjcKl/Jb8I0iRfkxeCYxQ/k1eCbRofwcPLOA34NnFrkqD8Az
i2SVF+CFiQSVJ+CFie0qb8ALF4kqj8ALF6zyCrxw4cqSeYb6ihAfqbxDXkeI
wyoPUW8W4VV5iXqziCEqT1FvFsEqb8GLFI0qj8GLFP1UXgfyXBxVeR7Ie5Gj
8h55axUtqh+AX0SJC6pfgD9EiVdUPwF/iRbBqt9APkeL5nzZjwT6FfG66lcC
/Yw4rfoZ3C9GrFT9TqAfEkM9sh/C/Wyi5ansl8CzCcL4H2ZtDWY=
      "]]}, {}}, {}, {}, {{}, {}}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox["\"err(v)\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=2\"", TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-0.003867085796889245, 0.0038670857968892414`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"db62edf3-afea-\
4594-bcd7-1af283eb4ca1"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "normalization", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", "2"}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}]}], "}"}], ",", 
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
              RowBox[{
               RowBox[{"Length", "[", 
                SubscriptBox["nFP", 
                 RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
                "]"}], "-", "1"}], "2"]}], ",", 
            FractionBox[
             RowBox[{
              RowBox[{"Length", "[", 
               SubscriptBox["nFP", 
                RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
               "]"}], "-", "1"}], "2"]}], "]"}]}]}], ",", "nip"}], "}"}], ",", 
      RowBox[{
       RowBox[{"nip", "=", 
        RowBox[{"Interpolation", "[", 
         RowBox[{"Transpose", "[", 
          RowBox[{"{", 
           RowBox[{"vlist", ",", 
            SubscriptBox["nFP", 
             RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], "}"}],
           "]"}], "]"}]}], ";", 
       RowBox[{"NIntegrate", "[", 
        RowBox[{
         RowBox[{"nip", "[", "v", "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"v", ",", 
           RowBox[{
           "vlist", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
           ",", 
           RowBox[{"vlist", "\[LeftDoubleBracket]", 
            RowBox[{"-", "1"}], "\[RightDoubleBracket]"}]}], "}"}]}], 
        "]"}]}]}], "]"}]}], "]"}]}]], "Input",ExpressionUUID->"cbcafe72-b077-\
4c0d-9bef-5e97808534d5"],

Cell[BoxData["0.9999999997760647`"], "Output",ExpressionUUID->"f2e9567a-66d3-4c80-8c0f-c0a1db7357bb"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "note", " ", "that", " ", "negative", " ", "pressure", " ", "is", " ", 
    "not", " ", "allowed", " ", "in", " ", "practice"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", 
       RowBox[{"-", 
        FractionBox["1", "2"]}]}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "50"]}], ",", 
      RowBox[{"\[CapitalDelta]t", "=", 
       FractionBox["1", "200"]}], ",", 
      RowBox[{"numiter", "=", "2000"}], ",", 
      RowBox[{"numpoints", "=", "400"}]}], "}"}], ",", 
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
             RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], ",", "n"}], 
       "}"}], ",", 
      RowBox[{
       RowBox[{"n", "=", 
        RowBox[{"TodaFokkerPlanckIteration", "[", 
         RowBox[{"\[Beta]", ",", "P", ",", 
          RowBox[{
           RowBox[{
            RowBox[{"Gauss", "[", 
             RowBox[{"\[Beta]", ",", "#"}], "]"}], "&"}], "/@", 
           RowBox[{"N", "[", "vlist", "]"}]}], ",", "\[CapitalDelta]x", ",", 
          "\[CapitalDelta]t", ",", "numiter"}], "]"}]}], ";", 
       RowBox[{
        SubscriptBox["nFP", 
         RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], "=", 
        RowBox[{"Last", "[", "n", "]"}]}], ";", 
       RowBox[{"Animate", "[", 
        RowBox[{
         RowBox[{"Show", "[", 
          RowBox[{
           RowBox[{"ListPlot", "[", 
            RowBox[{
             RowBox[{"Transpose", "[", 
              RowBox[{"{", 
               RowBox[{"vlist", ",", 
                RowBox[{"n", "\[LeftDoubleBracket]", 
                 RowBox[{"k", "+", "1"}], "\[RightDoubleBracket]"}]}], "}"}], 
              "]"}], ",", 
             RowBox[{"PlotRange", "\[Rule]", 
              RowBox[{"{", 
               RowBox[{"Automatic", ",", 
                RowBox[{"{", 
                 RowBox[{"0", ",", 
                  RowBox[{"3", "/", "4"}]}], "}"}]}], "}"}]}], ",", 
             RowBox[{"AxesLabel", "\[Rule]", 
              RowBox[{"{", 
               RowBox[{"\"\<v\>\"", ",", "\"\<n(v)/P\>\""}], "}"}]}], ",", 
             RowBox[{"PlotLabel", "\[Rule]", 
              RowBox[{"\"\<\[Beta]=\>\"", "<>", 
               RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", 
               "\"\<, P=\>\"", "<>", 
               RowBox[{"ToString", "[", 
                RowBox[{"InputForm", "[", "P", "]"}], "]"}], "<>", 
               "\"\<, t=\>\"", "<>", 
               RowBox[{"ToString", "[", 
                RowBox[{"N", "[", 
                 RowBox[{"k", " ", "\[CapitalDelta]t"}], "]"}], "]"}]}]}]}], 
            "]"}], ",", 
           RowBox[{"Plot", "[", 
            RowBox[{
             RowBox[{"Gauss", "[", 
              RowBox[{"\[Beta]", ",", "x"}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"x", ",", 
               RowBox[{"-", "6"}], ",", "6"}], "}"}], ",", 
             RowBox[{"PlotStyle", "\[Rule]", 
              RowBox[{
               RowBox[{"ColorData", "[", "97", "]"}], "[", "2", "]"}]}]}], 
            "]"}]}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"k", ",", "0", ",", "numiter", ",", "1"}], "}"}], ",", 
         RowBox[{"AnimationRunning", "\[Rule]", "False"}]}], "]"}]}]}], 
     "]"}]}], "]"}]}]], "Input",ExpressionUUID->"86c207be-c866-4e02-8708-\
65030c5142e0"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`k$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`k$$], 0, 2000, 1}}, Typeset`size$$ = {
    360., {130., 135.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`k$107838$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`k$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`k$$, $CellContext`k$107838$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[
        ListPlot[
         Transpose[{$CellContext`vlist$101836, 
           Part[$CellContext`n$101836, $CellContext`k$$ + 1]}], 
         PlotRange -> {Automatic, {0, 3/4}}, AxesLabel -> {"v", "n(v)/P"}, 
         PlotLabel -> StringJoin["\[Beta]=", 
           ToString[1], ", P=", 
           ToString[
            InputForm[
             Rational[-1, 2]]], ", t=", 
           ToString[
            N[$CellContext`k$$ Rational[1, 200]]]]], 
        Plot[
         $CellContext`Gauss[1, $CellContext`x], {$CellContext`x, -6, 6}, 
         PlotStyle -> ColorData[97][2]]], 
      "Specifications" :> {{$CellContext`k$$, 0, 2000, 1, AnimationRunning -> 
         False, AppearanceElements -> {
          "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
           "DirectionButton"}}}, 
      "Options" :> {
       ControlType -> Animator, AppearanceElements -> None, DefaultBaseStyle -> 
        "Animate", DefaultLabelStyle -> "AnimateLabel", SynchronousUpdating -> 
        True, ShrinkingDelay -> 10.}, "DefaultOptions" :> {}],
     ImageSizeCache->{411., {169., 175.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Animate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",ExpressionUUID->"7dde1ac5-\
b03f-45c6-8d27-52f332fe6376"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "error", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", 
       RowBox[{"-", 
        FractionBox["1", "2"]}]}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "50"]}]}], "}"}], ",", 
    RowBox[{"ListPlot", "[", 
     RowBox[{
      RowBox[{"Transpose", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"\[CapitalDelta]x", " ", 
          RowBox[{"Range", "[", 
           RowBox[{
            RowBox[{"-", 
             FractionBox[
              RowBox[{
               RowBox[{"Length", "[", 
                SubscriptBox["nFP", 
                 RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
                "]"}], "-", "1"}], "2"]}], ",", 
            FractionBox[
             RowBox[{
              RowBox[{"Length", "[", 
               SubscriptBox["nFP", 
                RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
               "]"}], "-", "1"}], "2"]}], "]"}]}], ",", 
         RowBox[{"TodaFokkerPlanckError", "[", 
          RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x", ",", 
           SubscriptBox["nFP", 
            RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], 
          "]"}]}], "}"}], "]"}], ",", 
      RowBox[{"AxesLabel", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"\"\<v\>\"", ",", "\"\<err(v)\>\""}], "}"}]}], ",", 
      RowBox[{"PlotLabel", "\[Rule]", 
       RowBox[{"\"\<\[Beta]=\>\"", "<>", 
        RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
        RowBox[{"ToString", "[", 
         RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}], ",", 
      RowBox[{"PlotRange", "\[Rule]", "All"}]}], "]"}]}], "]"}]}]], "Input",Ex\
pressionUUID->"9a60540b-ea73-4fcb-9cc9-5c0611a86d8b"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.007333333333333334], 
     AbsoluteThickness[1.6], PointBox[CompressedData["
1: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
5Q==
      "]]}, {}}, {}, {}, {{}, {}}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox["\"err(v)\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=-1/2\"", TraditionalForm],
  PlotRange->{{-3.99, 3.99}, {-0.004843948797248476, 0.004843948797246478}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"489e86ff-5ef0-\
4115-98d8-7f2ba97d3f10"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "normalization", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", 
       RowBox[{"-", 
        FractionBox["1", "2"]}]}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "50"]}]}], "}"}], ",", 
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
              RowBox[{
               RowBox[{"Length", "[", 
                SubscriptBox["nFP", 
                 RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
                "]"}], "-", "1"}], "2"]}], ",", 
            FractionBox[
             RowBox[{
              RowBox[{"Length", "[", 
               SubscriptBox["nFP", 
                RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
               "]"}], "-", "1"}], "2"]}], "]"}]}]}], ",", "nip"}], "}"}], ",", 
      RowBox[{
       RowBox[{"nip", "=", 
        RowBox[{"Interpolation", "[", 
         RowBox[{"Transpose", "[", 
          RowBox[{"{", 
           RowBox[{"vlist", ",", 
            SubscriptBox["nFP", 
             RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], "}"}],
           "]"}], "]"}]}], ";", 
       RowBox[{"NIntegrate", "[", 
        RowBox[{
         RowBox[{"nip", "[", "v", "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"v", ",", 
           RowBox[{
           "vlist", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
           ",", 
           RowBox[{"vlist", "\[LeftDoubleBracket]", 
            RowBox[{"-", "1"}], "\[RightDoubleBracket]"}]}], "}"}]}], 
        "]"}]}]}], "]"}]}], "]"}]}]], "Input",ExpressionUUID->"db70b2ff-3c25-\
499e-91ed-fd1820719746"],

Cell[BoxData["1.0000000126560729`"], "Output",ExpressionUUID->"5c50f2ec-d801-4881-9739-e1ffe8f7e4d2"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"sweep", " ", "over", " ", "pressure", " ", "P"}], " ", "*)"}], 
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
       RowBox[{"\[CapitalDelta]t", "=", 
        FractionBox["1", "20"]}], ",", 
       RowBox[{"numiter", "=", "100"}], ",", 
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
              RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], ",", "n"}], 
        "}"}], ",", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{
          SubscriptBox["nFP", 
           RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], "=", 
          RowBox[{"Last", "[", 
           RowBox[{"TodaFokkerPlanckIteration", "[", 
            RowBox[{"\[Beta]", ",", "P", ",", 
             RowBox[{
              RowBox[{
               RowBox[{"Gauss", "[", 
                RowBox[{"\[Beta]", ",", "#"}], "]"}], "&"}], "/@", 
              RowBox[{"N", "[", "vlist", "]"}]}], ",", "\[CapitalDelta]x", 
             ",", "\[CapitalDelta]t", ",", "numiter"}], "]"}], "]"}]}], ",", 
         RowBox[{"{", 
          RowBox[{"P", ",", "Plist"}], "}"}]}], "]"}]}], "]"}]}], "]"}], 
   ";"}]}]], "Input",ExpressionUUID->"596e3af9-2106-4566-9203-d38093c8e831"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Insert into TBA equation (as consistency check)", "Subsection",ExpressionUUID->"6a000488-20eb-42b8-a816-36a5641db71c"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"explicitly", " ", "include", " ", "pressure", " ", "prefactor"}], 
   " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"TodaTBADifference", "[", 
    RowBox[{"\[Beta]_", ",", "P_", ",", "h_", ",", "n_List"}], "]"}], ":=", 
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"vlist", "=", 
        RowBox[{"h", " ", 
         RowBox[{"Range", "[", 
          RowBox[{
           RowBox[{"-", 
            FractionBox[
             RowBox[{
              RowBox[{"Length", "[", "n", "]"}], "-", "1"}], "2"]}], ",", 
           FractionBox[
            RowBox[{
             RowBox[{"Length", "[", "n", "]"}], "-", "1"}], "2"]}], "]"}]}]}],
        ",", "T"}], "}"}], ",", 
     RowBox[{
      RowBox[{"T", "=", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"HatScatteringIntegral", "[", 
          RowBox[{"h", ",", 
           RowBox[{"v", "-", "w"}]}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"v", ",", "vlist"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"w", ",", "vlist"}], "}"}]}], "]"}]}], ";", 
      RowBox[{"(*", " ", 
       RowBox[{"should", " ", "be", " ", "constant"}], " ", "*)"}], 
      RowBox[{
       RowBox[{
        FractionBox["1", "2"], "\[Beta]", " ", 
        SuperscriptBox["vlist", "2"]}], "-", 
       RowBox[{"P", " ", 
        RowBox[{"T", ".", "n"}]}], "+", 
       RowBox[{"Log", "[", 
        RowBox[{"n", "/.", 
         RowBox[{"{", 
          RowBox[{"0", "\[Rule]", "1.*^-10"}], "}"}]}], "]"}]}]}]}], 
    "]"}]}]}]], "Input",ExpressionUUID->"723efc31-bd9a-4f41-affc-\
6ae6ef501f14"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"P", " ", "=", " ", "1"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"TodaTBADifference", "[", 
    RowBox[{"\[Beta]_", ",", "h_", ",", "n_List"}], "]"}], ":=", 
   RowBox[{"TodaTBADifference", "[", 
    RowBox[{"\[Beta]", ",", "1", ",", "h", ",", "n"}], "]"}]}]}]], "Input",Exp\
ressionUUID->"5afa3073-7dc9-4a41-886e-37c0511c7396"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"should", " ", "be", " ", "constant"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", 
       FractionBox["1", "2"]}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"numpoints", "=", 
         RowBox[{"Length", "[", 
          SubscriptBox["nFP", 
           RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], "]"}]}], 
        ",", "vlist", ",", "diff"}], "}"}], ",", 
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
       RowBox[{"diff", "=", 
        RowBox[{"TodaTBADifference", "[", 
         RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x", ",", 
          SubscriptBox["nFP", 
           RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], "]"}]}],
        ";", 
       RowBox[{"ListPlot", "[", 
        RowBox[{
         RowBox[{"Transpose", "[", 
          RowBox[{"{", 
           RowBox[{"vlist", ",", "diff"}], "}"}], "]"}], ",", 
         RowBox[{"AxesLabel", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"\"\<x\>\"", ",", "\"\<V(x)-P(T n)(x)+log(n(x))\>\""}], 
           "}"}]}], ",", 
         RowBox[{"PlotLabel", "\[Rule]", 
          RowBox[{"\"\<\[Beta]=\>\"", "<>", 
           RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
           RowBox[{"ToString", "[", 
            RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}], ",", 
         RowBox[{"PlotRange", "\[Rule]", "All"}]}], "]"}]}]}], "]"}]}], 
   "]"}]}]], "Input",ExpressionUUID->"3c8d0f73-658c-493a-8616-e193af1a1bad"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.009166666666666668], 
     AbsoluteThickness[1.6], PointBox[CompressedData["
1:eJxVlQ1IlWcUx19vamp+3Oia5jVm9k1WViZt2p6TWiujsrDPBUW0ypQ+VrYl
bDm5QpO5ibRhta2iCKPo04yCfE7dMmkFQnUjcHjDCm+m3srmR3nb9P0fhg+I
vLz3+Z/zPs/5//6jNmxf9pXFMIyv//vr+3/oYN+KZc49eb90uUvP6F+xnOhb
YbMf6FH37/UtO/Ma962UXJ/a1L/sbG3KK6ip/aCM/mXn+pK2KV886FSmXgwX
frfdXhfcrky9GDZu85lf3VegN4KTkmv3px20sbk/in2nM54kDbGyuX84B32y
L2fXYR/6Gc7rX9SnnCjt0ub+SN4yqqaopaBTm/1Eclc2R75f2K1NvUimptYH
E5y92tSzsXvxEvfn3RY29Wyc1P5D5e6EUDxbefeC3276fx+G+hF8LaekeOfG
ADbrhfPGwZkeX54f+g3nLRnndjnO9KK/MHanV5x60taNfkL51bo//ymI6kT9
IexOrm4qbuxA/yFceGPy4nexb9FvCCc6Ljtzq15DL5jHhD+++6jcC70g5kvH
Mjdlt0NvMFvPPj97vLEVeoEcVxFs3V/9CnqB3JGVmvfNXy3QC+A4b/4facNa
oOfP2clZFw47XkJvEN8qV0eqo15Cz8KO+Mr4wFoP9Cy8Y8/MopASD/T8uOhK
6oVJ6zzQM3he4t3SQ3Pk/Uf9re1OWfIUD/R7dVlN1No98aL3QRf+Urd0Wazs
79F5VysaEmM8qN+lyw4ErH0YI3qdOsdXWZc5UvTe6dErqxIa40SvQzePjLaE
jRW9N3pSyr78/Imi59XnjR/3uibL+zYd8eXQ4kHTRb9FV2ZF3GucKXrNeuGE
sOurP5X9z/R7i/OnzalS/6nO+ezE7/5K3jfo1PGun6fOEX2Xnp3ucjeniV69
zqwd1zotQ+o5ddWi6JTQuaJ3Sv/t9ATv/f9ZyTN+ry7i99BT86GHekqhHvpR
s9EP+lUD+32mevA9+F4l34vzUHIeOC8l54XzVAPP841KwHnjPpTcB+5LyX3h
PtVW3CfuW5XjvjEPahvmAfOiHJgXzJOSecK8KZk3zCMNnEc/cmBeMc+0DfOM
eSeZd/iBxA/wC62CX+AnEj/Bb+SF3+BHEj/CrxQEv8LPJH6G3ykOfgcPKAE8
AC9IeAGekPAEvCHhDXhEDeAReEXCK/CMhGfgHQnvwEPaAR6ClyS8BE9JeAre
kvAWPCbhMXhNwmvwnITn4D1Fg/fIA5I8QF5Q1iwzL5AnZDjNPEHe0FHkDfKI
ziOPkFdkIK+QZ+RFniHvqL7XzDvkIRnIw38Bi2Zgqg==
      "]]}, {}}, {}, {}, {{}, {}}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"x\"", TraditionalForm], 
    FormBox["\"V(x)-P(T n)(x)+log(n(x))\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=1/2\"", TraditionalForm],
  PlotRange->{{-7.15, 7.15}, {-5.1496678706153745`, 1.9011800470813647`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"0aa55ba4-7692-\
497e-bfe5-5a464d3ff35f"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"should", " ", "be", " ", "constant"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", "2"}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"numpoints", "=", 
         RowBox[{"Length", "[", 
          SubscriptBox["nFP", 
           RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], "]"}]}], 
        ",", "vlist", ",", "diff"}], "}"}], ",", 
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
       RowBox[{"diff", "=", 
        RowBox[{"TodaTBADifference", "[", 
         RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x", ",", 
          SubscriptBox["nFP", 
           RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], "]"}]}],
        ";", 
       RowBox[{"ListPlot", "[", 
        RowBox[{
         RowBox[{"Transpose", "[", 
          RowBox[{"{", 
           RowBox[{"vlist", ",", "diff"}], "}"}], "]"}], ",", 
         RowBox[{"AxesLabel", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"\"\<x\>\"", ",", "\"\<V(x)-P(T n)(x)+log(n(x))\>\""}], 
           "}"}]}], ",", 
         RowBox[{"PlotLabel", "\[Rule]", 
          RowBox[{"\"\<\[Beta]=\>\"", "<>", 
           RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
           RowBox[{"ToString", "[", 
            RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}], ",", 
         RowBox[{"PlotRange", "\[Rule]", "All"}]}], "]"}]}]}], "]"}]}], 
   "]"}]}]], "Input",ExpressionUUID->"fda32e61-0882-4d13-b22c-93d48a448391"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.009166666666666668], 
     AbsoluteThickness[1.6], PointBox[CompressedData["
1:eJxVlXtMk2cUxj9KUQSshQpt1QjGLrpEoxMvUTffo+Evo1gNKnMuMU6IUSNM
rTo0hP2zyJYpBBWBUupm4iULk8iIyy7vUXQy7xoFR4iXCV7QEEe80CJBoc/p
0jdpmubt9zvnO5fnGbc2b1mOyTCMLe8/A99XLg8cJ4/8e/za4lVRnDt4nBy7
1/N4Vm1QG4PHyfkPd1S3fh7QlRUDx8HuQlPdni96dfrgcfDpk+SxuAwO8exc
1DIp8/Y+M3h2TmtbybleC+5t7N4eX56bMAr3Nl4U3fZDe34Ch+LZ+JZtZuOY
6UM5FC+JO0vuxU2ZY+ZQvCROSVy8x/aJCbxE3nmx3plxwwAvkfM32ixLi/uR
fyKPXNg6ev3rPuRvZSNn3j9f/fUW+Vv5eeNHmTkPenE/gl2OZUX1M3p1iG/h
ph8frVQNUg8LLzrdXdeSHcTzwzmY8vHEwuSgDsVP4JsTKu7e75B6xbN1XXx5
9PkAeHHs/ebMgv7aAHhxvL+4Y8U1fwC8YdzU6NETDgXAi+UTPalP3WXCG8pj
d55qii0V3hC2fnly6/oS4Q3h+snm5KslwovhTW/uR10qFZ6Zn+dcKEsO86KZ
425nFu4XnomDqRkXHx8QnolflmVfo3LhRbHy3JxcFM7P4MLaVS2HK+S+X9+p
y3typFL4fbrn0tFPv60S3ls9KnjmgyyvPB/Ujs9Im6slfo92r57zm69aeG90
+oFJNS6f8F7pn2JWnz/kE95Lnb1wx5I+n/C69cy8/8Zl1QjvhfZW7m731ch9
lx67KSvmXo3wn+lXd//9I9kvvCe6YXarPcMvz7fr5T/P7d7gl/gP9LkTfTHf
he/btPf3DzuP+IXfrM8VrLH/GuZd1997/uy8EO5voy4d7Tp2I8w7rtPnduxq
/v+3mobf+L8qwf/BU8JDPHUW8ZCPqkI+yFdF5tuusvA+eF/1C94X9VBSD9RL
paJeqKeqiqhnt5qOeqMfagX6gX4p6Rf6qaain+i3WoJ+Yx5UCuYB86KcmBfM
k3qNecK8qRbMG+aRvo6Yxyiaj3nFPJPMM+adejDv2Ac6i33AvlAX9gX7RJux
T9g3asC+YR8pCfuIfSUX9hX7TLXYZ+w7XcW+Qw/oIPQAekF+6AX0hFKgJ9Ab
ug69gR6RYQ/pEfSK3NAr6BmJnkHvaCL0DnpIkXpoJTP0EnpKoqfQW9oGvYUe
UwH0GHpNotfQc+qCnkPvqRl6Dz8gN/wAfkEFEX5hJ0eEn9hJ/AZ+ROJH8Cta
A7+Cn1ER/Ax+Rw74HfyQ0uCH7wAwvoGQ
      "]]}, {}}, {}, {}, {{}, {}}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"x\"", TraditionalForm], 
    FormBox["\"V(x)-P(T n)(x)+log(n(x))\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=2\"", TraditionalForm],
  PlotRange->{{-6.45, 6.45}, {-6.512110099863657, 0}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.02]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"25a328d8-3a54-\
47b9-9fdc-ee6192d18ad9"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"should", " ", "be", " ", "constant"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", 
       RowBox[{"-", 
        FractionBox["1", "2"]}]}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "50"]}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"numpoints", "=", 
         RowBox[{"Length", "[", 
          SubscriptBox["nFP", 
           RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], "]"}]}], 
        ",", "vlist", ",", "diff"}], "}"}], ",", 
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
       RowBox[{"diff", "=", 
        RowBox[{"TodaTBADifference", "[", 
         RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x", ",", 
          SubscriptBox["nFP", 
           RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], "]"}]}],
        ";", 
       RowBox[{"ListPlot", "[", 
        RowBox[{
         RowBox[{"Transpose", "[", 
          RowBox[{"{", 
           RowBox[{"vlist", ",", "diff"}], "}"}], "]"}], ",", 
         RowBox[{"AxesLabel", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"\"\<x\>\"", ",", "\"\<V(x)-P(T n)(x)+log(n(x))\>\""}], 
           "}"}]}], ",", 
         RowBox[{"PlotLabel", "\[Rule]", 
          RowBox[{"\"\<\[Beta]=\>\"", "<>", 
           RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
           RowBox[{"ToString", "[", 
            RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}], ",", 
         RowBox[{"PlotRange", "\[Rule]", "All"}]}], "]"}]}]}], "]"}]}], 
   "]"}]}]], "Input",ExpressionUUID->"852806c1-64f2-4b39-94b8-953ff43eb4a9"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.007333333333333334], 
     AbsoluteThickness[1.6], PointBox[CompressedData["
1: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
T7blfQTeV3Aj3lfgfQafj/cZ/wUBzj+f
      "]]}, {}}, {}, {}, {{}, {}}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"x\"", TraditionalForm], 
    FormBox["\"V(x)-P(T n)(x)+log(n(x))\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=-1/2\"", TraditionalForm],
  PlotRange->{{-3.97, 3.97}, {-3.7199537553700956`, 0}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.02]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"00ca5bc7-daa3-\
4343-9ffb-86151559508f"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"should", " ", "be", " ", "constant"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", 
       FractionBox["1", "2"]}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"numpoints", "=", 
         RowBox[{"Length", "[", 
          SubscriptBox["nFP", 
           RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], "]"}]}], 
        ",", "vlist", ",", "diff"}], "}"}], ",", 
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
       RowBox[{"diff", "=", 
        RowBox[{"TodaTBADifference", "[", 
         RowBox[{"\[Beta]", ",", "\[CapitalDelta]x", ",", 
          RowBox[{"(*", " ", 
           RowBox[{"multiply", " ", "by", " ", "pressure"}], " ", "*)"}], 
          RowBox[{"P", " ", 
           SubscriptBox["nFP", 
            RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}]}], 
         "]"}]}], ";", 
       RowBox[{"ListPlot", "[", 
        RowBox[{
         RowBox[{"Transpose", "[", 
          RowBox[{"{", 
           RowBox[{"vlist", ",", "diff"}], "}"}], "]"}], ",", 
         RowBox[{"AxesLabel", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"\"\<x\>\"", ",", "\"\<V(x)-(T n)(x)+log(n(x))\>\""}], 
           "}"}]}], ",", 
         RowBox[{"PlotLabel", "\[Rule]", 
          RowBox[{"\"\<\[Beta]=\>\"", "<>", 
           RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
           RowBox[{"ToString", "[", 
            RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}], ",", 
         RowBox[{"PlotRange", "\[Rule]", "All"}]}], "]"}]}]}], "]"}]}], 
   "]"}]}]], "Input",ExpressionUUID->"07e08285-d142-4d8f-8f7c-b461b9ecaeba"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.009166666666666668], 
     AbsoluteThickness[1.6], PointBox[CompressedData["
1:eJxVlXtMk1cYxttau9qJoqEQaWe84KLTuM7LgvVy3mlYFBNNNra4xXhB2R9z
i5GQhf0xrQuJt3hZIui8dhFSUEHUuYIxOy8aMV6Qyx+OZUB0GsSZQUc3+tEV
3eB73hhO0jRfvu/8zjnveZ/nmZy79YM8m8Viyf//N/h/7PvB4eVIuLO36HxE
zx0aXg5cvzwj2t+tGu4NDg83Ld6UlZ4TVZ8NDQ8n1/fET1z4S1mGhoeDv/2+
bmXhM2Xy0pl2/ZHpCjcrk5fOGybnrvDNeaxN3gQu+Kasy7U+jc35aeyPTl0w
0DSezfmpbJ+4vSD7Vzub81P5vDXUnttiZXO+m32n39jpWGFlcz9uNmpOZR94
xwaem72BKzOmfWkHL4XXticFG4uc4KVw65JJP9rakvGczMaWt+ruFI3D92P5
XWN5li3iwnpj+GGxs+Kg4QB/DFf5SvpbNsr+kviL6r2HB761YT+jOf/npIWr
0qzgvc6tH87dFOp7ifO7uLDjbEPqvBfa5Ll4+g9zlu2/m0D9R7F3Zk52rOJf
bfKc3NrXUJpTF9cm7zVORHs+jjri4DnY+Wznrrz8fvAcnJ91fH57wgBvJDvd
mfevBw3w7Dwlc9qarZ8Y4I3gTzu9jYkpBng29s9uPpQRj4FnY1/rEX6zLQae
lWsLPWvC9THwLDxhfm59d1jev9TzQg9vLaqKgT+gKbG7cm258BK6ZvPG8uwy
mR/XlV/f/nNBaQzrG5qe7qjcVyq8mJ51ovlxfZnw/tG7l//i/i4kvL/185l7
LOUVwuvVB64u8redE15Erz753rXRVfK+W2+/M3Lp1GrhP9crbxbljbskvC7t
vThi3f3LMv+JLjjVkfXRFVn/kZ7lb2w485O8b9PFvq73a8PCf6BLlnT1FNcI
r0l7A8lf+WtlvRu6Zdmok6Fa4VXozhfb7B2vnpU843vVjO/BUx7wsJ46ivWw
H1WC/WC/avh+nyg5D86r5Lyoh5J6oF5K6oV6quH17FVSb9yHkvvAfSm5L9yn
kvvEfSu5b/SDuoB+QL8o6Rf0k5J+Qr8p6Tf0Iw3vRytdRb+in+lt9DP6naTf
oQcSPUAvlAG9QE8keoLeSPQGPZLoEXol0Sv0TKJn6J1SoHf4AWXAD+AXVAC/
gJ+Q+An8hsRv4Ef0OfwIfkXiV/AzEj+D35H4HfyQ+uCH8EsSv4Sfkvgp/JbE
b+HHJH4Mvybxa/g5iZ/D70n8HnlAkgfICzq0w8wL5AkFkSfIGwogb5BHFEAe
Ia/IgrxCnlEEeYa8o2CdmXfIQ6pGHv4Hjf11ew==
      "]]}, {}}, {}, {}, {{}, {}}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"x\"", TraditionalForm], 
    FormBox["\"V(x)-(T n)(x)+log(n(x))\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=1/2\"", TraditionalForm],
  PlotRange->{{-7.15, 7.15}, {-5.842815051175322, 1.2080328665214175`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"debb1466-9451-\
4cff-8e10-8d31ba524550"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"should", " ", "be", " ", "constant"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", "2"}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"numpoints", "=", 
         RowBox[{"Length", "[", 
          SubscriptBox["nFP", 
           RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], "]"}]}], 
        ",", "vlist", ",", "diff"}], "}"}], ",", 
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
       RowBox[{"diff", "=", 
        RowBox[{"TodaTBADifference", "[", 
         RowBox[{"\[Beta]", ",", "\[CapitalDelta]x", ",", 
          RowBox[{"(*", " ", 
           RowBox[{"multiply", " ", "by", " ", "pressure"}], " ", "*)"}], 
          RowBox[{"P", " ", 
           SubscriptBox["nFP", 
            RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}]}], 
         "]"}]}], ";", 
       RowBox[{"ListPlot", "[", 
        RowBox[{
         RowBox[{"Transpose", "[", 
          RowBox[{"{", 
           RowBox[{"vlist", ",", "diff"}], "}"}], "]"}], ",", 
         RowBox[{"AxesLabel", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"\"\<x\>\"", ",", "\"\<V(x)-(T n)(x)+log(n(x))\>\""}], 
           "}"}]}], ",", 
         RowBox[{"PlotLabel", "\[Rule]", 
          RowBox[{"\"\<\[Beta]=\>\"", "<>", 
           RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
           RowBox[{"ToString", "[", 
            RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}], ",", 
         RowBox[{"PlotRange", "\[Rule]", "All"}]}], "]"}]}]}], "]"}]}], 
   "]"}]}]], "Input",ExpressionUUID->"231c7f7e-2f77-4fa9-863e-bdf5c8846f20"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.009166666666666668], 
     AbsoluteThickness[1.6], PointBox[CompressedData["
1:eJxVVX1IlXcUfr1dbzc/bvdj4yazsag/+nC7d9RaI/F3aOYcqPRBoJWyVtpG
QSEtxaxgUSxSKVeBYdYfEm1EGkmRkr8TRbHWh2IJkRBtCpd1r7u667y7fmzp
+xzH/cHl8nLe9znnd855nmfB13s2lFoMwyh/+5v6f/xo6qSx/7uH2UPnR3XZ
9EnjD34LP8346E9tTJ80DteMrC6vDepzDVNnHhduO/rxzrywXj595nFltnXX
mH9Em3hettf3pR+3TwLPy835DUavcw6bcQ+7fRmfNuV42Yx7uGvf/N83DtjY
zOfhwqMVs2ouJ7CZz8191jVnM4snkM/NKxLnn0rc/g/yuThaEbxeduJv5HNx
dcHZOl95BPW7OP3D4sacV8Oo38n23DtFhS1DwHNy9FLbk88fhhGfyxljz4wf
3w8D38HNqT2tq7OkHw6+svLNjt1HBvF9KlsjB9ffGg8hfwq3vbuq89D5EPCS
2V+X7ru3JQS8JM7t+eFYhy8EvCRe9aLr6hZPCHhz+GL+0OEUi+DZecfNtT0l
Uen/bC64sbv+yV9B4NnYf7ksUDscBJ6NKxc4lhW9jZt4iRxoe2DdOBIEnpX/
OHV6cWBU8GbxyZctTbdigmdhq63uTM2E4Fk4FrpxIcuQ+hL4ZOvPW2/P1Gew
Y2FHi5Eo8X81Lxnots2W+09oS8mmtm673HdcZ7cfzytNku9jek31scP3k6U/
UX39UFVFLEXwRvX+cImyOQRvRO/qvn1i0CF4EX1nc+TCzbmCN6wPNAeyS52C
F9Zfjk3+EnNKfFAXNF1NPuAS/Dd6/Miv1QGX4AV09Wft/rVu+b5fdyw6OFDv
lvyv9bn3ElJ7ZuJ9+gtV9NzmEfxe3dBx3+fzCF6XXnrt+968mfne1Z9M5K//
yiN4P+n9mV3Rb/9/VvvwjPfVcrwPPCV4yKfOIB/qUTmoB/Wq+Hr7VTvug/uq
KtwX/VAx9AP9UtIv9FPlxPVzWFWg35iH6sQ8MC+1E/PCPNVezBPzVq2YN/ZB
ZWEfsC9K9gX7pCaLzX3CvqlO7Bv2kd6J28cEqse+Yp9J9hn7ThbsO/hAp8EH
8IWC4Av4RIPgE/hGVeAb+EgrwUfwlTaDr+Az7QWfwXe6Ar5DD4igB9ALWge9
gJ5QJvQEekOiN9AjckKPoFfUCr2CnlEj9Ax6R37oHfSQInF66KQU6CX0lERP
obckegs9JqPS1GPoNYleQ8+pH3oOvaet0Hv4AT2DH8AvKDPOL7zUGOcnXhK/
gR+R+BH8ir6BX8HPyFlr+hn8jgh+Bz+kXPjhfwF6clU=
      "]]}, {}}, {}, {}, {{}, {}}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"x\"", TraditionalForm], 
    FormBox["\"V(x)-(T n)(x)+log(n(x))\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=2\"", TraditionalForm],
  PlotRange->{{-6.45, 6.45}, {-5.818962919303711, 0}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.02]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"7275031a-3610-\
4eaa-93af-7afc4d9cf416"]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
  "cannot", " ", "apply", " ", "to", " ", "negative", " ", "P", " ", "due", 
   " ", "to", " ", "log", 
   RowBox[{"(", "n", ")"}], " ", "term"}], " ", "*)"}]], "Input",ExpressionUUI\
D->"a2005a8c-f2cb-440d-baae-af071337a567"]
}, Open  ]],

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
     RowBox[{"Gamma", "[", "P", "]"}], "]"}]}]}]}]], "Input",ExpressionUUID->\
"2704e7c9-5ca3-4cc3-be09-408649d69941"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
     RowBox[{
     "chemical", " ", "potential", " ", "obtained", " ", "via", " ", 
      "numerical", " ", "Fokker"}], "-", 
     RowBox[{
     "Planck", " ", "solution", " ", "inserted", " ", "into", " ", "TBA", " ",
       "equation"}]}], ",", " ", 
    RowBox[{"for", " ", "comparison"}]}], " ", "*)"}], "\[IndentingNewLine]", 
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
     RowBox[{
      SubscriptBox["P\[Mu]", "\[Beta]"], "=", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"P", ",", 
          RowBox[{
           RowBox[{"TodaTBADifference", "[", 
            RowBox[{"\[Beta]", ",", "\[CapitalDelta]x", ",", 
             RowBox[{"(*", " ", 
              RowBox[{"multiply", " ", "by", " ", "pressure"}], " ", "*)"}], 
             RowBox[{"P", " ", 
              SubscriptBox["nFP", 
               RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}]}], 
            "]"}], "\[LeftDoubleBracket]", 
           RowBox[{"numpoints", "/", "2"}], "\[RightDoubleBracket]"}]}], 
         "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"P", ",", "Plist"}], "}"}]}], "]"}]}]}], "]"}], 
   ";"}]}]], "Input",ExpressionUUID->"9e242d83-5f91-4b03-94f2-aa0a0d15a0f2"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"\[Beta]", "=", "1"}], "}"}], ",", 
   RowBox[{"Show", "[", 
    RowBox[{
     RowBox[{"ListPlot", "[", 
      RowBox[{
       SubscriptBox["P\[Mu]", "\[Beta]"], ",", 
       RowBox[{"AxesLabel", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{"\"\<P\>\"", ",", "\"\<\[Mu]\>\""}], "}"}]}], ",", 
       RowBox[{"PlotLabel", "\[Rule]", 
        RowBox[{"\"\<\[Beta]=\>\"", "<>", 
         RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", 
         "\"\<; red: analytic formula\>\""}]}]}], "]"}], ",", 
     RowBox[{"Plot", "[", 
      RowBox[{
       RowBox[{"TodaF", "[", 
        RowBox[{"\[Beta]", ",", "P"}], "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"P", ",", "0", ",", "6"}], "}"}], ",", 
       RowBox[{"PlotStyle", "\[Rule]", 
        RowBox[{
         RowBox[{"ColorData", "[", "97", "]"}], "[", "4", "]"}]}]}], "]"}]}], 
    "]"}]}], "]"}]], "Input",ExpressionUUID->"37061aa4-be4a-41df-a4a1-\
fc4a02ba851c"],

Cell[BoxData[
 GraphicsBox[{{{}, {{}, 
     {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      0.012833333333333334`], AbsoluteThickness[1.6], PointBox[CompressedData["
1:eJxTTMoPSmViYGDQAGIQDQEH7F2rLn2uLWE/AOFfsJfiZVA8O4MRyr9hnxRz
cn910p/9EP4D+2f/Clnu7fwO5T+xn1FQOetX6Bco/4X99oNVW1rOf4Ty39j/
flhh6nj7PZT/wX5d3YzeKKm3UP4n+wLlA6Whuq+h/C/2AkGdh+9/egnlf7PX
3cq51CMIxv9hv9noM+98Cxj/l72l0JozH6fB+H/sLxn1TzBMfAXl/7Pnf9S7
vKgXZj6DQ5nNhR+ZwjD7GR2WdGyUFnjzDspncujzdXu8ruMDlM/s0PEy7RTP
fph/WBwylk37fUPsM5TP6rCsp+gdfx/M/2wOLRkH7j1X+gblsztIFK7YcPwy
LLw4HEI+/pxvP/8nlM/p8GNRjT9zy28on8vBRPzTyycNf6F8bgfWwAVSF6f8
h/J5HA7r3buRep8BGj+8DqV3TmZ++weLLz6HzxodPus1mKF8fod3kt/bdGNY
oHwBh/vd8+xEZ7JC+A0CDvKzf/4XuM8GlRd0kL99TfGiLgdUXtDhx8ztDtyt
nFB5IYes+I3nKp9wQeWFHNav2bfltjcPVF7YIeH5eqYvu3ih8sIOdyaLrO40
5IfKizgk/HBesjlc4AAAfPLTmA==
       "]]}, {}}, {}, {}, {{}, {}}, {{}, {}}}, {{{}, {}, 
     TagBox[
      {RGBColor[0.922526, 0.385626, 0.209179], AbsoluteThickness[1.6], 
       Opacity[1.], LineBox[CompressedData["
1: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
sThJoH3fSzT4hKdBr2bTTqceApmMZremSUyD8nX/bOpvAjmIPfbbs3Iark1G
qzf/ItA9Q9/ma2rTkLxR1Ni6nUCtn8Gn79A0XCR+FrQ0EMgZ1dZWBE2DxAFu
370fCTSzS0JJO3waPl4q1fL8QKDwYgvf3PvTkJOnY1/6nkAvcv9ueJBOxpvd
MDIpIdBYPF/8xYpp2HPUs7LrNYEClhuN9NRMg0nesh2m+QSSCIs/dOrbNDxy
vb7i+0sCbfFX4uz7PQ01vn9nu3MJ5OGMnZWenYaByTJ580wC8Q/cLQnjZoEL
hctb4BmBHp5tFF8SYoHr007FigwClZ6wqSKoLEjtoxsfTCPQ7N5bamg7C97d
Pv8uM4lAEaWfArV1WfCoXE055jGB5LeKdubqseC+D09lYCKBdNWSIh+cZEGm
wcw9n4cECpR8N3nxKgusgo6P43EEkoxcMvzjzYIG3XWJg/cJ9FTAIPNUIAuS
Lh+1Eif9aa7dHGJYcMb01+qbMQQ65bm6oPghC+x+jq8siybQ4ISjsOYTFhhf
L1bkJi3wd+qD9CsWMJlVRzIjCfTIbo9MeDELrvE0O3KRVu8Kclv6wIJuF5lA
hwgCHWmSXEurZ4Hsjb95+8IJ1GloedO2hQVtGkbFJWEEcqlJb237xQI+y6Q3
20lHlm0KRcMsOJxS4Xv4HoFWb/f6oz3BguuGQQd+3yVQ/usKnTw2C9ZmCE96
kt6nKRCnsMSC/grT4JWkGzON6Q8E2NB50GoGDyWQnUKCnshyNmQeW2fsTnri
8e/UABk2XPEpvaVK+ra0Cpspz4apH9SQgRACScVcMnFRYYPv+HGHbNLPhIty
/2ixYe7jJelrpLWDZ3nMtrFB+ZVPwkHSNYv7ret3s+Hqg/CBVaTNfcLewgE2
mL99MzcbTKB/U03L3x5hg9E7vq5e0t5uK501Tdkgmpfs/420EGFbmXaaDU85
sQM46ccO2XIydmwodOcW/EDa9ejKqvXObKCnOh0uJ71vW9hFPXc2fEvXuV5D
WmLVrIS1NxsO5zbd+UG6n+fSu+uBbPijEOE5TrqY1mUbcY8NoRlfDCTI/O62
GAk+i2VD4tzwlA5pq7KP+WWJbPioZuZ1kfT6pxvNW9LJ/xnc+J5BejEsbYHI
YYPd07fTfaSbrko8537DhqzUEEKDrN9Ty9tGsu/Z8LzcIsuH9I39jKnNlWT+
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
Y1HLXlqiYifmjl4410rB/w/PL6Io
        "]]},
      Annotation[#, "Charting`Private`Tag$120408#1"]& ]}, {}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"P\"", TraditionalForm], 
    FormBox["\"\[Mu]\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1; red: analytic formula\"", TraditionalForm],
  PlotRange->{{0, 5.}, {-4.08564621605737, 0}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.02]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"d2a705c0-51fd-\
4b93-8a54-f4ccf2a3c7e0"]
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
       RowBox[{"P", ",", "1"}], "}"}]}], "]"}]}], "]"}]}]], "Input",Expression\
UUID->"7feddeca-333f-47ed-806b-8d6312fde511"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"-", "0.7974522426688231`"}], ",", 
   RowBox[{"{", 
    RowBox[{"P", "\[Rule]", "1.4616321449659389`"}], "}"}]}], "}"}]], "Output",\
ExpressionUUID->"2237203f-6672-4e43-a4da-c2c7bfdf3bb8"]
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
         RowBox[{"P", ",", "1"}], "}"}]}], "]"}], "]"}]}]}]}], "]"}]], "Input",\
ExpressionUUID->"44f81f8d-fa52-4de9-a01f-ffa9525a918f"],

Cell[BoxData["1.4616321449659389`"], "Output",ExpressionUUID->"0e03328e-c8ca-45fb-b755-e6eae5b0502a"]
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
    RowBox[{"PolyGamma", "[", "P", "]"}]}]}]}]], "Input",ExpressionUUID->\
"da5645df-4552-44b8-8aee-5755838e4fa7"],

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
    RowBox[{"\[Beta]", ",", "P"}], "]"}]}]}]], "Input",ExpressionUUID->\
"fb8f99e1-974c-4372-959c-2fe18130d0e8"],

Cell[BoxData["0"], "Output",ExpressionUUID->"b4940f46-1848-4f77-b40c-b6cb8121f206"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["\<\
Direct numerical solution of TBA equation (using hitherto Fokker-Planck \
solution as starting point)\
\>", "Subsection",ExpressionUUID->"1d8880d3-14bc-40ba-9225-f99c1000cb50"],

Cell[BoxData[
 RowBox[{
  RowBox[{"TodaQuasiEnergy", "[", 
   RowBox[{
   "\[Beta]_", ",", "\[Mu]_", ",", "h_", ",", "\[Epsilon]start_List"}], "]"}],
   ":=", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"vlist", "=", 
       RowBox[{"h", " ", 
        RowBox[{"Range", "[", 
         RowBox[{
          RowBox[{"-", 
           FractionBox[
            RowBox[{
             RowBox[{"Length", "[", "\[Epsilon]start", "]"}], "-", "1"}], 
            "2"]}], ",", 
          FractionBox[
           RowBox[{
            RowBox[{"Length", "[", "\[Epsilon]start", "]"}], "-", "1"}], 
           "2"]}], "]"}]}]}], ",", "T", ",", "\[Epsilon]"}], "}"}], ",", 
    RowBox[{
     RowBox[{"T", "=", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"HatScatteringIntegral", "[", 
         RowBox[{"h", ",", 
          RowBox[{"v", "-", "w"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"v", ",", "vlist"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"w", ",", "vlist"}], "}"}]}], "]"}]}], ";", 
     RowBox[{"\[Epsilon]", "/.", 
      RowBox[{"FindRoot", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"\[Epsilon]", "+", 
          RowBox[{"T", ".", 
           RowBox[{"Exp", "[", 
            RowBox[{"-", "\[Epsilon]"}], "]"}]}]}], "\[Equal]", 
         RowBox[{
          RowBox[{
           FractionBox["1", "2"], "\[Beta]", " ", 
           SuperscriptBox["vlist", "2"]}], "-", "\[Mu]"}]}], ",", 
        RowBox[{"{", 
         RowBox[{"{", 
          RowBox[{"\[Epsilon]", ",", "\[Epsilon]start"}], "}"}], "}"}], ",", 
        RowBox[{"MaxIterations", "\[Rule]", "500"}]}], "]"}]}]}]}], 
   "]"}]}]], "Input",ExpressionUUID->"e3c5839b-4ec6-49c1-a5ab-f953c2dfe145"],

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
       SubscriptBox["\[Epsilon]", 
        RowBox[{"TBA", ",", "\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
       "=", 
       RowBox[{"TodaQuasiEnergy", "[", 
        RowBox[{"\[Beta]", ",", 
         RowBox[{"TodaF", "[", 
          RowBox[{"\[Beta]", ",", "P"}], "]"}], ",", "\[CapitalDelta]x", ",", 
         RowBox[{"-", 
          RowBox[{"Log", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"#", ">", "0"}], ",", "#", ",", "1.*^-10"}], "]"}], 
             "&"}], "/@", 
            RowBox[{"(", 
             RowBox[{"P", " ", 
              SubscriptBox["nFP", 
               RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], 
             ")"}]}], "]"}]}]}], "]"}]}], ",", 
      RowBox[{"{", 
       RowBox[{"P", ",", "Plist"}], "}"}]}], "]"}]}], "]"}], ";"}]], "Input",E\
xpressionUUID->"0d0e4eae-d7b0-43ef-b5dc-1ee27c91062b"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", "2"}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}]}], "}"}], ",", 
    SubscriptBox["\[Epsilon]", 
     RowBox[{"TBA", ",", "\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], 
   "]"}]}]], "Input",ExpressionUUID->"d1592f0b-8243-4141-9613-e00fe9e71809"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "20.75632447646951`", ",", "20.07378725928906`", ",", "19.4021501270729`", 
   ",", "18.74144416896967`", ",", "18.091702271873086`", ",", 
   "17.45295927751039`", ",", "16.825252159351987`", ",", 
   "16.20862022286251`", ",", "15.60310533342011`", ",", 
   "15.008752177251216`", ",", "14.425608562010254`", ",", 
   "13.853725765215215`", ",", "13.293158940679017`", ",", 
   "12.743967595351648`", ",", "12.206216151590736`", ",", 
   "11.679974612674892`", ",", "11.16531935211313`", ",", 
   "10.662334049518142`", ",", "10.171110796733899`", ",", 
   "9.691751396385971`", ",", "9.224368869400017`", ",", "8.769089176097522`",
    ",", "8.326053134453593`", ",", "7.895418485801945`", ",", 
   "7.477362009484839`", ",", "7.072081521150823`", ",", "6.679797503995167`",
    ",", "6.300754021209059`", ",", "5.935218450046113`", ",", 
   "5.5834794800088305`", ",", "5.245842756027061`", ",", 
   "4.922623557450436`", ",", "4.614136025187835`", ",", 
   "4.3206787174428385`", ",", "4.042516704212798`", ",", 
   "3.779860979109125`", ",", "3.532846599302051`", ",", 
   "3.3015115333971212`", ",", "3.08577854530207`", ",", "2.885442426749203`",
    ",", "2.7001644398181153`", ",", "2.529474984950968`", ",", 
   "2.372784429809968`", ",", "2.2294009563319164`", ",", 
   "2.0985534440366025`", ",", "1.9794169674790767`", ",", 
   "1.8711384860628997`", ",", "1.772860672474228`", ",", 
   "1.683742417843824`", ",", "1.602975208527784`", ",", 
   "1.5297951625367956`", ",", "1.4634909669123428`", ",", 
   "1.4034082465720117`", ",", "1.3489510342984605`", ",", 
   "1.2995810348999195`", ",", "1.2548153236397281`", ",", 
   "1.2142230250119226`", ",", "1.1774214093956499`", ",", 
   "1.1440717394333897`", ",", "1.1138751047652118`", ",", 
   "1.0865684070019392`", ",", "1.061920596921679`", ",", 
   "1.039729221234096`", ",", "1.0198173044151324`", ",", 
   "1.002030569441113`", ",", "0.9862349873184274`", ",", 
   "0.9723146370558511`", ",", "0.9601698535147746`", ",", 
   "0.9497156391339178`", ",", "0.9408803159243374`", ",", 
   "0.9336043956956602`", ",", "0.9278396487385182`", ",", 
   "0.923548353837346`", ",", "0.9207027153206451`", ",", 
   "0.9192844357511701`", ",", "0.9192844357511709`", ",", 
   "0.9207027153206438`", ",", "0.9235483538373447`", ",", 
   "0.9278396487385187`", ",", "0.9336043956956637`", ",", 
   "0.9408803159243354`", ",", "0.9497156391339155`", ",", 
   "0.9601698535147732`", ",", "0.9723146370558508`", ",", 
   "0.9862349873184307`", ",", "1.0020305694411138`", ",", 
   "1.0198173044151284`", ",", "1.0397292212341005`", ",", 
   "1.061920596921678`", ",", "1.0865684070019395`", ",", 
   "1.1138751047652173`", ",", "1.1440717394333828`", ",", 
   "1.1774214093956565`", ",", "1.2142230250119284`", ",", 
   "1.254815323639727`", ",", "1.2995810348999182`", ",", 
   "1.3489510342984656`", ",", "1.4034082465720152`", ",", 
   "1.4634909669123517`", ",", "1.5297951625367887`", ",", 
   "1.6029752085277789`", ",", "1.6837424178438234`", ",", 
   "1.7728606724742093`", ",", "1.8711384860629217`", ",", 
   "1.9794169674790727`", ",", "2.0985534440365914`", ",", 
   "2.22940095633192`", ",", "2.3727844298099616`", ",", 
   "2.5294749849509888`", ",", "2.7001644398181006`", ",", 
   "2.8854424267491883`", ",", "3.085778545302059`", ",", 
   "3.301511533397117`", ",", "3.532846599302062`", ",", "3.779860979109099`",
    ",", "4.042516704212762`", ",", "4.320678717442821`", ",", 
   "4.614136025187808`", ",", "4.922623557450408`", ",", 
   "5.2458427560270255`", ",", "5.583479480008781`", ",", 
   "5.935218450046123`", ",", "6.300754021209025`", ",", "6.679797503995237`",
    ",", "7.072081521150862`", ",", "7.477362009484832`", ",", 
   "7.8954184858019465`", ",", "8.326053134453591`", ",", 
   "8.769089176097534`", ",", "9.224368869400031`", ",", "9.691751396386008`",
    ",", "10.171110796733931`", ",", "10.662334049518195`", ",", 
   "11.16531935211309`", ",", "11.67997461267489`", ",", 
   "12.206216151590773`", ",", "12.743967595351657`", ",", 
   "13.29315894067903`", ",", "13.853725765215254`", ",", 
   "14.425608562010284`", ",", "15.008752177251282`", ",", 
   "15.603105333420087`", ",", "16.208620222862425`", ",", 
   "16.825252159351987`", ",", "17.45295927751042`", ",", 
   "18.091702271873157`", ",", "18.74144416896969`", ",", 
   "19.40215012707292`", ",", "20.073787259289183`", ",", 
   "20.756324476469576`"}], "}"}]], "Output",ExpressionUUID->"86208a0e-987c-\
4f76-bae9-2ffbeedefc58"]
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
      RowBox[{"ListLinePlot", "[", 
       RowBox[{
        RowBox[{"Transpose", "[", 
         RowBox[{"{", 
          RowBox[{"vlist", ",", 
           RowBox[{"Exp", "[", 
            RowBox[{"-", 
             SubscriptBox["\[Epsilon]", 
              RowBox[{
              "TBA", ",", "\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], 
            "]"}]}], "}"}], "]"}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"\"\<v\>\"", ",", "\"\<n(v)\>\""}], "}"}]}], ",", 
        RowBox[{"PlotLabel", "\[Rule]", 
         RowBox[{"\"\<\[Beta]=\>\"", "<>", 
          RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
          RowBox[{"ToString", "[", 
           RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}]}], "]"}]}], 
     "]"}]}], "]"}]}]], "Input",ExpressionUUID->"0351a4c1-d239-4905-a8a0-\
fb635f1f4be4"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.01388888888888889], 
     AbsoluteThickness[1.6], LineBox[CompressedData["
1:eJxVlgtQVFUYx5eVV4iyy0NYFlJGmpQZ5GkuhpxvtGRI0KXRwtExhlhEHBN1
STI1I4WQJkfxkYLgoOCjxswUUtH7hYikoCDy2DFIbVNLJEVEdFQKzt8mzszO
zp177++ce873/f9/v6Sl75rUKpVq+7+/gf/6uoHhy32Fi446FGuiUgaHL3+o
iV4zevmYKNXg8OXbrxf+mOMVHLVr58Dw4ZDWR06qABEVNjh8eEvoG7+92hoX
JXl6Hq3K3F48dT54ev5Wc7U3ITMNPD0fv5n6dciGTPC82Tdu3+kNH2eD580V
Gcmum+duBU/HN+3Xelsnl4Cn4+oi39iu146Ap2PH6IuB02IqwfPinfFbKkxr
a8Hz4jbbS8b7j6+C58lv1q46VXPmBniePDrThRKO3APPk+ff2TN53Fd94I3i
kw469nexFZI3ivd09105GaoRkufB6brchSkWnZA8D26c1BGcl+gvJM+Dsxz4
fHJlkJA8d/ZSJ6QWpBrAc+egkPI5LblTwXPjgtI+92X1M8Bz40tbM1MmbJ0N
nhtXdRZ5TNIsAM+Vg2ou9BgOmcBz5ccL4g6Nr/sIPC0n/aUfn7AtAzwt69pz
6/Y2rgFPy9Fj2uM9YteDp+F85yX9kYY88DQ8d9ZD+1VPNuO+Cwc9r2g++MEO
8EfyKsVoertzN3gjOd3d8KnztRK8P4LLLev8p5n2Y35nXpceWVm17TvwhvO8
wsXqA2E/gOfEIX87Lp2+8Bh4TrxpQntGfHsFeK+w0floeXjeKfAc+aL9n8M6
kxXwHHiEU12g9fDP4NnzirLh1vxjZ8Gz58jLl+xyTp8Dz47Xmkyh71SfB8+W
Z/ktm+1Z/Qt4wzjA9/0H1p8ugqfm2BdTnVKK68FT84mqa90vzJfBs2HjlfwS
S0EDeCqe5bU6zHFFI+73K/U5WQV54gr4z5Xqwk1GN5sm8J4pvbcmuZormvD+
U2WsqS2lOOkq5u9TJtY4JReqm8F7rGgd9x7/fEczeI+UmOKV59L9WsDrUX7P
yOnYvKcFvG5l/RmTv9ajFbz7SsDzkxE+n7XifpeS25Nuvt7RCv5dJcZvf1Zu
eBt4d5TdPeNSaV0b3rcqNXOWcEBVG+a/oezqfBKe9vTl/V8V44U4vc94C/gt
SsPtiOC5My3gNSiLtW2pE9MsmO+ssqk/rElZbQHvoFJbFJOlzv7vWlThGs+L
b/A8eCIDPMwn6jEf1iMMWA/WKw4MWa9VNON78L2iDN+L/RCx2A/sl1iO/cJ+
Cv8h+9ktirDfOA9Rg/PAeYmZOC+cp9DgPHHewh3njXoQM1APqBfRiHpBPYlS
1BPqTTSh3lCP9N6QerQhA+oV9Uw7Uc+od1Kj3tEPlIh+QL+QGf2CfqIv0E/o
NzqMfkM/0tNS2Y/oVxqDfkU/U6CD7Gf0O4Wj36EHdAJ6AL2gE11SL6AnVAI9
gd5QL/QGekT90CPoFX0JvYKekQ/0DHpH16B30EPSGv+vhxrSj5B6CT0lK/QU
eks2HVJvoccUcVfqMfSayhKlXkPP6eE5qefQe7p+T+o9/IAM+dIP4Be0aJ/0
C/gJzYafwG/IGX4DP6It8CP4FW2EX8HPyBF+Br+j3gfS7+CHZAc/hF9S5y3p
l/BTMn8i/RR+S2/Bb+HH9GyY9GP4Nc2DX8PPqXS69HP4PbnB75EHKBp5AHmB
oswyLyBP0PfIE8gbpP5D5g3kEXqZR5BXaEr/ysG8gjxDU4JlnkHeoW0tMu8g
D1E28hDyEo0dKfMS8hRVFsg89Q8oNQ9l
      "]]}}, {}, {}, {{}, {}}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox["\"n(v)\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=2\"", TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {0, 0.3988043091144218}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"304f3193-56bc-\
4a47-85b1-fb950230a9c3"]
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
            RowBox[{"\[CapitalDelta]x", " ", 
             RowBox[{"Total", "[", 
              RowBox[{"Exp", "[", 
               RowBox[{"-", 
                SubscriptBox["\[Epsilon]", 
                 RowBox[{
                 "TBA", ",", "\[Beta]", ",", "P", ",", 
                  "\[CapitalDelta]x"}]]}], "]"}], "]"}]}]}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"P", ",", "Plist"}], "}"}]}], "]"}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<ideal P\>\"", ",", 
           "\"\<\[Integral]n[v]\[DifferentialD]v\>\""}], "}"}]}]}], "]"}], 
      ",", 
      RowBox[{"Plot", "[", 
       RowBox[{"P", ",", 
        RowBox[{"{", 
         RowBox[{"P", ",", "0", ",", "5"}], "}"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{
          RowBox[{"ColorData", "[", "97", "]"}], "[", "4", "]"}]}]}], "]"}]}],
      "]"}]}], "]"}]}]], "Input",ExpressionUUID->"12ea1a8d-eb15-4f40-89db-\
78ff751bbdff"],

Cell[BoxData[
 GraphicsBox[{{{}, {{}, 
     {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      0.012833333333333334`], AbsoluteThickness[1.6], PointBox[CompressedData["
1:eJwtyV1IU3EYx/FzzpzbnHs90lVodlMEIQW90eD/qFdJ4LAorDBbDIuIkJCg
Ls7AXkTLEIOkGyEFQ6LyYpVp6UVKksWMbIeuduFMc9AUcXOt8zQ5vwcefnz4
VoauNYQVSZJ2F35rzZsU5/u7Z08U1nRMJGMdZ7sKa1oXe5rv16qyDieEOtOZ
TBTW9IL48C6+GpQX4CVR3Td7OykvwSlxfLW1N6qk4LS4MRP/mpXT8Jp43nip
xWFZg9dFtm/veKN1Hd4Q/Zvt053uDTgrRp3bDoT0DJwTgW+pVFVmE86LZw+j
6ZHcX9gQ2783D6r5f7BE9QNXX83lGZbpTzzXNGhIZFoh/YXt2BdDhi30eMfH
QyuGAhdR73xbhcIW2EqfEmeqy7gILiY9O2/sZCtso5MVbYEqLobtFCwffnSE
bbCDam4+vV7DdriEXmZad9WxA3ZS7M6v5SCXwKVU55paPMVO2EWBJzFxjkth
Nz140+O5wC7YQ2nt4JUwu2Ev/WxYuXiZPaYjXrpl/93+WvOi++je3dC+twxH
fDQ01zIxqvnQ/TRmnN4/xnDET5+j/u5xzY+uUr2t/Md7hiMqJcLTrglNRS+j
ruGjhydZpf//Zbv4
       "]]}, {}}, {}, {}, {{}, {}}, {{}, {}}}, {{{}, {}, 
     TagBox[
      {RGBColor[0.922526, 0.385626, 0.209179], AbsoluteThickness[1.6], 
       Opacity[1.], LineBox[CompressedData["
1:eJxFxWlIkwEYAODpPGrOcgqRmNuniMt5pD+CjDzSIPMi0yVNOjZ1s7xSHJiz
yzQdoa0ST2RM0xBxZszAjmVqmtdCV1bMSJxLWgra+tKpueqH7/vj4fEQ5J5K
t6ZQKHH//L/pmsAuKE0Suv2glohNJs6EbW8ZUt8iiItwU18ly5a4AmeFiLNX
WVJYu5FRvcyqh+11c+wlVjusGJXn/WD1wsouqS4rYBQWhU3WL+Zr4RyDj16l
/AzTPErZXw/NwlVOYxzFBT0s0CW9oo5/g/PelApy2Ua4+zI9ce+JJVghyTQG
Ji/DJfLNhF+LKzBFOxv+osgEexcIC5M4JDxP1p52ePkbjjZcuno/bw2On5f5
MpnrsHFAcONt5wYcwJh2jzz/B6aFkfwZ0xZ8fIm36smlhG//qT/NiudnBfdU
DJ4jSFxoK57VaKzh1HxJD72BCh8Q+Wpi+TbwO2c/B3GwLfxcWdLoR7WDJVac
k+NfcNpMUVSOyh42tHlUy4t3wNX7XW16uTthWYNwmE/QYF71WQ19AV871mqW
qx1gvSGisL+cDjeHBLlN8B3hzjIxQ+S/Cy7npsZQSfzgjKK9fGI3XOfT2DkR
4wRf76usi+nF49y4raNeDPhoznAKQ4rL9wm8xknca+BRTXyKMyzz7+dMqXGh
yWZyhOMCC7p/EtK7eFZJ4mb0PVycqPpIf4BXkOIqWQ2uDDZv1Dbh5teW6bYO
XDZFrxwcxhtasjNuj+AtBZrIqDH86R7Z+pgGn+G5ZGg/4Gy9a+ScHg9UFTEf
GvDDZTpz+gIey256/N2I52cSzJUVvPjITfMTE17mOPe+gMTrulrurK3hzTds
RM/W8Y6E9IjiTVzlOeQeuoWrTd5miwX/C0XwNRU=
        "]]},
      Annotation[#, "Charting`Private`Tag$120599#1"]& ]}, {}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"ideal P\"", TraditionalForm], 
    FormBox["\"\[Integral]n[v]\[DifferentialD]v\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{{0, 5.}, {0, 4.999756697313056}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"13412f70-e1a6-\
424d-aa6f-3634dd1a831c"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"should", " ", "be", " ", "constant"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"With", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "1"}], ",", 
      RowBox[{"P", "=", 
       FractionBox["3", "2"]}], ",", 
      RowBox[{"\[CapitalDelta]x", "=", 
       FractionBox["1", "10"]}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"numpoints", "=", 
         RowBox[{"Length", "[", 
          SubscriptBox["nFP", 
           RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], "]"}]}], 
        ",", "vlist", ",", "diff"}], "}"}], ",", 
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
       RowBox[{"diff", "=", 
        RowBox[{"TodaTBADifference", "[", 
         RowBox[{"\[Beta]", ",", "\[CapitalDelta]x", ",", 
          RowBox[{"Exp", "[", 
           RowBox[{"-", 
            SubscriptBox["\[Epsilon]", 
             RowBox[{
             "TBA", ",", "\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], 
           "]"}]}], "]"}]}], ";", 
       RowBox[{"ListPlot", "[", 
        RowBox[{
         RowBox[{"Transpose", "[", 
          RowBox[{"{", 
           RowBox[{"vlist", ",", "diff"}], "}"}], "]"}], ",", 
         RowBox[{"AxesLabel", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"\"\<x\>\"", ",", "\"\<V(x)-(T n)(x)+log(n(x))\>\""}], 
           "}"}]}], ",", 
         RowBox[{"PlotLabel", "\[Rule]", 
          RowBox[{"\"\<\[Beta]=\>\"", "<>", 
           RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
           RowBox[{"ToString", "[", 
            RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}], ",", 
         RowBox[{"PlotRange", "\[Rule]", "All"}]}], "]"}]}]}], "]"}]}], 
   "]"}]}]], "Input",ExpressionUUID->"96bd7f34-0345-4e32-91e3-7d61f085a3c9"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.009166666666666668], 
     AbsoluteThickness[1.6], PointBox[CompressedData["
1:eJxd1j9I1GEYB/Cfl56nmXp33v87uIa6G4UWt/c7NopTRNlpeUkFHVLQloOD
RINTWDQ4SBQ4ODS4vQ+0NBQ4NTVc0FAIIWEkkpTn+/bw+74/EHl53/fz/r3n
ec/P359ZSERR9Ozkr/f/44feV5P6xZnM4yffbfv0q0nXl6PTryYbvvziee+r
yrIvXzr9qiK+7LyKtnfeSbkR9yoijbhXlnoz7pUlasa9krSaca8ky+SVJCKv
KN1G3CtKvRH3CoJG3CsE6y2o77y8tMjLyyTNLydr5OVkvBn3crJL3oSuz3kT
Wu+8rEySl9X1OC+r83FeRsd3XiaYX1r26TzSuv/OS+v5OG9cOuSNq+/qx3R/
nD8qO+SN6nm4/udkitYzItPknZVDuj/DUiRvWOudNxSsJyUp8gblNXlJWafz
Tep5O29ADsjrl02672fkLXkJ2SYvofXO65Mt8iJZo/q/dpv8Y/uKvD92nfof
2VUa/9A+Iu+37ZD3yz4k78C2yftpr5O3b+ep/oedJX/PLpL3zd6j/l/tVRr/
i12g+s+2Rf4ne4O8Xe3vxntn58h7Y29z2QTtzTX2TDCemeX5mDs8XzPH69H+
fr3BeHvmFu+Xen4/zRXeb3OTz8O0+bzMXT5P0+HzNovkHZkVvi9mlbxjs8T3
Tev9fcQW1ffhJd9nLNP4CTzl3wM2yevHCnkDeMC/t8BLYoe8QUQUH1JIUfwY
wnvyhrW9jxcocjwBx88RXOZ4hCmOV5jmeIZDmt8YwPEQQbwE57c0ujR+Wut9
PNb5+Xit7X08B+ejrPb3+QBrnC90/j6fYJvzDSLOR2iRl9P2Pp8hyHeBl9f9
9/lSz9fnU/B7oIAgH6NOXhFBPgc436NFXinwygjeE8H+VQKvAn5fVAKvCs6v
VXQvxL0awO8lbND8avj/nvoH/OwMyg==
      "]]}, {}}, {}, {}, {{}, {}}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"x\"", TraditionalForm], 
    FormBox["\"V(x)-(T n)(x)+log(n(x))\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=3/2\"", TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-1.596312591138961, 0}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.02]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"a103e792-3d65-\
4ff7-b3d9-f06e6c71bab5"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Dressing transformation", "Subsection",ExpressionUUID->"bca086a3-af2f-40d2-b324-5a2369254f94"],

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
       RowBox[{"G", ".", "\[Psi]"}]}], "]"}]}]}], "]"}]}]], "Input",Expression\
UUID->"ed834510-5b63-4d64-ad84-a5002f35f6dc"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Derived quantities based on thermal n(v)", "Subsection",ExpressionUUID->"c998c043-24f9-473e-9fca-27b3d49611b1"],

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
          RowBox[{"Exp", "[", 
           RowBox[{"-", 
            SubscriptBox["\[Epsilon]", 
             RowBox[{
             "TBA", ",", "\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], 
           "]"}], ",", 
          RowBox[{"ConstantArray", "[", 
           RowBox[{"1", ",", "numpoints"}], "]"}]}], "]"}]}], ",", 
       RowBox[{"{", 
        RowBox[{"P", ",", "Plist"}], "}"}]}], "]"}]}], "]"}], 
   ";"}]}]], "Input",ExpressionUUID->"c455d724-6083-46ea-b8e6-f7b5f6878c16"],

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
     "]"}]}], "]"}]}]], "Input",ExpressionUUID->"9da64d35-aa97-40d8-8dc0-\
301da6355981"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.01388888888888889], 
     AbsoluteThickness[1.6], LineBox[CompressedData["
1:eJxVlg1MlVUYx68X/ADkdi8XLvJlJSpbrmWmLdN1HnBaTSMEEhxDRacm2IpU
FLZGa9AEnIw09Yq2JpFwM5d8FITwPuAixrAgG5rDnAgkeLnc74tMoID/aeNs
d3fv3vf9nfOe8zz////53R/G71WrVKoz//2m/m92TI0IHs6rqJ747onYNz0i
OCtE6LO8PEI1PSJ4WXToV8cqPOK8cWqE82hrWLwp3SNemR7hvCwu5drOAx4x
wwvjjfW9ZEzygBfG1ZPKp+63JS+M1TqffMvrkhfK9lSfkrEVkhfKjZfnL6gO
l7wQbk02er/sL3kh3N22ZDJ93A1eCF8MtxbvGnaDt4jrPsms0txzg7eI6wO7
Bz7ucIMXzK9FJSUVNrjBC+auJ5maeJPkBfO98qMPW89JnoEPRK3L6f9c8gx8
/2n/etNhyQviKutn23S7JS+I/WyJVwzvSl4QX2ve0l27TvICubBri2EoSvIC
WfeTb+xVveTp+cdVbzmeTrjA07PpQJC6c9AFnp5PLG8xP/enC7wAfulwaMGj
Rhd4Abw0N29s8WUXeDquPPXluYZiydOxUd/UVXNU8nScfPwXH9VOydPyifaJ
QyUbJU/Lz2reH0xZIe8/w515KQ1xWsnX8NY0fd5OpxM8DXutMHiO3HbifX8u
+sJUk1vvxPwLOfLN6qX7zjvB8+M/brbs0OY4wfPlzA+al+9Jljxf7jmtnh+9
RvJ8uHGPvaRQK3kLeGj7e92LhxzgzWdjZJiup9kB3jyu6qr49uuzDvDmsbPg
n/QtGQ7w5vJwqmZdy3oHeN68+tbj/kE/yfPizr3Hk6ru2MFTs3b/bw59mR08
Nf9qeketz7CDN4dfrdnv3bLSDp6KL2RUtm1w2nB/UjH7xvvdrLWBP6680RmT
VX7EBt5TJdkr527UahveH1PKdl0obLZZMf+okri14XfrVSt4HqVUtS8/5qAV
PJfSfjt7PPYFK3hOpXW8tO7grRHw7EpqwJ24tdtGwLMqbQsTjJv/tuC+RSmt
vFP88KAF/MdK34aYY6u8LOA9UsZ+ODmZeGkY7/cp+vzswtjNw5j/gXLJu692
7qQZ93uUgcxvHNFNZvC7FUvCoRBTgRm8TkUZcZpupJkx3w2lSLe9zL7JDF6l
Ujtizs9e+/+1+B7XeF6cxfPgiSbwMJ9wYj6sR/RiPVivuDJrvX0iEN+D7xXj
+F7sh3iA/cB+iZPYL+ynaJ+1n3aRhv3GeYh6nAfOS3TgvHCe4hzOE+ctEnDe
qAdRgXpAvYhE1AvqSUSjnlBvYgD1hnqk07PqcQ6tRb2inqkN9Yx6JwPqHf1A
7egH9AutQb+gn8iMfkK/0Qj6Df1IdehH9CudQb+in8mMfka/08/od+gB3Yce
QC8oC3oBPaEW6An0hl6E3kCPKBd6BL0if+gV9IzioWfQO2qG3kEPKXKWHmrp
FPQSekpx0FPoLV2E3kKPyQQ9hl6T1GvoOa2GnkPvqQh6Dz+gcvgB/IKuwy/g
J+QDP4HfUCn8Bn5ElfAj+BWp4VfwM6qGn8HvqA9+Bz+k3fBD+CX9Bb+En9Jd
+Cn8llbCb+HHpMCP4dfUAL+Gn9Mp+Dn8nnrh98gDdB15AHmBapAXkCdItWMm
TyBv0Kh2Jm8gj1AT8gjyChHyCvIMLUGeQd4hB/IO8hDJPIS8RB8hLyFPkQV5
6l8N9l25
      "]]}}, {}, {}, {{}, {}}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox[
    "\"[1\\!\\(\\*SuperscriptBox[\\(]\\), \\(dr\\)]\\)(v)\"", 
     TraditionalForm]},
  AxesOrigin->{0, 0.8458922048210743},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=1/8\"", TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {0.8820159545643854, 1.6044909494306085`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"eec47714-964c-\
4977-8c31-c7ab6da9091b"]
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
     "]"}]}], "]"}]}]], "Input",ExpressionUUID->"95bce5a9-2483-4433-a919-\
81dd78099410"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.01388888888888889], 
     AbsoluteThickness[1.6], LineBox[CompressedData["
1:eJxVlglQVVUYxxF5yJJsovBYQkbLEszBUMmA+7GkJEypmYZQQahojThKsRiI
CwaiTWhEPAdipHFQStMJqBkfnI/l4W5AitsTJHGUCFnFJ2vp+dvomXnz5s69
93fOPef7/v+/+ycbl60xNjIyyv3v9/j/wvnHw5Vr/TrGLvSY8tonw5ULCy5d
+b52WBg9Ga48zzwtaVqsER/QPB4ufP/2jRejXx0Trz8ZLmw4GxujNx0TkufM
IV+9V+STPCokz5kT845PjDcZBc+Zw0NcVHfTR4TkOXFkTGhh/fgR8Jw4IEpf
HL51GDw1m+gOtF3rHwJPzfuyTDWVa4fAU/O3umzXg38OgufI5gllswYXDILn
yJ5JTvPm5j8Cz4HdZ3Rs/mnAAJ4Dd8YJ28NvG8BzYHb57NiGnIfgTeFvMjfm
UtMAeFN4tpu5R4LVAHiTubRiukWW7wPwJvM2j5RtPlH94E3mQ0t5XX5yH3j2
PNs1rClsdy949qziUuWL7B7wJrHFrbqe1uxu8CaxqjySBtRd4E3i9rroshXW
neDZsfpN76zVZh3g2fFxLxufRst28Gz588CAVJOpd8Gz5a1nUtLzF98Bz5aH
NxibuWXfBs+Gu4uazlb3tYJnw4OBnYdjE2/hvjUn3PH98eP5zeBb8bhlOUVR
fAM8K1amFi5elXEN70/kQ83zNUczr2D+F9hNw7kmfBk8S049r97xyyuXwLPg
NWmqr/+paATPgnva4xydv2wAz5znHjjy7s2IevDMeHn36JaVv18EbwKXZL58
Vdt9HjxTrk+sifhw1TnwTNlygs2MdV1nwFOxbqG6U1tyGjwT7jvW0aPPOAXe
eG74IKTp+o468IzZ76+dny7O04FnzIuCNSFeulrwxrGdZ3mhwbQWPCNOulMf
HRVRg/tjwn9ncXM8V4M/IvRFDZzmXQ3esPALrFpuXl6F9wdFSf+SobqgKsxv
EJtyNhVr9AzeQ6HXWC7KSGPwHgi/5VMflXkweP1iT8DVjj9YgNcrzqr3u3e/
IcDrFnFD7qlHqypx/74oKJntYr2yEvwOETx8V+X/qAK8e8IzJzRre3EF3m8T
yamZ3r7RFZi/VawPe9+v/aWn9/WiJmvLBqcHWvCbxPXS9JiEi1rw6oWhy3rO
bye0mK9GrH8t9J0jP2jBOyJORgaenvnd/9dK20fyGs8rJ2fJ58FT4nskD/Mp
tr/K+bAeJW6vXA/Wq6x+br1tSkuK/B58r3Jzv/xe7IfydD+wX4rxz3K/sJ+K
YfjZ/exVih3kfuM8lBZ/eR44L2XbCnleOE/lYJ48T5y3EozzRj0ojagH1Ity
FPWCelKsUE+oN2UM9YZ6pBnP1eM40qFeUc/UECTrGfVOu1plvaMfKDVc9gP6
heyPy35BP9HoW7Kf0G80RyX7Df1IeUmyH9GvdHC37Ff0M/l2yX5Gv5MX+h16
QHv+lnoAvaAF0AvoCenOST2B3tBe6A30iLqgR9ArioVeQc+obKnUM+gd2UHv
oIeUGPSsHtrQZugl9JSmx0k9hd5SAfQWekxx0GPoNbVAr6HnZAM9h97TwlNS
7+EHlFQm/QB+QSfgF/ATchDST+A3dM9N+g38iPqWSD+CX1E2/Ap+RpXwM/gd
TYPfwQ9pO/wQfklV8Ev4KbXAT+G3ZA+/hR/TTPgx/Jqs4dfwc9oHP4ffUxL8
HnmAzJAHkBcoBHkBeYL8kCeQN+hp3kAeoXjkEeQVmoe8gjxDE87JPIO8Q5eR
d5CHyAd5CHmJDiEvIU+RFnnqX4S4iQg=
      "]]}}, {}, {}, {{}, {}}, {{}, {}}},
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
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=4\"", TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-2.868068694464201, 0}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.02]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"ec4eb3fa-ba85-\
4888-9042-6b326d0bd8cc"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[{
 "Particle density ",
 Cell[BoxData[
  RowBox[{
   SubscriptBox["\[Rho]", "p"], "=", " ", 
   SuperscriptBox[
    RowBox[{"n", " ", "[", "1", "]"}], "dr"]}]],ExpressionUUID->
  "f1677d01-eb0b-4664-9f88-b1696892d9d2"]
}], "Subsubsection",ExpressionUUID->"eeb446d0-ec6b-44a6-9cc7-f8514260500c"],

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
        RowBox[{"Exp", "[", 
         RowBox[{"-", 
          SubscriptBox["\[Epsilon]", 
           RowBox[{
           "TBA", ",", "\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], 
         "]"}], 
        SubscriptBox["onedr", 
         RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}]}], ",", 
      RowBox[{"{", 
       RowBox[{"P", ",", "Plist"}], "}"}]}], "]"}]}], "]"}], ";"}]], "Input",E\
xpressionUUID->"ac8d678e-f88c-48cc-9681-0d3f228df99a"],

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
     "]"}]}], "]"}]}]], "Input",ExpressionUUID->"b56e228d-84bf-4f00-9aee-\
ecbb9f0ef2af"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.01388888888888889], 
     AbsoluteThickness[1.6], LineBox[CompressedData["
1:eJxVlg1MU1cYhguyFkGKiG351bko/gacDAia9nwbbkYnwghRh7ELP4qbSkUJ
ElHwbzE61DGmINMxlDGcEgKJdUuG9yOdikyGSkBEZPwpdqBBQOkE5gb3zTJP
0jQ3997nnHvO973vOyPOFLXBXqFQnPz3N/Zfe3Ns+HJ17q7Zv6e9q984PnzZ
+U/L5ox1kXrF+PDl+aPVTr/GxerzT40NH15wre7g22eS9YHjw4dNZ4LbVzft
08s8b86rP+y/7l42eN6ctSV6j1RWCJ4395X9tOzY2nLwvPhCSc669LsMnhc/
+Cph4auAW+B5squjqdpa2wqeJxfkKvtrJzwBz5NrT/Fn912GwfNgzc1w7VWb
o0HmeXBixqdp+ttag8zTMTkaN6edm2mQeTrOMoWFX9m1yCDzdFzgP6fNPZYM
Mk/Lq5bsLR6sXAmeljN1Gx2yX6wFT8Mh74efDk3dAJ6Gj65eYKkJ2w6ehh3+
0to/vZoB3lQutWU+Cz5/GLyp7NOqc43yPwGeO4dbo+cvWlUInjuHmjyUuaMX
wHPnxoK6YVuiGbwp3NLk5Hadq8Cbws5vtWs2Nf0Gnhsn7aoINpxpAM+NvYca
f1R/0waeG4fOXbzzOVnBm8wtEdMrYu0GwJvMDyt7sysiRnDflcWUFzF7Wh2E
zFfzO6bMlG+3q4XMU3N5Sc9F1bBGyO+7cMjDR7nmxOlCnn8Sb2uuqQsP9BMy
z5kfJBm689UB4DnxSLlZkZIRBJ4TD2ytnBdr0oM3kdMvX1ee6AsDz5Gzpc7u
Qz+vAE/FXrZjq/wvfwSekjufbmkIWrIGPCUrfRNVyTOM4L3BCwPSZw5FxYPn
wJ931pU6H9gE3gSe5bPSfvBKEnj2XOaXMDDDbQd49lwV9+Z73nE7wbNjrV/F
hdsxu8FTcG50xAvp1V7cfyUZ61U5P8w+CP6otEyjetZYeAi8Een4L5Ffvkz8
Au+/lFasWVpzadtxzG+TUmLyU3vuZoM3JDVftNxe7/w1eM+loKNLe5NWnARv
UJpjvRVpyMoDr1/aeKO7o+R6Pnh9koVudBQOnMb9p9K1T1y69qsKwO+RctKN
R4r3fAfeYynSXBfSG1+I97uk0j/4yc7As5i/XZoVO89caj2L+y2SOrmueevB
c+A3Sh9PmzfNxb4IvFuS0TazZnlsEeazSJbK1juisAi889IHZRsmGav+uxaE
azwv7uF58MRK8DCfWI/5sB7hjPVgvWLua+vtEt/je/C94kN8L/ZDHMF+YL9E
KfYL+ymqX9vPfpGI/cZ5iIk4D5yXWI7zwnmK+zhPnLdIw3mjHoQP6gH1IipQ
L6gnEY96Qr2JVNQb6pHyXqtHO1KhXlHPVI96Rr2TGfWOfqARb7kf0C+UhX5B
P1EA+gn9Rm0+cr+hH+kh+hH9SnboV/Qz5aCf0e+Uhn6HHlAH9AB6QfMrZL2A
ntAl6An0hhKgN9Aj0kCPoFf0N/QKekY66Bn0jmKgd9BD0lz5vx5OJsdIWS+h
pxQHPYXekhp6Cz2mBOgx9Jq8oNfQc7oKPYfeUwP0Hn5AEfAD+AUR/AJ+QlPh
J/Ab2ge/gR9Rhk32I/gV7YBfwc+oY6nsZ/A7ioLfwQ/pzmLZD+GXdBp+CT+l
EPgp/JZc4bfwYzoAP4Zf0274NfycquDn8HtS5sl+jzxAFpWcB5AX6DHyAvIE
7UeeQN6gJuQN5BEqRh5BXqEW5BXkGYpBnkHeISPyDvIQDY3IeQh5iR5Z5byE
PEU3kKf+AZGfGEQ=
      "]]}}, {}, {}, {{}, {}}, {{}, {}}},
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
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=1/8\"", TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {0, 0.040537776006060386`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"a45a4f84-6ea0-\
4a06-978d-a4cf58075d44"]
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
     "]"}]}], "]"}]}]], "Input",ExpressionUUID->"516632fa-9587-46f4-8f59-\
76e4aa2b2bc9"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.01388888888888889], 
     AbsoluteThickness[1.6], LineBox[CompressedData["
1:eJxVlgtQVVUUhnmaESD3Xq88r6D4ghSGwClx9KwgwyIJYUbCRzQkVlNYJpqP
QHBUKp8VA0qEUyEa0yj38rwI7CVikmMqV2OyQOQxvjB5iICkGbr/09CeYZg7
55xvn7P2Wv//T0r8MCbJxsrKKnvk7/H/X88+XgbOrIp47kGPsXbVk2Vgfcru
1KjO0lqrJ8vADfoOD6fmU7W5Bx4vL85x2DBka7HUBj9ZXjxnTpNz+89XayXP
k/+J9rG77/sXeJ486WRDstHlPniebNrZs+Mi2QvJ8+CMu1mhyQ0aIXkePPNg
fOOieIOQPHd23PH3Wzlt04XkuXNu/IazDdODheS5c/EUXUrAwvnguXF60mDe
8NcR4LlxhMmz7RNdDHiunPxGb3vFy8vAc2XLtoe2l+etBM+VdxW65pozk8Gb
wFcmB1/MmLEOvAnME602utelgqfnzlPm2OPbt4Gn5zvnK8JDq3eCp+ejNfq0
GfFfgTeeV3oELTwqcsAbz7P+WJs1zikfPB3XbUnc9FLW9+DpuLfjUtfAmkLw
dLwi+Wb+QFoReFpefvXYezZZR8HTskUzHH4u3AiehhNeXGz7sXsJeBounH8u
truqFDwNnxkO2jfTUA6eC0cuntaxObQCPBd+OLXoxCvaSlwfx7FxlssBRyrB
d+apy/z8ymzM4DlzpttPIW7+ZjzvxIUZ608ETTdjf0f2MV+8WjRyv+Q9w4vC
W79IqVd5Duz5ZtiitLWV4DlwtLbFO09fCd7T3H/ibYddxyrAG8sRc/dnOy+o
AO8p7nPa/PrYy+XgjeGJB4crDyWXgzeGA+1d6lLtysGz55RJ57OL88vAs+P9
XonD1vPKwLPlKLscfXdrKXg2XB0UoOVMtX42fPMXf8fskFLwrPnR6e7uddfU
eltxUE3Vb9HfluD6I7GmXVnmEF8C/kORdOPWu6kj5yN5D0Thn2Nrtlwx4flh
8Zrvge2dh03Yf0iker8flrbOBN6geBD3nZdPhAm8e2IgIbMp38sEXr9odd+z
uvGeEbw+ERd57fMvLWp/9IiqHqX8uEm9fkfE/JC0JzDbCH6XaK5PP3P+UyN4
N8TthNywravU5ztF6LPzbwTGGrF/m/hoeWtVfZh6vVmENhaZA2er/CYRqKu6
lOiv8i6ItL2a1pjJ6n4nxTdDH2wd9FJ5P4qlfntnR3r891sp8Je/cb8SgvvB
UxL2SR72U7y1cj+8j/K8Rb4P3lf5//t2Ki3+8nvwvcoUfC/qobSgHqiXMrlA
1gv1VPJ6R9ezTzG8KuuN81AS3OR54LyULYnyvHCeSt4SeZ44byUK541+UDag
H9Avinez7Bf0k7L7uuwn9JsS3CH7Df1ILdWj+9Gaihtkv6KfaSP6Gf1OWvQ7
5oG6MA+YF8ozyHnBPBH7yHnCvFGWrZw3zCPVYx4xr1TiLOcV80ybQ+U8Y95p
EPMOPaBZOqkH0Au6tULqBfSE3gmTegK9oTzoDfSIbLdKPYJeUQH0CnpGjUul
nkHv6PoSqXfQQ2qYNloPXehwtNRL6Cn1Q0+ht1QHvYUek6rH0Gu6D72GntNc
6Dn0ng5B7+EHlA4/gF/Q+nTpF/ATOvK79BP4DfUbpN/Aj6i7WvoR/IocLki/
gp/RXfgZ/I4q4XfwQ2qGH8IvaTf8En5KNfBT+C1tgt/Cj2kB/Bh+Tapfw8+p
Bn4Ov6fP4PfIA+SBPIC8QGHIC8gTtBp5AnmDTiNvII+QBnkEeYVuI68gz9AL
yDPIO5SGvIM8RGeQh5CXyBd5CXmKMpCn/gW/ImdC
      "]]}}, {}, {}, {{}, {}}, {{}, {}}},
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
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=4\"", TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-0.09829856191581371, 0}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.02]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"20cd5e49-ebc1-\
4a41-914c-bee49e544a96"]
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
            RowBox[{"Exp", "[", 
             RowBox[{"-", 
              SubscriptBox["\[Epsilon]", 
               RowBox[{
               "TBA", ",", "\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], 
             "]"}], ",", "vlist"}], "]"}]}], ",", 
         RowBox[{"{", 
          RowBox[{"P", ",", "Plist"}], "}"}]}], "]"}]}], "]"}]}], "]"}], 
   ";"}]}]], "Input",ExpressionUUID->"8ae74796-4875-4a73-bb31-99cc4816256f"],

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
     "]"}]}], "]"}]}]], "Input",ExpressionUUID->"fcbfd3b1-54df-4940-965f-\
91d8f5195b29"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.01388888888888889], 
     AbsoluteThickness[1.6], LineBox[CompressedData["
1:eJw11gtMlWUYB/DDQbkcOHfO/RwRbIri0inkLXsfcyiolVrWFCZlAxVnCEkt
y6YOdThDc4rlbZhJOWY6HeCG8T1OQ81TE9MsxcLCxMuEiCNCIiHPv287+/bt
Pe/v/S7vc0lYlD83R6/T6cr6fk/PPwSfHgG+ET9r8bLyAOf2HwH+IthiSU8L
sK7/CHDd9dqR4677edfnTw8/zzBnpScU+Xls/+HnxMbuhJDRz+L5OGP4DZvp
Kx88H9tmvHDGRD54Pj6StrfV/KsXnpe/S62vMBR64Xk5szSjQBfjhefh+Vba
3HbAA8/DI248c+Ha8x54Ht5ZVNVQd8UNz82xbZS+5x03PDdXN3GwMNINz8VL
7v4UmlLugufid8/Vz46e4ILn4hPNp9481+CE5+TPKlbs/TjPCc/JgeySguRw
JzwHN6XETvhxtwOeg5MSx6rcFAc8Bw8x6062B+PgxXHwxLyGwpw4eHE8NaV4
460eOzw7f5Q06nxGmR2ene2VBQv3PWuHZ+dvhw25fbPeBs/GC5sSL9uybfBs
7AntyB7VaYVn5Yg8S3HqFis8K5ccrG5PHGaFZ+UF1vVRoToLPAsnH/ec/vp1
CzwLf3ggZVlRoxnjZl5jmdbzUowZvok3WnxrL00wwes7j/hmUtdiI+YbeWLX
tfdrdsRi/VhOyHtrX9jpGHgxHJx9M/dCqwGegVfFWYdH+Q3wDNxQdHRe5fRo
eNG8fOWLgw4VRsGL4urk5DmdeyLhRbIjJml5aX0EvAg+utRwL691ILwIvjXe
VVPqGghvIK/ZXRbUqwHwBjDFZ/32S044vHA+e83fOnKzHp6ex0+cVTX0WBg8
PZccGL+/+6oOXhjf2T6m6vK/vZp4OlYfnPKVpD/RZLxX8+W+ffls2WNN/B7t
+zGbVi+43a2J91gzJbQWeCZ1YX63ljfz1WPN2zo1Wf+RlrP+/rbdrSF4ndr0
18Iq7HM74IW06Xp9kbm2HV6HdtJbsz81+W947Vr11nFhtmmt8Nq08NU5M8+k
3cf4A63yztCVV+bdgX9Pe7hy6pbU9/6C16IZs3b15lf8ifnN2sg1rrrDt5qw
/k2tfEnxpaKcRow3aqPvZvoGua/C/1l7oyvbd+T3BngXtcx/ts83rTiP9U5r
jYcXDi4prIN3SNtUs3VwZdqX/1+rDXKt8H/1h/xfwVOLxFNYT70s6yncj0qV
+1G4X1Uq94vxZjVZngdei7LI82K9e6pb3gf8B+qgvC/Mb1NGeZ8Yb1eavG94
HapWvgfWD6k0+V7wOxXJ94T3SOXL94bXrZbKfoD3WBllv8DrUVWyn+D1qgTZ
b5ivo4myHzEeRh2yX+HpaZPsZ8J+p2Gy3wnxQOclHgjxQlMkXgjxRMUST4R4
o+sSb/Ai6LjEI7xIckq8woui4xLP8KIpX+IdnoEuSD6AZ6BPJF/Ai6FLkk/g
xVKS5Bt4Rhot+QieiZ4M789X8Ey0TvIZPHPfdX++w3wLrZN8iHELjZZ8Cc9K
mZJPsb6VNki+hW+lAZKP4dkoIPkano2yJJ/Ds1Ot5Ht4dkI9gGenVVIv4MXR
ZKkn8OLootQbeA6Kl3oEz0HPSb2C13eWegbPSV6pd/CctFPqITwXnZR6Cc9F
BVJP4blordRbeG46JvUYnpuipF7D89CnUs/heWiw1Ht4HnpF+gF4Xlol/QI8
L5VLPwHPR3XSb8Dz0cOM/n4Eno/mSL8Cz09jpZ+B56dJ0u/AC1CD9EPwArRD
+iV4AWqRfor+A1k1/ks=
      "]]}}, {}, {}, {{}, {}}, {{}, {}}},
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
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=1/8\"", TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-7.406659711858052, 7.406659711858062}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"883c2dec-5dbe-\
42e8-a1b1-5558355b0f08"]
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
     "]"}]}], "]"}]}]], "Input",ExpressionUUID->"93afed92-87ee-46e7-9290-\
3c7ea17e361e"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.01388888888888889], 
     AbsoluteThickness[1.6], LineBox[CompressedData["
1:eJw11gtQVFUYB/DljTyWfbDsLgu+GLQRcAIUH6n30zITRJGsSdPykUojgdpY
hk2Y1giOo6WGKzWOSWrKyMMtQlHvp6YIiYkpJvlahgIkBHkIoUB5zr87wzA7
Z8/v3L33nO//DVuanrzcVaPR5Pz39+x/1eVnVygXWjJvXVHNvEJcoXx+9cwQ
+x0La8QVyi2ukx0xHWbO3fvsCuGUhFjLk51mjhVXCG+o3+Gx2s/M0rNx5KZt
q3h7EDwbb/CuHj/SPwiejXsKU5oebDXBC+a8sK1rBzxN8IK5bPH8FzI+DYRn
5X5nyS/BvUZ4Vr6YVuxVsNoIz8rl3Q2vttcb4Fl44ilf/b7XDfAsbIxs+mzR
BT08M49YkB51/Xk9PDNPbz3evM+ug2fm/L4D3UU9AfCCOL5qz8ypP2nhBfH2
WeOXJab6wzPx7N6mI2lmP3gm/nVdW2tuqQ88E9+OeOo1M2kQvED2/iD6xV33
vOAF8sHyJQ1JKZ7wjHwn++ifg1vc4RnZe2Vc0tw1bvCMXO2adaiyxwWegcsm
bMkq26KBZ+Dhed+nHnqpX5Wenou3pNXW2p+o0tOzc1TL8BzDP6r09Hy/4Vs7
lzxWpafjzBvTazOyOlXp6Thh9tLfw7LbMR7Axt33NmeVtsHXclvJzW1vjnoI
T8uPUlcsi5/QjPn+nPJg9E51TyPW9+NT3YXjWqb8Bc+Xc9+7Hlc5sh6eD+d8
/ehMSkIdPB8Ob5gxLTrvPrxBnFi7ROuffBeeNx+YHBdRVPAHPC82Z2hr5yTf
gufJAUNnJAWMuQnPk2McX+QMnXUDngdXV/dRwa7f4LnzmbCqnHPu1+C58ZX1
+YtG516F58q+fxckOPddgefKhrjFJ2jqZXgufGJjpHdRYCU8DZc5n5s3w3gJ
4wNqYkn4iLpxF+H3qa/F1dS5ffIzvKdqx32vDtV5DvN71YiYjokH3z6L9XvU
8GmRrW80qfC61Ufj501JnnQaXpcas8Z6Y73jJLxO9d3R76ftji+F165auzIf
3+37EV6bavc4beuscGD8oVrocAw5n18Mv1lt1S23eEwthNeodlXN6o9PyMf8
etXpYt/93ZrDWN+pPnZULvihMA/jt9Wa+bqOZS774deol9MPVR67YId3Vd08
4auRp/d/ifXOq2Fh8zJOWT+Hd0TVl6w8Osea+v9nxbxKfFbwfeX4CvF9BZ5i
Hyw8BespQ1LFegruR/loobgfBferzC0S94vxeqVCK34PvEYlu0L8XqzXrATq
xfOA/1BZnC+eF+a3KeMM4nlivF0xNovnDa9T2TNWvA+s36WY1or3Bb9b2Rgt
3ie8HuWVl8X7hterpEeL/QDvqfLAKfYLvD7laqzYT/AGlOyTYr9hvoba7oj9
iHEX+niT2K/wXCl3jNjPWN+VouR+h+9GaRniPMBzp8PDxHmB50GXrovzBM+T
xhaL8wbPkwqGiPMIz4sG5HmF500L5XmGN4hi5XmH50NRjaIewPOha3tFvYDn
S+Vpop7A86NIWW/g+dPmZlGP4GkpXNYreFq6LesZvADaIOsd5usoI1HUQ4zr
aF2NqJfw9DRC1lOsr6dREaLewtfTGFmP4RnoHVmv4RmoQtZzQr2nXbLeE/KA
4mUeEPKC3LaKvCDkCX0j84SQN7RN5g08E7HMI3gmeiLzCp6J3pJ5Bi+Idsi8
gxdECTIP4ZmpVOYlPDNNlHkKz0xRMm/hWShI5jE8C02SeQ3PSmdlnsOz0jWZ
9/Cs5F4n+gF4weSQ/QK8YCqW/QQ8G/XLfgOejT6U/Qg8G8XIfgVeCGXKfgZe
CM2X/Q68UOqS/RC8UCqX/RK8UDom+yn6FxsxOSE=
      "]]}}, {}, {}, {{}, {}}, {{}, {}}},
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
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=4\"", TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-6.216400567991687, 6.21640056799169}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"384cae27-0384-\
420e-ae47-503c9116e7c4"]
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
       RowBox[{"P", ",", "Plist"}], "}"}]}], "]"}]}], "]"}], ";"}]], "Input",E\
xpressionUUID->"7e420e9b-1bbb-4009-899f-eabe25ccd8a2"],

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
         "]"}]}], "}"}], "]"}]}], "]"}]}], "]"}]], "Input",ExpressionUUID->\
"f97267f9-addf-43a6-8310-30ab5ce0d010"],

Cell[BoxData[
 GraphicsBox[{{{}, {{}, 
     {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      0.012833333333333334`], AbsoluteThickness[1.6], PointBox[CompressedData["
1:eJxTTMoPSmViYGDQAGIQDQEH7F2/ijEqte6zh/Av2OeI2YhyeZyD8m/Y2wke
avltex3Kf2D/OWur4iOfB1D+E/sQFiuffo5nUP4L+x3Ce1Qlq99C+W/sSxh9
TetffobyP9hvOri4Y8v+31D+J3uHiqhTrotZHCD8L/bT4rqeb9soCOV/sxdI
X5Ade18dyv9hv91nevbkKKcDEP4v+y9tG5bub5OG8v/YKzN85zSwFYDy/9mb
RoTd/7OKHcpncJhnuPTJgs9MUD6jw1O7lxGujAxQPpPDqXNnPf9+/70fwmd2
aJJ32XWb5SeUz+JQ3nm5KfrINyif1eHj2W91/H+/QPlsDk2/dhy82v0Zymd3
4Nk18/2PyE9QPoeD2caJSsoRH6F8TgeJbdq1M6o/QPlcDr4VzP/MKt9D+dwO
t3xvznqq9Q7K53E4VDhTfRrzWyif12HtRuuc+X9eQ/l8DmdsknadEoDx+R3W
sKzW/mL9CsoXcHj94qbq8aqXEH6DgIPPBLXbvadeQOUFHfbsenmRVxPKbxB0
EHQL68qd8hwqL+QgcrxqkQI3lN8g5PD7qezaG93PoPLCDv13t1ZXikL5DcIO
wVvjf/IvfwqVF3G43DPzyyn7p/sBWWvL8w==
       "]]}, {}}, {}, {}, {{}, {}}, {{}, {}}}, {{{{}, {}, 
      TagBox[
       {RGBColor[0.922526, 0.385626, 0.209179], AbsoluteThickness[1.6], 
        Opacity[1.], LineBox[CompressedData["
1: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
         "]], LineBox[CompressedData["
1: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

         "]]},
       Annotation[#, 
        "Charting`Private`Tag$121114#1"]& ], {}}, {{}, {}, {}}}, {}, {}}, 
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
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1\"", TraditionalForm],
  PlotRange->{{0, 5.}, {-5.134188479897897, 3.8955293627147896`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"d564e562-36ee-\
4344-9329-a27ebebc4f59"]
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
         "]"}]}], "}"}], "]"}]}], "]"}]}], "]"}]], "Input",ExpressionUUID->\
"668250cd-7d86-42dc-b294-6c395d011db8"],

Cell[BoxData[
 GraphicsBox[{{{}, {{}, 
     {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      0.012833333333333334`], AbsoluteThickness[1.6], PointBox[CompressedData["
1:eJxTTMoPSmViYGDQAGIQDQEH7ONMaybNO6bgAOFfsK+bECBY/kIAyr9hn+tw
cncWOxuU/8B+ncM/BsHM//YQ/hP7RvV9z4/ZfIfyX9inP7iowBj3Ecp/Yx8V
ofm9fdtLKP+DfUWx7LOm4kdQ/if7urtXzwuevwHlf7EP3zsxZMH7M1D+N/vD
v2o96ou2Qvk/7Pexq8xLfzp7P4T/yz7h0Mb5G2YegvL/2P9oymXLbT8P5f+z
b4g4eOjrwqtQPoPDq21i3HIst6F8RoeSwzcaS//eh/KZHA7UJPgn+j2C8pkd
hJ58NHhe9gTKZ3GYvIQvRbL2GZTP6tAv0231IeUFlM/mcCdlps0+w1dQPrtD
8Re94qBnr6F8DocXKnfVhFrfQvmcDronr07mEXgP5XM5LHc9L9Pq8gHK53bg
fxZScuYHjM/joM5YtLZr6Ucon9fBuXhuaaT3Jyifz+HV+8w3B17B+PwOEnZV
xlYtn6F8AYdlzxK6DSW+QPgNAg6Xzx4U4VgO5TMIOuyu3eouavgVKi/oUBNY
qL9iG5TPIOTwLdS0lMPiG1ReyKG2xtS5fCuUzyDssIGvgM1A/ztUXtgh+BWL
aOZSKJ9BxOGRZL9tiMSP/QClksmH
       "]]}, {}}, {}, {}, {{}, {}}, {{}, {}}}, {{{}, {}, 
     TagBox[
      {RGBColor[0.922526, 0.385626, 0.209179], AbsoluteThickness[1.6], 
       Opacity[1.], LineBox[CompressedData["
1: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
zA==
        "]]},
      Annotation[#, "Charting`Private`Tag$121218#1"]& ]}, {}, {}}, 
   {Dashing[{Small, Small}], 
    LineBox[{{1.4616321449659389`, -10}, {1.4616321449659389`, 10}}]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"P\"", TraditionalForm], 
    FormBox["\"\[Nu]\"", TraditionalForm]},
  AxesOrigin->{0.048828125, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1\"", TraditionalForm],
  PlotRange->{{0.125, 5.}, {-1.5059397129676815`, 8.387928559934775}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"f38f7ffc-fa2e-\
4b55-9932-87b8dd355c57"]
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
          RowBox[{"Exp", "[", 
           RowBox[{"-", 
            SubscriptBox["\[Epsilon]", 
             RowBox[{
             "TBA", ",", "\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], 
           "]"}], 
          SubscriptBox["vdr", 
           RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], "]"}]}],
        ",", 
       RowBox[{"{", 
        RowBox[{"P", ",", "Plist"}], "}"}]}], "]"}]}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"Norm", "[", 
    RowBox[{"%", ",", "\[Infinity]"}], "]"}]}]}]], "Input",ExpressionUUID->\
"10d0d5f9-cfa5-4aac-9562-8a7812f483b2"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"5.709536962705115`*^-18", ",", "2.7879358428921274`*^-17", ",", 
   RowBox[{"-", "2.230991951754231`*^-17"}], ",", "2.2980260647375256`*^-17", 
   ",", 
   RowBox[{"-", "6.068491429501436`*^-17"}], ",", 
   RowBox[{"-", "6.973010848783154`*^-17"}], ",", 
   RowBox[{"-", "2.564877947847064`*^-16"}], ",", "3.944906460318634`*^-16", 
   ",", 
   RowBox[{"-", "5.322846148984575`*^-16"}], ",", "7.91069201938176`*^-16", 
   ",", "1.541374386406935`*^-14", ",", 
   RowBox[{"-", "1.0765758467131433`*^-14"}], ",", 
   RowBox[{"-", "7.564753994099684`*^-16"}], ",", "8.528976699568563`*^-16", 
   ",", 
   RowBox[{"-", "7.613430383126397`*^-16"}], ",", 
   RowBox[{"-", "2.6407675689461865`*^-15"}], ",", 
   RowBox[{"-", "8.793696909698591`*^-16"}], ",", 
   RowBox[{"-", "2.5655561610791725`*^-15"}], ",", "2.9104230904106194`*^-16",
    ",", "4.88587172526671`*^-16", ",", 
   RowBox[{"-", "7.137275088351159`*^-16"}], ",", "1.321599784269068`*^-15", 
   ",", 
   RowBox[{"-", "1.1081385043352324`*^-15"}], ",", 
   RowBox[{"-", "9.157207971229303`*^-16"}], ",", "1.2306634043718762`*^-15", 
   ",", "1.3793757427826062`*^-15", ",", 
   RowBox[{"-", "4.9471705732172184`*^-17"}], ",", "1.6357699318808313`*^-15",
    ",", "3.6721477278193454`*^-15", ",", "6.12047034147939`*^-16", ",", 
   RowBox[{"-", "2.8547251783406593`*^-15"}], ",", "4.785251225624494`*^-16", 
   ",", "3.149181168794627`*^-15", ",", 
   RowBox[{"-", "1.8310238375962746`*^-15"}], ",", 
   RowBox[{"-", "5.979698547843409`*^-16"}], ",", "4.614259414012847`*^-16", 
   ",", "1.5215913517227855`*^-15", ",", 
   RowBox[{"-", "3.602158380063524`*^-16"}], ",", "4.1876224710080124`*^-16", 
   ",", 
   RowBox[{"-", "1.2081569739866987`*^-16"}]}], "}"}]], "Output",ExpressionUUI\
D->"dbb0460a-9df4-428a-9a56-c2846f28dcdb"],

Cell[BoxData["1.541374386406935`*^-14"], "Output",ExpressionUUID->"f457ecee-d2f8-4b01-b211-7329c35b78c2"]
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
   ";"}]}]], "Input",ExpressionUUID->"e55b7c7d-ff22-4c3f-a891-757680948220"],

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
     "]"}]}], "]"}]}]], "Input",ExpressionUUID->"4bfe8fd9-b2a8-4ebd-8908-\
16cd059a225d"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.01388888888888889], 
     AbsoluteThickness[1.6], LineBox[CompressedData["
1:eJw11gtQVFUYB/Dd5b2w7JsFFoYo8ZFCmlE+0vuJNjq+0nSYMdMhtRRKk0ZR
JHxgiSlqmjIiU1kzasZoNjqhhZ0PK7MGhPDBiCQqvh+IioLLrqT7/T0zOzt3
zp7fuXvv+R6JMz566z2DTqcrfvJ5+l1d9XTE84SUSZ8/zrHx+/4Rz6tTyw/s
muJgnX/E89ivt3o6V9p5W8nTEcejG8epw9l27u8fcWwIul4+ro+dxXPz/KzG
7Oltzzw3z8xI23bgoA2em0vKkt65kG+DF8uVmcXr96TZ4MXyB/3/bM0KscGL
4erO0nZDlRVeDG+caP51yRdWeDGc3+uvtprJVnjR/ElJ3ShDjBVeNB89UXLc
8p8FnotT9hWWe7Zb4Ln44nLH82qWBZ6Lm6ec7TatpwVeFJuL87fsqjfDi+Ky
gfVJI6ab4Tk5odeCpnWXIuE5+dat3LUFWZHwnJyzf9iphFYTPAdXvnBu5MyF
JngOPmOaOGa0JwKenRtyZifWLY2AZ+eW8t4X2w0R8Ox8+dOziw6uCodn49Da
MdssxnB4Nq5Yvv1vb5ERnpUXjB84KtdshGflUuM+e8HGMHhWfvS2arTZw+BZ
+OGhZl/3zaHwLJzUsnL+IUco5s3sPp/Ff2wOgR/JQ7ZO9aU5QuBF8vniNT8k
fxmM9SZeEltTlm8Nxv4R/GHI3L69NwTBC+ehnnmlyRFB8Ixcun53Zt7qQHhG
Hntnr9MYGAgvjKt/S/VULw2AF8orAyv7/9JhgBfCNzb8WMDZBnjBrOs39KV/
r+vhBfOs9IV3GzL08IL41buZTf+c1sEL5D2rvptVNEYHL4C9NZvW2pZ2KfEM
XJedMGfSjMdKPAMfz868+v1wnxJPz1m7O/qdS/Qq8XT87sMrFRVeD+a7lP3c
+GTTyUdKfJ/SJ9cv2LqrA55X6X9q7t5rUTvWe9Trnx42rEt7iP07VI/6uWXF
YQ/gtauhPYYVJFTdh/dA9dz/2pawNffgtakBqyZvGDb8Lrx7qr00qc+KO3fg
taro3MRO95u3Md+iJp66snjFjhvwb6pK+tamv38V3jW12JvqNg24jPWXVN60
foMHL7yI/S+o2x8f3lmY3oT5RnUsNKVI9/MZ+KdV4ZEXJ9QaT8KrVfePVpSm
7q3Cfr+r3skZ+umDKuHtVnk9RzqbOnc+u9by5VrD77Ue8nsNnuYTT8N+Wq7s
p+F+tDq5Hw33q9XI/WL+klYk/wfeNQ3/F/vd1I7J84DfoqXL88L6Vu05eZ6Y
v6d55XnDa9OGyPvA/g+0bvK+4Ldrg+R9wuvQXpb3Dc+jvSLnAZ5XC5LzAs+n
3ejjP0/wurREOW9Yr6M5ch4xr6d5cl7hGahazjP2N1CZnHf4ARRW648HeIGE
eCHEEw2SeCLEG2VIvBHikXx9/fFIiFdqkXglxDMtk3iGF0Z1Eu/wjDRC8gE8
I+2QfAEvnCZLPoEXQbMl38Az0TLJR/Ai6YTkK3iRNEDyGTwzpUi+w3oLIR9i
3kLIl/CsFDjVn0+xv5U2Sb6Fb6X5ko/h2eiI5Gt4Nuqq8edzeHZqlnwPz05t
Ug/g2alW6gU8BzVIPYHnoH1Sb+A5KU/qETwnmW776xU8JwVIPYMXRd9IvYMX
RS6ph/BcdF3qJTwXNUg9heeiN6TewosmJfUYXjTlSL2GF0MrpJ7De3It9R5e
DKEfgBdLhdIvwIulr6SfgOemMuk34LlppPQj8Ny0RPoVeHFklX4GXhwNl34H
XjxNkX4IXjx9Jv0SvHhKl36K/ge1fxvj
      "]]}}, {}, {}, {{}, {}}, {{}, {}}},
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
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=1/8\"", TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-5.087553809816548, 5.087553809816545}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"bf83f1bd-1200-\
4b72-a76b-941580a86ce2"]
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
     "]"}]}], "]"}]}]], "Input",ExpressionUUID->"069fd4f2-40ee-45a2-86f6-\
1e71f50a9843"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.01388888888888889], 
     AbsoluteThickness[1.6], LineBox[CompressedData["
1:eJw11gtQVFUYB/B9Ly+VBRZYYFOzGMJ3isGEnm+stBHLBsNRwkeOmqkzjmOI
rOOYrwozDR/I+gw1oRkflaJL03g/AxsCGWtQMhXLFyAg4iJCCGx5zp87wzA7
Z8/v3L33nP/3DZ6/PHWhQafT5f3/9/x/1aXnl5Mbct6KL9yuo0XycnJ11+dH
SosCSScvJ683Lynbm2Glve7nVww/mLbLMjPBj8bIK4aH9Iyct/GilZQXzYm+
bGH+3govmg9eMR8wbLDCi+bCV3faPkrv86K4av75yMujrPCi+KWklOI11j7P
wRU7kn+urLXAc7B9VMHY+6ct8BxcsO7moHM5FniRHHNmx+gJcy3wIjl31tPq
FWMt8CL4vn9S19v+fV4EP6jMn+OpNcOL4N7ya6t//MEML5zXlqQ0xm42wwvn
4U2TfPqZZnh2tjztHDQs3gzPzt1xSVNznpng2bk8+FZeZ6UJXhgH5LZfmb7P
BC+MC94PWbH8YxO8UF5W4toaNc4EL5T1jt2ugfo+L5S/bYw79maFEV4ID6tw
1b2Ta4QXwivvzpnQm2aEZ+Nb15Y+dkQa4dn4YfGJqsV/GuDZ+Hzc+LWenQZ4
wZx1PevErakGeMF8P6vp+k+GvvEBnJewx/1asR5+f66PLxApC/Tw+vPDDfMa
OwboMb8fZ23KrJ/i6dtfQVx72L33g9k6eIEcm+U27+r1CeUF8OFZmYGuZJ9Q
XgBf9HO+e+GTXqE8f25oTcsvL+wRyvPjmuwRU7xXu4XyrLy2tG13ge8ZPAtn
XuiXlPjyM3gWrjg86UzY5C54Zj6zJrbn64X/wjPxaO+Bffr1nfCMXLv98pBi
dwc8A2++c7ar7dRTeAY+7zGl6cra4elZlMV+GF7zBJ6Om47s2b6srg3jPi0+
/HbLmHYv/B7tZmvbjnyDF1631jwwS/9L/8eY36U9mrjgYLWjFet3auG1GUOv
T26B16H9ejB/XVp6M7x2bXzqaV/K0kZ4T7QLI95LaHI1wPNqzRuj+mXk1MFr
1ZIuD1xcmncP4y3a0S3uQxOP3IHfpEXdeKG74+Q/8Bq0okJtYu/KWsy/p5W/
nvz3nS/+wvq3tfQxyZ5L+69i/KZWdOzLjfWn/oBfoyW0zznu2VQJ73dt0ZbC
9KNFpVivVHu8JLukZM85eN9plzpWGWdkHur7LFwF8rOG74uAc/L7Gjwxe6n0
NKwnrnjlehruR3xVJO9Hw/2K2SPl/WL8nsiYIn8PvAYx8qj8vVivSYxQzwN+
izCvl88L81tF6g35PDHuFaPXyOcN74kISpTvA+u3i2XT5PuC3yGOu+X7hNcp
pt+W7xtel4hR+wFet5g3SO4XeD1ixSO5n+D5hMkh9xvm6yimQO5HjOupWe1X
eAaKVPsZ6xto7l253+EbaXWuPA/wTDS8RZ4XeGZK/1SeJ3gWSlDnDZ6FxrM8
j/CstE2dV3h+tMslzzM8f6pR5x1eAO33l3kAL4DqZsi8gBdIcS6ZJ/CCaLDK
G0YekXGzzCNGXlGqyitGnlHQUJlnjLwjMU7mHeYHU+4qmYcYD6bqGzIv4dlI
p/KUkbfkd1bmLXwbbVV5DC+EslVewwuhN1SewwulF1Xewwulb1Q9gBdKZR5Z
L+CF0Yk0WU/ghVHmNllv4NlpuU3WI3h2GvCKrFfw7OSn6hm8cEpU9Q5eOG1R
9RBeBJl/k/USXgTVq3oKL4K6VL2FF0l5qh7DiySHqtfwHLRP1XN4DkpU9R6e
g6pUPwAviuyqX4AXRe2qn4AXTSdVvwEvmtCPwIumqapfgRdD0aqfgRdDzarf
geekz1Q/BM9J6JfgOemh6qf4P1F1NO0=
      "]]}}, {}, {}, {{}, {}}, {{}, {}}},
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
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=4\"", TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-3.4574044013855683`, 3.4574044013855683`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"3174211e-6ef0-\
4991-9e3a-5eb96c7a36b7"]
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
   ";"}]}]], "Input",ExpressionUUID->"0cabe8d7-43a5-4abe-b7f3-9a333109c492"],

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
     "]"}]}], "]"}]}]], "Input",ExpressionUUID->"6980fdea-56e8-4a3a-ac2e-\
0746b1fd1c90"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.01388888888888889], 
     AbsoluteThickness[1.6], LineBox[CompressedData["
1:eJw11gtMU2cUB/BatMrDQimlpQ8ZIzpd1MTgfODgHnWMyIIxxKDZjCBMZGRj
k4hGNx/IBB8zU3E6FYwRE50PfE4ZTu9B5wN1GyAP5aG0MhUIlXQIyjBucv77
kqa5+fr9zu2933fOCUv5MmGxVqPR7Prv8+b79ztvhoMTR5VWJRc61bSB4eBv
s9JWXUh/pGoGhoPHrRyR31noUvfueTPsvHXS2ln5W1xqxMCwc+Z3o5PiZ7lU
8Wxszd4+r9vogmfjmcvfbvVrdMKz8VFPhsNz0AnPyrppq6O/znDCs/IHC09F
90xwwgvhyUdqi+JftsAL4RPzCybncQu8EE61r2spym+BZ2HXzg7aObsFnoVH
X329Kt3UAs/MY89lFESUPoRn5lnn/zo2O+YhPDNP/Shq/VvVD+AFs+9Z14zD
Cx/AC+Z3n3Z5Odub4ZnYfsL76u3lzfBMvLZxU+pibTM8E2epKcePbW2CF8SX
oy/FFFqa4AVx6o455ycWN8IzsjUnNTlrXCM8Iz/bkb4m4UIDPCOXtIWHVlMD
vEDm0pgwd8V9eIE8Ly95fHHCfXgGPuRx/NzZcA+egQt7vndVpNyDZ2DfnBV7
I9rr4QWwX8bczFFL6+EF8JVYfUFRbx3m/blti7a2YHUdfD3nTZ+52curDp6e
4/U16x/n12L9cI4eWdbznl8t4vvxrjnlS9u/r4Hny6Ea96//BNbA82GOOnct
+Ye78Hz4ecLkXH/zXXjePDLUv6F/dzW8YVwSO2+t3VINbyj7msKakndXwdPx
RGO5p8xUBU/HjSfvx1oLKuEN4bbIzKrP/SvhDebKs580R5n+hOfFtr6/6yZ5
/wFPyyMu3hi5u+8OPC13RNYfHt92G94g/jA8rvdWzS14Gg7LeqWfcqkC86/V
uPQvwqcfvAn/lVo03XLmdO4NeP3qseQn1xMXXcf6PjXxmX2ZZto1xH+hdnTX
ZecG/AavV/XJPdBT5rwC77kaHzF4yeaScnjdqs76JPHhcobnUdtSqlemZV+G
16UuSro51tp9EfNuta18ys4hGb/A71CTNri/WlZ/Ht5Tddu+GXfuvn8O61vV
A+FNKWf2nkZ8pxrZFepY9+gE5pvUC2s8sT9uOAK/Tq2ZG7Zpg6MYXqXaHPXo
1qGP9yHeVfWwZ49uceY2eD+p+zZuXMId2f9fK0VyreD3SrH8XoGnPBZPQTzl
hsRTcD8Ky/0ouF/FIfeL+VbllPwfeE8V/F/E61DS5HnAdytueV5Y36V8Js8T
8x6lU543vG7FV94H4j9X4uR9we9VdPI+4b1QeuR9w+tTZst+gNevnJT9Au+V
ki/7Cd5rZb7sN6zX0GjZj5gfRHGyX+FpqV32M+Jr6WXZwH6H70XvyHmAN5hw
XuANoU45T/B0VC/nDZ6OJsh5hDeU/OW8whtGR+U8w/OmMXLe4fmQW/IBPB+q
kHwBz5cmSj6B50fbJd/AG04zJR/B0xNJvoKnpxzJZ/D8qV/yHdYHEPIh5gMI
+RKegUySTxHfQAWSb+Eb6IDkY3iBtEDyNbxAKpV8Ds9IxyXfwzNSt9QDeEYy
SL2AF0SfSj2BF0QlUm/gmWiF1CN4Jtov9QqeibRSz+AFU6jUO3jBFCj1EJ6Z
YqRewjNTpNRTeGaaL/UWnoXCpB7Ds1CT1Gt4IZQm9RxeCO2Xeg8vhNAPwLNS
kvQL8KzUGjnQT8Cz0UXpN+DZaIz0I/BsFC79Cjw7fSP9DDw75Um/A89BU6Uf
guegHOmX4DlogfRTyr+1/2Br
      "]]}}, {}, {}, {{}, {}}, {{}, {}}},
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
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=1/8\"", TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-0.6065328016880618, 0.6065328016880615}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"677d3efd-1ca5-\
4fe7-85a9-a7a24588b004"]
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
     "]"}]}], "]"}]}]], "Input",ExpressionUUID->"fcca8763-3dd9-480d-8228-\
5a1e44d714e6"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.01388888888888889], 
     AbsoluteThickness[1.6], LineBox[CompressedData["
1:eJw11gtQVFUYB/C7y0seLiwLuyzsNmORAuZogS9m8n5iojOMRg6pxQgmhmJZ
ozaZhTqjaL57GLhQjg+0yTKGSGSm1PuNL5THpOUTaQpDARGCFdzlsVCc8987
wzA7Z8/v3L33nO//jVn2/oK39YqiFP3/N/K/vm7ksvOq27vLdmX3a7nisvO8
3+7muP38WRGXnTtSfTMHivVcUjxy2XhLc3T9vlQfThSXjZPWvePY2qFn6cVw
dvUMR26jnqUXw4WN3crFKj28GJ5ZsKkg2eH1onls+t1E23o9vGhOOROyOWmh
17Py7Gdiw30mez0rf753V9K3Jq9n5RxzR1aYUwcvitvvODpnXNPBi+LEue7Q
8WU6eBbWxW/bW79bB8/CnpubV9vzdPAsPD9ub1toqtcz85T2h+4Dz3o9M0e8
4Gg/PqTAi+QN29L6xjYo8CI5od5ww7dSgRfJHcHfpT7/mQIvgm36eY/zVirw
Inj/ogBjOXk9Exu0jNprFq9n4tqpDWdS7g1r0jPxouHippatw5r0wnnN94en
vhg/rEkvnN94afGhszVDmvSMXFHnck1YOYT3a+TQ3ukX43RD8Iw88VTpvSWF
HnhhXFqw4M7OWA+8MG6rW/7ko7JBjIeydVxVaGDiIHwDn684ezWhYgCegWt/
3LW5afwA5o/mFt2mpSmHvfsrhH37mn9YG9oPL5jfGqh8/fiGPnhBPMs199Wo
v9zwglhVrOVGcsML5Evps5yN37jgjeI9JbNXXel9Ci+Aq5L9Ip5LewrPn7Ov
bjyffLAXnj/XZjWfevNxDzw/vp+cuKdmWg88X0447Syq3/IEng/3FWbmHq1x
wtPzhbbIQ1vCnPD0PPhLuvtoRjc8HTtSpy9JPNAFT+EJXfZ558r/xfiwdjCt
rrpkUid8j7aw5H5mStljeIPazp/y+57Et2N+vxadlzPYUtqG9d3awua0G+m2
VnguLanNeSxz/0N4vdofO30aJwU+gNejrVt99teejf/Ac2qFK4Ibqrub4HVp
DTvUr6qX/43xTk3X6NtlK/sTfrtWdfnDV/K+aIDXqlWayuMPr7uN+c1aQPz1
UY8ybmD9Ju2EYnn53cnXMd6oPcjMj9ufUAf/lpZdemzH7LZL8K5pVQ9vLcuc
r2G9C1py8OqlhqsV8E5o17u2v5YVUuz9rJpPis8qvq/+Pkd8X4WnplUKT8V6
6sdHxHoq7kdtyxL3o+J+1XyPeeR+Md6sliaJ3wOvVe0OE78X67Wrt+XzgN+p
ltWJ54X5XWr+l+J5YtypHlkqnje8HrXhA/E+sH6vWvipeF/wXWrsA/E+4bnV
0y3ifcPrV2tWiP0Ab1BNqRD7BZ5HjXCI/QRvWB2XLvYb5it0ql3sR4zraMwc
sV/h6Wm93M9YX09rHon9Dt+HZh4Q5wGeL7kqxHmB50dFM8R5gudPGfK8wfOn
3CviPMILoIvyvMIbRbFfi/MML5BOy/MOL4geyXoAL4gie0W9gBdMlz2insAL
obsuUW/gjabLelGP4Bno5klRr+AZyCPrGbxQGhsn6h3mh1FdjaiHGA+j+u2i
XsIzkvKzqKdY30jJst7CN9JEWY/hhVOOrNfwwqlI1nN4Jto+JOo9PBNdmSby
AJ6JdpwTeUHIE8pbLPKEkDdkUETeEPKI1oaIPCLkFU2XeUXIM/pE5hk8M9ll
3sEzE8k8hGehDJmX8Cw0KPMUnoWMMm/hRdFUmcfwoqhV5jU8K2XLPIdnpZMy
7+FZaa7sB+BF0xTZL8CLplTZT8CLoTmy34AXQ+hH4MXQe7JfgWejCbKfgWej
AtnvwLNTt+yH4NkJ/RI8O62V/ZT6Hx1HSAQ=
      "]]}}, {}, {}, {{}, {}}, {{}, {}}},
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
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox["\"\[Beta]=1, P=4\"", TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-2.752915172657515, 2.752915172657515}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"d836dcce-45e1-\
4cdf-8c2e-08339a845fde"]
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
    RowBox[{"x", "/", "t"}]}], TraditionalForm]],
  FormatType->"TraditionalForm",ExpressionUUID->
  "22de4e5f-99d8-497e-ad71-ac2e0b8448ff"],
 ", except for a uniform ",
 Cell[BoxData[
  FormBox[
   RowBox[{"1", "/", "t"}], TraditionalForm]],
  FormatType->"TraditionalForm",ExpressionUUID->
  "b7ba96ec-aa6b-4b02-9016-777883d12dcf"],
 " scaling "
}], "Text",ExpressionUUID->"9ec0bb37-8cd4-42b5-b56a-0ac385d138f0"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"stretch", "-", 
    RowBox[{"stretch", " ", "correlation", " ", "function"}]}], " ", "*)"}], 
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
         "vefftildeip"}], "}"}], ",", 
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
           SubscriptBox["S00", 
            RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], "=", 
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
               SuperscriptBox[
                RowBox[{"(", 
                 SubscriptBox["\[Nu]inv", 
                  RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
                 ")"}], 
                RowBox[{"-", "2"}]], 
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
               SuperscriptBox[
                RowBox[{"(", 
                 SubscriptBox["onedr", 
                  RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
                 ")"}], "2"]}]}], "}"}], "]"}]}]}], ",", 
         RowBox[{"{", 
          RowBox[{"P", ",", "Plist"}], "}"}]}], "]"}]}], "]"}]}], "]"}], 
   ";"}]}]], "Input",ExpressionUUID->"73250f86-a20c-4933-b5bf-00e41087733c"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"momentum", "-", 
    RowBox[{"momentum", " ", "correlation", " ", "function"}]}], " ", "*)"}], 
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
         "vefftildeip"}], "}"}], ",", 
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
           SubscriptBox["S11", 
            RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], "=", 
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
               SuperscriptBox[
                RowBox[{"(", 
                 SubscriptBox["vdr", 
                  RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], 
                 ")"}], "2"]}]}], "}"}], "]"}]}]}], ",", 
         RowBox[{"{", 
          RowBox[{"P", ",", "Plist"}], "}"}]}], "]"}]}], "]"}]}], "]"}], 
   ";"}]}]], "Input",ExpressionUUID->"6def2725-ed04-437b-88ac-25d08e2e6af2"],

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
        SubscriptBox["S00", 
         RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], ",", 
        SubscriptBox["S11", 
         RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], "}"}], 
      ",", 
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
           "\"\<\!\(\*SubscriptBox[\(S\), \(1, 1\)]\)(x,t)\>\""}], "}"}], ",",
          "Above"}], "]"}]}], ",", 
      RowBox[{"PlotLabel", "\[Rule]", 
       RowBox[{"\"\<\[Beta]=\>\"", "<>", 
        RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
        RowBox[{"ToString", "[", 
         RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}]}], "]"}]}], 
   "]"}]}]], "Input",ExpressionUUID->"335030ec-e12c-4a05-be58-6670275707a4"],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{}, {{{}, {}, {
        Hue[0.67, 0.6, 0.6], 
        Directive[
         PointSize[0.011111111111111112`], 
         RGBColor[0.368417, 0.506779, 0.709798], 
         AbsoluteThickness[1.6]], 
        LineBox[CompressedData["
1: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
fer/3mqbTw==
         "]]}, {
        Hue[0.9060679774997897, 0.6, 0.6], 
        Directive[
         PointSize[0.011111111111111112`], 
         RGBColor[0.880722, 0.611041, 0.142051], 
         AbsoluteThickness[1.6]], 
        LineBox[CompressedData["
1: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
rPg=
         "]]}}}, {}, {}, {{}, {}}, {{}, {}}}, {
    DisplayFunction -> Identity, PlotRangePadding -> {{
        Scaled[0.02], 
        Scaled[0.02]}, {
        Scaled[0.02], 
        Scaled[0.05]}}, AxesOrigin -> {0, 0}, 
     PlotRange -> {{-0.6065328016880618, 0.6065328016880615}, {
       0, 173.90502658893655`}}, PlotRangeClipping -> True, ImagePadding -> 
     All, DisplayFunction -> Identity, AspectRatio -> 
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
     Method -> {"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
           (Identity[#]& )[
            Part[#, 1]], 
           (Identity[#]& )[
            Part[#, 2]]}& ), "CopiedValueFunction" -> ({
           (Identity[#]& )[
            Part[#, 1]], 
           (Identity[#]& )[
            Part[#, 2]]}& )}}, PlotLabel -> 
     FormBox["\"\[Beta]=1, P=1/8\"", TraditionalForm], 
     PlotRange -> {{-0.6065328016880618, 0.6065328016880615}, {
       0, 173.90502658893655`}}, PlotRangeClipping -> True, 
     PlotRangePadding -> {{
        Scaled[0.02], 
        Scaled[0.02]}, {
        Scaled[0.02], 
        Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}],FormBox[
    FormBox[
     TemplateBox[{
      "\"\\!\\(\\*SubscriptBox[\\(S\\), \\(0, 0\\)]\\)(x,t)\"", 
       "\"\\!\\(\\*SubscriptBox[\\(S\\), \\(1, 1\\)]\\)(x,t)\""}, 
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
                    PointSize[0.2], 
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.2], 
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
                    PointSize[0.2], 
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.2], 
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
                   RowBox[{"PointSize", "[", "0.011111111111111112`", "]"}], 
                   ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> 
                    RGBColor[
                    0.24561133333333335`, 0.3378526666666667, 
                    0.4731986666666667], FrameTicks -> None, PlotRangePadding -> 
                    None, ImageSize -> 
                    Dynamic[{
                    Automatic, 1.35 CurrentValue["FontCapHeight"]/
                    AbsoluteCurrentValue[Magnification]}]], 
                    "RGBColor[0.368417, 0.506779, 0.709798]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.368417, 0.506779, 0.709798]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.368417, 0.506779, 0.709798], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
               ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", "0.011111111111111112`", "]"}], 
                   ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> 
                    RGBColor[
                    0.587148, 0.40736066666666665`, 0.09470066666666668], 
                    FrameTicks -> None, PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 1.35 CurrentValue["FontCapHeight"]/
                    AbsoluteCurrentValue[Magnification]}]], 
                    "RGBColor[0.880722, 0.611041, 0.142051]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.880722, 0.611041, 0.142051]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.880722, 0.611041, 0.142051], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}]}],
              "}"}], ",", 
           RowBox[{"{", 
             RowBox[{#, ",", #2}], "}"}], ",", 
           RowBox[{"LegendMarkers", "\[Rule]", 
             RowBox[{"{", 
               RowBox[{
                 RowBox[{"{", 
                   RowBox[{"False", ",", "Automatic"}], "}"}], ",", 
                 RowBox[{"{", 
                   RowBox[{"False", ",", "Automatic"}], "}"}]}], "}"}]}], ",", 
           RowBox[{"Joined", "\[Rule]", 
             RowBox[{"{", 
               RowBox[{"True", ",", "True"}], "}"}]}], ",", 
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
         RowBox[{#2, ",", "Above"}], "]"}]}], "]"}]& )]], "Output",ExpressionU\
UID->"b24f65f6-a96a-4bba-adb2-af354f2b4188"]
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
        SubscriptBox["S00", 
         RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], ",", 
        SubscriptBox["S11", 
         RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], "}"}], 
      ",", 
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
           "\"\<\!\(\*SubscriptBox[\(S\), \(1, 1\)]\)(x,t)\>\""}], "}"}], ",",
          "Above"}], "]"}]}], ",", 
      RowBox[{"PlotLabel", "\[Rule]", 
       RowBox[{"\"\<\[Beta]=\>\"", "<>", 
        RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
        RowBox[{"ToString", "[", 
         RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}]}], "]"}]}], 
   "]"}]}]], "Input",ExpressionUUID->"4c648c49-36b0-40fd-8f62-93014ca38ea0"],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{}, {{{}, {}, {
        Hue[0.67, 0.6, 0.6], 
        Directive[
         PointSize[0.011111111111111112`], 
         RGBColor[0.368417, 0.506779, 0.709798], 
         AbsoluteThickness[1.6]], 
        LineBox[CompressedData["
1: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
         "]]}, {
        Hue[0.9060679774997897, 0.6, 0.6], 
        Directive[
         PointSize[0.011111111111111112`], 
         RGBColor[0.880722, 0.611041, 0.142051], 
         AbsoluteThickness[1.6]], 
        LineBox[CompressedData["
1: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
         "]]}}}, {}, {}, {{}, {}}, {{}, {}}}, {
    DisplayFunction -> Identity, PlotRangePadding -> {{
        Scaled[0.02], 
        Scaled[0.02]}, {
        Scaled[0.02], 
        Scaled[0.05]}}, AxesOrigin -> {0, 0}, 
     PlotRange -> {{-1.6790329623883873`, 1.6790329623883873`}, {
       0, 1.7785080183116904`}}, PlotRangeClipping -> True, ImagePadding -> 
     All, DisplayFunction -> Identity, AspectRatio -> 
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
     Method -> {"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
           (Identity[#]& )[
            Part[#, 1]], 
           (Identity[#]& )[
            Part[#, 2]]}& ), "CopiedValueFunction" -> ({
           (Identity[#]& )[
            Part[#, 1]], 
           (Identity[#]& )[
            Part[#, 2]]}& )}}, PlotLabel -> 
     FormBox["\"\[Beta]=1, P=1\"", TraditionalForm], 
     PlotRange -> {{-1.6790329623883873`, 1.6790329623883873`}, {
       0, 1.7785080183116904`}}, PlotRangeClipping -> True, 
     PlotRangePadding -> {{
        Scaled[0.02], 
        Scaled[0.02]}, {
        Scaled[0.02], 
        Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}],FormBox[
    FormBox[
     TemplateBox[{
      "\"\\!\\(\\*SubscriptBox[\\(S\\), \\(0, 0\\)]\\)(x,t)\"", 
       "\"\\!\\(\\*SubscriptBox[\\(S\\), \\(1, 1\\)]\\)(x,t)\""}, 
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
                    PointSize[0.2], 
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.2], 
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
                    PointSize[0.2], 
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.2], 
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
                   RowBox[{"PointSize", "[", "0.011111111111111112`", "]"}], 
                   ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> 
                    RGBColor[
                    0.24561133333333335`, 0.3378526666666667, 
                    0.4731986666666667], FrameTicks -> None, PlotRangePadding -> 
                    None, ImageSize -> 
                    Dynamic[{
                    Automatic, 1.35 CurrentValue["FontCapHeight"]/
                    AbsoluteCurrentValue[Magnification]}]], 
                    "RGBColor[0.368417, 0.506779, 0.709798]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.368417, 0.506779, 0.709798]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.368417, 0.506779, 0.709798], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
               ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", "0.011111111111111112`", "]"}], 
                   ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> 
                    RGBColor[
                    0.587148, 0.40736066666666665`, 0.09470066666666668], 
                    FrameTicks -> None, PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 1.35 CurrentValue["FontCapHeight"]/
                    AbsoluteCurrentValue[Magnification]}]], 
                    "RGBColor[0.880722, 0.611041, 0.142051]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.880722, 0.611041, 0.142051]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.880722, 0.611041, 0.142051], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}]}],
              "}"}], ",", 
           RowBox[{"{", 
             RowBox[{#, ",", #2}], "}"}], ",", 
           RowBox[{"LegendMarkers", "\[Rule]", 
             RowBox[{"{", 
               RowBox[{
                 RowBox[{"{", 
                   RowBox[{"False", ",", "Automatic"}], "}"}], ",", 
                 RowBox[{"{", 
                   RowBox[{"False", ",", "Automatic"}], "}"}]}], "}"}]}], ",", 
           RowBox[{"Joined", "\[Rule]", 
             RowBox[{"{", 
               RowBox[{"True", ",", "True"}], "}"}]}], ",", 
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
         RowBox[{#2, ",", "Above"}], "]"}]}], "]"}]& )]], "Output",ExpressionU\
UID->"fe59f460-dc5c-4552-991d-31b7b56b82d4"]
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
       FractionBox["1", "10"]}]}], "}"}], ",", 
    RowBox[{"ListLinePlot", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        SubscriptBox["S00", 
         RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]], ",", 
        SubscriptBox["S11", 
         RowBox[{"\[Beta]", ",", "P", ",", "\[CapitalDelta]x"}]]}], "}"}], 
      ",", 
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
           "\"\<\!\(\*SubscriptBox[\(S\), \(1, 1\)]\)(x,t)\>\""}], "}"}], ",",
          "Above"}], "]"}]}], ",", 
      RowBox[{"PlotLabel", "\[Rule]", 
       RowBox[{"\"\<\[Beta]=\>\"", "<>", 
        RowBox[{"ToString", "[", "\[Beta]", "]"}], "<>", "\"\<, P=\>\"", "<>", 
        RowBox[{"ToString", "[", 
         RowBox[{"InputForm", "[", "P", "]"}], "]"}]}]}]}], "]"}]}], 
   "]"}]}]], "Input",ExpressionUUID->"6cc8bf07-f3a6-41ff-9642-b70b11c8b8f8"],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{}, {{{}, {}, {
        Hue[0.67, 0.6, 0.6], 
        Directive[
         PointSize[0.011111111111111112`], 
         RGBColor[0.368417, 0.506779, 0.709798], 
         AbsoluteThickness[1.6]], 
        LineBox[CompressedData["
1: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
FOz6t0/9D9y2r9o=
         "]]}, {
        Hue[0.9060679774997897, 0.6, 0.6], 
        Directive[
         PointSize[0.011111111111111112`], 
         RGBColor[0.880722, 0.611041, 0.142051], 
         AbsoluteThickness[1.6]], 
        LineBox[CompressedData["
1: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
6Szdp6Dw7z71P7COsAI=
         "]]}}}, {}, {}, {{}, {}}, {{}, {}}}, {
    DisplayFunction -> Identity, PlotRangePadding -> {{
        Scaled[0.02], 
        Scaled[0.02]}, {
        Scaled[0.02], 
        Scaled[0.05]}}, AxesOrigin -> {0, 0}, 
     PlotRange -> {{-2.752915172657515, 2.752915172657515}, {
       0, 1.5524303369327086`}}, PlotRangeClipping -> True, ImagePadding -> 
     All, DisplayFunction -> Identity, AspectRatio -> 
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
     Method -> {"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
           (Identity[#]& )[
            Part[#, 1]], 
           (Identity[#]& )[
            Part[#, 2]]}& ), "CopiedValueFunction" -> ({
           (Identity[#]& )[
            Part[#, 1]], 
           (Identity[#]& )[
            Part[#, 2]]}& )}}, PlotLabel -> 
     FormBox["\"\[Beta]=1, P=4\"", TraditionalForm], 
     PlotRange -> {{-2.752915172657515, 2.752915172657515}, {
       0, 1.5524303369327086`}}, PlotRangeClipping -> True, 
     PlotRangePadding -> {{
        Scaled[0.02], 
        Scaled[0.02]}, {
        Scaled[0.02], 
        Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}],FormBox[
    FormBox[
     TemplateBox[{
      "\"\\!\\(\\*SubscriptBox[\\(S\\), \\(0, 0\\)]\\)(x,t)\"", 
       "\"\\!\\(\\*SubscriptBox[\\(S\\), \\(1, 1\\)]\\)(x,t)\""}, 
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
                    PointSize[0.2], 
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.2], 
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
                    PointSize[0.2], 
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.2], 
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
                   RowBox[{"PointSize", "[", "0.011111111111111112`", "]"}], 
                   ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> 
                    RGBColor[
                    0.24561133333333335`, 0.3378526666666667, 
                    0.4731986666666667], FrameTicks -> None, PlotRangePadding -> 
                    None, ImageSize -> 
                    Dynamic[{
                    Automatic, 1.35 CurrentValue["FontCapHeight"]/
                    AbsoluteCurrentValue[Magnification]}]], 
                    "RGBColor[0.368417, 0.506779, 0.709798]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.368417, 0.506779, 0.709798]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.368417, 0.506779, 0.709798], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
               ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", "0.011111111111111112`", "]"}], 
                   ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> 
                    RGBColor[
                    0.587148, 0.40736066666666665`, 0.09470066666666668], 
                    FrameTicks -> None, PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 1.35 CurrentValue["FontCapHeight"]/
                    AbsoluteCurrentValue[Magnification]}]], 
                    "RGBColor[0.880722, 0.611041, 0.142051]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.880722, 0.611041, 0.142051]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.880722, 0.611041, 0.142051], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}]}],
              "}"}], ",", 
           RowBox[{"{", 
             RowBox[{#, ",", #2}], "}"}], ",", 
           RowBox[{"LegendMarkers", "\[Rule]", 
             RowBox[{"{", 
               RowBox[{
                 RowBox[{"{", 
                   RowBox[{"False", ",", "Automatic"}], "}"}], ",", 
                 RowBox[{"{", 
                   RowBox[{"False", ",", "Automatic"}], "}"}]}], "}"}]}], ",", 
           RowBox[{"Joined", "\[Rule]", 
             RowBox[{"{", 
               RowBox[{"True", ",", "True"}], "}"}]}], ",", 
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
         RowBox[{#2, ",", "Above"}], "]"}]}], "]"}]& )]], "Output",ExpressionU\
UID->"38ba066f-8ba9-45de-aed9-76af608f10fe"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Define domain-wall n(v)", "Subsection",ExpressionUUID->"010e8cdd-5ac1-4c13-9a1d-21de86172a2c"],

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
   SubscriptBox["P", "R"], "=", "2"}], ";"}]}], "Input",ExpressionUUID->\
"ed483ced-de03-421d-8096-a479cfb3894d"],

Cell[BoxData[
 RowBox[{
  RowBox[{"nmodel", "[", 
   RowBox[{"\[CapitalDelta]x_", ",", "numpoints_", ",", "\[Phi]_"}], "]"}], ":=", 
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
           RowBox[{"numpoints", "-", "1"}], "2"]}], "]"}]}]}], ",", "k"}], 
     "}"}], ",", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"\[Phi]", "<", 
       RowBox[{
       "vlist", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}], ",", 
      RowBox[{"Exp", "[", 
       RowBox[{"-", 
        SubscriptBox["\[Epsilon]", 
         RowBox[{"TBA", ",", 
          SubscriptBox["\[Beta]", "L"], ",", 
          SubscriptBox["P", "L"], ",", "\[CapitalDelta]x"}]]}], "]"}], ",", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"vlist", "\[LeftDoubleBracket]", 
          RowBox[{"-", "1"}], "\[RightDoubleBracket]"}], "\[LessEqual]", 
         "\[Phi]"}], ",", 
        RowBox[{"Exp", "[", 
         RowBox[{"-", 
          SubscriptBox["\[Epsilon]", 
           RowBox[{"TBA", ",", 
            SubscriptBox["\[Beta]", "R"], ",", 
            SubscriptBox["P", "R"], ",", "\[CapitalDelta]x"}]]}], "]"}], ",", 
        RowBox[{
         RowBox[{"k", "=", 
          RowBox[{
           RowBox[{"First", "[", 
            RowBox[{"FirstPosition", "[", 
             RowBox[{"vlist", ",", 
              RowBox[{"v_", "/;", 
               RowBox[{"v", ">", "\[Phi]"}]}]}], "]"}], "]"}], "-", "1"}]}], 
         ";", 
         RowBox[{"Exp", "[", 
          RowBox[{"-", 
           RowBox[{"Join", "[", 
            RowBox[{
             RowBox[{
              SubscriptBox["\[Epsilon]", 
               RowBox[{"TBA", ",", 
                SubscriptBox["\[Beta]", "R"], ",", 
                SubscriptBox["P", "R"], ",", "\[CapitalDelta]x"}]], 
              "\[LeftDoubleBracket]", 
              RowBox[{"1", ";;", "k"}], "\[RightDoubleBracket]"}], ",", 
             RowBox[{
              SubscriptBox["\[Epsilon]", 
               RowBox[{"TBA", ",", 
                SubscriptBox["\[Beta]", "L"], ",", 
                SubscriptBox["P", "L"], ",", "\[CapitalDelta]x"}]], 
              "\[LeftDoubleBracket]", 
              RowBox[{
               RowBox[{"k", "+", "1"}], ";;"}], "\[RightDoubleBracket]"}]}], 
            "]"}]}], "]"}]}]}], "]"}]}], "]"}]}], "]"}]}]], "Input",Expression\
UUID->"b61ecb4f-3237-4d3d-896c-38d95fe01b86"],

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
      RowBox[{"\[Phi]", "=", 
       FractionBox["3", "2"]}]}], "}"}], ",", 
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
               RowBox[{"nmodel", "[", 
                RowBox[{"\[CapitalDelta]x", ",", "numpoints", ",", "\[Phi]"}],
                 "]"}]}], "}"}], "]"}], ",", 
            RowBox[{"Transpose", "[", 
             RowBox[{"{", 
              RowBox[{"vlist", ",", 
               RowBox[{"Exp", "[", 
                RowBox[{"-", 
                 SubscriptBox["\[Epsilon]", 
                  RowBox[{"TBA", ",", 
                   SubscriptBox["\[Beta]", "L"], ",", 
                   SubscriptBox["P", "L"], ",", "\[CapitalDelta]x"}]]}], 
                "]"}]}], "}"}], "]"}], ",", 
            RowBox[{"Transpose", "[", 
             RowBox[{"{", 
              RowBox[{"vlist", ",", 
               RowBox[{"Exp", "[", 
                RowBox[{"-", 
                 SubscriptBox["\[Epsilon]", 
                  RowBox[{"TBA", ",", 
                   SubscriptBox["\[Beta]", "R"], ",", 
                   SubscriptBox["P", "R"], ",", "\[CapitalDelta]x"}]]}], 
                "]"}]}], "}"}], "]"}]}], "}"}], ",", 
          RowBox[{"AxesLabel", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{"\"\<v\>\"", ",", "\"\<n(v)\>\""}], "}"}]}], ",", 
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
               RowBox[{"\[Phi]", ",", "1"}], "}"}]}], "}"}], "]"}]}], "}"}], 
         "]"}]}], "]"}]}], "]"}]}], "]"}]}]], "Input",ExpressionUUID->\
"dadb3d9b-5abf-44e7-b3d4-f40fac550110"],

Cell[BoxData[
 GraphicsBox[{{{}, {{}, {}, 
     {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      0.011111111111111112`], AbsoluteThickness[1.6], LineBox[CompressedData["
1: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

       "]]}, 
     {RGBColor[0.880722, 0.611041, 0.142051], PointSize[
      0.011111111111111112`], AbsoluteThickness[1.6], Dashing[{Small, Small}],
       LineBox[CompressedData["
1:eJxVlg1MlVUYxy8giBcUkG8uBMiHBBktSUnhnkdLlKLlqBwpsfhcxZZARUBS
GomDNi5hQhADikYkyYd8BuX7ALkhSqQDdQ5SkiQFnCKMj0kU3v9p42x3d+/e
9/2d857zPP//3z3mYHi8oUqlKvzvt/zfd2F5uPAX2b576vrSgxMeDRd29/Vy
Gz6ZG6x6NFy4aq5UM7D76+CS4uXhzPklphcHy2uCNz8azrzTdSnGr74jWM/T
sPVBtUFo2nnwNBxl9q5ucP4aeBquru0fORF4Bzwn1kXtmAnaNg+eE4dHtKV6
mphq9TxH/sq2KW3qOzutnufIx4dVsU+7eWn1PEe+Gm9xfuzIZq2e58CWLpp5
94EdWj3PgU29oxML3faCZ8+ds4Ef625EgmfP7RerQjIK3wbPnh9ub1osTkoF
z46zy/L6ZtOzwLPjDe0JVtfb88GzZYfOos/7k0vBs+XJiIBcuvs9eLZ8yT02
tHyiETwbXlCVtRa8w+DZsK4/+XW/s73gWbORz28pScWD4FlzmX98bYt2BDxr
bt/mnZkqxsFbz2EeVh+eC5sBbz2XfJNpcihdJfQ8K043eu3snS1rhJ5nxf9s
KCpxsLcWep4VR7ammqiLnYWeZ8m+qpqY6qe8hJ5nyZOVu150tfTHfQs+ui+t
45mjW8BfxzcXP3vwwIvAW8dPbg2w0YyF4P21rH6sODTLYi/mN+e6L7OdGnbt
A8+M/0rvDX05Jwo8NWs8rm2taogDT80+yecO7PwpEbw1PKHJaynZnwKeKecM
vJEwaZQG3mq2j4hcqDX/BDwTTtxtrBofyALPhOPmx/pfWp0DnjHfju5raQjQ
gbeKgzLPRNsHHgfPiOcMU2dzY4vAM+ThN/M82lxLwTNk77iF7ObmCvAMOMN8
pCepohI8FXesKrxyvbcK95eULJeP6qs3nQR/Ufn0QGtNjnIKvIeK+tStqaH2
ery/oLz/RxBv+vY05p9TJpvrtmfomsCbVU4XGLUlH2oBb0Z54faeuZsxbeBN
K9OXjjlMBLWDN6U8HhR+xdL4Z/DuKSHHSj33t/yC+3cVw/d8hiLDFPDHlT81
jZryaAbvb8VCM/rWVbNOvD+qjKieK0it7MT8I8r0r42lr2zswv0hZalTnXuk
sAv8y0pmZ0XW8/e6wPtdcbzwRPLagG7M1628etk5/IPobvB+UFoi/E48m/b/
tZDXeF6E43nwhBN4mE/I+bAeIdeD9YqV6x0V8nvwvUJ+L/ZD3MB+YL+E3C/s
p1i5n1PCG/uN8xDyPHBeQp4XzlPI88R5C3neqAeRgnpAvQhZL6gnIesJ9SYO
o95Qj3RmRT0akKxX1DN5op5R7yTrHf1AM+gH9Atp0S/oJ5L9hH4j2W/oR0pA
P6JfSfYr+pmy0M/od7qPfocekD/0AHpBdtAL6AlJPYHekNQb6BGZQI+gVxQA
vYKe0Rj0DHpHh6F30ENaqYeWJPUSekpST6G3NA29hR6T1GPoNUm9hp6T1HPo
PfVA7+EHJP0AfkHzG/V+AT8h6SfwG7oPv4EfUQ/8CH5Fc/Ar+Bl5w8/gdyT9
Dn5I+fBD+CXdgl/CT0n6KfyWpN/Cj0n6MfyapF/Dz2kCfg6/p2r4PfIAyTyA
vEAyLyBPkMwTyBsk8wbyCMk8grxCMq8gz5A38gzyDv2IvIM8RDIPIS+RzEvI
UyTz1L/7jwmI
       "]]}, 
     {RGBColor[0.560181, 0.691569, 0.194885], PointSize[
      0.011111111111111112`], AbsoluteThickness[1.6], Dashing[{Small, Small}],
       LineBox[CompressedData["
1:eJxVlgtQVFUYx5eVV4iyy0NYFlJGmpQZ5GkuhpxvtGRI0KXRwtExhlhEHBN1
STI1I4WQJkfxkYLgoOCjxswUUtH7hYikoCDy2DFIbVNLJEVEdFQKzt8mzszO
zp177++ce873/f9/v6Sl75rUKpVq+7+/gf/6uoHhy32Fi446FGuiUgaHL3+o
iV4zevmYKNXg8OXbrxf+mOMVHLVr58Dw4ZDWR06qABEVNjh8eEvoG7+92hoX
JXl6Hq3K3F48dT54ev5Wc7U3ITMNPD0fv5n6dciGTPC82Tdu3+kNH2eD580V
Gcmum+duBU/HN+3Xelsnl4Cn4+oi39iu146Ap2PH6IuB02IqwfPinfFbKkxr
a8Hz4jbbS8b7j6+C58lv1q46VXPmBniePDrThRKO3APPk+ff2TN53Fd94I3i
kw469nexFZI3ivd09105GaoRkufB6brchSkWnZA8D26c1BGcl+gvJM+Dsxz4
fHJlkJA8d/ZSJ6QWpBrAc+egkPI5LblTwXPjgtI+92X1M8Bz40tbM1MmbJ0N
nhtXdRZ5TNIsAM+Vg2ou9BgOmcBz5ccL4g6Nr/sIPC0n/aUfn7AtAzwt69pz
6/Y2rgFPy9Fj2uM9YteDp+F85yX9kYY88DQ8d9ZD+1VPNuO+Cwc9r2g++MEO
8EfyKsVoertzN3gjOd3d8KnztRK8P4LLLev8p5n2Y35nXpceWVm17TvwhvO8
wsXqA2E/gOfEIX87Lp2+8Bh4TrxpQntGfHsFeK+w0floeXjeKfAc+aL9n8M6
kxXwHHiEU12g9fDP4NnzirLh1vxjZ8Gz58jLl+xyTp8Dz47Xmkyh71SfB8+W
Z/ktm+1Z/Qt4wzjA9/0H1p8ugqfm2BdTnVKK68FT84mqa90vzJfBs2HjlfwS
S0EDeCqe5bU6zHFFI+73K/U5WQV54gr4z5Xqwk1GN5sm8J4pvbcmuZormvD+
U2WsqS2lOOkq5u9TJtY4JReqm8F7rGgd9x7/fEczeI+UmOKV59L9WsDrUX7P
yOnYvKcFvG5l/RmTv9ajFbz7SsDzkxE+n7XifpeS25Nuvt7RCv5dJcZvf1Zu
eBt4d5TdPeNSaV0b3rcqNXOWcEBVG+a/oezqfBKe9vTl/V8V44U4vc94C/gt
SsPtiOC5My3gNSiLtW2pE9MsmO+ssqk/rElZbQHvoFJbFJOlzv7vWlThGs+L
b/A8eCIDPMwn6jEf1iMMWA/WKw4MWa9VNON78L2iDN+L/RCx2A/sl1iO/cJ+
Cv8h+9ktirDfOA9Rg/PAeYmZOC+cp9DgPHHewh3njXoQM1APqBfRiHpBPYlS
1BPqTTSh3lCP9N6QerQhA+oV9Uw7Uc+od1Kj3tEPlIh+QL+QGf2CfqIv0E/o
NzqMfkM/0tNS2Y/oVxqDfkU/U6CD7Gf0O4Wj36EHdAJ6AL2gE11SL6AnVAI9
gd5QL/QGekT90CPoFX0JvYKekQ/0DHpH16B30EPSGv+vhxrSj5B6CT0lK/QU
eks2HVJvoccUcVfqMfSayhKlXkPP6eE5qefQe7p+T+o9/IAM+dIP4Be0aJ/0
C/gJzYafwG/IGX4DP6It8CP4FW2EX8HPyBF+Br+j3gfS7+CHZAc/hF9S5y3p
l/BTMn8i/RR+S2/Bb+HH9GyY9GP4Nc2DX8PPqXS69HP4PbnB75EHKBp5AHmB
oswyLyBP0PfIE8gbpP5D5g3kEXqZR5BXaEr/ysG8gjxDU4JlnkHeoW0tMu8g
D1E28hDyEo0dKfMS8hRVFsg89Q8oNQ9l
       "]]}}, {}, {}, {{}, {}}, {{}, {}}}, 
   {Dashing[{Small, Small}], 
    LineBox[NCache[{{Rational[3, 2], 0}, {Rational[3, 2], 1}}, {{1.5, 0}, {
       1.5, 1}}]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"v\"", TraditionalForm], 
    FormBox["\"n(v)\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
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
  PlotRange->{{-7.45, 7.45}, {0, 0.3988043091144218}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"ffff3329-ebde-\
4f54-ae69-1ccf9f4e20f2"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Derived quantities based on domain-wall n(v)", "Subsection",ExpressionUUID->"46ba174b-70d9-4bee-89d5-7a5b5d5fea87"],

Cell["Perform sweeps over \[Phi]", "Text",ExpressionUUID->"aabd5506-5222-4436-973f-bc499c4c88c5"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   SubscriptBox["\[Phi]v", "list"], "=", 
   RowBox[{"Range", "[", 
    RowBox[{
     RowBox[{"-", "8"}], ",", "8", ",", 
     FractionBox["1", "4"]}], "]"}]}], ";"}]], "Input",ExpressionUUID->\
"5f0bfd56-d494-444d-b0c2-29bcb68542f0"],

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
          RowBox[{"nmodel", "[", 
           RowBox[{"\[CapitalDelta]x", ",", "numpoints", ",", "\[Phi]"}], 
           "]"}], ",", 
          RowBox[{"ConstantArray", "[", 
           RowBox[{"1", ",", "numpoints"}], "]"}]}], "]"}]}], ",", 
       RowBox[{"{", 
        RowBox[{"\[Phi]", ",", 
         SubscriptBox["\[Phi]v", "list"]}], "}"}]}], "]"}]}], "]"}], 
   ";"}]}]], "Input",ExpressionUUID->"38c69884-e07c-4431-bd24-50f83fdfcad0"],

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
         "]"}]}], "]"}]}], "]"}]}], "]"}]}]], "Input",ExpressionUUID->\
"634f7056-0e54-49a6-aef1-5e539c100c2b"],

Cell[BoxData[
 GraphicsBox[{{{}, {{}, {}, 
     {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      0.011111111111111112`], AbsoluteThickness[1.6], LineBox[CompressedData["
1:eJw91gs0VHkcB/DxmrwaDGPMMPIY4zEzSJ3SY91/sylqV3pspS3KSbVaq1g9
SSWbWmWVdJKzR1lipedJqXT/oS2bRCIVkZCSyPuRbOX32/85c+bcc+d+7szc
3//3/VkHhi4KUudwOMmfX1/eH5R+WRJ6sS23OFfpRtZ9XRKaFCiRcJ85Ec7X
JaHmbIAG10xJUk58WRb0epSirNhZQSZ9XRY0figu19dCQcY8c/rU09S9oEwO
njktLXsR7p8gB8+cJrXp+uycJwdPTOePytW9tOTgialiaoWb9y0n8ET0yki3
Y2mEE3giGm9aknxKjt9PRPMM/+m/Vu8Inhm9UHL0cF+iI3hmNF1P7OChcgRP
SONK9dNDOx3AE1KHhB1O61MdwBPS7Mjbvh89HcAzpbyR8kVq7fbgmdJA4xSF
KtEePAHNLxGmxLjZgyegqcmb9PaWy8AT0OlvBac6g2XgmdCbC/yXbFOTgWdC
9ze/3XX1qB14xvSWxipdlbUdeMbUfnRD5ulsKXjG1OTdka2rFFLw+LQyf3l+
T5YteHwqHp5T0mFpC54R1Xyd87rpkA14RjQzf+PF2F5r8IxorfJwTe4P1uAZ
0vtxjHr4OSvwDKlW7bPhSRwrOG9AU5f1FHoftwSfR7ckhIhzbCXg8eiRir/r
ArLM4frxVK/Uo/Cpgxjur089BsVuo1lm4OnR5tmMQ7dCCJ4u9coQdTy+JgBP
l/a7Fyzd7WsCng71XCK6sbSfD542PUA2y4QXjMAbR60SKi7eizQEj0tnMXn1
IQU88Lj0Bhs0fvisPnhaNP1AnNM393TB06RFfs/mevB0wNOgVcM2ZfOixoGn
Tvd+aJwlN+aCp061RL2uyx5ogqdGO7pmek3I1gCPQ7s2N9qVpavD+VF2d8+6
3+h1NfBH2PPubSMRbRzwPrI/la3JODmJA9cPsQExyllSm1Fm7P4D7IRUq+0N
Gp+YMa+fnexM1nF1Rpgxr5eVvtSoTnH+yIx5PWzQiU952mHDzJjXxQ5oedpa
VAyB18nWn9XdOOI9BOffs1urinIVzwfBb2MTfSPDdsUMgtfKrl8clyZSDcL1
TazroXb3raaDcP+XbDEz4rGWg+dr2TuFg/7cz8djfjU7I8Na1CRAr5wt2NiY
/EGF9ytil4eG1KTHoZfNPmpp1x3/5v9jpvq7tjKt9UP4eUb4vH3Dz9xh9Jiz
Z6btiC7F31vN2IUeDIyhH/H7MOuK+tRi3+H/9ZIxDQj/UBuA/28TM5+9eeHJ
cXwerUyljkLqV6wGz6+NWV7cUnHcB5/ve2ZJ3/1falgtqI9Opi5zsbxqDtZT
F3N4+nYZL3Q8eD3M6bj3z5s1DeH59zKFTYkFMd8agd/PSHWsNtvs5IM3wLSH
VCYeuGyM9cDQ7lecPR0mWC9MVuT94EOuplhPTGMgSXu7RYj1xhyd0hDGKzTD
eiSiCG5GlaEY65XcrXy3+vIac6xnMvuKO/fJJQusdxLJC29doG6J+4HIavzP
KX0m4H4himp1P5952C+0iCoqaNenN1a434ilf3bI9lhr3I+k6qH2XHcLG9yv
pOZcUWZtLvYnbbIv8fJMl+nYz3RIQPUGS4vbttgPiMpXnJSrkmK/IPHl+ZZc
FvuhHvHl165cMQX7pz75o4nv05Zlh/2IVEbneasJsT/zSJ3co/r1bhn2M7LD
dWHI2xbs1wZkGltttcgb+78hcctQctdm2WO/JAbN8z1Xa2J+GBH679Uze1Zh
vhiR+uNZsSOXHbAfk6lJj7o1tDGf+CTsEl9M/TC/+CT9zoq05dmO2O/JfK9Y
aWefI+YBSRbcPJ+hwnw0JufjT9kdi3fCPCGtKQPZTx47Yd6Q0L3S4RhzzN/P
fXXl/tvnVmM+C8iUms7K4L/kmGckh7s2rKQF89iUNBYbbHtmr8A8JPWlFbFn
1yswL8nC8KWy7zMVmKekV82k/d4rnAeEpL8+IkFupcQ8JnbdBaPRP+I8YUbu
TjTbVH5MiXlOTrbmpskeKjHvSfSSIJ3fxznjPEDau8u/0WaccV4g6Vcadv8Z
4YzzBImxWbk0LMcZPHMy0Tu4xbLBGecREtUyyvcQuOC8QmxOZHX0znbBeYZs
arHtnx7rgvMOyXhg2Txtnwt4EjLj4IDk6jRXnJeIeHj1ry9eKMGTkN78uuCD
bpPJf2Nu8gU=
       "]]}, 
     {RGBColor[0.880722, 0.611041, 0.142051], PointSize[
      0.011111111111111112`], AbsoluteThickness[1.6], Dashing[{Small, Small}],
       LineBox[CompressedData["
1:eJxVlgtQVFUYx/e9mxHy3BVhfaTWgE1qjTKM0vlsdMOQaqzMMYeQpJqpKFMY
wGzEJEt6KAK+0hwhiEDMYHAYJ+/nAONAlKLFRvIIXFiWBXkIrLAslOx/m+HM
7Ozcuff+zrnnfN///18Y/8GmBIVMJsv97/fg/7f6B8PIDat7JrJzveit6WHk
q9HJBc/2aUg2PYx8XF6y2Bmto5MnHowQlsccibtxTUtPT48Qth2Mj9xVrSU3
L5i7lLpWx2kteMG8+aXja9fv04IXzIe3xiVlvaEFby7vL00xKISHN5epSjZV
YfTwgjjl8VXjnU4NeEFctEzjldbkWV8Q7y3pOLKzQgPeHE7fnryuJksD3hwe
XBrRlpioAc/Awb5bot/e4OEZ+LTV6V24yMMz8J7R7nmPudTg6Xnxml/Nt/9U
g6fnV/bV2a6cV4MXyDeb/NbVHFCDF8h/2CzOO1vV4AXyxInkZbOXe3gBXGzK
uBOh8vACeJVf5d+vmlXg+XN58Y2El4tU4PnzL9uyly5MU4Hnzyn2EmvxBhV4
ftzQUDu/1aACz48DlwRe/86iBM+Xax0WXeMFJXi+fLNekxOfqgTPl9+L0h5a
tFYJng+XrPymd0ijBM+Hq595M7agToH7szmvptLu/aUCfG/OL6ZZY88rwPPm
nHJ7+xNaBd5/hE1t9c5ElmN+Lx4+W5uUniwH72HurCtsWhIqB28Wv3DJeHH+
XzLwZrFfwuXO8E9l4D3EcvtuG4XJwNOxOUevDz85Jdw8LW8vPborxTwp3DwN
n9tW/XOc16Rw8zTc8frOGFOES7h5alabQldUxU4IN0/Fm57bb6rc6wRPyWGF
/eWbjo2Dp+CCFaHhrpIx8BSs+CotNo7vgyfn1t6NphdvOcCT8ViB0VxhHcX9
KekHybX80NQI+C5pTf5JnwshI+BNSHFRl+7ZaRjvj0ufT1o/bHr/Hua/L4mP
rlaY84fAc0idjWeyddZB8Eakc4aErpiVg+ANS6ey+hqiDw+ANyRdzrCqmgf6
wRuQ5v1Tamu5fRf370oV6z9u4/Y+8O1Si7Wm6h1FH3jd0vlbC+ZkRvbifYuU
/v2Ev5Rlx/ztUunC0LuZcjvuN0uagHdDkr7oAb9R2tx/PlUV1gPeDSnPtmLH
zQ4b5quSZLba0cwyG3hFUsujXRmOU/9fiyFc43nh6HY/D54oAw/zidcwH9Yj
nP7u9WC94uKM9VrEHnwPvlf8hO/Ffog27Af2S5Rhv7CfYvGM/RwS17DfOA/x
Nc4D5yXO4rxwnqID54nzFlE4b9SD+Az1gHoRO1AvqCexGvWEehMFqDfUI7lm
1KOcbqNeUc+kQz2j3ukY6h39QE+hH9Av5OkX9BNp0U/oN7Ki39CPlIt+RL/S
bvQr+pma0c/od5Kh36EH5AU9gF7QRugF9ITs0BPoDQ1Cb6BHFAU9gl6RR6+g
Z5QHPYPe0RnoHfSQfp+hhz70I/QSekqJ0FPoLd2C3kKP6Rr0GHpNeug19Jw8
eg69p0+g9/ADKocfwC+oGn4BP6En4SfwG7oAv4EfkQt+BL+iRvgV/Iyuw8/g
dxQNv4Mf0gL4IfySDsIv4af0LfwUfkt6+C38mEbgx/Br8vg1/JxS4efweyqG
3yMPUDryAPICRSIvIE/QAeQJ5A06iryBPEJbkEeQV8iCvII8Q33IM8g7NLXR
nXfcPCPlIg8hL9EV5CXkKWpDnvoXwMkhvw==
       "]]}, 
     {RGBColor[0.560181, 0.691569, 0.194885], PointSize[
      0.011111111111111112`], AbsoluteThickness[1.6], Dashing[{Small, Small}],
       LineBox[CompressedData["
1:eJxVlgtQVFUYx5ddXB6ywO6yLPsEZwLKJh5ipGjcT0BJzRTzAQ46aeFohMQI
aZpZlsUMQyMoioqhYyRqPrGpCet8SCI0YtYAZWKOsAkCsoCoPHJIuX8bPTM7
O3fuvb9z7jnf9///x63InJ+mVCgUOx/+Hv3XX3w0bPw2J60JLQzmlaPDxt94
PvfL1hA7K0aHjSP+mBI2ciCI9+x+NKy8sd6o+cgtiKNGh5VbRc3MNxVBLPMs
HJ9k7qk7EAiehVtPpvrsXBQInoWn58769RnXQPDMrM331ew7ZQfPzPb6LdnD
qXbwTDx79/GIE2o7eCbO83rfsOm4DTwTF/6u+3nBAht4AZzZlG41DljBC+Cp
e78OLHu4bpln5JLeiDlXJ1nBM3Lly/+YChst4Bm5w9DRWpJpAc+fB+dPDqlT
W8Dz52lFr669tscMnoGrhPvS4ufN4BnYJ+GV1058bwLPwK2lGe/WTzOB58fO
LbnVhTUB4Pnx7MuVB7fPCABPz1GOGE1KlRE8PS+LSHdfEW0ET88bN505G1Lm
D56OF+YFV9g0/uDpuDNfX1udYQBPy6q/PYIO1fiBp+XjuWG2HKMfeFoO21BX
6/mGHjxf1kTlZ362XweeL++vvbgq+YoW9314a+SXKfPGasH35qgfex8cfMkX
PG+eF33u9BXhjfc1rJ2V/UW0lwbze7HyqH7iT8ljwRvLH5xs6PE54gGeJ4/U
XP/unKs7eJ7cHd6gsmeowfPgyAm/3Wy+6QqeO6+zXZqizFGB58bK08lLqkxK
8NRcMFTQv6FJAZ6atf3W8qLFI0LmjeGV+h3DcVEPhMxz5W7txPra2GEh81S8
L3FEEbR+UMg8JbPvttCTzfeFzFNyyubwmbmr74HnwjMS3tqXb7kLnoJVh86f
L3Xewf0Rcaq0ZGZFSx/4D0ThevWJ1t5e8P4V09cW135o7sX7Q+KdhEkXPJf0
YP4B8dXH49u3pTrBuy+KTUffSxvfDd5dsTza6Rgw3QavXzjitGbzs13g9Ymh
7OFPB5M6wesR0b0+qnFFHbjfLZx+9uvpzlvgd4o1c6snjyy7BV670H2b4RXf
0o73HaI4y3nj6rp2zH9DqA/vmldmf3y/WdwcEz7pWGMb+E0iJnwrh5e0gXdZ
XFo+R7cjqw3zVYsXslTVqxe2gXdYDKf/1bUy8f9rqR/XeF6y4nnwpAbwMJ8U
ivmwHukO1oP1SkPlT67XIW3H9+B7JQ2+F/shPd4P7JfUjf3CfkpTn9rPPsk9
R95vnId0DeeB85IW4bxwnlIRzhPnLf2A80Y9SKtQD6gXKRb1gnqS2lFPqDfJ
jHpDPdLmp+rRhSri5XpFPdM91DPqnZai3tEP1Ih+QL9QgE7uF/QTvY5+Qr+R
Hf2GfqQ09CP6ldzQr+hnCkY/o9/pGPodekDF0APoBbldkPUCekK50BPoDZUf
kfUGekSD0CPoFe19UdYr6BlZoGfQO/oEegc9pJC6J/XQlwYiZb2EnlIs9BR6
SwXQW+gxuUCPodfkgF5Dz2ku9Bx6T9nQe/gBJcMP4BcUA7+An1Ac/AR+QwPw
G/gR/Qk/gl+RBX4FP6NK+Bn8jhLhd/BDugc/hF9SF/wSfkpn4afwW9oFv4Uf
Uzj8GH5Nj/0afk558HP4PX0Ov0ceoMXIA8gL5I28gDxBduQJ5A0i5A3kEbqN
PIK8QoS8gjxDLcgzyDu0GXlH5tloAvIQ8hKdQV5CnqI05Kn/AOBAN4c=
       "]]}}, {}, {}, {{}, {}}, {{}, {}}}, 
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
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox[
   "\"\[Phi]=1, \\!\\(\\*SubscriptBox[\\(\[Beta]\\), \\(L\\)]\\)=1, \
\\!\\(\\*SubscriptBox[\\(P\\), \\(L\\)]\\)=1/2, \\!\\(\\*SubscriptBox[\\(\
\[Beta]\\), \\(R\\)]\\)=1, \\!\\(\\*SubscriptBox[\\(P\\), \\(R\\)]\\)=2\"", 
    TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-10.785457084159322`, 20.19742458260767}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"ee5c1cc0-92d2-\
4013-b63f-30a541cf0f02"]
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
         "]"}]}], "]"}]}], "]"}]}], "]"}]}]], "Input",ExpressionUUID->\
"edcd2923-d480-4acc-bcce-d2bcff874a60"],

Cell[BoxData[
 GraphicsBox[{{{}, {{}, {}, 
     {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      0.011111111111111112`], AbsoluteThickness[1.6], LineBox[CompressedData["
1:eJw91glUzFsYAPAW2peZmqVpZrRnqpk25Nj6XxIRKVlevAg90xN61kPiebKd
OJZDOqIkTA9Zy5Li/4UKLfLQo4gS2SJJixl6j777v+d05sy58//df/d+9/s+
p7kJk38z0NPT2/f/34/PyoofQw5TtcZnZYKBMP/nkENyxZ9+5ZuVoPdzyEEd
k+awZKIPpO//MWTAVx1vnhzgDQN+DhmkVR0zr3T3hl5PCjmN3bWdVSr0pFDf
8EZwfasKPSkkHGnK/z5MhZ492E+4PcfmoxI9ewipVFv7ZCnRk4CBpEB3cZIS
PQkURos/LPvmhZ4ExGYPqqce90LPDgISHw9hIr3Qs4OWIvVZG60nemJwk4St
P53liZ4YTtZqZS1BnuiJIdEo0v1okwd6IugWfD92ZIMHeiK4urxYfEHugZ4Q
ops9Z6dfUKAnBH6j/jmL8Qr0hCB/mruxsLY/egKYOaTycqi6P3oCUFo32U//
6I6eLRiq12gWLnVHzxYUGSce8Vvd0LOF8VFbUkvUbujZwIawbfK+j13Rs4H5
ccU7IoNc0eNDeEMkM1rjgh4fptpr2rbou6DHh2mj4ufppjijx4PkjW8+F2U5
oceD2vKYdP+XjjhvDfNP7F3n6OKIvhVYWRl1TLnUDz0rYCRZ5hpHOT5vCU6+
/sL6TVJc3wLOJ6WCwzsJeubgKq+vuDPFDj0zSB5a1zq4TISeGYiTtRtWjBGi
ZwpDJ4TlW9bYomcC/zx/1vZklQ16xtDln3Ra68tHzwj2KnTzVvZYo2cEo7tN
P8eWW6LXFzIKVmhyS8zR6wPy7F83+rSYomcIgY3vw02ICXoGcCv+9tWyQiP0
DCCt663iRHRf9PQhibeu/oZzH/T04F5d61IXE0Oc72F3k7uv3poZoP+NrZpg
XB+j0EdPx3qMzlRro/Xw+a/szpFnj5RP7mF71+9i/cS/5PXlf2d7vU623u9K
5qM2HdvrfWErGSdpY7uW7fXa2fxVvnUuAi3b67Wxdvd943QTv6LXysZ1xh50
yOrG+Q9sYKB88E6TbvTfsRF7g2v2bOpC7zV7PKxoy0VhFz7fxLInb5gVXurE
9RvYwrjE6vQFnTj/hF2fZHFtvaoT/Rq2NL7kTElPB3rV7JqCfwtannfgejdY
QynfWVPdgd5xNtiZ4d2s4r4zn3PPtwXVcb9nIqMU+8d1cB7TRzTC1MmRW4/J
tKwUkCjufRh5ptfVkGzufRkvhWyZhY7ONzHXMhaO3aXm/l/GKczVzeZVF90P
JoEc8rdeze0Xc6wsKSnUmdtPJiZrM7/uxVe638ycA7cLlcCdBzP3btNm0RXu
vJhVspCxTQ++0fNkdrQGRsUJuPNmFuXE/r4lkIsHxqnG4UK3KRcvzCzVsoFr
P+rTeGJGlKzctbLNgMYb8+fw7uWVIi4eybnUA+09MVy8kkHbScKwGi6eyX7j
8JQ1SVy8kxLv4kXXZ5jR+0BKUz69D19tQe8LGe22RJ3VaEXvE5mr8T906B6P
3jfi9GG29+c4G3ofSWj9S4flowT0vpJr98P+MMoU0ftMhDWv6+K/SOh9J9HP
8iJK58poPiAH8k6u2DqzH80XpNTyocaSR/OTOUmaUnI476kjzTekavfE8dYH
aT6zJB+/5rnemehM8xWpm162t63dmeYz8n3fgsN6e1xoviMpj8celHnQ/Moj
yy/5Bw+47ErzJcmJ+rLYeCTNz3wyK0J4b9hNN5pvybrcaW4zRtH8zif6TJrD
o0J3mq/JtuZgD6kfrQ825It/7Yg12f1pvifbHTKVwTxaX2zJEN0zdVGigtYL
ciadt1bWqKD1hOy5BiHpY2j9EhAPl1ntsX970HpE+of63dIY0/onJLP/qn68
KZbWRyHxWbs9w5X1pPWODMnuF5MtpvVVRASbn+VKF9P6Kyalz18cOXHdi9ZT
MpXEBKmFtH6LybBda4+q59P6bke6V+waBBeUtF6Tm4n8h8mGtD+QEENtAHNz
Eu0fJCQ/5ZTn7nQV7QeIg2FLgO6FivYLpLgi/o6Z0pv2E6SAlz7u3VJv9KTk
umtxs/dlb9qPkIBPK3NOfeP6FZIR0dBeNNyH9jMkXzQ0Y8kOrt8hlkuHnpqT
6oOenHhJzmhU031pv0SWRERfLrtB309OXk56NCe/eSD8B7qQPI0=
       "]]}, 
     {RGBColor[0.880722, 0.611041, 0.142051], PointSize[
      0.011111111111111112`], AbsoluteThickness[1.6], Dashing[{Small, Small}],
       LineBox[CompressedData["
1:eJxVlgtQVFUYx/e9mxHy3BVhfaTWgE1qjTKM0vlsdMOQaqzMMYeQpJqpKFMY
wGzEJEt6KAK+0hwhiEDMYHAYJ+/nAONAlKLFRvIIXFiWBXkIrLAslOx/m+HM
7Ozcuff+zrnnfN///18Y/8GmBIVMJsv97/fg/7f6B8PIDat7JrJzveit6WHk
q9HJBc/2aUg2PYx8XF6y2Bmto5MnHowQlsccibtxTUtPT48Qth2Mj9xVrSU3
L5i7lLpWx2kteMG8+aXja9fv04IXzIe3xiVlvaEFby7vL00xKISHN5epSjZV
YfTwgjjl8VXjnU4NeEFctEzjldbkWV8Q7y3pOLKzQgPeHE7fnryuJksD3hwe
XBrRlpioAc/Awb5bot/e4OEZ+LTV6V24yMMz8J7R7nmPudTg6Xnxml/Nt/9U
g6fnV/bV2a6cV4MXyDeb/NbVHFCDF8h/2CzOO1vV4AXyxInkZbOXe3gBXGzK
uBOh8vACeJVf5d+vmlXg+XN58Y2El4tU4PnzL9uyly5MU4Hnzyn2EmvxBhV4
ftzQUDu/1aACz48DlwRe/86iBM+Xax0WXeMFJXi+fLNekxOfqgTPl9+L0h5a
tFYJng+XrPymd0ijBM+Hq595M7agToH7szmvptLu/aUCfG/OL6ZZY88rwPPm
nHJ7+xNaBd5/hE1t9c5ElmN+Lx4+W5uUniwH72HurCtsWhIqB28Wv3DJeHH+
XzLwZrFfwuXO8E9l4D3EcvtuG4XJwNOxOUevDz85Jdw8LW8vPborxTwp3DwN
n9tW/XOc16Rw8zTc8frOGFOES7h5alabQldUxU4IN0/Fm57bb6rc6wRPyWGF
/eWbjo2Dp+CCFaHhrpIx8BSs+CotNo7vgyfn1t6NphdvOcCT8ViB0VxhHcX9
KekHybX80NQI+C5pTf5JnwshI+BNSHFRl+7ZaRjvj0ufT1o/bHr/Hua/L4mP
rlaY84fAc0idjWeyddZB8Eakc4aErpiVg+ANS6ey+hqiDw+ANyRdzrCqmgf6
wRuQ5v1Tamu5fRf370oV6z9u4/Y+8O1Si7Wm6h1FH3jd0vlbC+ZkRvbifYuU
/v2Ev5Rlx/ztUunC0LuZcjvuN0uagHdDkr7oAb9R2tx/PlUV1gPeDSnPtmLH
zQ4b5quSZLba0cwyG3hFUsujXRmOU/9fiyFc43nh6HY/D54oAw/zidcwH9Yj
nP7u9WC94uKM9VrEHnwPvlf8hO/Ffog27Af2S5Rhv7CfYvGM/RwS17DfOA/x
Nc4D5yXO4rxwnqID54nzFlE4b9SD+Az1gHoRO1AvqCexGvWEehMFqDfUI7lm
1KOcbqNeUc+kQz2j3ukY6h39QE+hH9Av5OkX9BNp0U/oN7Ki39CPlIt+RL/S
bvQr+pma0c/od5Kh36EH5AU9gF7QRugF9ITs0BPoDQ1Cb6BHFAU9gl6RR6+g
Z5QHPYPe0RnoHfSQfp+hhz70I/QSekqJ0FPoLd2C3kKP6Rr0GHpNeug19Jw8
eg69p0+g9/ADKocfwC+oGn4BP6En4SfwG7oAv4EfkQt+BL+iRvgV/Iyuw8/g
dxQNv4Mf0gL4IfySDsIv4af0LfwUfkt6+C38mEbgx/Br8vg1/JxS4efweyqG
3yMPUDryAPICRSIvIE/QAeQJ5A06iryBPEJbkEeQV8iCvII8Q33IM8g7NLXR
nXfcPCPlIg8hL9EV5CXkKWpDnvoXwMkhvw==
       "]]}, 
     {RGBColor[0.560181, 0.691569, 0.194885], PointSize[
      0.011111111111111112`], AbsoluteThickness[1.6], Dashing[{Small, Small}],
       LineBox[CompressedData["
1:eJxVlgtQVFUYx5ddXB6ywO6yLPsEZwLKJh5ipGjcT0BJzRTzAQ46aeFohMQI
aZpZlsUMQyMoioqhYyRqPrGpCet8SCI0YtYAZWKOsAkCsoCoPHJIuX8bPTM7
O3fuvb9z7jnf9///x63InJ+mVCgUOx/+Hv3XX3w0bPw2J60JLQzmlaPDxt94
PvfL1hA7K0aHjSP+mBI2ciCI9+x+NKy8sd6o+cgtiKNGh5VbRc3MNxVBLPMs
HJ9k7qk7EAiehVtPpvrsXBQInoWn58769RnXQPDMrM331ew7ZQfPzPb6LdnD
qXbwTDx79/GIE2o7eCbO83rfsOm4DTwTF/6u+3nBAht4AZzZlG41DljBC+Cp
e78OLHu4bpln5JLeiDlXJ1nBM3Lly/+YChst4Bm5w9DRWpJpAc+fB+dPDqlT
W8Dz52lFr669tscMnoGrhPvS4ufN4BnYJ+GV1058bwLPwK2lGe/WTzOB58fO
LbnVhTUB4Pnx7MuVB7fPCABPz1GOGE1KlRE8PS+LSHdfEW0ET88bN505G1Lm
D56OF+YFV9g0/uDpuDNfX1udYQBPy6q/PYIO1fiBp+XjuWG2HKMfeFoO21BX
6/mGHjxf1kTlZ362XweeL++vvbgq+YoW9314a+SXKfPGasH35qgfex8cfMkX
PG+eF33u9BXhjfc1rJ2V/UW0lwbze7HyqH7iT8ljwRvLH5xs6PE54gGeJ4/U
XP/unKs7eJ7cHd6gsmeowfPgyAm/3Wy+6QqeO6+zXZqizFGB58bK08lLqkxK
8NRcMFTQv6FJAZ6atf3W8qLFI0LmjeGV+h3DcVEPhMxz5W7txPra2GEh81S8
L3FEEbR+UMg8JbPvttCTzfeFzFNyyubwmbmr74HnwjMS3tqXb7kLnoJVh86f
L3Xewf0Rcaq0ZGZFSx/4D0ThevWJ1t5e8P4V09cW135o7sX7Q+KdhEkXPJf0
YP4B8dXH49u3pTrBuy+KTUffSxvfDd5dsTza6Rgw3QavXzjitGbzs13g9Ymh
7OFPB5M6wesR0b0+qnFFHbjfLZx+9uvpzlvgd4o1c6snjyy7BV670H2b4RXf
0o73HaI4y3nj6rp2zH9DqA/vmldmf3y/WdwcEz7pWGMb+E0iJnwrh5e0gXdZ
XFo+R7cjqw3zVYsXslTVqxe2gXdYDKf/1bUy8f9rqR/XeF6y4nnwpAbwMJ8U
ivmwHukO1oP1SkPlT67XIW3H9+B7JQ2+F/shPd4P7JfUjf3CfkpTn9rPPsk9
R95vnId0DeeB85IW4bxwnlIRzhPnLf2A80Y9SKtQD6gXKRb1gnqS2lFPqDfJ
jHpDPdLmp+rRhSri5XpFPdM91DPqnZai3tEP1Ih+QL9QgE7uF/QTvY5+Qr+R
Hf2GfqQ09CP6ldzQr+hnCkY/o9/pGPodekDF0APoBbldkPUCekK50BPoDZUf
kfUGekSD0CPoFe19UdYr6BlZoGfQO/oEegc9pJC6J/XQlwYiZb2EnlIs9BR6
SwXQW+gxuUCPodfkgF5Dz2ku9Bx6T9nQe/gBJcMP4BcUA7+An1Ac/AR+QwPw
G/gR/Qk/gl+RBX4FP6NK+Bn8jhLhd/BDugc/hF9SF/wSfkpn4afwW9oFv4Uf
Uzj8GH5Nj/0afk558HP4PX0Ov0ceoMXIA8gL5I28gDxBduQJ5A0i5A3kEbqN
PIK8QoS8gjxDLcgzyDu0GXlH5tloAvIQ8hKdQV5CnqI05Kn/AOBAN4c=
       "]]}}, {}, {}, {{}, {}}, {{}, {}}}, 
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
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox[
   "\"\[Phi]=3, \\!\\(\\*SubscriptBox[\\(\[Beta]\\), \\(L\\)]\\)=1, \
\\!\\(\\*SubscriptBox[\\(P\\), \\(L\\)]\\)=1/2, \\!\\(\\*SubscriptBox[\\(\
\[Beta]\\), \\(R\\)]\\)=1, \\!\\(\\*SubscriptBox[\\(P\\), \\(R\\)]\\)=2\"", 
    TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-20.905096164045876`, 3.5735263594610696`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"3e820df3-eb6d-\
4efe-aab7-3c456c343479"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[{
 "Particle density ",
 Cell[BoxData[
  RowBox[{
   SubscriptBox["\[Rho]", "p"], "=", " ", 
   SuperscriptBox[
    RowBox[{"n", " ", "[", "1", "]"}], "dr"]}]],ExpressionUUID->
  "4e902d05-397a-4b4b-ac7c-e4180996aee9"]
}], "Subsubsection",ExpressionUUID->"c33fd817-ea70-4fd9-b116-5e2a90f43877"],

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
       SubscriptBox["\[Rho]p", "\[Phi]"], "=", 
       RowBox[{
        RowBox[{"nmodel", "[", 
         RowBox[{"\[CapitalDelta]x", ",", "numpoints", ",", "\[Phi]"}], "]"}], 
        SubscriptBox["onedr", "\[Phi]"]}]}], ",", 
      RowBox[{"{", 
       RowBox[{"\[Phi]", ",", 
        SubscriptBox["\[Phi]v", "list"]}], "}"}]}], "]"}]}], "]"}], 
  ";"}]], "Input",ExpressionUUID->"afbc8897-5912-4eec-ba1e-3ba8ca9e4a5b"],

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
   "]"}]}]], "Input",ExpressionUUID->"dae5a6ac-6f24-4a82-b968-34e96b39f0d8"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.011111111111111112`],
      AbsoluteThickness[1.6], LineBox[CompressedData["
1:eJw91gs0lFkcAHAqJPKaGTMMmyTrta2VQjW+K71GM7WrQoudRB49NlFbsjap
pDZqe8fWbi3C1q5KVNR3k5CMxnsmHcWMNjOnDImEsVvuf+85c+bMufP97v3u
4///T1+/1X/DBC0trdP/fT5+i2s/NmscfN41LqTT3zvyU7PGllRg2JFzwd5a
n5o1Rj6F4t8XbfHOPPexWWG/5kKGIC7Re/anZoX3ZvclXJp72Hvc42LmrdU5
NRlnicfFCUzXMdvaXOJxsf3qAyu2dxcRzxL77uJ23xwsJ54lbqzo86zWriee
BU69V/K6e2Y78SywxGrI50qMkngWWKfGPU3TPkA8Dl7LtH296/hEatzj4Dtz
Y2XcdBNq3GPjeeIjGY15XGrcY+M8K/6p0GZ7atxj4/hbkWrxBTdq3DPHgUFL
xS81POKZ4xp1ld9w21LisfC6kRdnje/6E4+F+w7kMwRGocRj4VDb58Mn5kcS
j4kPMry69B/FEo+JdxX6Ck20EojHwNqG3PiS4BTiMbBKeDQk+sRh4jHw24SS
NMnb48Qzw2/1zgYqL2QSzwzLfipVaiIvEc8UG09qMd6sl088U8waDr/sUFZI
PFMc05YVdnD0JvFM8IwgifeksDLimWBOHXtL0dB90m+MP5dGprgGVRLfCJ/0
1l6ZQD0mnhF+eidaV18gIc9Pxapt/AA7m0YyviHm/3DDZ5leC/EMsNp+xehJ
pZR4U/AMpJND3Wgj3hTsIEhvKRG0E08fH+M/qXVb9YJ4k7GeIsZJ9G0H8fQw
fVgWIfbsJJ4uXuBmI1W/7iSeLn4cdmhjcKKceDrYomVbqrtCTrxJePKmd44F
LgriTcSPAlXntq5VEG8CHrFpbFm9VUG8CfhU2cKjH+IUxNPGTN0q5sVoBfG0
cFJBQ8/U1dA/Rmsixn5L8QR/lC5OLPKhOeCN0M5it4uGgzCfD3R5+k6hX7Oc
jP+ePrPHx1tTBPMfpJ+tT9odcUZOvHd0dkZzY1KSnHj9tKCmf5F1NHh9dLZH
dP3bQPDUdGlO24dMIfS/ofWrHMbO88FX0QaMXfYpAvBe0d1V/jvqAuB5Bd2+
tGk6IwbG76BrtC29evdB/zO6YlbJoG0e+C10m/PXuw+0gCehOwaqL9uZwPo8
oLuOMY/4BcD65NObG+ZOO1nw/2+qs6d7opFxF/yfYlQ8PC1K7QKP4n13KFyP
+RLGo85laPRqy17CfKjRka0LvA7+A/OldqRfq9iY9Areh3Kk9wzYXO2G96UK
726bpHZXwXpQDQdfmPPnvIb1oqqT3AxEXmpYT2rqaK/Jmw1SWG8qon+7V/ND
GewHJbV2WtS/6CnsF1XhrGs9tPIp7CcV5ZqnNXVIBvtNvR9aYs7+RgbngRoZ
Er7PCZPCeaF2l873LZrdCueJeoOuhnhImuG8UWpbjd0YaoLziH4UTkhsPNYA
5xW1+y7bv/yxBM4z+hCvpB+8F8N5Rx5h21orRDVwH1DafnnO8Y5KuC+I845S
Bv3yAO4Tyqp6WZz2E4b7hnSlSQHp0aVwH1GKZ1pZSlwx3FeUx5Gwm6ddh/uM
HltXG461XYH7jh6WxCus8nMhHqCoUxb96ekXIV6gxQ5R62yaMyGeoGwnnaEh
3kmIN6gm5q/yLPsMiEfo/t5Oq80uqRCvkNK9ZdCOmwzxDK26q5fFs94J8Q4t
cK0WBoVDvDZBGcGV8wwHIZ6boF+b6nnVdSKIp0jo+MQhqHINxFs0IGqo2pAg
hHiMYottFnre9oV4jZxE14LmW86DeI5Czr5S3mR+BfEeGe+9rZJy7SEfoPhg
zvR7QivIF6i3nr3mqMoU8gn68vijTp84Xcg3qMno71YzyTDJlyzksqbbTGbQ
S/IpCy0PZIUP/6kg+ZaFkkSmbi5iKcnH5shvX6vweqyY5Fdz1DWavLGBf594
bOR2JXfAjl1EPDa6KlvMfWJxmXhslPwzp/vQskzicdBnp05o/M6kQ75G+3g+
+cWJyZDPkYsgt0fbJQ7yPTrP7zJ1agyHegCpRXvlvKg1UC+gOe5Ffxi3L4F6
AjnMmren/AtPqDfQq2u331wTOEI9gjaVOzn3zLaEegX1hdbF3W6dAvUMUlmt
8+ldPMwj9Q5yfj76/Yi7ikfqIeTIl3ssKGjjkXoJxfUdnnlCUc0j9RSShTgf
WcHHvH8BZKIshA==
      "]]}, 
    {RGBColor[0.880722, 0.611041, 0.142051], PointSize[0.011111111111111112`],
      AbsoluteThickness[1.6], Dashing[{Small, Small}], LineBox[CompressedData["
1:eJxVlg9MlVUYxi+XPwoFci///xrKULSbiYSC3HteZCOLlgjqJqmgCyKdYpuy
nK2BkjgwhswsUIR5u4CYCaIgkJxX0bhqoWx0ia5YJq4ATbREk4TC76GNs93d
ffu+73fOd877Ps8TtCEzMU2tUqkO/vcb///+u/ERwNnX1NVpzp/r05+PAL56
dMhhvp9Rr3o+AtixLGevqeG0vrRkfPjzx9bw/JS8i/oFz4c/f3028H5JUZde
4fnxg6y/06bF9YHnxz26lQvrr/0Jnh8nrShrGgmxNSg8X75k3BK4N0lrUHi+
PDjKs5uSgwwKz4fPt6wwVMW+alB4Puyz9RfvTXMNBoXnwzOrdFaXunjwvFkV
fCo6atZq8Lz59bbOI4GH08HzYmvbQHCF/zbwvHhdcsni4foc8Lw41SI9uyyF
4Hnytx2X92UcKAXPk/MfJzwcqqkEz4NbG27bnXmpHjwPjm5a32sakuB58MqU
wO73N1wBz51vNphLI4p+AM+dN8b1mlIyb4HnxpvvV/24vm8QPDe+uCMm3kE7
DJ4bG+8NhqfF2QiFp2Xfd3QD56WTUHhatlYXjNTsdBcKT8ON5cdbExymC4Wn
4cLtA9kx0bOEwtNwrvZBsftr88Fz5cQlhfdGwiLBc2X7tcE/m/VLcH8aD53P
cBzzfRN8Fx5NiUxam5UIngvPXJfTGduxGu8789UPnZ1Nnesx/4s81vHyGvWy
DPBe4BTHmLkRqVvBc+IpNzU7dJe3g+fEHkuf2Vcc/gg8R65suKN2K9gF3lS+
sHBkUX5jHnhTeE6z84zhu5+C58CNNrUeS8uLwXPg39T7d2+0HgTPnq3FU425
NYfAs+PT1Vv8LbsqwLPlZvMM952ZRvDUbBkw910vqgRPzS52Zz/Y0XMMPBuu
bfvkle7IE+CpWHMyuDw3oRb3x+SKr5xKbMfqwH8mfxp1qV1TUQ/ePzKsrSM5
S3cG7z+VYV1j6bkVDZj/iTQdupGsf9QI3mNJpzbt65/dBN4j+YXJbk9CVDN4
f8l5Jxe17AttAe+hDGm0H+543ALekLzz9LM836pvcP8PeSV7QZNN1DnwB2XW
SW3Pe/XnwPtdan9drHnLsxXv98k686xVR9JaMf8tWTMvb3nglxP3b8iYHM/Y
2K5W8C3yqNmycu6TVvCuy7sUcqFIIzFfm1zYv3lOW5AE75g0hXT2GEP/vxYS
13hehOJ58IRNjMLDfMKI+bAeEY71YL3ixKT19okafA++V3jge7EfYhv2A/sl
2rFf2E8xOGk/Hwod9hvnIXxxHjgvcQDnhfMU0ThPnLeow3mjHoQO9YB6ERGo
F9ST6EE9od7EctQb6pE8J9WjDZ1AvaKeSYN6Rr3TZdQ7+oHOoR/QL3QG/YJ+
ol70E/qNBtFv6Ec6jn5Ev5Ie/Yp+JkY/o9+pBv0OPSAt9AB6QSroBfSE0qAn
0Bsagd5Aj8gMPYJeUSj0CnpG6lRFz6B3dBt6Bz0kl0l66ErLoJfQU9oDPYXe
0m7oLfSYTkOPodfUC72GntOEnkPvqQ56Dz+gZvgB/IKy4BfwE3oXfgK/IQv8
Bn5Eb8CP4Ff0NvwKfkaX4GfwO8qG38EPqQN+CL+kRPgl/JTWwk/ht9QNv4Uf
Uzz8GH5NE34NP6fF8HP4PUXC75EHqB15AHmB+pEXkCeoHXkCeYNWIW8gj5AV
eQR5hYaQV5BnqAx5BnmH9iPvIA/RVOQh5CUyIy8hT1EB8tS/BoYXKw==
      "]]}, 
    {RGBColor[0.560181, 0.691569, 0.194885], PointSize[0.011111111111111112`],
      AbsoluteThickness[1.6], Dashing[{Small, Small}], LineBox[CompressedData["
1:eJxVlgtQVFUYxwHBlaeLyFt8AIVOmSaGDpj3w4QxMWIYHDMcNUpJwRwCYypJ
G0RUHmUqBJWr+EBiGsRE8MGeL5FkQmnZB+gGhc9QGVwI1DHI0vPfRs/Mzs6d
e+/v3HPO9/3//0lJ6+NX2dnY2BT993v8f/HC4xHA2YcPhBW+H61d/WQEcFvO
hNJdw7FamycjgI39X87ddHqltrTk8RjH7pmfGr+ZvV4b+mSM4+0rO50vtWdp
Jc+fWzRhQal388DzZ78bTuKVnhLw/NnSaeqYea4cPD8O7Amb2ZxXA54fHzAM
rPV9swE8X65ctrra3r8VPF/W+aSXmwc6wfPlR8GfTLD03ALPh70Gt0V99uI9
8Hx4n9+1Xk29nZA8b75XlF13e9FoIXne3JSvbrmr9xWS581+owMyu5yfE5Ln
xRnXXS2qvulC8rw47tc0t9l3w8Hz5HxD7hpzUBR4nvxh8NLNqnfiwPPk4o1T
QtJcloI3lo9Ezjt750YSeGP55dgVpbkTU8Hz4F2LH9YeOpABngd3JSy5OWDO
As+DNUMf/PFGdA54Yzgt+IFJ91sBeGO4oyRxhkazGzx3jm9e0VQ+8lvw3Pn1
tZHTrtaVgefOO06u2jRt9xHw1Jw+xe9E4tEq8NSs2xOxeY7rcdwfza2tY0pe
uFkHvhtPn3AhKiFBC54bX/mqMTV5/Fm878rvBS6sOTanEfO7cLfO3a1sXRN4
zjy/K3xzfnEzeE6s1l7++e99LeA58dYbl2jbSR14jly39vy+2uFW8Eax6lhE
fK2XATwVH12UWzHL1gjeSN7mEJp/6owRvJFctDXlJ/8YE3gOzJ17DYNVJvDs
ucRWibG1mMAbwbNfardkq9vAs+PB/FnRHV5t4NnxGc/q4Kmj2sCz5R/K0g+F
3LLybPi7ixuie+ut8z0SfW2NAc47rPxhUZBdGZIeZwJvSKR7d1Tu9LC+/1AU
mCxXl5is63kgCsvrno8tNoJ3Xzic++X2wbeN4A0Kp8T8jPkTresdEMldfRfN
3Qbw+kX7ob8a/zxuAM8iXs2sUJ3fYr3fKxpcXNbXvWUA/46Yl5mouzndAF63
SFvomLLO1fr+dZH9vWXusl495r8iRkxes+G0QY/7HcIhJ9CxsF4PfpswTzqv
M1TqwdOJH0WNY95ePeZrEEX1/3xcvcfKqxCLty6IiNr5/7USg2s8r3yB58FT
BHiYT2nCfPgeZXiL/B58r2L/zPdeV/KwHqxXycB6sR9KFPYD+6VUYb+wn8qz
+9mv3Md+4zyUBTgPnJeiwnnhPBU7nCfOW8nCeaMelGrUA+pFeQ31gnpSdKgn
1JuyCPWGeqSpLU/Xoy0N7pf1inom8pL1jHqnJNQ7+oF2oR/QL2RGv6Cf6AT6
Cf1Gbrmy39CPZLCX/Yh+pWb0K/qZ+qtlP6PfSZ0i+x16QO9CD6AXlFwv9QJ6
Qg3QE+gNDUFvoEcUFyT1CHpFhdAr6BkdHC/1DHpHOXqpd9BDmln8tB6qKXyy
1EvoKS07JfUUeksCegs9puQLUo+h13SvVOo19Jy8oefQe0oalnoPP6C8eOkH
8As6kSD9An5Cy+En8Bs6DL+BH9HX8CP4FUXCr+BnFAo/g99RRIv0O/ghXb4m
/RB+SV2u0i/hp9RXIP0Ufks2xdJv4cek95V+DL+m3wekX8PPSQM/h9/TFm/p
98gDNBF5AHmBQvUyLyBPUC3yBPIGhXTJvIE8QoHII8gr1LNX5hXkGZqxXOYZ
5B3a+JHMO8hDlIY8hLxE+z+XeQl5iowHZZ76Fythgt0=
      "]]}}, {}, {}, {{}, {}}, {{}, {}}},
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
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox[
   "\"\[Phi]=1, \\!\\(\\*SubscriptBox[\\(\[Beta]\\), \\(L\\)]\\)=1, \
\\!\\(\\*SubscriptBox[\\(P\\), \\(L\\)]\\)=1/2, \\!\\(\\*SubscriptBox[\\(\
\[Beta]\\), \\(R\\)]\\)=1, \\!\\(\\*SubscriptBox[\\(P\\), \\(R\\)]\\)=2\"", 
    TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-0.3451452909195745, 1.0140066563979975`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"dfc1b241-48ba-\
4cb6-8b2b-839312ad1ebb"]
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
   "]"}]}]], "Input",ExpressionUUID->"f93fce11-5089-4714-ba3c-1a3a75478b36"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.011111111111111112`],
      AbsoluteThickness[1.6], LineBox[CompressedData["
1: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
8/4D3Vx01w==
      "]]}, 
    {RGBColor[0.880722, 0.611041, 0.142051], PointSize[0.011111111111111112`],
      AbsoluteThickness[1.6], Dashing[{Small, Small}], LineBox[CompressedData["
1:eJxVlg9MlVUYxi+XPwoFci///xrKULSbiYSC3HteZCOLlgjqJqmgCyKdYpuy
nK2BkjgwhswsUIR5u4CYCaIgkJxX0bhqoWx0ia5YJq4ATbREk4TC76GNs93d
ffu+73fOd877Ps8TtCEzMU2tUqkO/vcb///+u/ERwNnX1NVpzp/r05+PAL56
dMhhvp9Rr3o+AtixLGevqeG0vrRkfPjzx9bw/JS8i/oFz4c/f3028H5JUZde
4fnxg6y/06bF9YHnxz26lQvrr/0Jnh8nrShrGgmxNSg8X75k3BK4N0lrUHi+
PDjKs5uSgwwKz4fPt6wwVMW+alB4Puyz9RfvTXMNBoXnwzOrdFaXunjwvFkV
fCo6atZq8Lz59bbOI4GH08HzYmvbQHCF/zbwvHhdcsni4foc8Lw41SI9uyyF
4Hnytx2X92UcKAXPk/MfJzwcqqkEz4NbG27bnXmpHjwPjm5a32sakuB58MqU
wO73N1wBz51vNphLI4p+AM+dN8b1mlIyb4HnxpvvV/24vm8QPDe+uCMm3kE7
DJ4bG+8NhqfF2QiFp2Xfd3QD56WTUHhatlYXjNTsdBcKT8ON5cdbExymC4Wn
4cLtA9kx0bOEwtNwrvZBsftr88Fz5cQlhfdGwiLBc2X7tcE/m/VLcH8aD53P
cBzzfRN8Fx5NiUxam5UIngvPXJfTGduxGu8789UPnZ1Nnesx/4s81vHyGvWy
DPBe4BTHmLkRqVvBc+IpNzU7dJe3g+fEHkuf2Vcc/gg8R65suKN2K9gF3lS+
sHBkUX5jHnhTeE6z84zhu5+C58CNNrUeS8uLwXPg39T7d2+0HgTPnq3FU425
NYfAs+PT1Vv8LbsqwLPlZvMM952ZRvDUbBkw910vqgRPzS52Zz/Y0XMMPBuu
bfvkle7IE+CpWHMyuDw3oRb3x+SKr5xKbMfqwH8mfxp1qV1TUQ/ePzKsrSM5
S3cG7z+VYV1j6bkVDZj/iTQdupGsf9QI3mNJpzbt65/dBN4j+YXJbk9CVDN4
f8l5Jxe17AttAe+hDGm0H+543ALekLzz9LM836pvcP8PeSV7QZNN1DnwB2XW
SW3Pe/XnwPtdan9drHnLsxXv98k686xVR9JaMf8tWTMvb3nglxP3b8iYHM/Y
2K5W8C3yqNmycu6TVvCuy7sUcqFIIzFfm1zYv3lOW5AE75g0hXT2GEP/vxYS
13hehOJ58IRNjMLDfMKI+bAeEY71YL3ixKT19okafA++V3jge7EfYhv2A/sl
2rFf2E8xOGk/Hwod9hvnIXxxHjgvcQDnhfMU0ThPnLeow3mjHoQO9YB6ERGo
F9ST6EE9od7EctQb6pE8J9WjDZ1AvaKeSYN6Rr3TZdQ7+oHOoR/QL3QG/YJ+
ol70E/qNBtFv6Ec6jn5Ev5Ie/Yp+JkY/o9+pBv0OPSAt9AB6QSroBfSE0qAn
0Bsagd5Aj8gMPYJeUSj0CnpG6lRFz6B3dBt6Bz0kl0l66ErLoJfQU9oDPYXe
0m7oLfSYTkOPodfUC72GntOEnkPvqQ56Dz+gZvgB/IKy4BfwE3oXfgK/IQv8
Bn5Eb8CP4Ff0NvwKfkaX4GfwO8qG38EPqQN+CL+kRPgl/JTWwk/ht9QNv4Uf
Uzz8GH5NE34NP6fF8HP4PUXC75EHqB15AHmB+pEXkCeoHXkCeYNWIW8gj5AV
eQR5hYaQV5BnqAx5BnmH9iPvIA/RVOQh5CUyIy8hT1EB8tS/BoYXKw==
      "]]}, 
    {RGBColor[0.560181, 0.691569, 0.194885], PointSize[0.011111111111111112`],
      AbsoluteThickness[1.6], Dashing[{Small, Small}], LineBox[CompressedData["
1:eJxVlgtQVFUYxwHBlaeLyFt8AIVOmSaGDpj3w4QxMWIYHDMcNUpJwRwCYypJ
G0RUHmUqBJWr+EBiGsRE8MGeL5FkQmnZB+gGhc9QGVwI1DHI0vPfRs/Mzs6d
e+/v3HPO9/3//0lJ6+NX2dnY2BT993v8f/HC4xHA2YcPhBW+H61d/WQEcFvO
hNJdw7FamycjgI39X87ddHqltrTk8RjH7pmfGr+ZvV4b+mSM4+0rO50vtWdp
Jc+fWzRhQal388DzZ78bTuKVnhLw/NnSaeqYea4cPD8O7Amb2ZxXA54fHzAM
rPV9swE8X65ctrra3r8VPF/W+aSXmwc6wfPlR8GfTLD03ALPh70Gt0V99uI9
8Hx4n9+1Xk29nZA8b75XlF13e9FoIXne3JSvbrmr9xWS581+owMyu5yfE5Ln
xRnXXS2qvulC8rw47tc0t9l3w8Hz5HxD7hpzUBR4nvxh8NLNqnfiwPPk4o1T
QtJcloI3lo9Ezjt750YSeGP55dgVpbkTU8Hz4F2LH9YeOpABngd3JSy5OWDO
As+DNUMf/PFGdA54Yzgt+IFJ91sBeGO4oyRxhkazGzx3jm9e0VQ+8lvw3Pn1
tZHTrtaVgefOO06u2jRt9xHw1Jw+xe9E4tEq8NSs2xOxeY7rcdwfza2tY0pe
uFkHvhtPn3AhKiFBC54bX/mqMTV5/Fm878rvBS6sOTanEfO7cLfO3a1sXRN4
zjy/K3xzfnEzeE6s1l7++e99LeA58dYbl2jbSR14jly39vy+2uFW8Eax6lhE
fK2XATwVH12UWzHL1gjeSN7mEJp/6owRvJFctDXlJ/8YE3gOzJ17DYNVJvDs
ucRWibG1mMAbwbNfardkq9vAs+PB/FnRHV5t4NnxGc/q4Kmj2sCz5R/K0g+F
3LLybPi7ixuie+ut8z0SfW2NAc47rPxhUZBdGZIeZwJvSKR7d1Tu9LC+/1AU
mCxXl5is63kgCsvrno8tNoJ3Xzic++X2wbeN4A0Kp8T8jPkTresdEMldfRfN
3Qbw+kX7ob8a/zxuAM8iXs2sUJ3fYr3fKxpcXNbXvWUA/46Yl5mouzndAF63
SFvomLLO1fr+dZH9vWXusl495r8iRkxes+G0QY/7HcIhJ9CxsF4PfpswTzqv
M1TqwdOJH0WNY95ePeZrEEX1/3xcvcfKqxCLty6IiNr5/7USg2s8r3yB58FT
BHiYT2nCfPgeZXiL/B58r2L/zPdeV/KwHqxXycB6sR9KFPYD+6VUYb+wn8qz
+9mv3Md+4zyUBTgPnJeiwnnhPBU7nCfOW8nCeaMelGrUA+pFeQ31gnpSdKgn
1JuyCPWGeqSpLU/Xoy0N7pf1inom8pL1jHqnJNQ7+oF2oR/QL2RGv6Cf6AT6
Cf1Gbrmy39CPZLCX/Yh+pWb0K/qZ+qtlP6PfSZ0i+x16QO9CD6AXlFwv9QJ6
Qg3QE+gNDUFvoEcUFyT1CHpFhdAr6BkdHC/1DHpHOXqpd9BDmln8tB6qKXyy
1EvoKS07JfUUeksCegs9puQLUo+h13SvVOo19Jy8oefQe0oalnoPP6C8eOkH
8As6kSD9An5Cy+En8Bs6DL+BH9HX8CP4FUXCr+BnFAo/g99RRIv0O/ghXb4m
/RB+SV2u0i/hp9RXIP0Ufks2xdJv4cek95V+DL+m3wekX8PPSQM/h9/TFm/p
98gDNBF5AHmBQvUyLyBPUC3yBPIGhXTJvIE8QoHII8gr1LNX5hXkGZqxXOYZ
5B3a+JHMO8hDlIY8hLxE+z+XeQl5iowHZZ76Fythgt0=
      "]]}}, {}, {}, {{}, {}}, {{}, {}}},
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
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox[
   "\"\[Phi]=3, \\!\\(\\*SubscriptBox[\\(\[Beta]\\), \\(L\\)]\\)=1, \
\\!\\(\\*SubscriptBox[\\(P\\), \\(L\\)]\\)=1/2, \\!\\(\\*SubscriptBox[\\(\
\[Beta]\\), \\(R\\)]\\)=1, \\!\\(\\*SubscriptBox[\\(P\\), \\(R\\)]\\)=2\"", 
    TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-0.7817164690081652, 0.12172912662313261`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"81253e55-4dcf-\
4066-a728-10cb263bc535"]
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
            RowBox[{"nmodel", "[", 
             RowBox[{"\[CapitalDelta]x", ",", "numpoints", ",", "\[Phi]"}], 
             "]"}], ",", "vlist"}], "]"}]}], ",", 
         RowBox[{"{", 
          RowBox[{"\[Phi]", ",", 
           SubscriptBox["\[Phi]v", "list"]}], "}"}]}], "]"}]}], "]"}]}], 
    "]"}], ";"}]}]], "Input",ExpressionUUID->"ead2e417-f063-4e4d-b789-\
673e3ca636f4"],

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
         "]"}]}], "]"}]}], "]"}]}], "]"}]}]], "Input",ExpressionUUID->\
"2d7dd873-6cab-499d-84cf-986ae83852bc"],

Cell[BoxData[
 GraphicsBox[{{{}, {{}, {}, 
     {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      0.011111111111111112`], AbsoluteThickness[1.6], LineBox[CompressedData["
1:eJw91Asw1VkcB/DrkYRw7/8+XVcRKuQxKSn1P0tEpWjNqFvaKM8xtdXqwbIq
mZYW24NtIzRKXZVpZUuv/0+mlxI166aHXnpdPRa53o/d8jvOzJ07d849n/P/
n/P9/awjNiyL1OXxeLn/f75+1939OhSQFWpgKp/uDlHfhgJS8lvqD2a7Au/b
UIDbtei0Gn83+PPQ12EJtvbH10rVrjD927CE1BfOCxUVrjDiyeFuYGmMNNEV
PTmEX22I9PGjnhwqBO1NAeau6FmAt4/itts5F/QsYLVHUp2Pnwt6Mgg4qmKH
1c7oyUCjE13sFeWMngyifXbea/0yDT0pXFQFqP79ZRp6Uogc7NRzNZqGngQ+
fjj6bO8+J/QkENq5d1OL1Ak9CahLPYJNChzRE0P4mMVFj60c0RNDwpYQR/kR
B/RE8IAtXLvfwgE9EUCmznLeganoiWD35XeXRUZT0RNC85pYp+Sfp6AnhG6H
JHVj62T0GFDYitrOhUxGj4Fk1VLf0ip79Bio++gV6S6zR08A6YrLr1s22aEn
gIuhYgffG7bo8WGu02b9PoEtenyI0uQO1iyfhB4f2FuSuv15NuiZw/jSINWh
emv0zGH+rqU7QnSscd4MqnO8kwqmTUTfFHwCo52VZVbomQJvW5HGucsS148H
66p7kmRWjvubwJn8VfEJmTL0jOH4Or+Src8k6BlBbaHsdJ2XGD0j0G8//i5G
JURvHHzfpuehcmDQM4T1ycR2DvDRGwuqvO2v+uLN0TMAw7RZrQNrTdEzAD/3
Ab3vJpigNwYmBuRVexgboacP28ITdoTaG6KnByW55c0r1hugpwtsW5xm+wt9
9HTBaZWnTLVdDz0d8GZcxsJMXfR4cCBtoeagUAfnh7n+t0X5NuY89Ac5y+A1
UUzgEDfiDXDHhWVzFqoGuJH1fdySeHEvM72fG9m/hzO9uqiZaenlRrxuzrP2
Hm/d3z3ciKflti790SnnZDd6nVyO+uNQVlUXeh3cUdUj5cUWLXptnKnjjvqb
dlqc/8wVhyYnVid3ov+B06y/d2lY8wW991ykb+7wpNgvuP41d0eSqRb2deD+
LzlJempe/+EOnH/K+W8e88BnSQf6aq76Rpc237wDvQZus+8/N4ZeteN+NVxO
TU7S2evt6J3kXgbFGK+sGv3NJjwoOs1wo/9nS9aZbU9vaqcem5y+SmxtOLof
+9R619P44NHnYa3Pp4m2Vo0+L9uQFVjr7j/6PmzNgqTHVww76fuyT8p+dfVn
tPQ82Kmpn0pu7aTn+ZmdGtgfEt7WQ8+TfVMos1SdHqTnzR5pM3ozvI6Heelk
TbODB88e1sH717JRb4/Od7+ki/noZsMyZubF3tXDvPWwys9XRfZN+pinPtZv
aeuZ3S/HoDfAzlAWv/dqNaB5Yg9ekTUc6hhL88a+V0fMsuozpHkkzUpNXOXw
OJpXIt7TvrNVx5jmmXjvkZbwh41p3kn7neaBeK0JrQcS9nBW6uKW8bReiO7c
VS5TbprSeiIBD+8MVxSa0XojF8KC4rpmjNYjeZ4q9M4+aE7rldh5Pqne+Nmc
1jNRgfxUNuHTeidlaZVH+jL5tB+QeeLrfs8a+LRfkJZzQY6JZgLaT0hP5E8l
cn8B7TfkjVlWnDRJQPsRKc2pHbx9QkD7FWldUcXLuC+g/YwsWOOyq1xLPTNi
pzt28m8ihvZDklttM7jBjaH9kiyzN9MeCWBoPyVP1T9cVK6m/YlPIkKMnjdv
YGg/JgEZXh5hKdQTkA0XIoMNM6gnIH9tWdM3bj/1GPL7xvprew5RjyFi59iU
0gLqMSQzUVK1u5B6QlKZ3T+BFFJPSIpvH2tuy6eeiLCR81vL/6CeiGiyo4P2
76OeiOyr7I0uz6CemNR0xBhKdlBPTHI2J1Y8SaCehJxyul81PpZ6EtLEP6G8
rKSehIQN6jdrF1JPSg57aE7f9KSelPiWNSrnTaaejKzgdehFMdSTkXydCL2A
IXo/MrJodriX9h29TwuyKcUxI6aB3pcFSbj2dujReXq/cuLuXXbpRAHNg5wc
synIDE2jnpxkBp5tLI+gniXhOayNnb2SepakP6kx3fMTzZ+CbOmxkfr3Uk9B
XtXG3b/eb4Kegiy22lpeUmQF/wHsGzxK
       "]]}, 
     {RGBColor[0.880722, 0.611041, 0.142051], PointSize[
      0.011111111111111112`], AbsoluteThickness[1.6], Dashing[{Small, Small}],
       LineBox[CompressedData["
1:eJw11gtMlWUYB/DD4Q4C534/3pqKqxkqtizG+xiyZdhcdJnQ8UZJm85poTUs
XRMRSymcipecLssSSk1TKk3eB6UMsXBq2gURFJRJHu0oeiDUkufftzF29p73
93zn+97nMqRgfu5so8FgqPzv78H/n088uPz80tdZ60NuPxf2X37eM7hsTnur
jw39l5/PTH319T1zfbx504PLxyW99RtLYnw8tv/y8RVV29C9xcvieXlkTnHJ
knQvPC9/Ebt88/ZGDzwvl1VM3/BTgQeeh4etrCo63eOG5+HvcwozGirc8Nwc
HQ7qz0a44bk5dHfm8Lm1Lnhubn972ynbiy54LrZmZ6Vv73LCc/GBQavfNy9z
wnNyUfqw6zNdTnhOTg3UTP5gtwOek2OH1+RtmOiA5+Dar3ZXFP9hh+fgKaXF
I8YssMOz870xX0bVRtvh2Xlp8J997o9s8Oyc3JiaOyHNBs/GzfuMpWk/WOHZ
OPCyLXAxzwrPygevvpfxXNACz8pnJkQdfXOZBZ6V24ombM9xWOBZeMgTF5cc
qzLDs3BdXeqR1gwzPDNf+mT24tVNJnhmbmj7O7V2lgmemS98mv5M0+UUeCbu
KCtLCMWlwDPxY4tKn6wbmYz1FD5bvjLTMSkJfjKXrgoePVY4AF4yTxoS+Xv1
skTsT+IdU58uX7clAfEHsMPveTawPx5eIs/4vD7uQkMcvARu7lg+OvJ8LLwE
DlwNvHv4Wgy8eD40uSfg6IuGF8drniqvfDQuGl4sjyqe2DPJEgUvhtd39ww/
7omEF8P5c76LyBhqhBfNOekLbj4/MgJeFB8Pd7x1Lc0AL5J31ySZkhbe0+IZ
OfvEa9/OX9WnxTPyqZzMH1+o7tXiRbB7TUuB/XRYi2fg09ZH7t2OvYP1+/rK
9JhWU063Fv+urqLcg+lbb8Lr0/FjreOajSHs79W3W1u+8S2+gfhhfa5xUW1W
fBDeHb0l68jyQHYXvG59PrxmYNbOTni39Cb3tKzo0ZfhhfSIaXVprpZL8G7o
/KWrDQt3tWE9qEsGV6yfNv4C/C5teujxyodz/4TXqXdtLjm0Yts57G/XXb0z
5hZ4zyB+m+4sOqHK9UmsN+uw8/JfqxIb4Z/Vo9IyE9c21cM7qd9I78met+Qw
4h3Vs/oMrwzdtBdela7sO5BXUrjh/8+qWj4rfF/lyfcVPDVPPIV4apzEU7gf
dU3uR+F+1RW5X6y3qx75PfA61V75vYjXpVzyPOAH1VJ5Xth/QxXK88R6SA2U
5w3vltoq7wPxu1WHvC/4d9QKeZ/wwuo3ed/welVIzgO8PpUk5wXeXbVTzhO8
++q6nDfsN9Avch6xHkGj5LzCM9Kvcp4R30j5ct7hR9IOyQd4UYR8IeQTTZd8
IuQbTZF8I+QjVUo+EvKVxku+EvKZNko+w4un/ZLv8BJoltQDeAnUJPUCXiLl
Sz2BN4D8Um/gJdE2qUfwkilX6hW8ZFos9QxeCp2Teof9JsqUeoh1E12UegnP
TM1STxHfTKi38M10VeoxPAuhXsOzEOo5PCs1S72HZ6VT0g/gWYmlX8Cz0Uzp
J/BsdF76DTw7WaQfwbPTh9Kv4NkJ/QyegwLS7+A5qF76ITwnxUi/hOekwdJP
4TlpofRbeC6qkX4Mz0VG6dfw3GR8p7+fw3NTu/R7eG7yyjwAz0OHZF6A56FB
Mk/A89JamTfgeeljmUfgeQnzCjwftck8A89HK2TegeenFpmH4PmpWuYleH6a
IvMU/QtNehSn
       "]]}, 
     {RGBColor[0.560181, 0.691569, 0.194885], PointSize[
      0.011111111111111112`], AbsoluteThickness[1.6], Dashing[{Small, Small}],
       LineBox[CompressedData["
1:eJw11glQVWUUB3A2H6vwFt5y3wMdzRyX0ZnMcgm8RwqUDJfSmkEnQ6VSFDeQ
tMSNZnQExsbIFRfQjEnLDAMTuQdBMdBcMwpTUDKIRERZBJHynn/fDMO8+d79
fffd+33/c/rNWfxmvIebm9sX//09+3/h/LMRymEtJwY3/u3k9/URyn0m+RZf
GediN32E8q2Frcvydzp5545nI4SD9hZMyRnt5Bf1EcK711/JSCxTWDwXqx/f
L903XYHn4mBHRsSgOw54Li54VNg3e6kDnpM9ukyRm3rs8Jwckzz2mEeGHZ7C
wyeGXe1Q7PAU/mdr08h5X9rgKZxUn7FxzAgbPAeHWV+5tfCUFZ6Dkw98uqZ5
ghWendtWVVblXw6GZ+f1e/+wfxUbDM/OueEjS47ftsCzMXPKS2fnW+DZeOmi
osHF983wrDxoQ5stNckMz8pVfYu+rm03wbPyysk107SVJnjBfCuu+/Zfj43w
gvnQyQXHBn5khGfhzLLjalp9EDwLNxZF1j2uDoRn4UnuxWkvVPSGZ+bwfuFr
vz8WAM/MhxMKzY4sf3gm3l42fJZ1qR88E2/t8EraEuULz8TLMwLSj1p94Bm5
9effYlpuGuAZefK6I6Wjc3thPogPee/bUDXXC34gn18UW7ajvye8QL5Yvrz4
m1p3XN+bKyu2zcjOdcP6Abw2tTB17PWnmnj+PDd7UsKN5CeaeH48JnmO7Z2h
nZp4frzMGEFRXe2aeL68mcd5Lmho1cTz4aq3c2JTOx7C8+Y3og88P2xICzwD
dynfvetY0wzPwN1PS5xN9+7B68URC+2GT/o1wvPi+LiRA3dl1cPz5DZ/JS48
6i48D15SNaz/r8Pr4HkwhX02M/f12/Dcubr+YXnV5zXw3HhqTsKd/aabmO/R
Ekckxke+Vg2/W9vsN/7ivBNV8J5o13ZHRSfNv47rO7W49FlB22OuYf0ObcKM
jbX7Zl+B164lrCDFc+cleK1a6uTFStb9C/AeafljlYNKQwW8Fq2mZFnXccc5
eM1am3GJ9YOUM5hv0ozVQ2sanp6G36i9l5LwXE4ew6vXQm5c/snwZxGur9PG
zynd255XiPVrtYIPT5pP78jH/A1twPTu9FOHj8K/rqVd21K0qyAP3iVtT6Ut
Kp1ysF6pduZu9MRRF7Pg5WmB0QcjU7xW//9ZjYnQP6v4vjqxTv++Ck89UqF7
KtZT113V11NxP2r5W/r9qLhfdZrcL+br1Pg4/ffAq1f95fdivUa1Z4X+POA3
qR2/688L1zermfI8Md+inpDnDe+ROkHeB9ZvVQPkfcFvV2PlfcLrUHum6+8b
XqfaV/YDvCfqD7Jf4HWra2Q/wetR+8h+w/Vu9GC/vh8x707eDfp+hedB42Q/
Y30PGiD7Hb4nnZHzAM+LXpXzAq8XZSfo5wmegVrkvMEz0BE5j/C8aaWcV3g+
NFXOMzxfqpbzDs+PhkgewPOjAZIX8PwpUPIEXgDdWa3nDbzeRJV6HhHyihrO
6nlFyDM6majnGSHv6FuDnneEPKQSyUPMG6n0vJ6X8Ez0cqaep4S8pSmSt/BN
tEjyGJ6ZMiWv4ZnJR/IcnoUckvfwLHRO6gE8C8VLvYAXTNuknsALpnKpN/Cs
NFfqETwr/Sj1Cp6VQqWewbPRbKl38GyUJ/UQnp3SpF7Cs9Mqqafw7PSL1Ft4
Dpop9Rieg5xSr+EpNFvqOTyFLki9h6eQQ/oBeE4aJf0CPCfd7dT7CXgu2i/9
BjwXPbDr/Qg8Fw2VfgVeCK2QfgZeCD3co/c78EJJk34IXii5S78EL5Qc0k/R
v2bqNFs=
       "]]}}, {}, {}, {{}, {}}, {{}, {}}}, 
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
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox[
   "\"\[Phi]=1, \\!\\(\\*SubscriptBox[\\(\[Beta]\\), \\(L\\)]\\)=1, \
\\!\\(\\*SubscriptBox[\\(P\\), \\(L\\)]\\)=1/2, \\!\\(\\*SubscriptBox[\\(\
\[Beta]\\), \\(R\\)]\\)=1, \\!\\(\\*SubscriptBox[\\(P\\), \\(R\\)]\\)=2\"", 
    TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-20.19963157324633, 7.2753394434519825`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"69be601b-fff7-\
48a5-982d-d275303e9d08"]
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
  ";"}]], "Input",ExpressionUUID->"e7485dc6-bedc-4109-880e-ec7c6c579479"],

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
            "Dashed"}], "}"}]}], "}"}]}]}], "]"}]}], "]"}]}], "]"}]], "Input",\
ExpressionUUID->"939d9854-0cdc-4d04-804c-30bb20975231"],

Cell[BoxData[
 GraphicsBox[{{{}, {{}, 
     {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      0.011000000000000001`], AbsoluteThickness[1.6], PointBox[CompressedData["
1:eJxd0HtIU3EUB/DbfCRr6pzuqlOnNluWJZizyFH3l0OobCQzK1H/MYNyiY9Q
iZmBZA8NEsqQylcPsoQ007AW7Tc1sjIMqVTMmGa51Gg6nY8NrfD87sADh8OH
w+HANzgtS3WcQ1HUnn/9f65UEDZntAaPHDAwKw5cZfEqB2AxZQux2x9HdS6H
2+2Hn+we0tgtwjGWLQe/s/bFjS9ytUbWPljd8a5nlrU3Xo7uD2WUxDTOX44v
HGAtxFJv7Y62eGIvLKnUFkwlEntiaZ4092sGsQBvSh1cTCoj9sBaRVkfb46Y
j3l7z/n2FA+D3bBw6XOFcWEEzMO1KvMu64VRMBd7KmKHUwfHwC74zcX3I8/a
xsHOmJJN7pzQ/wE74pbW9uyElikwB4uaAwbKi2bAFN53a+uVqngL2KbLaZj+
ljsxD57XicZO0G/LF8EzukclXQ3K3zawSZdWuZCfkL8ENuoGw9SF/HQKrdig
my0Jvla0bQ34oy4w0VJcdZ4DpqhYLv2wrsSB7JmUsMs/+g87kXsmrfnDBoHB
GWxk7l0vtRocuGAT07dk3K5f5wqeYX5Wu53VRwrA80xz5mO/T7dpsI2JjpJ1
i+Mk5D/KMRXdVUTIwBxUH5HnfpOWY8gPdSrVcuuvELAzquxRJyVLabALUrpG
bu6VeYC5KNOxXdLdxgXz0KVF1bRwaC3YDUU9remQHHIC89H4+leG+mRHsAeK
ef2c313qABYg2RnNy2MKYk9kOXkjPMWd2AvJuRuPFlDEQtTYRTfFzXHANJrM
jpkSzxJ7o7gjobFWM7EPOrX/S6aetS/K6tWoHrAWIUYjMN9h7YcqTl+V17H2
R02mOVst6wDE56SP2S1G1RH3R+0OXOUg1n8B/0c4JQ==
       "]]}, {}}, {}, {}, {{}, {}}, {{}, {}}}, {{{}, {}, 
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
      Annotation[#, "Charting`Private`Tag$124045#1"]& ], 
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
      Annotation[#, "Charting`Private`Tag$124045#2"]& ]}, {}, {}}},
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
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox[
   "\"\\!\\(\\*SubscriptBox[\\(\[Beta]\\), \\(L\\)]\\)=1, \
\\!\\(\\*SubscriptBox[\\(P\\), \\(L\\)]\\)=1/2, \\!\\(\\*SubscriptBox[\\(\
\[Beta]\\), \\(R\\)]\\)=1, \\!\\(\\*SubscriptBox[\\(P\\), \\(R\\)]\\)=2\"", 
    TraditionalForm],
  PlotRange->{{-8., 8.}, {-9.011358432540346, 8.684990370834951}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"154ec8b5-dc92-\
41a9-87aa-924c731917e1"]
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
            "Dashed"}], "}"}]}], "}"}]}]}], "]"}]}], "]"}]}], "]"}]], "Input",\
ExpressionUUID->"38b4995b-7649-4269-89e3-8e1f9124fcf5"],

Cell[BoxData[
 GraphicsBox[{{{}, {{}, 
     {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      0.011000000000000001`], AbsoluteThickness[1.6], PointBox[CompressedData["
1:eJxd0AtIk1EUB/BtTRMna9O5TfcyEUO0TGZUmnxHpigmSYlJDA0NMYuKILQM
KSyMMkpIMIMepM6EtshCJMTvmkwp8xFDLR85TaZomo8s8TErPPcbeOFy+XG4
93/u2Zl94ViOgMfjxf7b/8/NFUAs4ORJ8zaYTeu2WLvFGjJ21LIi4awma+tZ
Ey6riHnUkOqyPwl/4t0k5uxHtI6pRCFnJamsH5VNn6ZWkJ5T5pYMznKSr/tQ
EJlL7UuUsJRgyaKWkT7j+8yadGofwrPti2oIp/YmydbaWwULTrSUCJLs9/h7
qCUkOKLEFBizjhaTkte5+t2rK2gv8s2eJDTML6M9yUin4qIifwntQeKq4mNU
IYtodyKc8ZAm6ObQQlIWqjQbp3+gBWTXQY3z+uokmkfuxDfImucd6DW2sLBb
Zi0dRy+ziw/zrRPx39G/2GiRrynwzSh6ji0qs+1o67KjJ9nWI8Ufqw+NoO2s
cba18ZV1GN3D9pbwE31MgzSflzR+QyuNGqB1xn75rTrZ2U/vMxmSihcDWX30
fcat+s/5wxYbzWeirzTFlT/7TPtjHgwG6R0Bn2j/TE3VQmpedRv9H+P1Wzv0
6PY7mg+lXczdIGMdnQ+kpmig3vGcxflBR2RNYsTVRrQ7uOeIU25q2tEeUJlx
ILSupRPtCXNhjg1RiA3tBS/D5ebSS71oMQiMIf3p/C9oCbgFP+04HvwVLYW0
4muZgfoBtDfkGioNseXUPtA84nmie4haBgUKfdHwPLUvVM1mt487qeVwclVU
sc4fRCsgjenZ/3gbtRL8x2bqfnL2A7Zryi4TUvvD2ZZatYqzClTn9t7XcFZD
bNqZSZc10Ncbtl3LWQtTDXKRy7otDuD8F76IOHY=
       "]]}, {}}, {}, {}, {{}, {}}, {{}, {}}}, {{{}, {}, 
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
      Annotation[#, "Charting`Private`Tag$124137#1"]& ], 
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
      Annotation[#, "Charting`Private`Tag$124137#2"]& ]}, {}, {}}},
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
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox[
   "\"\\!\\(\\*SubscriptBox[\\(\[Beta]\\), \\(L\\)]\\)=1, \
\\!\\(\\*SubscriptBox[\\(P\\), \\(L\\)]\\)=1/2, \\!\\(\\*SubscriptBox[\\(\
\[Beta]\\), \\(R\\)]\\)=1, \\!\\(\\*SubscriptBox[\\(P\\), \\(R\\)]\\)=2\"", 
    TraditionalForm],
  PlotRange->{{-8., 8.}, {-0.42212630350955627`, 1.963150981788242}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"b9aebc64-e6de-\
4d39-acaf-d4cdb7f1438b"]
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
         RowBox[{"\[Phi]", ",", "2"}], "}"}]}], "]"}]}]}]}], "]"}]}]], "Input",\
ExpressionUUID->"2e414694-f4b4-44a9-8d9d-65b0d5ff7d11"],

Cell[BoxData["2.1435159236320462`"], "Output",ExpressionUUID->"8d337306-b071-4e71-9a99-dbb3cfc0d802"]
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
           RowBox[{"nmodel", "[", 
            RowBox[{"\[CapitalDelta]x", ",", "numpoints", ",", "\[Phi]"}], 
            "]"}], 
           SubscriptBox["vdr", "\[Phi]"]}], "]"}]}], 
        SubscriptBox["\[Nu]inv", "\[Phi]"]]}], ",", 
      RowBox[{"{", 
       RowBox[{"\[Phi]", ",", 
        SubscriptBox["\[Phi]v", "list"]}], "}"}]}], "]"}]}], "]"}], 
  ";"}]], "Input",ExpressionUUID->"17c4a040-b6f4-4555-bac0-40dbfdb151ee"],

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
         SubscriptBox["P", "R"], "]"}], "]"}]}]}]}], "]"}]}], "]"}]], "Input",\
ExpressionUUID->"ad863224-06cc-4651-8db8-202831999f8a"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.011000000000000001`],
      AbsoluteThickness[1.6], PointBox[CompressedData["
1:eJxd02tIU2EYB/AzXSZOrdSZTp3WKrtppCiudOe1vGAiiQ0hlxcsw0Cdt0gY
RJmGbdjKmlgISQx1htM0S009b6SZduFo9mFhNWbpnEUqIlOkG3sfP3jgcPjx
fjjP+zz/Z0e2PCXHjqKo6H/v/6/tCcDOuypD6znKSJv9N1i4wX5YMp6V1cDL
GLDZFy/HJ00mXLpM7IM3n+lLtx7VEQvwfIM0z9oxSOyNl5ZlrGj3D2IvnMsx
HDOquIzN23FRecWk6WogsSe+Es4LyVRLiPm4K+l4DzchndgDV/8cjud8LiR2
x1Eq/vTICyWxG25jOA8EK/eJt+HRHNn52COPibfijJvlbMG9fmJXnFM6rEpd
e0vsjFNau720dRPETthRP6s5nf+F2BGXNLFVLyUmYgc80uZrXZ37TszFW5Ti
6wd7Z4jtcMXH2rD2ulliCle7Fd7wy7UQrzFnterRmP1zxFamTNGcn1kKXmKa
zs0VKx6B55lFk6Zl8QnYzOx1dwmp0oKNDCdiLSSsCswyotKFGtdYMEV1/34/
Muawfk6/jlsovqaEeoz0056VU3lCsJkOPiEV0olQ/zwt55o/JGvMUB8tN/3i
ccLhvlb6gHeZyMl1Gu5H8+MkaYxlCv6Php/HpeaKoX926GSQeSamE/rLRe1s
Z+9szSfoLxp6ZaL1iTAPR+RfPBYhjWdhPkjBF7/zwUMwP6RNE9/WFDEwXxSI
5Ksi9fr80VRoZnlLeCPkA0Wmb7qj596F/CCXlIXgUEMl5AvFfL3go6+VQ/6Q
ro9pfmOEPPLRuC7R8PBWNOQXrRzyFCwLgiDfSK0bkhUhZ2IvFGZ5VlDfugT7
gRzyByOofhb2B7UaVIcvDnTBfqF93/6oGpOrYf+QPVehKlEWEvsh6R57bNkZ
RSxE2UZex5jHBOz3Bges+y8b4EfM
      "]]}, {}}, {}, {}, {{}, {}}, {{}, {}}},
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
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox[
   "\"\\!\\(\\*SubscriptBox[\\(\[Beta]\\), \\(L\\)]\\)=1, \
\\!\\(\\*SubscriptBox[\\(P\\), \\(L\\)]\\)=1/2, \\!\\(\\*SubscriptBox[\\(\
\[Beta]\\), \\(R\\)]\\)=1, \\!\\(\\*SubscriptBox[\\(P\\), \\(R\\)]\\)=2\"", 
    TraditionalForm],
  PlotRange->{{-8., 8.}, {-0.8658383685825284, 1.114737452307171*^-15}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"f037071b-6824-\
4438-ae36-e4673e27bf14"]
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
       SubscriptBox["\[Phi]v", "list"]}], "}"}]}], "]"}], ";"}]}]], "Input",Ex\
pressionUUID->"74282bbb-0efe-42cc-90d2-15247113d9e5"],

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
         "]"}]}], "]"}]}], "]"}]}], "]"}]}]], "Input",ExpressionUUID->\
"d2bc93cf-4be1-4dd3-a3d3-cd852962590c"],

Cell[BoxData[
 GraphicsBox[{{{}, {{}, {}, 
     {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      0.011111111111111112`], AbsoluteThickness[1.6], LineBox[CompressedData["
1:eJw11gtUjFkcAPCZEVKKmaRSQ3m1mGg3j0r5rogIeVSHPSllx3plp03LplmS
Siwbi5THJFTaJRzyPt8tOZKQmWpqmqZGU9NjpplmKorMYu//njNnzpw73+9+
33fv/+ES9ctaPovBYJz58vn6/ari6+Dil3rGlR3Pu+kt3wYXWzC5htjHRprx
bXCxW1qTgmYZ6azMr8MJWyx7yVdxjbTHt+GEH83g6y5+mf/fc8RZU3o+jOgz
EM8RV/pnC3a3GIjniBMFZwIaqg3EG4d5gYF3Nc8MxBuHE12nun2+ayCeAz79
onHzh6vgOeBntdwg5WnwHLDvte8ERcng2eNC4cDePXHg2eP4CkP0JD54dlim
Dvn5QTB4djgxz7TeczF4dvj5IQcnkQd4Y3HRlX6+ZiJ4Y/GBri0l4zng2WLL
dp+js5ng2eK+w7MUM/TdxLPFG6eeT2c1dhNvDPY84u1c9KqbeGPwqg519qLH
3cSzwYFBL3LzCmA/bLDn0Es8xVnwbPDSnP64dyngcfCtT6XaG7vB4+BToSFM
3yjw2HjzzHP9h4LAY2Ov8n8kQh/w2DiyvtWROw280Vjw46HXobbgjcYZPHs/
LhPmR+G41hznSI2e+Na4Kqg8li3VE88aNwWZyhyL9eR6KxzEEwl2FujJ+iOx
cIGsruuknniWmBUWYXE8HjwLnNC3dOacSPAs8MGkaK/KJeCNwJGVnBMrZoBn
jsPfi29nWoM3HFusmpK1Tqkj3jBM/bQvQZWjI94wbOa5vVkaqSPeUBwTIp7m
Ol5HPDPsnC1aLJF2EW8IHrynTVUd7yIeCw/dYTtl+6Iu4rGwYT9H8HuvlnhM
bDvi7iDvqpZ4DOwm9/r38lqYN9EVoavyTIMa4g/SZi5Rcfw8DfE+0VHpxxw+
rtKQ6wfoD/n8NeqeTrL+B3o429u4OrOTeO/pJ/d9doX7dBKvly7ztN05R9FB
vB46JODFiYE/OohnoB9tcd34dnwH8fQ0urXWUf6kncx30aKH/r3zw9qJ30lH
P147ij3QRrw2enHw8gfxGW3kehXdeyzzesbsNrK+kl6oSg1Peasm83JaoMlZ
w9+lJn4NnRR1/cg6SzXxKun1v1qZx+S3kvWe0uXVb0Ib/VuJd41mXihfUNLc
Ar+p6smcq+hgC/yfEutuxia7tIBH3b45d1dxsQrWo2RJjadmbFbB/VD66XET
zYep4H6p8jNOsaKCZngeapOn9YRta5rheanZp1ts7gy8g/dBMdrP+d/Jewfv
i5Kj4rOF69/B+6S0dwztiAPzBspGtTyiQ6yE/aAYv63AQWeUsF+Ut1WBv3uY
EvaTWi3cYzRNUsJ+U3vPRoZc1jbBeaCohrbIvvtNcF4oJx27rDm5Cc4TFZCa
khQa3ATnjfKSj1Z7T4brGUh4wPtKf0cjnFfUE1C3fFR6I5xn5MWtjPlzXiOc
d+RzsWfmEqUC4gGlLeWdZh9TQLygZeUpYaXeCognND3c/eCcjgaIN5TwdneV
77kGiEeUVzgYdX9lA8QrSpbyKg8yGyCekaNfepKwSA7xjtzMntJHd8ohHyDz
DemivyfJIV+g2IWmz8L6esgnaNzr6SFzT9VDvkFuJ7OTClbWQz5C+84niMqH
10O+QisCZPcOl8ggnyHEjz5fK5RBvkMXCjfnFnrJIB8ilvHzIbO+OsiXqFhS
Yf3mdh3kU8QrVdiZC+og36LPwdyV19zqIB+j3od7xlzvrIV8jSY058ZYF9RC
Pkf0ZYaubGst5Hu0T6RNq3WthXqA0rTxOV5qKdQLNBiToW3LlUI9QdH+Gdua
t0ih3iDGkbTgqa5SqEfIudV9cqG6BuoVMpa579+XXwP1DN3ICp+Xtq0G6h1a
2q9cXDO9Buohuu43tmSTphrqJbLM6FVPvVEN9RSJjGssXQXVUG+R6i+rzIgf
qqEeo/UvZ9m/6amCeo1cfPfY7b5XBfUcRZR+3LoyvgrqPdrhP3H+Bt8q6AeQ
nylRcJZRBf0CMkXJnFilEugnkNCM6X07VQL9Bhr3UD5zfqAE+hE0pCQ44fvR
EuhXkIOm2OlapRj6GXTJWHT0QY4Y+h2keWqTl+0hhn4IKfOtQsrviqFfQr2P
ZrcXjXxDPC7asZcj8VhUS/8H7TyWUQ==
       "]]}, 
     {RGBColor[0.880722, 0.611041, 0.142051], PointSize[
      0.011111111111111112`], AbsoluteThickness[1.6], Dashing[{Small, Small}],
       LineBox[CompressedData["
1:eJw11nlMVFcUBvCZYUdZBpiBYWZqXOoSRBvHaoLiPS4lAlYsYtMWlRZBLUax
GE21deloS93SaK2CS/QPrVVbW6lU2xjfiSiVxIVWW4xYAwqKYRERnAEGqM75
eAkhkzv3d9+8d+/5zuDs/PRcg06n2/vy79X/69deXXa+bfx2y5fJOl7svexs
df2U9vYIX9Z5Lzs76mcUjz9n4P3Fry4b3xx2Om5EtYEd3svGTWu+d5btNbB4
Vt5Qe+BB0goDPCsvuzs3ZMwUAzwrv7vnoL45rN+L5TE34k97avTwYjl5tGNN
YIkenoXDLmZk1jr18Cz89Znju3bP1cOzcIb5SGn0MD28GK42u9eubNfBi+HZ
ZQmLD1zWwYvmNU795H17+n9vNHeXXPkuO0cHL5p3+f7S2+3QwTMzX6h+8pFP
v2fm5MKWRa8f69PEM/GxW7tHW6b3aeKZOHxjc/6Bml5NPBP3uTLjf1jfq4kX
xas7z1omxfZq4kXxGx8s2Zv2Ww+8SL44MeZ4zTs98CK5LmlFfUOTB14kB752
siC70AMvgo892/coabAHXgSPdaVP+uaPbnhG3jYtsdQxtxuekfOmrSuPa+yC
Z+SE+JHNy51d8MK5W791+9OYLnjh3LUp5fejpzsxHsZHhseFbJreCT+UtSlZ
Cwuq3PBC2Xkjc31enhvzQ7j8XlRdhseF9QfyBDVnoXWnC94ArtpccOqozQUv
mOclDrHdPvkCXjA/Tps+duvEF/CCXj4fk+PwpQ54gTz8bHFrU2oHvABOLTy/
dMatdnj+3OP69VTBe+3w/LkmbsZtVf0cnh87SurH5mc+h+fL90fnHNLutMHz
4ak1M0c1pbfBM3Bg4ubmHyuewTNwll/uhPOTn8HTc3deYGPZqVZ4Ol72+Odx
heZWjPdpT78KLvq0swV+j1bg3BLy1oVmeB5t0X+rinWrmzC/SwsqLE1OGdqI
9d1a4o6bjqryJ/BcWuXh1vursxrgdWjF/huGGZsfwWvXbtRWLS3Jr4fXpu3o
2B+9+fFDeK2apzzx/esZDzDeom0/mGvwnKuB36iZ0tftdAy9D69Bs/8z/4vD
l+9ifp2WljWnonxeFdav1T60XWlbcucWxu9pB50BC/NnV8L/V7Mm/F1au6oC
XqVmCSq6MDXhEtYr02bq6669+aQU3glt7bgU28rEQ/2fFT4rfF8lyfcVPDVA
PIX11BBZT+F+FO5H4X7VArlfjNepXPk98BrUIPm9WK9R2eR5wG9R2+R5YX6r
8vvT+zwx3qY+l+cNr109lPeB9TvUUXlf8F2K5X3Cc6tx8r7hdSk/2Q/wPCpH
9gu8HvWJ7Cd4fapX9hvm6yhH9iPG9TRwmXe/wjPQAtnPWN9Ag2S/w/ehCXIe
4PkSzgs8P5op5wmeP1XKeYPnTwFu73mEF0Apcl7hBdIoOc/wgui8nHd4wdQu
9QBeMM2SegFvAFVIPYE3kEjqDbwQuij1CF4obZN6BS+Uzkk9gxdGx6XeYX44
PZd6iPFwQr2EZ6TxUk+xvpE+lnoL30hFUo/hRVC81Gt4EYR6Di+SOu3eeg8v
klokD+BF0hnJC3hRNE3yBF4UrZS8gWciH7c3j+CZaITkFTwTnZA8g2emPMk7
eGa6KnlIyEsqlLwk5Cm9kDwl5C19JnlLyGOaJXlMyGu6KXkNz0LLJc/hWWi9
5D08C0VLPwAvllKlX4AXSyOln4BnpfnSb8CzUrb0I/CstFH6FXg2qpd+Bp6N
/pJ+B56dJks/BM9OsdIvwbPTVemn6H+2tEwG
       "]]}, 
     {RGBColor[0.560181, 0.691569, 0.194885], PointSize[
      0.011111111111111112`], AbsoluteThickness[1.6], Dashing[{Small, Small}],
       LineBox[CompressedData["
1:eJw11ntM01cUB/AWELVIaXmVAlVRfGMiumxuan4nm9uc22JUEMU3iq/Nx+bQ
uOmG8UGcUxfjVETr/tBNZcpQYQYf98hDggNB0YpS5FWgrcAANTjEMf3drzdp
ml9u7+f8+vvde86JSFg7I9FDo9EcfPV5/V1S/HpYeHN7weeTO+uVZeqw8IVp
7r7n3M2KRh0W3ro6yX3wkEs5kvp6hHOFLXnN/Ci3Mk4d4Xxyxob0W3kuRXph
fCTm68n+v7rghfGJQZx2fqULXhi3xX/qMo9/44Vy2VVnapeXC14oh0Qf6+91
xwnPzBNWRU9lqxOemWcVT9ry2RdOeGZ+0Rw63vqOE14It+2xbczydMIL4VL/
1Ih9pU3wTHyl66p1eFoTPBPfHrHH9v2yJngm9jwzbOne6CZ4wXxj/+b1M7sb
4QVz9aIVmUU3GuEF8SclOWOaf26EF8Qp859MzYpvhBfEeZviNvWPbIQXyC/e
Oj5kYEsDvEC2pWSty8xqgBfAo9+Oay3c0gAvgFOa0mLiPmyAF8AlHboB0/s1
wPNn54aCISfuOOD5c+R/1pETDzvgGTlhf85C7XwHPCPPi0tsuT/QAc/I7hGx
Pxyvr4dn4D8SO+rHnqyHZ+CdF/bfXJ74Zt6PM14EZ+gj6+Hrec6ZbO2Tmjp4
eo7at/xwZVod1vvyqdOO9btj6hC/Hzt2XrLn6urg+fCk8xH36FotPB0PHlZR
nr+mFp6OPzrK5w3htfD68lpN2UV3QQ28PjyqKnLrgC9r4PXmiwPy/tmmr4Hn
zVMyq31b5lTD8+aHXist1/c+gteLh96aM3P15Sp4Xuw/y7OyvdoOz5On583V
JnZXwvPgMRfzU9sNlfA8+ETs7Ut3LQ/haTn98E//xg9+AE/DCVuHb6uKqMB8
j5g2wVcrzPfhvxRRCd/+tcLHBq9b7Hrf597HnXexvkuUlfcE/11VjvjPxbCW
5cWLxB14neLqcc3EpKO34T0Tg/0iVn2VVAbvqdjeHrL2m19uwesQ1x+ssy58
txhem1ig/TEj/n4R5ltFr9FLcozrCuE/FhVGe+lQrwJ4TrGj5tmasQdysd4h
xmXSmPyBjPi1IsKYMbYw5jLm7cI3xRQ6aEk2fJtQPIuse1ZnwisTGbbIuU7X
KcTLE+dGRUfVOo/BOy1mH6Ud2e3b3lwrOYfUa4HfK/HD1d8LeMqie6onEE+x
eqjxBO5H2b5TvR+B+1V+N6j3i3mH8tuf6v+B51S2yP+LeI+VBfJ5wG9VnFHq
88L6NsWuUZ8n5juU7fJ5w3uq+Mn3gfjPFLdefV/wO5Wz8n3Ce66UNqvvG16X
ckDuB3jdyga5X+C9VC4tVvcTvB6lQO43rNdQcrK6HzGvpWOp6n6F50HuGHU/
I74HvSf3O3xPsuWq5wGeF12LVc8LvF60o0Q9T/C8KVeeN3je5C3PI7zeVCHP
K7w+1GNXzzO8vjRFnnd4OoqV+QCejvxkvoDnQxqZT+D1o3yZb+D50iGZj+Dp
KX2vmq/g6WlxuprP4PlRUZea77DeQPNkPsS8gVqXqvkSnpG+G6nmU8Q30gcy
38J/dS3zMTx/CpT5Gp4/Fcp8Di+AMmS+hxdASbIewAsgnawX8AKpSNYTeIFU
LusNvCDKlPUIXhDNlvUKXhCRrGfwgqlA1jt4wXRW1kN4JrKfVuslPBMVynoK
z0RHZL2FF0JXZD2GF0I3Zb2GZyaXrOfwzDRe1nt4ZjLLfgBeKOllvwAvlE7J
fgJeGD2S/Qa8MNoo+xF4YZQi+xV44ZQs+xl44ZQt+x14Floo+yF4Ftot+yV4
FkqU/ZT4H55Lb7Q=
       "]]}}, {}, {}, {{}, {}}, {{}, {}}}, 
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
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox[
   "\"\[Phi]=1, \\!\\(\\*SubscriptBox[\\(\[Beta]\\), \\(L\\)]\\)=1, \
\\!\\(\\*SubscriptBox[\\(P\\), \\(L\\)]\\)=1/2, \\!\\(\\*SubscriptBox[\\(\
\[Beta]\\), \\(R\\)]\\)=1, \\!\\(\\*SubscriptBox[\\(P\\), \\(R\\)]\\)=2\"", 
    TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-2.519190428253649, 2.5191904282536486`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"1b213790-0614-\
4a06-8410-a775a1afce55"]
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
         "]"}]}], "]"}]}], "]"}]}], "]"}]}]], "Input",ExpressionUUID->\
"e3b3cdf5-aa28-4f84-aabf-0716a49c66c5"],

Cell[BoxData[
 GraphicsBox[{{{}, {{}, {}, 
     {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      0.011111111111111112`], AbsoluteThickness[1.6], LineBox[CompressedData["
1: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
       "]]}, 
     {RGBColor[0.880722, 0.611041, 0.142051], PointSize[
      0.011111111111111112`], AbsoluteThickness[1.6], Dashing[{Small, Small}],
       LineBox[CompressedData["
1:eJw11nlMVFcUBvCZYUdZBpiBYWZqXOoSRBvHaoLiPS4lAlYsYtMWlRZBLUax
GE21deloS93SaK2CS/QPrVVbW6lU2xjfiSiVxIVWW4xYAwqKYRERnAEGqM75
eAkhkzv3d9+8d+/5zuDs/PRcg06n2/vy79X/69deXXa+bfx2y5fJOl7svexs
df2U9vYIX9Z5Lzs76mcUjz9n4P3Fry4b3xx2Om5EtYEd3svGTWu+d5btNbB4
Vt5Qe+BB0goDPCsvuzs3ZMwUAzwrv7vnoL45rN+L5TE34k97avTwYjl5tGNN
YIkenoXDLmZk1jr18Cz89Znju3bP1cOzcIb5SGn0MD28GK42u9eubNfBi+HZ
ZQmLD1zWwYvmNU795H17+n9vNHeXXPkuO0cHL5p3+f7S2+3QwTMzX6h+8pFP
v2fm5MKWRa8f69PEM/GxW7tHW6b3aeKZOHxjc/6Bml5NPBP3uTLjf1jfq4kX
xas7z1omxfZq4kXxGx8s2Zv2Ww+8SL44MeZ4zTs98CK5LmlFfUOTB14kB752
siC70AMvgo892/coabAHXgSPdaVP+uaPbnhG3jYtsdQxtxuekfOmrSuPa+yC
Z+SE+JHNy51d8MK5W791+9OYLnjh3LUp5fejpzsxHsZHhseFbJreCT+UtSlZ
Cwuq3PBC2Xkjc31enhvzQ7j8XlRdhseF9QfyBDVnoXWnC94ArtpccOqozQUv
mOclDrHdPvkCXjA/Tps+duvEF/CCXj4fk+PwpQ54gTz8bHFrU2oHvABOLTy/
dMatdnj+3OP69VTBe+3w/LkmbsZtVf0cnh87SurH5mc+h+fL90fnHNLutMHz
4ak1M0c1pbfBM3Bg4ubmHyuewTNwll/uhPOTn8HTc3deYGPZqVZ4Ol72+Odx
heZWjPdpT78KLvq0swV+j1bg3BLy1oVmeB5t0X+rinWrmzC/SwsqLE1OGdqI
9d1a4o6bjqryJ/BcWuXh1vursxrgdWjF/huGGZsfwWvXbtRWLS3Jr4fXpu3o
2B+9+fFDeK2apzzx/esZDzDeom0/mGvwnKuB36iZ0tftdAy9D69Bs/8z/4vD
l+9ifp2WljWnonxeFdav1T60XWlbcucWxu9pB50BC/NnV8L/V7Mm/F1au6oC
XqVmCSq6MDXhEtYr02bq6669+aQU3glt7bgU28rEQ/2fFT4rfF8lyfcVPDVA
PIX11BBZT+F+FO5H4X7VArlfjNepXPk98BrUIPm9WK9R2eR5wG9R2+R5YX6r
8vvT+zwx3qY+l+cNr109lPeB9TvUUXlf8F2K5X3Cc6tx8r7hdSk/2Q/wPCpH
9gu8HvWJ7Cd4fapX9hvm6yhH9iPG9TRwmXe/wjPQAtnPWN9Ag2S/w/ehCXIe
4PkSzgs8P5op5wmeP1XKeYPnTwFu73mEF0Apcl7hBdIoOc/wgui8nHd4wdQu
9QBeMM2SegFvAFVIPYE3kEjqDbwQuij1CF4obZN6BS+Uzkk9gxdGx6XeYX44
PZd6iPFwQr2EZ6TxUk+xvpE+lnoL30hFUo/hRVC81Gt4EYR6Di+SOu3eeg8v
klokD+BF0hnJC3hRNE3yBF4UrZS8gWciH7c3j+CZaITkFTwTnZA8g2emPMk7
eGa6KnlIyEsqlLwk5Cm9kDwl5C19JnlLyGOaJXlMyGu6KXkNz0LLJc/hWWi9
5D08C0VLPwAvllKlX4AXSyOln4BnpfnSb8CzUrb0I/CstFH6FXg2qpd+Bp6N
/pJ+B56dJks/BM9OsdIvwbPTVemn6H+2tEwG
       "]]}, 
     {RGBColor[0.560181, 0.691569, 0.194885], PointSize[
      0.011111111111111112`], AbsoluteThickness[1.6], Dashing[{Small, Small}],
       LineBox[CompressedData["
1:eJw11ntM01cUB/AWELVIaXmVAlVRfGMiumxuan4nm9uc22JUEMU3iq/Nx+bQ
uOmG8UGcUxfjVETr/tBNZcpQYQYf98hDggNB0YpS5FWgrcAANTjEMf3drzdp
ml9u7+f8+vvde86JSFg7I9FDo9EcfPV5/V1S/HpYeHN7weeTO+uVZeqw8IVp
7r7n3M2KRh0W3ro6yX3wkEs5kvp6hHOFLXnN/Ci3Mk4d4Xxyxob0W3kuRXph
fCTm68n+v7rghfGJQZx2fqULXhi3xX/qMo9/44Vy2VVnapeXC14oh0Qf6+91
xwnPzBNWRU9lqxOemWcVT9ry2RdOeGZ+0Rw63vqOE14It+2xbczydMIL4VL/
1Ih9pU3wTHyl66p1eFoTPBPfHrHH9v2yJngm9jwzbOne6CZ4wXxj/+b1M7sb
4QVz9aIVmUU3GuEF8SclOWOaf26EF8Qp859MzYpvhBfEeZviNvWPbIQXyC/e
Oj5kYEsDvEC2pWSty8xqgBfAo9+Oay3c0gAvgFOa0mLiPmyAF8AlHboB0/s1
wPNn54aCISfuOOD5c+R/1pETDzvgGTlhf85C7XwHPCPPi0tsuT/QAc/I7hGx
Pxyvr4dn4D8SO+rHnqyHZ+CdF/bfXJ74Zt6PM14EZ+gj6+Hrec6ZbO2Tmjp4
eo7at/xwZVod1vvyqdOO9btj6hC/Hzt2XrLn6urg+fCk8xH36FotPB0PHlZR
nr+mFp6OPzrK5w3htfD68lpN2UV3QQ28PjyqKnLrgC9r4PXmiwPy/tmmr4Hn
zVMyq31b5lTD8+aHXist1/c+gteLh96aM3P15Sp4Xuw/y7OyvdoOz5On583V
JnZXwvPgMRfzU9sNlfA8+ETs7Ut3LQ/haTn98E//xg9+AE/DCVuHb6uKqMB8
j5g2wVcrzPfhvxRRCd/+tcLHBq9b7Hrf597HnXexvkuUlfcE/11VjvjPxbCW
5cWLxB14neLqcc3EpKO34T0Tg/0iVn2VVAbvqdjeHrL2m19uwesQ1x+ssy58
txhem1ig/TEj/n4R5ltFr9FLcozrCuE/FhVGe+lQrwJ4TrGj5tmasQdysd4h
xmXSmPyBjPi1IsKYMbYw5jLm7cI3xRQ6aEk2fJtQPIuse1ZnwisTGbbIuU7X
KcTLE+dGRUfVOo/BOy1mH6Ud2e3b3lwrOYfUa4HfK/HD1d8LeMqie6onEE+x
eqjxBO5H2b5TvR+B+1V+N6j3i3mH8tuf6v+B51S2yP+LeI+VBfJ5wG9VnFHq
88L6NsWuUZ8n5juU7fJ5w3uq+Mn3gfjPFLdefV/wO5Wz8n3Ce66UNqvvG16X
ckDuB3jdyga5X+C9VC4tVvcTvB6lQO43rNdQcrK6HzGvpWOp6n6F50HuGHU/
I74HvSf3O3xPsuWq5wGeF12LVc8LvF60o0Q9T/C8KVeeN3je5C3PI7zeVCHP
K7w+1GNXzzO8vjRFnnd4OoqV+QCejvxkvoDnQxqZT+D1o3yZb+D50iGZj+Dp
KX2vmq/g6WlxuprP4PlRUZea77DeQPNkPsS8gVqXqvkSnpG+G6nmU8Q30gcy
38J/dS3zMTx/CpT5Gp4/Fcp8Di+AMmS+hxdASbIewAsgnawX8AKpSNYTeIFU
LusNvCDKlPUIXhDNlvUKXhCRrGfwgqlA1jt4wXRW1kN4JrKfVuslPBMVynoK
z0RHZL2FF0JXZD2GF0I3Zb2GZyaXrOfwzDRe1nt4ZjLLfgBeKOllvwAvlE7J
fgJeGD2S/Qa8MNoo+xF4YZQi+xV44ZQs+xl44ZQt+x14Floo+yF4Ftot+yV4
FkqU/ZT4H55Lb7Q=
       "]]}}, {}, {}, {{}, {}}, {{}, {}}}, 
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
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox[
   "\"\[Phi]=3, \\!\\(\\*SubscriptBox[\\(\[Beta]\\), \\(L\\)]\\)=1, \
\\!\\(\\*SubscriptBox[\\(P\\), \\(L\\)]\\)=1/2, \\!\\(\\*SubscriptBox[\\(\
\[Beta]\\), \\(R\\)]\\)=1, \\!\\(\\*SubscriptBox[\\(P\\), \\(R\\)]\\)=2\"", 
    TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-2.519190428253649, 2.5191904282536486`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"08d93bbb-3ee1-\
48b8-869d-fadb2d074cf0"]
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
       SubscriptBox["\[Phi]v", "list"]}], "}"}]}], "]"}], ";"}]}]], "Input",Ex\
pressionUUID->"b44e5f7e-ab7b-4ad6-b019-9ff70744c6aa"],

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
         "]"}]}], "]"}]}], "]"}]}], "]"}]}]], "Input",ExpressionUUID->\
"276498a8-983f-441f-a53e-9fe48d12d628"],

Cell[BoxData[
 GraphicsBox[{{{}, {{}, {}, 
     {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      0.011111111111111112`], AbsoluteThickness[1.6], LineBox[CompressedData["
1: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

       "]]}, 
     {RGBColor[0.880722, 0.611041, 0.142051], PointSize[
      0.011111111111111112`], AbsoluteThickness[1.6], Dashing[{Small, Small}],
       LineBox[CompressedData["
1:eJw11glQ1FUcB/AFYTmFvdllITPxGHXEYwLP3tPC8kg88j4qDDOmCTUlTctr
TDPJyQOPbMZqdIRh8oC80t6vMELTBh0ENUcRORYXYQ9M2UUo9/f1zezs7Lx9
n9//eO/3+3XPyJ6aGazRaPL+/zz7vnL52Uik9ug9LWV7XGpRYCTS0YgNFUlb
WpUmMBLpU++UGT30XrV/37ORQG0nNYd+f9mrhgRGAhnmaedZXB7Fnp2Oeq8k
V5V64Nlp0vnLI6t2e+DZaefezOZTizzw4ul2aGhMfYoHXjwV+Bam6MKeezYy
DJuzWVvlhmcjf8G1rIrDbng28q3tu3hFjhuelb7fcWRgY5obnpVe6ix9bYDZ
DS+O6gf2fOfV2uf3G0fWrV9Yehe54MXRiF6mpqr1LngW0vTImfjWZBc8C83K
WLZ1/wsueGY60FF6ZsrNFnhm0uhqTvmWt8Az0+mrM/39dC3wTBQ1cX7SvYJm
eCY6eWvA5+a0ZnhG2r58TWvJnYfwjNR7uk/b8MlDeEYKji0+u1L3EJ6Bhk4r
3LLsSBM8Ay21iHFXRBM8PUW3HrKvr3TC09PI7xrf2PShE56eJret7F4e5ISn
owknd1TMyHsAT0f9Swpl174PMB9L/eNN5+rONcKPoZmdSdfLJzXCiyGvUhHn
7zqwvist+SUsJy/bgfjRVFyjWz22owFeFB30Nywo+qoBXiTdHDvfoeIa4EVS
U0cP3/gf6uFF0JfH+wxO7lcPL5wKF727c8yJOnhh9Irt2OgZqXXwtJSauWtW
ytlaeFravSC5Pn94LbxQunNpmunj0/fhhVCQuWpL+pD78LrQwNyWkLaCGnjB
NLEwdlyvbjXwgmmvMUNs234PXhBlrfBm3fVXw9NQr6H+XdcXVmO+U310q252
+td34T9VF3NX7ek94Q68djUppXHbr09vY71PpS0flnP80D+I/0StKPFqisfc
gvdYnf0tt3RnxQ14j5T1/UvDR8ytgteq2uf0aymqvA7Po7Ld0y19Xq+A51Kz
fdZR9wuvYb5Z1ecvHTY1/Cp8p1pVpSsKKf4bnkNtmv9zmUj7C+tr1b9P3tQ6
/vgT8e8pZ61+7oXUC5i/rZZUp2VeOkDwK9XqHzOrk5vPwCtX36Z2M9z45gTi
lSjN/hND1049DC9fDX5v+GD3xdznvwV+C/xfdOwL/F/AE7nsCcQTGziewPUI
XI/A9QoHXy/ma0V0W+B+4DnEZr5fxHOKdfw84DeLOn5eWO8SGfw8Me8Rb/Pz
htcq9HMD7wPxH4kkfl/wH4t8fp/wnogsft/wfGI07wd47SKd9wu8p6KM9xO8
TvEZ7zes18huvB8xHyTX8H6FFyzzeD8jfrBcyPsdfhfZk88DvBCJ8wIvVLby
eYKnlZv4vMHTyjF8HuGFyVF8XuGFy6N8nuFFyI183uFFyjbOB/AiZTnnC3hR
cgfnE3jRUnG+gddVLuZ8BC9G+jlfwYuR6ZzP4MXKIZzvsF4ne3I+xLxOIl/C
08vxnE8RXy9HcL6Fr5d2zsfwDDKb8zU8g0Q+h2eU3phAvodnlIO4HsAzyvVc
L+CZZBnXE3gmqeV6A88sz3E9gmeWVq5X8MzyINczeBb5Adc7eBYZzvUQXpwc
xPUSXpw0cj2FFyedXG/hWeWLXI/hWeUurtfwbNK4LlDP4dmki+s9PJuM534A
Xrws5H4BXrys5H4Cnl3u434Dnl2mcT8Czy6Pcb8CL0FGcT8DL0H6ud+Blyg3
cj8EL1H+xP0SvETp4n5K/Aew+mds
       "]]}, 
     {RGBColor[0.560181, 0.691569, 0.194885], PointSize[
      0.011111111111111112`], AbsoluteThickness[1.6], Dashing[{Small, Small}],
       LineBox[CompressedData["
1:eJw11ntQ1FUUB3BYF4RVYJdlWZZXaJo61oSCk6TNPRFU/pGU2miNIymPEisf
IBFag0ZJwtCgY76xFFDJ0UEHnGm030kQlclnIgqCpqiICAgs+2Kh/N1vd2Zn
5zd37+f89ve795wzbtnKeWkaDw+Pn//7PP+++NfzEcHNO246oytsSro6Irjs
0PSUKVGe7KGOCE5bn5EW9/6wsmvn8xHOP1ldIWs8RpQYdYRz4+SB5TvzhxXp
hXFRxqIPEj8ehhfG+Qn22lbLsCK9MK5qXXYh8o4bXiin7s4dX7LfDS+Uo50t
TTHpbngW3lQ1oyd3ihuehQ3l38f+2DUEz8J3ps6fOe/YELwQFvejbI2rh+CF
cMvCtbX62CF4Zn5a/EXRiNUFz8w5t4wHS0+64Jk5/h3h35njghfM+VsMca1x
LnjBrN832SfT6YRn4g2JleXlvzvhmVizYvYnX+Y64Zl4wbyn68/GOeEFcdzS
iSO/2h3wgji7sinVUeOAZ+TD33z3oZLlgGfk2ysexD+Y5oBn5Khrj5wfddvh
BXLKw7VTfSvt8AJ56OrS5uZUOzwDJ5v2Nh6PtMMz8OqSzeNXNdngGfj8PkN2
V7ENnp5dWfozrgQbPD0fuJL1aIVjEPMBXJhkLtUeGYTvz9E+bQc2LR6E588T
Y/VvVekGsd6Pf+isnhVXY0X8sfyy70zT9SVWeGM4J2fD9VitFZ6OM9/O9Amo
GICnY1+/FqMlYQCeL88uv7vFv60fng9rYo6cOJ7ZD280J7VHLbqm7YfnzQFe
W28llvTB8+bfmiOT+kL64Hnxi8MV8Q27n8HT8vf91y5etDyDN4r7T1dP1G3t
hafhQ/XxB3eM7oWn4RPJk4df7+mG58l5780wF9U/hefBvanvxhRv68L8iPLS
nP3TahY/ge9WJu16/GdeeCe8IUVzWffaysYOrHcqhUfGndIWPEJ8u7JQW++o
jX0Iz6bcOyaiX7ndDs+qnKrcWHvq2/vwBpS0HdnRneH34PUpBTNrkyedvAuv
Vxlfs72Ed7dhvls5t634qPVMC/wnim/NBL+j7TfhdSheF96cW+p5A+vbleEe
n4JVoX8j/j9K4rpFdPbVK5i/rbQWbgpcnt8A/4YyZzAwo7SsDt4Vpf9QYXre
xtOIV6usqm/Lqa6pgndYiXQbO/bs2/7/taiwqdcCvxdf1am/F/BE+kHVE4gn
NlvVeAL3I2bJ+xG4X+HOVe8X8+1iofw/8DqE67z6fxHvifi6Wn0e8LtFmXxe
WN8rCqrV54n5PpEinze8AfGCfB+IbxU58n3Bt4nL8n3Cs4ueUer7hucUCXI/
wBsSXZfU/QLPLUp3qvsJ3oiokvsN6z2oPUXdj5j3pNK56n6Fp6GmJep+RnwN
HZX7Hf4oqpTnAZ6WFsjzAs+L6tzqeYLnTXvleYPnTR1a9TzCG0258rzC86FL
09XzDM+X/OV5h6ejUJkP4OloscwX8MZQtMwn8MaSt8w38PxojcxH8PypKEbN
V/D86TNfNZ/BC6B1c9V8h/V6WiPzIeb1FCrzJTwDZf2i5lPEN9B8mW/hG2iW
zMfwAumxzNfwAmm2zOfwjOS+quZ7eEY6J+sBPCPlyXoBL4jSZT2BF0Q6WW/g
mUjIegTPRA0Zar2CZ6JsWc/gBdOzUrXewQumdFkP4ZkpSNZLeGb6XNZTeGaq
k/UWXgjVyXoML4QCZb2GZ6EGWc/hWai7TK338CyULPsBeKE0QfYL8EJphuwn
4IXRHtlvwAujJNmPwAujbNmvwAunw7KfgRdOn8p+B14EvSH7IXgRVCT7JUI/
RX/Ifkr8CxOzdjI=
       "]]}}, {}, {}, {{}, {}}, {{}, {}}}, 
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
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox[
   "\"\[Phi]=1, \\!\\(\\*SubscriptBox[\\(\[Beta]\\), \\(L\\)]\\)=1, \
\\!\\(\\*SubscriptBox[\\(P\\), \\(L\\)]\\)=1/2, \\!\\(\\*SubscriptBox[\\(\
\[Beta]\\), \\(R\\)]\\)=1, \\!\\(\\*SubscriptBox[\\(P\\), \\(R\\)]\\)=2\"", 
    TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-2.140703940375788, 2.1407039403757775`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"d5f6434d-4da8-\
48e0-9b6b-1156b4570a23"]
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
         "]"}]}], "]"}]}], "]"}]}], "]"}]}]], "Input",ExpressionUUID->\
"66e06bbd-3177-4991-a436-8bb4e480b146"],

Cell[BoxData[
 GraphicsBox[{{{}, {{}, {}, 
     {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      0.011111111111111112`], AbsoluteThickness[1.6], LineBox[CompressedData["
1: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

       "]]}, 
     {RGBColor[0.880722, 0.611041, 0.142051], PointSize[
      0.011111111111111112`], AbsoluteThickness[1.6], Dashing[{Small, Small}],
       LineBox[CompressedData["
1:eJw11glQ1FUcB/AFYTmFvdllITPxGHXEYwLP3tPC8kg88j4qDDOmCTUlTctr
TDPJyQOPbMZqdIRh8oC80t6vMELTBh0ENUcRORYXYQ9M2UUo9/f1zezs7Lx9
n9//eO/3+3XPyJ6aGazRaPL+/zz7vnL52Uik9ug9LWV7XGpRYCTS0YgNFUlb
WpUmMBLpU++UGT30XrV/37ORQG0nNYd+f9mrhgRGAhnmaedZXB7Fnp2Oeq8k
V5V64Nlp0vnLI6t2e+DZaefezOZTizzw4ul2aGhMfYoHXjwV+Bam6MKeezYy
DJuzWVvlhmcjf8G1rIrDbng28q3tu3hFjhuelb7fcWRgY5obnpVe6ix9bYDZ
DS+O6gf2fOfV2uf3G0fWrV9Yehe54MXRiF6mpqr1LngW0vTImfjWZBc8C83K
WLZ1/wsueGY60FF6ZsrNFnhm0uhqTvmWt8Az0+mrM/39dC3wTBQ1cX7SvYJm
eCY6eWvA5+a0ZnhG2r58TWvJnYfwjNR7uk/b8MlDeEYKji0+u1L3EJ6Bhk4r
3LLsSBM8Ay21iHFXRBM8PUW3HrKvr3TC09PI7xrf2PShE56eJret7F4e5ISn
owknd1TMyHsAT0f9Swpl174PMB9L/eNN5+rONcKPoZmdSdfLJzXCiyGvUhHn
7zqwvist+SUsJy/bgfjRVFyjWz22owFeFB30Nywo+qoBXiTdHDvfoeIa4EVS
U0cP3/gf6uFF0JfH+wxO7lcPL5wKF727c8yJOnhh9Irt2OgZqXXwtJSauWtW
ytlaeFravSC5Pn94LbxQunNpmunj0/fhhVCQuWpL+pD78LrQwNyWkLaCGnjB
NLEwdlyvbjXwgmmvMUNs234PXhBlrfBm3fVXw9NQr6H+XdcXVmO+U310q252
+td34T9VF3NX7ek94Q68djUppXHbr09vY71PpS0flnP80D+I/0StKPFqisfc
gvdYnf0tt3RnxQ14j5T1/UvDR8ytgteq2uf0aymqvA7Po7Ld0y19Xq+A51Kz
fdZR9wuvYb5Z1ecvHTY1/Cp8p1pVpSsKKf4bnkNtmv9zmUj7C+tr1b9P3tQ6
/vgT8e8pZ61+7oXUC5i/rZZUp2VeOkDwK9XqHzOrk5vPwCtX36Z2M9z45gTi
lSjN/hND1049DC9fDX5v+GD3xdznvwV+C/xfdOwL/F/AE7nsCcQTGziewPUI
XI/A9QoHXy/ma0V0W+B+4DnEZr5fxHOKdfw84DeLOn5eWO8SGfw8Me8Rb/Pz
htcq9HMD7wPxH4kkfl/wH4t8fp/wnogsft/wfGI07wd47SKd9wu8p6KM9xO8
TvEZ7zes18huvB8xHyTX8H6FFyzzeD8jfrBcyPsdfhfZk88DvBCJ8wIvVLby
eYKnlZv4vMHTyjF8HuGFyVF8XuGFy6N8nuFFyI183uFFyjbOB/AiZTnnC3hR
cgfnE3jRUnG+gddVLuZ8BC9G+jlfwYuR6ZzP4MXKIZzvsF4ne3I+xLxOIl/C
08vxnE8RXy9HcL6Fr5d2zsfwDDKb8zU8g0Q+h2eU3phAvodnlIO4HsAzyvVc
L+CZZBnXE3gmqeV6A88sz3E9gmeWVq5X8MzyINczeBb5Adc7eBYZzvUQXpwc
xPUSXpw0cj2FFyedXG/hWeWLXI/hWeUurtfwbNK4LlDP4dmki+s9PJuM534A
Xrws5H4BXrys5H4Cnl3u434Dnl2mcT8Czy6Pcb8CL0FGcT8DL0H6ud+Blyg3
cj8EL1H+xP0SvETp4n5K/Aew+mds
       "]]}, 
     {RGBColor[0.560181, 0.691569, 0.194885], PointSize[
      0.011111111111111112`], AbsoluteThickness[1.6], Dashing[{Small, Small}],
       LineBox[CompressedData["
1:eJw11ntQ1FUUB3BYF4RVYJdlWZZXaJo61oSCk6TNPRFU/pGU2miNIymPEisf
IBFag0ZJwtCgY76xFFDJ0UEHnGm030kQlclnIgqCpqiICAgs+2Kh/N1vd2Zn
5zd37+f89ve795wzbtnKeWkaDw+Pn//7PP+++NfzEcHNO246oytsSro6Irjs
0PSUKVGe7KGOCE5bn5EW9/6wsmvn8xHOP1ldIWs8RpQYdYRz4+SB5TvzhxXp
hXFRxqIPEj8ehhfG+Qn22lbLsCK9MK5qXXYh8o4bXiin7s4dX7LfDS+Uo50t
TTHpbngW3lQ1oyd3ihuehQ3l38f+2DUEz8J3ps6fOe/YELwQFvejbI2rh+CF
cMvCtbX62CF4Zn5a/EXRiNUFz8w5t4wHS0+64Jk5/h3h35njghfM+VsMca1x
LnjBrN832SfT6YRn4g2JleXlvzvhmVizYvYnX+Y64Zl4wbyn68/GOeEFcdzS
iSO/2h3wgji7sinVUeOAZ+TD33z3oZLlgGfk2ysexD+Y5oBn5Khrj5wfddvh
BXLKw7VTfSvt8AJ56OrS5uZUOzwDJ5v2Nh6PtMMz8OqSzeNXNdngGfj8PkN2
V7ENnp5dWfozrgQbPD0fuJL1aIVjEPMBXJhkLtUeGYTvz9E+bQc2LR6E588T
Y/VvVekGsd6Pf+isnhVXY0X8sfyy70zT9SVWeGM4J2fD9VitFZ6OM9/O9Amo
GICnY1+/FqMlYQCeL88uv7vFv60fng9rYo6cOJ7ZD280J7VHLbqm7YfnzQFe
W28llvTB8+bfmiOT+kL64Hnxi8MV8Q27n8HT8vf91y5etDyDN4r7T1dP1G3t
hafhQ/XxB3eM7oWn4RPJk4df7+mG58l5780wF9U/hefBvanvxhRv68L8iPLS
nP3TahY/ge9WJu16/GdeeCe8IUVzWffaysYOrHcqhUfGndIWPEJ8u7JQW++o
jX0Iz6bcOyaiX7ndDs+qnKrcWHvq2/vwBpS0HdnRneH34PUpBTNrkyedvAuv
Vxlfs72Ed7dhvls5t634qPVMC/wnim/NBL+j7TfhdSheF96cW+p5A+vbleEe
n4JVoX8j/j9K4rpFdPbVK5i/rbQWbgpcnt8A/4YyZzAwo7SsDt4Vpf9QYXre
xtOIV6usqm/Lqa6pgndYiXQbO/bs2/7/taiwqdcCvxdf1am/F/BE+kHVE4gn
NlvVeAL3I2bJ+xG4X+HOVe8X8+1iofw/8DqE67z6fxHvifi6Wn0e8LtFmXxe
WN8rCqrV54n5PpEinze8AfGCfB+IbxU58n3Bt4nL8n3Cs4ueUer7hucUCXI/
wBsSXZfU/QLPLUp3qvsJ3oiokvsN6z2oPUXdj5j3pNK56n6Fp6GmJep+RnwN
HZX7Hf4oqpTnAZ6WFsjzAs+L6tzqeYLnTXvleYPnTR1a9TzCG0258rzC86FL
09XzDM+X/OV5h6ejUJkP4OloscwX8MZQtMwn8MaSt8w38PxojcxH8PypKEbN
V/D86TNfNZ/BC6B1c9V8h/V6WiPzIeb1FCrzJTwDZf2i5lPEN9B8mW/hG2iW
zMfwAumxzNfwAmm2zOfwjOS+quZ7eEY6J+sBPCPlyXoBL4jSZT2BF0Q6WW/g
mUjIegTPRA0Zar2CZ6JsWc/gBdOzUrXewQumdFkP4ZkpSNZLeGb6XNZTeGaq
k/UWXgjVyXoML4QCZb2GZ6EGWc/hWai7TK338CyULPsBeKE0QfYL8EJphuwn
4IXRHtlvwAujJNmPwAujbNmvwAunw7KfgRdOn8p+B14EvSH7IXgRVCT7JUI/
RX/Ifkr8CxOzdjI=
       "]]}}, {}, {}, {{}, {}}, {{}, {}}}, 
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
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox[
   "\"\[Phi]=3, \\!\\(\\*SubscriptBox[\\(\[Beta]\\), \\(L\\)]\\)=1, \
\\!\\(\\*SubscriptBox[\\(P\\), \\(L\\)]\\)=1/2, \\!\\(\\*SubscriptBox[\\(\
\[Beta]\\), \\(R\\)]\\)=1, \\!\\(\\*SubscriptBox[\\(P\\), \\(R\\)]\\)=2\"", 
    TraditionalForm],
  PlotRange->{{-7.45, 7.45}, {-2.140703940375788, 2.1407039403757775`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"49a7a767-5cf0-\
488f-8fb7-1a278d1e485d"]
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
  ";"}]], "Input",ExpressionUUID->"de0b9b6c-20fc-4c6b-97c0-84761802f294"],

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
  "]"}]], "Input",ExpressionUUID->"c7aa2a3b-8b49-4ace-99c3-da035ba0c82b"],

Cell[BoxData[
 GraphicsBox[{{{}, {{}, {}, 
     {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      0.016666666666666666`], AbsoluteThickness[1.6], LineBox[CompressedData["
1:eJw10X0s1HEcB/DL3HVnTveAu8OdGkqmlMk8/PH7RtiuNEco62Ge5WGnlvhH
xWotq8g1zMJ6Ysq0iWHJ75s/YkmR7TyUnJI73YPzVOTOqvl8P9tnn7322Wef
P967UpSx6TYMBiP0X/+fWyXFXp6KBA/+Mr1lN1yYmsvwnVwCu+KMI/XGzgxi
FzzVsizjLyyCJXjDbza+4DKxGB8IK6vutZjBInxV0vZKXULsjEcD+RFPmMRO
OCZzWM/lLYAdsdJrtbqWbwIL8Rw7L+vUDiNYgBuDuY5ctgHMx2N+D32H1n+C
ebhh8LU0QDMPdsDMnh/vtR06sD1Wn+jjDim1YDv8IKsroJs5B2ZjNFGd9iZz
FszCzXUTKoPqG9gWx1m7nhuLNWAbXBQXffpQyhcwAydMXumXHB8DW+i9sqZI
g24EvEYrS/f7u8cPgFdoY24yj7W9G2ymd8p9Sg7LUsE6Wtx2YfyloZPasoZO
SoyNmUocAA/T1qDRg+awTxRJNEJ/w1ovHyd7SnSnMu2e9Cu5p/Y5l8lXv8+A
dVR2eVNQzv1ZsJlqqyjsOOOtBa9QoeeCSscq58FrVM+coEo1rQdbqLqacq9m
pon8R08DRlq1HDPYBqn6IpM+blsE2yLFh3BRyyIxCw2F1roeUy+B2eiRQp3X
274MtkMDvjkJvbdWwPbImu+j4JxcBTugetbF/mvSX2Ae6r6Uv+ftZ2I+0oS4
GWsrf4MFSOjfWJMavgYWouSz7sIZE7EjepZ8/bGsah3shPpDbmpHg/+AnZH3
eY+7dZPEIhQ9bQrUF22AxShqMNtf4GQBS1CBOFEe+4LYBXE47a2aKCvYFVV4
yt7JpondUFpxw9GunE2wFN3enZUeHLNJ/QWwbSd4
       "]]}}, {}, {}, {{}, {}}, {{}, {}}}, {{}, {{}, {}, 
     {RGBColor[0.880722, 0.611041, 0.142051], PointSize[
      0.011111111111111112`], AbsoluteThickness[1.6], Dashing[{Small, Small}],
       LineBox[CompressedData["
1:eJw11glQ1FUcB/AFYTmFvdllITPxGHXEYwLP3tPC8kg88j4qDDOmCTUlTctr
TDPJyQOPbMZqdIRh8oC80t6vMELTBh0ENUcRORYXYQ9M2UUo9/f1zezs7Lx9
n9//eO/3+3XPyJ6aGazRaPL+/zz7vnL52Uik9ug9LWV7XGpRYCTS0YgNFUlb
WpUmMBLpU++UGT30XrV/37ORQG0nNYd+f9mrhgRGAhnmaedZXB7Fnp2Oeq8k
V5V64Nlp0vnLI6t2e+DZaefezOZTizzw4ul2aGhMfYoHXjwV+Bam6MKeezYy
DJuzWVvlhmcjf8G1rIrDbng28q3tu3hFjhuelb7fcWRgY5obnpVe6ix9bYDZ
DS+O6gf2fOfV2uf3G0fWrV9Yehe54MXRiF6mpqr1LngW0vTImfjWZBc8C83K
WLZ1/wsueGY60FF6ZsrNFnhm0uhqTvmWt8Az0+mrM/39dC3wTBQ1cX7SvYJm
eCY6eWvA5+a0ZnhG2r58TWvJnYfwjNR7uk/b8MlDeEYKji0+u1L3EJ6Bhk4r
3LLsSBM8Ay21iHFXRBM8PUW3HrKvr3TC09PI7xrf2PShE56eJret7F4e5ISn
owknd1TMyHsAT0f9Swpl174PMB9L/eNN5+rONcKPoZmdSdfLJzXCiyGvUhHn
7zqwvist+SUsJy/bgfjRVFyjWz22owFeFB30Nywo+qoBXiTdHDvfoeIa4EVS
U0cP3/gf6uFF0JfH+wxO7lcPL5wKF727c8yJOnhh9Irt2OgZqXXwtJSauWtW
ytlaeFravSC5Pn94LbxQunNpmunj0/fhhVCQuWpL+pD78LrQwNyWkLaCGnjB
NLEwdlyvbjXwgmmvMUNs234PXhBlrfBm3fVXw9NQr6H+XdcXVmO+U310q252
+td34T9VF3NX7ek94Q68djUppXHbr09vY71PpS0flnP80D+I/0StKPFqisfc
gvdYnf0tt3RnxQ14j5T1/UvDR8ytgteq2uf0aymqvA7Po7Ld0y19Xq+A51Kz
fdZR9wuvYb5Z1ecvHTY1/Cp8p1pVpSsKKf4bnkNtmv9zmUj7C+tr1b9P3tQ6
/vgT8e8pZ61+7oXUC5i/rZZUp2VeOkDwK9XqHzOrk5vPwCtX36Z2M9z45gTi
lSjN/hND1049DC9fDX5v+GD3xdznvwV+C/xfdOwL/F/AE7nsCcQTGziewPUI
XI/A9QoHXy/ma0V0W+B+4DnEZr5fxHOKdfw84DeLOn5eWO8SGfw8Me8Rb/Pz
htcq9HMD7wPxH4kkfl/wH4t8fp/wnogsft/wfGI07wd47SKd9wu8p6KM9xO8
TvEZ7zes18huvB8xHyTX8H6FFyzzeD8jfrBcyPsdfhfZk88DvBCJ8wIvVLby
eYKnlZv4vMHTyjF8HuGFyVF8XuGFy6N8nuFFyI183uFFyjbOB/AiZTnnC3hR
cgfnE3jRUnG+gddVLuZ8BC9G+jlfwYuR6ZzP4MXKIZzvsF4ne3I+xLxOIl/C
08vxnE8RXy9HcL6Fr5d2zsfwDDKb8zU8g0Q+h2eU3phAvodnlIO4HsAzyvVc
L+CZZBnXE3gmqeV6A88sz3E9gmeWVq5X8MzyINczeBb5Adc7eBYZzvUQXpwc
xPUSXpw0cj2FFyedXG/hWeWLXI/hWeUurtfwbNK4LlDP4dmki+s9PJuM534A
Xrws5H4BXrys5H4Cnl3u434Dnl2mcT8Czy6Pcb8CL0FGcT8DL0H6ud+Blyg3
cj8EL1H+xP0SvETp4n5K/Aew+mds
       "]]}, 
     {RGBColor[0.560181, 0.691569, 0.194885], PointSize[
      0.011111111111111112`], AbsoluteThickness[1.6], Dashing[{Small, Small}],
       LineBox[CompressedData["
1:eJw11ntQ1FUUB3BYF4RVYJdlWZZXaJo61oSCk6TNPRFU/pGU2miNIymPEisf
IBFag0ZJwtCgY76xFFDJ0UEHnGm030kQlclnIgqCpqiICAgs+2Kh/N1vd2Zn
5zd37+f89ve795wzbtnKeWkaDw+Pn//7PP+++NfzEcHNO246oytsSro6Irjs
0PSUKVGe7KGOCE5bn5EW9/6wsmvn8xHOP1ldIWs8RpQYdYRz4+SB5TvzhxXp
hXFRxqIPEj8ehhfG+Qn22lbLsCK9MK5qXXYh8o4bXiin7s4dX7LfDS+Uo50t
TTHpbngW3lQ1oyd3ihuehQ3l38f+2DUEz8J3ps6fOe/YELwQFvejbI2rh+CF
cMvCtbX62CF4Zn5a/EXRiNUFz8w5t4wHS0+64Jk5/h3h35njghfM+VsMca1x
LnjBrN832SfT6YRn4g2JleXlvzvhmVizYvYnX+Y64Zl4wbyn68/GOeEFcdzS
iSO/2h3wgji7sinVUeOAZ+TD33z3oZLlgGfk2ysexD+Y5oBn5Khrj5wfddvh
BXLKw7VTfSvt8AJ56OrS5uZUOzwDJ5v2Nh6PtMMz8OqSzeNXNdngGfj8PkN2
V7ENnp5dWfozrgQbPD0fuJL1aIVjEPMBXJhkLtUeGYTvz9E+bQc2LR6E588T
Y/VvVekGsd6Pf+isnhVXY0X8sfyy70zT9SVWeGM4J2fD9VitFZ6OM9/O9Amo
GICnY1+/FqMlYQCeL88uv7vFv60fng9rYo6cOJ7ZD280J7VHLbqm7YfnzQFe
W28llvTB8+bfmiOT+kL64Hnxi8MV8Q27n8HT8vf91y5etDyDN4r7T1dP1G3t
hafhQ/XxB3eM7oWn4RPJk4df7+mG58l5780wF9U/hefBvanvxhRv68L8iPLS
nP3TahY/ge9WJu16/GdeeCe8IUVzWffaysYOrHcqhUfGndIWPEJ8u7JQW++o
jX0Iz6bcOyaiX7ndDs+qnKrcWHvq2/vwBpS0HdnRneH34PUpBTNrkyedvAuv
Vxlfs72Ed7dhvls5t634qPVMC/wnim/NBL+j7TfhdSheF96cW+p5A+vbleEe
n4JVoX8j/j9K4rpFdPbVK5i/rbQWbgpcnt8A/4YyZzAwo7SsDt4Vpf9QYXre
xtOIV6usqm/Lqa6pgndYiXQbO/bs2/7/taiwqdcCvxdf1am/F/BE+kHVE4gn
NlvVeAL3I2bJ+xG4X+HOVe8X8+1iofw/8DqE67z6fxHvifi6Wn0e8LtFmXxe
WN8rCqrV54n5PpEinze8AfGCfB+IbxU58n3Bt4nL8n3Cs4ueUer7hucUCXI/
wBsSXZfU/QLPLUp3qvsJ3oiokvsN6z2oPUXdj5j3pNK56n6Fp6GmJep+RnwN
HZX7Hf4oqpTnAZ6WFsjzAs+L6tzqeYLnTXvleYPnTR1a9TzCG0258rzC86FL
09XzDM+X/OV5h6ejUJkP4OloscwX8MZQtMwn8MaSt8w38PxojcxH8PypKEbN
V/D86TNfNZ/BC6B1c9V8h/V6WiPzIeb1FCrzJTwDZf2i5lPEN9B8mW/hG2iW
zMfwAumxzNfwAmm2zOfwjOS+quZ7eEY6J+sBPCPlyXoBL4jSZT2BF0Q6WW/g
mUjIegTPRA0Zar2CZ6JsWc/gBdOzUrXewQumdFkP4ZkpSNZLeGb6XNZTeGaq
k/UWXgjVyXoML4QCZb2GZ6EGWc/hWai7TK338CyULPsBeKE0QfYL8EJphuwn
4IXRHtlvwAujJNmPwAujbNmvwAunw7KfgRdOn8p+B14EvSH7IXgRVCT7JUI/
RX/Ifkr8CxOzdjI=
       "]]}}, {}, {}, {{}, {}}, {{}, {}}}},
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
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotLabel->FormBox[
   "\"dashed: \\!\\(\\*SubsuperscriptBox[OverscriptBox[\\(v\\), \\(~\\)], \\(\
\[PlusMinus]\\), \\(eff\\)]\\)(\[Phi]), \\!\\(\\*SubscriptBox[\\(\[Beta]\\), \
\\(L\\)]\\)=1, \\!\\(\\*SubscriptBox[\\(P\\), \\(L\\)]\\)=1/2, \
\\!\\(\\*SubscriptBox[\\(\[Beta]\\), \\(R\\)]\\)=1, \
\\!\\(\\*SubscriptBox[\\(P\\), \\(R\\)]\\)=2\"", TraditionalForm],
  PlotRange->{{-7.25, 7.25}, {-2, 2}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {0, 0}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"afe7b1ea-81ad-\
49c1-a083-8dd577597f17"]
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
      "]"}]}], "]"}]}], "]"}]], "Input",ExpressionUUID->"827a5e15-8122-43f7-\
9288-23885bce92d7"],

Cell[BoxData[
 GraphicsBox[{{{}, {{}, {}, 
     {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      0.016666666666666666`], AbsoluteThickness[1.6], LineBox[CompressedData["
1:eJwBYQKe/SFib1JlAgAAACUAAAACAAAAJSRRViMR878eAPwk4kzgP3djbAAs
2vK/NcT/LuJM4D9mRJ7tt2byv7E+3XviTOA/3azzHhHv8b9C9ixP40zgP/sv
5FV1dvG/r7pyu+hM4D8wQoqXvvzwv2vDys/1TOA/fxmyu9aB8L//OtgoP03g
P9M2EUWkBfC/dv9QfNlN4D9QZ9DrDRDvvyYXuze4UOA/byX1l5oR7r8jmLt3
8VXgP+YIbWhZD+2/JnUmctxq4D+mOQ0UDQjsvyld2/pZi+A/1y+hLM356r+7
Q4vXDPfgP5/LvR004Om/DEh/Gc+C4T8FvOXM57XovxX+1ZXo+eI/1lTCDc1v
57+gUvM9+4bkP5xouDS5Bea/E0NF4V3b5z9A2ZdkwWfkv8eHy+K2uOo/qZ3Z
k+yT4r8ANOw568HvP1P9uKvtfeC/tLXCcFO08T94U01cNWLcvxqyHdmQfvQ/
Vtp+xxlO179Jmy2MnVD2Pykep0bs6NG/cavy3nLr+D9vgi4yH1XIvxrnaBbJ
kPo/7WxhEAYHub+qhcirTe38PyBKKoFBHmO/Ypj5dlN2/j8YsnHYs+y3P9sr
a3wQZABAWldSUN1XyD/1hSGTfjIBQP040zHwQtI/H1X2gp2EAkBF64X9nkrY
P0UKFqmhhQNAF42SZJEd3j9cK4nl2FYFQC0Wikr14+E/YrLNJRLgBkBqj6c4
a5TkP6SUivvgAwpAspB3tV0o5z/X/ug2wQsNQDtfOILXkuk/5p4OfcEzEkC8
5hKWk9/rP7JtrhvUnBZAbGvriLTK7D/WAwblz3AdQL/4OcM=
       "]], LineBox[CompressedData["
1:eJwBUQGu/iFib1JlAgAAABQAAAACAAAAmUkJOJeB8j/WAwblz3AdQM07mhtM
1vI/mM9rWVsmFkCiUdZtvrTzP00NMyrSNBFAyCxrVr6J9D9tBMIjzLgKQP1w
KlEJWPU/iPpS8hXdB0CeBnLHgB32PzWzn8MjVAVAuXRwJ8bb9j/qIr7gqFsE
QOA6HO2akvc/QsW5EMyKA0ATMqaYY0P4PzR5e7xjQwNAYV4fE+Hu+D/2aZYu
XA8DQKphhKMelvk/OwonWHcAA0DHOofn0zn6P6/IFrBL9wJAKGkjjp3a+j/s
cELxHvUCQE3f7jbrePs/S1coRfvzAkBHy2oyEhX8P2xK1m3B8wJAdRhXSlKv
/D9v0ntSp/MCQAkJtK7gR/0/P3sS86LzAkCQJB7KHt/9P5Vzjzuh8wJAZH2f
S7hr/j+w8Pf8oPMCQIwmaGU5UP4/EAJk56DzAkA245TU
       "]]}}, {}, {}, {{}, {}}, {{}, {}}}, {{{}, {}, 
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
      Annotation[#, "Charting`Private`Tag$126743#1"]& ]}, {}, {}}, {{{}, {}, 
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
      Annotation[#, "Charting`Private`Tag$126785#1"]& ]}, {}, {}}, 
   {Dashing[{Small, Small}], 
    LineBox[{{1.0375038278885511`, 0}, {1.0375038278885511`, 10}}]}},
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
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{{-1.1916840907817996`, 1.9012988046668733`}, {
    0, 7.360168055050016}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"59f67ce3-67cb-\
43a4-80c7-82a4fb4803e0"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1722, 857},
WindowMargins->{{162, Automatic}, {86, Automatic}},
FrontEndVersion->"11.1 for Microsoft Windows (64-bit) (April 18, 2017)",
StyleDefinitions->"Default.nb"
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
Cell[1486, 35, 121, 0, 63, "Section", "ExpressionUUID" -> \
"98acd184-691c-49c2-9c35-e03b8e74bf1c"],
Cell[1610, 37, 392, 9, 87, "Text", "ExpressionUUID" -> \
"3d263d29-0d9c-428f-a310-6ed00c65f3b1"],
Cell[CellGroupData[{
Cell[2027, 50, 96, 0, 43, "Subsection", "ExpressionUUID" -> \
"98003d4f-d2aa-4601-8834-cb4925070b2f"],
Cell[2126, 52, 361, 10, 30, "Input", "ExpressionUUID" -> \
"e5e9d5bd-7651-44b0-8311-b8143613aa88"],
Cell[CellGroupData[{
Cell[2512, 66, 166, 4, 30, "Input", "ExpressionUUID" -> \
"70bcf4a3-b2da-4898-957c-c7bfe3e96483"],
Cell[2681, 72, 884, 25, 97, "Output", "ExpressionUUID" -> \
"08a698f7-41db-4933-b008-af503fd4ea37"]
}, Open  ]],
Cell[3580, 100, 423, 14, 62, "Input", "ExpressionUUID" -> \
"bc2df0a8-b664-4c1c-ad5f-8ca140c7ba4b"]
}, Open  ]],
Cell[CellGroupData[{
Cell[4040, 119, 155, 2, 43, "Subsection", "ExpressionUUID" -> \
"c6c99a46-ffb6-42d2-af69-d62a1612d777"],
Cell[4198, 123, 681, 20, 53, "Input", "ExpressionUUID" -> \
"19e987ff-e7e4-486f-a161-7a5fc3c26656"],
Cell[CellGroupData[{
Cell[4904, 147, 872, 25, 50, "Input", "ExpressionUUID" -> \
"bbe23bd4-68f8-4723-85dd-bad3faf5ff75"],
Cell[5779, 174, 106, 0, 30, "Output", "ExpressionUUID" -> \
"17688fa1-bee5-4a6a-8bdd-f88a3bce7201"]
}, Open  ]],
Cell[CellGroupData[{
Cell[5922, 179, 1804, 51, 85, "Input", "ExpressionUUID" -> \
"8e965e24-c148-4e7b-9f58-fd5d5a1e11c7"],
Cell[7729, 232, 30554, 577, 285, "Output", "ExpressionUUID" -> \
"04fdad47-dbba-4e8e-801f-79ea661b4594"]
}, Open  ]],
Cell[CellGroupData[{
Cell[38320, 814, 153, 3, 30, "Input", "ExpressionUUID" -> \
"669a0975-cc55-4ad9-bfa8-3ba987e17283"],
Cell[38476, 819, 194, 5, 30, "Output", "ExpressionUUID" -> \
"57c637cd-ff16-47dc-a0df-9b85b596451a"]
}, Open  ]],
Cell[38685, 827, 2175, 64, 128, "Input", "ExpressionUUID" -> \
"5a39b1ac-f5f0-44b1-97c2-9ce889c00bae"],
Cell[CellGroupData[{
Cell[40885, 895, 250, 5, 50, "Input", "ExpressionUUID" -> \
"c8197f63-c01c-4c85-8a26-939fc65732ed"],
Cell[41138, 902, 910, 28, 76, "Output", "ExpressionUUID" -> \
"3352de06-8611-49d0-bd35-0084af135fda"]
}, Open  ]],
Cell[CellGroupData[{
Cell[42085, 935, 250, 5, 50, "Input", "ExpressionUUID" -> \
"dac08dfd-c066-45bf-86bd-fdde847b6316"],
Cell[42338, 942, 1789, 56, 76, "Output", "ExpressionUUID" -> \
"f90e4ae7-f4aa-4905-b3e9-8a21a1a8f816"]
}, Open  ]],
Cell[CellGroupData[{
Cell[44164, 1003, 1082, 30, 50, "Input", "ExpressionUUID" -> \
"579d8a96-1925-43b9-be8d-5fd2af7b03a2"],
Cell[45249, 1035, 317, 6, 34, "Output", "ExpressionUUID" -> \
"a3f91e6e-7a0b-44f8-8ad5-f74dac709ad5"]
}, Open  ]],
Cell[CellGroupData[{
Cell[45603, 1046, 419, 11, 50, "Input", "ExpressionUUID" -> \
"2f6ba527-4be5-4943-8e85-c82415d2fe03"],
Cell[46025, 1059, 273, 9, 68, "Output", "ExpressionUUID" -> \
"9812f8b4-23d1-4b3a-b3c4-609ba96cadb0"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[46347, 1074, 107, 0, 43, "Subsection", "ExpressionUUID" -> \
"571d6d15-a5c4-41e5-97c2-a616c9c63355"],
Cell[46457, 1076, 744, 23, 54, "Input", "ExpressionUUID" -> \
"299199c3-78c8-4d37-940d-5d52ba6a4d07"],
Cell[CellGroupData[{
Cell[47226, 1103, 514, 15, 74, "Input", "ExpressionUUID" -> \
"20806a5a-87b2-4921-93f1-847ff90bea9e"],
Cell[47743, 1120, 4716, 98, 243, "Output", "ExpressionUUID" -> \
"e69df6c3-5e7c-4771-bdb8-d7331cac4c26"]
}, Open  ]],
Cell[CellGroupData[{
Cell[52496, 1223, 387, 11, 30, "Input", "ExpressionUUID" -> \
"298b2557-fd46-416c-a211-c474b7eeb128"],
Cell[52886, 1236, 83, 0, 30, "Output", "ExpressionUUID" -> \
"1b487469-1299-4a23-a806-4e76731db4c5"]
}, Open  ]],
Cell[CellGroupData[{
Cell[53006, 1241, 1579, 47, 93, "Input", "ExpressionUUID" -> \
"831729ed-4753-4bc1-954a-7624928dd41c"],
Cell[54588, 1290, 126, 2, 54, "Output", "ExpressionUUID" -> \
"6913e72e-2ef0-4fd7-aa09-24e51a63dcb8"],
Cell[54717, 1294, 103, 1, 54, "Output", "ExpressionUUID" -> \
"fc1d31ed-c176-45fd-8063-1664891bc085"],
Cell[54823, 1297, 83, 0, 30, "Output", "ExpressionUUID" -> \
"7d272208-fb1f-48e6-9c93-9bc7dc4497e5"]
}, Open  ]],
Cell[54921, 1300, 802, 23, 55, "Input", "ExpressionUUID" -> \
"07de77ec-9bba-40ce-abdb-a4c55f2aea88"],
Cell[CellGroupData[{
Cell[55748, 1327, 264, 6, 50, "Input", "ExpressionUUID" -> \
"24432f2d-5963-4869-9913-5f8113794664"],
Cell[56015, 1335, 1398, 44, 206, "Output", "ExpressionUUID" -> \
"c114490c-0ad3-4d38-9eaa-a462ebde8985"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[57462, 1385, 127, 0, 43, "Subsection", "ExpressionUUID" -> \
"462abb0a-bde3-41c2-95dc-806dc36a2626"],
Cell[57592, 1387, 1820, 59, 116, "Input", "ExpressionUUID" -> \
"804a1887-5e8c-476f-b5b7-6e9c5627e436"],
Cell[CellGroupData[{
Cell[59437, 1450, 1715, 46, 88, "Input", "ExpressionUUID" -> \
"846fadfa-836a-478a-9b87-0262c88b1d66"],
Cell[61155, 1498, 83, 0, 30, "Output", "ExpressionUUID" -> \
"01fca743-cf0f-43b4-b3aa-cb4057f65c1b"],
Cell[61241, 1500, 83, 0, 30, "Output", "ExpressionUUID" -> \
"4978fb7d-7e97-432b-a316-bcb68078bc6e"],
Cell[61327, 1502, 83, 0, 30, "Output", "ExpressionUUID" -> \
"764b6c00-bcb0-41af-80a6-fd0011f57ed9"]
}, Open  ]],
Cell[CellGroupData[{
Cell[61447, 1507, 3398, 99, 184, "Input", "ExpressionUUID" -> \
"b7d1f55f-b246-4dcd-95a3-73b85075300b"],
Cell[64848, 1608, 83, 0, 30, "Output", "ExpressionUUID" -> \
"83d12aa4-dec8-461b-9fec-6924d3314993"],
Cell[64934, 1610, 83, 0, 30, "Output", "ExpressionUUID" -> \
"07d5c478-d3f3-4e8a-a901-378a9562114f"]
}, Open  ]],
Cell[CellGroupData[{
Cell[65054, 1615, 817, 23, 53, "Input", "ExpressionUUID" -> \
"5b0a583e-b5b0-4dcc-9171-13cc284e9093"],
Cell[65874, 1640, 7720, 149, 264, "Output", "ExpressionUUID" -> \
"11c2379c-421d-44a9-a579-bd3cdcee8a00"]
}, Open  ]],
Cell[CellGroupData[{
Cell[73631, 1794, 1318, 36, 100, "Input", "ExpressionUUID" -> \
"e76ca031-615a-43e9-b3a9-687035afef19"],
Cell[74952, 1832, 106, 0, 30, "Output", "ExpressionUUID" -> \
"20ae74b5-2196-4afe-8fa3-72b502cc28ad"]
}, Open  ]],
Cell[CellGroupData[{
Cell[75095, 1837, 440, 12, 57, "Input", "ExpressionUUID" -> \
"be36f9af-85b3-4da2-87dc-b05f8cb45b87"],
Cell[75538, 1851, 83, 0, 30, "Output", "ExpressionUUID" -> \
"f00d22af-5e68-4f97-b87c-9b5b7231e48c"]
}, Open  ]],
Cell[CellGroupData[{
Cell[75658, 1856, 826, 24, 74, "Input", "ExpressionUUID" -> \
"40ecec62-058c-44a0-88c5-0d2e9232e2c5"],
Cell[76487, 1882, 118, 1, 30, "Output", "ExpressionUUID" -> \
"c9b621c7-027b-4375-890a-467840dab51d"]
}, Open  ]],
Cell[76620, 1886, 2855, 91, 194, "Input", "ExpressionUUID" -> \
"e9dc4ddd-b1d7-4150-bb8d-b2cdd1e70131"],
Cell[CellGroupData[{
Cell[79500, 1981, 387, 11, 59, "Input", "ExpressionUUID" -> \
"5655ae7c-638f-477a-9fb1-cf9ea30487d2"],
Cell[79890, 1994, 83, 0, 30, "Output", "ExpressionUUID" -> \
"04ff13f8-939c-43e4-a70a-2440fd635c55"]
}, Open  ]],
Cell[CellGroupData[{
Cell[80010, 1999, 2774, 79, 203, "Input", "ExpressionUUID" -> \
"3e8d24ce-be15-4fc9-876e-32b5c10d3c7f"],
Cell[82787, 2080, 508, 15, 53, "Output", "ExpressionUUID" -> \
"b01afdfc-0813-44a9-8802-31d3496f54f5"],
Cell[83298, 2097, 345, 10, 53, "Output", "ExpressionUUID" -> \
"b33f1f4c-03b9-4fa7-8070-6b8e62680278"]
}, Open  ]],
Cell[CellGroupData[{
Cell[83680, 2112, 4233, 121, 242, "Input", "ExpressionUUID" -> \
"e65c47d3-01e6-47ac-b6ce-f0f31118aa0c"],
Cell[87916, 2235, 573, 17, 53, "Output", "ExpressionUUID" -> \
"28a9dba0-2289-4253-b0a0-a6f4af80424a"],
Cell[88492, 2254, 346, 10, 53, "Output", "ExpressionUUID" -> \
"e13cf10d-40a9-41d9-ad49-da9a14f7b5bb"]
}, Open  ]],
Cell[CellGroupData[{
Cell[88875, 2269, 4725, 142, 184, "Input", "ExpressionUUID" -> \
"13ea61df-0304-4176-8d50-711c5d30dcc6"],
Cell[93603, 2413, 1339, 43, 53, "Output", "ExpressionUUID" -> \
"70909aaf-7026-435c-bd14-a7056219d597"]
}, Open  ]],
Cell[CellGroupData[{
Cell[94979, 2461, 1591, 44, 95, "Input", "ExpressionUUID" -> \
"6148d299-04d8-441a-97f8-0688a3834fce"],
Cell[96573, 2507, 315, 6, 34, "Output", "ExpressionUUID" -> \
"a01cba18-88e5-4c4c-966b-31ac031cd5bd"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[96937, 2519, 120, 0, 43, "Subsection", "ExpressionUUID" -> \
"a6004ea4-234d-4ba1-8b84-fcf5573550c4"],
Cell[CellGroupData[{
Cell[97082, 2523, 1157, 36, 56, "Input", "ExpressionUUID" -> \
"d009cf90-1069-4e74-9779-fa11c84f415c"],
Cell[98242, 2561, 582, 19, 66, "Output", "ExpressionUUID" -> \
"06060087-da9b-4d74-9a53-780ddea674ac"]
}, Open  ]],
Cell[CellGroupData[{
Cell[98861, 2585, 944, 30, 56, "Input", "ExpressionUUID" -> \
"6a6542b4-38e8-48d8-a5f6-16f5d0785ebf"],
Cell[99808, 2617, 818, 24, 66, "Output", "ExpressionUUID" -> \
"2d2b25a2-9d3a-4f33-8dd6-c8d32cf84e17"]
}, Open  ]],
Cell[100641, 2644, 1208, 36, 132, "Input", "ExpressionUUID" -> \
"ec37354f-2278-4ca5-85be-3caa76d3573f"],
Cell[101852, 2682, 261, 6, 51, "Input", "ExpressionUUID" -> \
"eadfcd33-9879-4ffc-b763-c0a17de33ed1"],
Cell[CellGroupData[{
Cell[102138, 2692, 410, 10, 50, "Input", "ExpressionUUID" -> \
"6d80e087-6a13-4958-afeb-521739dfe5af"],
Cell[102551, 2704, 113, 1, 30, "Output", "ExpressionUUID" -> \
"928f8659-a383-4a16-87f8-b451d26554b9"],
Cell[102667, 2707, 155, 4, 30, "Output", "ExpressionUUID" -> \
"01a7c8f8-3dfb-449d-b641-89351c600c19"]
}, Open  ]],
Cell[CellGroupData[{
Cell[102859, 2716, 635, 20, 55, "Input", "ExpressionUUID" -> \
"1e73f05d-4a1a-4e32-b42a-3745354881cb"],
Cell[103497, 2738, 437, 14, 54, "Output", "ExpressionUUID" -> \
"50bdeb4c-da20-4fb2-b455-e5f831127212"]
}, Open  ]],
Cell[CellGroupData[{
Cell[103971, 2757, 385, 10, 50, "Input", "ExpressionUUID" -> \
"e1051be7-227e-429b-8632-562ed1f1fbd6"],
Cell[104359, 2769, 14873, 265, 238, "Output", "ExpressionUUID" -> \
"18e02bc3-949b-4370-97fb-f012bcd1dc2a"]
}, Open  ]],
Cell[CellGroupData[{
Cell[119269, 3039, 2545, 77, 164, "Input", "ExpressionUUID" -> \
"226859df-312b-4a56-97f2-aeda9862dfb5"],
Cell[121817, 3118, 106, 0, 30, "Output", "ExpressionUUID" -> \
"25fb4ae0-32fc-4cf2-92bb-27de735c73a7"],
Cell[121926, 3120, 105, 0, 30, "Output", "ExpressionUUID" -> \
"4034d848-78f4-450c-9c65-a475cb4d7d88"],
Cell[122034, 3122, 106, 0, 30, "Output", "ExpressionUUID" -> \
"a872e23a-b7dd-495b-8bc6-602ade5c61b5"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[122189, 3128, 95, 0, 43, "Subsection", "ExpressionUUID" -> \
"62acd339-d31f-40d7-bf47-72e0a34a8e78"],
Cell[122287, 3130, 369, 11, 27, "DisplayFormula", "ExpressionUUID" -> \
"c5927229-59e0-487b-a5bd-07d86b58fa7e"],
Cell[122659, 3143, 406, 8, 30, "Text", "ExpressionUUID" -> \
"2f7ed5d7-ce3f-4cf6-8060-5a4ee5fb10fc"],
Cell[123068, 3153, 2193, 62, 107, "Input", "ExpressionUUID" -> \
"998dc8a2-734f-497d-8295-235d017ef77d"],
Cell[125264, 3217, 652, 20, 73, "Input", "ExpressionUUID" -> \
"0f5856c6-7c29-4c61-a3d7-1f739ebcd657"],
Cell[CellGroupData[{
Cell[125941, 3241, 567, 16, 50, "Input", "ExpressionUUID" -> \
"864a7c89-72d8-4a8a-9eda-d36a80b96183"],
Cell[126511, 3259, 83, 0, 30, "Output", "ExpressionUUID" -> \
"b2cc64f1-81f5-499a-949a-aa8a3260d147"]
}, Open  ]],
Cell[CellGroupData[{
Cell[126631, 3264, 3095, 81, 104, "Input", "ExpressionUUID" -> \
"b0a2d0c9-228d-477c-9e20-176db5494d9e"],
Cell[129729, 3347, 2450, 52, 341, "Output", "ExpressionUUID" -> \
"553238a4-126e-4e00-b3c2-cdecab719282"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[132228, 3405, 99, 0, 43, "Subsection", "ExpressionUUID" -> \
"67fc98f0-0f72-4479-aeac-9ddff4f8e343"],
Cell[132330, 3407, 588, 19, 27, "DisplayFormula", "ExpressionUUID" -> \
"c0aa9aa5-acd3-4dec-9e3d-77e6965aed16"],
Cell[132921, 3428, 1302, 36, 176, "Input", "ExpressionUUID" -> \
"532c4b43-785c-4c70-9b3a-1f6edad4846c"],
Cell[CellGroupData[{
Cell[134248, 3468, 402, 10, 50, "Input", "ExpressionUUID" -> \
"bf1d2962-72f8-4c5d-860a-4ce9e5ba9ac7"],
Cell[134653, 3480, 346, 11, 30, "Output", "ExpressionUUID" -> \
"351c00a0-fa3d-45ba-845c-5f2886080a4f"]
}, Open  ]],
Cell[135014, 3494, 1766, 47, 105, "Input", "ExpressionUUID" -> \
"724bbb77-a6cd-427e-b78f-317652c8df33"],
Cell[136783, 3543, 1760, 51, 120, "Input", "ExpressionUUID" -> \
"c33106d4-0d9a-486b-aab2-89801dfea7cf"],
Cell[CellGroupData[{
Cell[138568, 3598, 524, 14, 69, "Input", "ExpressionUUID" -> \
"af7b866e-c3f2-4eee-a5c4-19f000a8b3d2"],
Cell[139095, 3614, 1718, 54, 30, "Output", "ExpressionUUID" -> \
"c4403566-31e1-4087-8749-5159c46ef297"],
Cell[140816, 3670, 84, 0, 30, "Output", "ExpressionUUID" -> \
"64a03641-7d93-46aa-a3cc-2c8fcadd4a74"]
}, Open  ]],
Cell[CellGroupData[{
Cell[140937, 3675, 413, 11, 50, "Input", "ExpressionUUID" -> \
"46981e2c-642c-4afe-ae89-0f291b5d165d"],
Cell[141353, 3688, 83, 0, 30, "Output", "ExpressionUUID" -> \
"87ae79b9-e8fb-4fe1-922d-0283cc1a713e"]
}, Open  ]],
Cell[CellGroupData[{
Cell[141473, 3693, 3728, 95, 146, "Input", "ExpressionUUID" -> \
"c2dafce8-3ff3-40d3-ba97-51a0071b49f8"],
Cell[145204, 3790, 2462, 51, 361, "Output", "ExpressionUUID" -> \
"2a287d6c-907c-4fd6-b4df-11fa5f065233"]
}, Open  ]],
Cell[CellGroupData[{
Cell[147703, 3846, 1847, 46, 107, "Input", "ExpressionUUID" -> \
"82686317-b6f5-45c1-ad94-e27c4bb257de"],
Cell[149553, 3894, 3254, 68, 264, "Output", "ExpressionUUID" -> \
"dc6dce5a-ccc6-4773-a4a8-c190f534fb24"]
}, Open  ]],
Cell[CellGroupData[{
Cell[152844, 3967, 1903, 52, 107, "Input", "ExpressionUUID" -> \
"12e36b82-42b3-43b2-ae05-4fbe5f86fd23"],
Cell[154750, 4021, 101, 0, 30, "Output", "ExpressionUUID" -> \
"712b377b-50da-4c9b-bde1-0b6f78e0d69c"]
}, Open  ]],
Cell[CellGroupData[{
Cell[154888, 4026, 3434, 89, 126, "Input", "ExpressionUUID" -> \
"48cb0714-c5f2-4013-90b7-868a9e1cd018"],
Cell[158325, 4117, 2489, 52, 361, "Output", "ExpressionUUID" -> \
"5cc9bb13-34ec-42bb-8d73-46bb4dc03426"]
}, Open  ]],
Cell[CellGroupData[{
Cell[160851, 4174, 1873, 47, 107, "Input", "ExpressionUUID" -> \
"f57ce8b2-eebd-4e5e-b566-a5bd3cd9a105"],
Cell[162727, 4223, 3253, 68, 264, "Output", "ExpressionUUID" -> \
"23054882-7b18-4f6c-9a33-66472b07c530"]
}, Open  ]],
Cell[CellGroupData[{
Cell[166017, 4296, 685, 19, 74, "Input", "ExpressionUUID" -> \
"3de1bb70-234e-4a7e-9f50-2ef042039060"],
Cell[166705, 4317, 5500, 94, 191, "Output", "ExpressionUUID" -> \
"c969965e-ac6e-4dcb-8ef8-c8217ec42766"]
}, Open  ]],
Cell[CellGroupData[{
Cell[172242, 4416, 1929, 53, 107, "Input", "ExpressionUUID" -> \
"d0eba01b-076b-4ace-9c66-56d0c0758bbf"],
Cell[174174, 4471, 101, 0, 30, "Output", "ExpressionUUID" -> \
"e50d5a3b-1652-4eef-80a0-5550f5305b5f"]
}, Open  ]],
Cell[CellGroupData[{
Cell[174312, 4476, 3409, 88, 126, "Input", "ExpressionUUID" -> \
"fa032e4f-6269-464b-9487-bd5ce3d1ebc0"],
Cell[177724, 4566, 2462, 51, 361, "Output", "ExpressionUUID" -> \
"44cb7832-cc12-49d5-afbb-a01ae0b8f9d2"]
}, Open  ]],
Cell[CellGroupData[{
Cell[180223, 4622, 1617, 43, 120, "Input", "ExpressionUUID" -> \
"239169c3-9c8d-4991-90e0-6d9d3cf8a474"],
Cell[181843, 4667, 3133, 66, 269, "Output", "ExpressionUUID" -> \
"2189858a-776d-4c07-a7ab-af5eb650066e"]
}, Open  ]],
Cell[CellGroupData[{
Cell[185013, 4738, 2016, 49, 107, "Input", "ExpressionUUID" -> \
"b9aa39c3-1272-4ed5-9fd0-fd84934be0be"],
Cell[187032, 4789, 3257, 68, 264, "Output", "ExpressionUUID" -> \
"db62edf3-afea-4594-bcd7-1af283eb4ca1"]
}, Open  ]],
Cell[CellGroupData[{
Cell[190326, 4862, 1903, 52, 107, "Input", "ExpressionUUID" -> \
"cbcafe72-b077-4c0d-9bef-5e97808534d5"],
Cell[192232, 4916, 101, 0, 30, "Output", "ExpressionUUID" -> \
"f2e9567a-66d3-4c80-8c0f-c0a1db7357bb"]
}, Open  ]],
Cell[CellGroupData[{
Cell[192370, 4921, 3766, 96, 146, "Input", "ExpressionUUID" -> \
"86c207be-c866-4e02-8708-65030c5142e0"],
Cell[196139, 5019, 2493, 52, 361, "Output", "ExpressionUUID" -> \
"7dde1ac5-b03f-45c6-8d27-52f332fe6376"]
}, Open  ]],
Cell[CellGroupData[{
Cell[198669, 5076, 1897, 48, 107, "Input", "ExpressionUUID" -> \
"9a60540b-ea73-4fcb-9cc9-5c0611a86d8b"],
Cell[200569, 5126, 6382, 120, 264, "Output", "ExpressionUUID" -> \
"489e86ff-5ef0-4115-98d8-7f2ba97d3f10"]
}, Open  ]],
Cell[CellGroupData[{
Cell[206988, 5251, 1953, 54, 107, "Input", "ExpressionUUID" -> \
"db70b2ff-3c25-499e-91ed-fd1820719746"],
Cell[208944, 5307, 101, 0, 30, "Output", "ExpressionUUID" -> \
"5c50f2ec-d801-4881-9739-e1ffe8f7e4d2"]
}, Open  ]],
Cell[209060, 5310, 1954, 52, 120, "Input", "ExpressionUUID" -> \
"596e3af9-2106-4566-9203-d38093c8e831"]
}, Open  ]],
Cell[CellGroupData[{
Cell[211051, 5367, 124, 0, 43, "Subsection", "ExpressionUUID" -> \
"6a000488-20eb-42b8-a816-36a5641db71c"],
Cell[211178, 5369, 1669, 48, 121, "Input", "ExpressionUUID" -> \
"723efc31-bd9a-4f41-affc-6ae6ef501f14"],
Cell[212850, 5419, 406, 9, 50, "Input", "ExpressionUUID" -> \
"5afa3073-7dc9-4a41-886e-37c0511c7396"],
Cell[CellGroupData[{
Cell[213281, 5432, 2075, 54, 127, "Input", "ExpressionUUID" -> \
"3c8d0f73-658c-493a-8616-e193af1a1bad"],
Cell[215359, 5488, 2716, 59, 264, "Output", "ExpressionUUID" -> \
"0aa55ba4-7692-497e-bfe5-5a464d3ff35f"]
}, Open  ]],
Cell[CellGroupData[{
Cell[218112, 5552, 2049, 53, 127, "Input", "ExpressionUUID" -> \
"fda32e61-0882-4d13-b22c-93d48a448391"],
Cell[220164, 5607, 2682, 59, 264, "Output", "ExpressionUUID" -> \
"25a328d8-3a54-47b9-9fdc-ee6192d18ad9"]
}, Open  ]],
Cell[CellGroupData[{
Cell[222883, 5671, 2099, 55, 127, "Input", "ExpressionUUID" -> \
"852806c1-64f2-4b39-94b8-953ff43eb4a9"],
Cell[224985, 5728, 5920, 112, 264, "Output", "ExpressionUUID" -> \
"00ca5bc7-daa3-4343-9ffb-86151559508f"]
}, Open  ]],
Cell[CellGroupData[{
Cell[230942, 5845, 2204, 57, 127, "Input", "ExpressionUUID" -> \
"07e08285-d142-4d8f-8f7c-b461b9ecaeba"],
Cell[233149, 5904, 2709, 59, 264, "Output", "ExpressionUUID" -> \
"debb1466-9451-4cff-8e10-8d31ba524550"]
}, Open  ]],
Cell[CellGroupData[{
Cell[235895, 5968, 2178, 56, 127, "Input", "ExpressionUUID" -> \
"231c7f7e-2f77-4fa9-863e-bdf5c8846f20"],
Cell[238076, 6026, 2693, 59, 266, "Output", "ExpressionUUID" -> \
"7275031a-3610-4eaa-93af-7afc4d9cf416"]
}, Open  ]],
Cell[240784, 6088, 272, 6, 30, "Input", "ExpressionUUID" -> \
"a2005a8c-f2cb-440d-baae-af071337a567"]
}, Open  ]],
Cell[CellGroupData[{
Cell[241093, 6099, 117, 0, 43, "Subsection", "ExpressionUUID" -> \
"c40eadb7-8133-4813-8206-2eb812436431"],
Cell[241213, 6101, 718, 21, 94, "Input", "ExpressionUUID" -> \
"2704e7c9-5ca3-4cc3-be09-408649d69941"],
Cell[241934, 6124, 1688, 45, 74, "Input", "ExpressionUUID" -> \
"9e242d83-5f91-4b03-94f2-aa0a0d15a0f2"],
Cell[CellGroupData[{
Cell[243647, 6173, 1004, 27, 32, "Input", "ExpressionUUID" -> \
"37061aa4-be4a-41df-a4a1-fc4a02ba851c"],
Cell[244654, 6202, 9700, 176, 258, "Output", "ExpressionUUID" -> \
"d2a705c0-51fd-4b93-8a54-f4ccf2a3c7e0"]
}, Open  ]],
Cell[CellGroupData[{
Cell[254391, 6383, 485, 14, 50, "Input", "ExpressionUUID" -> \
"7feddeca-333f-47ed-806b-8d6312fde511"],
Cell[254879, 6399, 240, 6, 30, "Output", "ExpressionUUID" -> \
"2237203f-6672-4e43-a4da-c2c7bfdf3bb8"]
}, Open  ]],
Cell[CellGroupData[{
Cell[255156, 6410, 510, 15, 32, "Input", "ExpressionUUID" -> \
"44f81f8d-fa52-4de9-a01f-ffa9525a918f"],
Cell[255669, 6427, 101, 0, 30, "Output", "ExpressionUUID" -> \
"0e03328e-c8ca-45fb-b755-e6eae5b0502a"]
}, Open  ]],
Cell[255785, 6430, 467, 12, 50, "Input", "ExpressionUUID" -> \
"da5645df-4552-44b8-8aee-5755838e4fa7"],
Cell[CellGroupData[{
Cell[256277, 6446, 375, 10, 50, "Input", "ExpressionUUID" -> \
"fb8f99e1-974c-4372-959c-2fe18130d0e8"],
Cell[256655, 6458, 83, 0, 30, "Output", "ExpressionUUID" -> \
"b4940f46-1848-4f77-b40c-b6cb8121f206"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[256787, 6464, 186, 3, 43, "Subsection", "ExpressionUUID" -> \
"1d8880d3-14bc-40ba-9225-f99c1000cb50"],
Cell[256976, 6469, 1744, 50, 99, "Input", "ExpressionUUID" -> \
"e3c5839b-4ec6-49c1-a5ab-f953c2dfe145"],
Cell[258723, 6521, 1386, 39, 53, "Input", "ExpressionUUID" -> \
"0d0e4eae-d7b0-43ef-b5dc-1ee27c91062b"],
Cell[CellGroupData[{
Cell[260134, 6564, 514, 13, 74, "Input", "ExpressionUUID" -> \
"d1592f0b-8243-4141-9613-e00fe9e71809"],
Cell[260651, 6579, 4532, 75, 126, "Output", "ExpressionUUID" -> \
"86208a0e-987c-4f76-bae9-2ffbeedefc58"]
}, Open  ]],
Cell[CellGroupData[{
Cell[265220, 6659, 1653, 44, 120, "Input", "ExpressionUUID" -> \
"0351a4c1-d239-4905-a8a0-fb635f1f4be4"],
Cell[266876, 6705, 3148, 67, 275, "Output", "ExpressionUUID" -> \
"304f3193-56bc-4a47-85b1-fb950230a9c3"]
}, Open  ]],
Cell[CellGroupData[{
Cell[270061, 6777, 1775, 51, 74, "Input", "ExpressionUUID" -> \
"12ea1a8d-eb15-4f40-89db-78ff751bbdff"],
Cell[271839, 6830, 3066, 67, 236, "Output", "ExpressionUUID" -> \
"13412f70-e1a6-424d-aa6f-3634dd1a831c"]
}, Open  ]],
Cell[CellGroupData[{
Cell[274942, 6902, 2170, 57, 127, "Input", "ExpressionUUID" -> \
"96bd7f34-0345-4e32-91e3-7d61f085a3c9"],
Cell[277115, 6961, 2317, 53, 264, "Output", "ExpressionUUID" -> \
"a103e792-3d65-4ff7-b3d9-f06e6c71bab5"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[279481, 7020, 100, 0, 43, "Subsection", "ExpressionUUID" -> \
"bca086a3-af2f-40d2-b324-5a2369254f94"],
Cell[279584, 7022, 1506, 41, 124, "Input", "ExpressionUUID" -> \
"ed834510-5b63-4d64-ad84-a5002f35f6dc"]
}, Open  ]],
Cell[CellGroupData[{
Cell[281127, 7068, 117, 0, 43, "Subsection", "ExpressionUUID" -> \
"c998c043-24f9-473e-9fca-27b3d49611b1"],
Cell[CellGroupData[{
Cell[281269, 7072, 213, 4, 34, "Subsubsection", "ExpressionUUID" -> \
"65e03219-e63e-4455-9a1a-76eaec239477"],
Cell[281485, 7078, 1322, 36, 74, "Input", "ExpressionUUID" -> \
"c455d724-6083-46ea-b8e6-f7b5f6878c16"],
Cell[CellGroupData[{
Cell[282832, 7118, 1643, 45, 120, "Input", "ExpressionUUID" -> \
"9da64d35-aa97-40d8-8dc0-301da6355981"],
Cell[284478, 7165, 3157, 68, 281, "Output", "ExpressionUUID" -> \
"eec47714-964c-4977-8c31-c7ab6da9091b"]
}, Open  ]],
Cell[CellGroupData[{
Cell[287672, 7238, 1617, 44, 120, "Input", "ExpressionUUID" -> \
"95bce5a9-2483-4433-a919-81dd78099410"],
Cell[289292, 7284, 3205, 69, 271, "Output", "ExpressionUUID" -> \
"ec4eb3fa-ba85-4888-9042-6b326d0bd8cc"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[292546, 7359, 308, 8, 37, "Subsubsection", "ExpressionUUID" -> \
"eeb446d0-ec6b-44a6-9cc7-f8514260500c"],
Cell[292857, 7369, 1034, 30, 53, "Input", "ExpressionUUID" -> \
"ac8d678e-f88c-48cc-9681-0d3f228df99a"],
Cell[CellGroupData[{
Cell[293916, 7403, 1645, 45, 120, "Input", "ExpressionUUID" -> \
"b56e228d-84bf-4f00-9aee-ecbb9f0ef2af"],
Cell[295564, 7450, 3194, 69, 278, "Output", "ExpressionUUID" -> \
"a45a4f84-6ea0-4a06-978d-a4cf58075d44"]
}, Open  ]],
Cell[CellGroupData[{
Cell[298795, 7524, 1619, 44, 120, "Input", "ExpressionUUID" -> \
"516632fa-9587-46f4-8f59-76e4aa2b2bc9"],
Cell[300417, 7570, 3215, 69, 267, "Output", "ExpressionUUID" -> \
"20cd5e49-ebc1-4a41-914c-bee49e544a96"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[303681, 7645, 232, 5, 34, "Subsubsection", "ExpressionUUID" -> \
"9ce7a66a-6110-4f91-93fe-712d987572fb"],
Cell[303916, 7652, 1683, 46, 76, "Input", "ExpressionUUID" -> \
"8ae74796-4875-4a73-bb31-99cc4816256f"],
Cell[CellGroupData[{
Cell[305624, 7702, 1641, 45, 120, "Input", "ExpressionUUID" -> \
"fcbfd3b1-54df-4940-965f-91d8f5195b29"],
Cell[307268, 7749, 3211, 69, 267, "Output", "ExpressionUUID" -> \
"883c2dec-5dbe-42e8-a1b1-5558355b0f08"]
}, Open  ]],
Cell[CellGroupData[{
Cell[310516, 7823, 1615, 44, 120, "Input", "ExpressionUUID" -> \
"93afed92-87ee-46e7-9290-3c7ea17e361e"],
Cell[312134, 7869, 3289, 70, 267, "Output", "ExpressionUUID" -> \
"384cae27-0384-420e-ae47-503c9116e7c4"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[315472, 7945, 95, 0, 34, "Subsubsection", "ExpressionUUID" -> \
"18557e01-60b2-4f28-993d-a89f47f9849d"],
Cell[315570, 7947, 907, 26, 53, "Input", "ExpressionUUID" -> \
"7e420e9b-1bbb-4009-899f-eabe25ccd8a2"],
Cell[CellGroupData[{
Cell[316502, 7977, 2075, 59, 88, "Input", "ExpressionUUID" -> \
"f97267f9-addf-43a6-8310-30ab5ce0d010"],
Cell[318580, 8038, 11537, 208, 261, "Output", "ExpressionUUID" -> \
"d564e562-36ee-4344-9329-a27ebebc4f59"]
}, Open  ]],
Cell[CellGroupData[{
Cell[330154, 8251, 2077, 58, 91, "Input", "ExpressionUUID" -> \
"668250cd-7d86-42dc-b294-6c395d011db8"],
Cell[332234, 8311, 7043, 133, 260, "Output", "ExpressionUUID" -> \
"f38f7ffc-fa2e-4b55-9932-87b8dd355c57"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[339326, 8450, 96, 0, 34, "Subsubsection", "ExpressionUUID" -> \
"06a33fb1-9077-4395-aded-58399ef33588"],
Cell[CellGroupData[{
Cell[339447, 8454, 1289, 38, 95, "Input", "ExpressionUUID" -> \
"10d0d5f9-cfa5-4aac-9562-8a7812f483b2"],
Cell[340739, 8494, 1828, 34, 77, "Output", "ExpressionUUID" -> \
"dbb0460a-9df4-428a-9a56-c2846f28dcdb"],
Cell[342570, 8530, 105, 0, 30, "Output", "ExpressionUUID" -> \
"f457ecee-d2f8-4b01-b211-7329c35b78c2"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[342724, 8536, 98, 0, 34, "Subsubsection", "ExpressionUUID" -> \
"c4cd9708-a4fb-48c1-b5f0-cb6ad6112cbc"],
Cell[342825, 8538, 1069, 29, 83, "Input", "ExpressionUUID" -> \
"e55b7c7d-ff22-4c3f-a891-757680948220"],
Cell[CellGroupData[{
Cell[343919, 8571, 1641, 45, 120, "Input", "ExpressionUUID" -> \
"4bfe8fd9-b2a8-4ebd-8908-16cd059a225d"],
Cell[345563, 8618, 3216, 68, 267, "Output", "ExpressionUUID" -> \
"bf83f1bd-1200-4b72-a76b-941580a86ce2"]
}, Open  ]],
Cell[CellGroupData[{
Cell[348816, 8691, 1615, 44, 120, "Input", "ExpressionUUID" -> \
"069fd4f2-40ee-45a2-86f6-1e71f50a9843"],
Cell[350434, 8737, 3279, 69, 267, "Output", "ExpressionUUID" -> \
"3174211e-6ef0-4991-9e3a-5eb96c7a36b7"]
}, Open  ]],
Cell[353728, 8809, 1214, 33, 74, "Input", "ExpressionUUID" -> \
"0cabe8d7-43a5-4abe-b7f3-9a333109c492"],
Cell[CellGroupData[{
Cell[354967, 8846, 1661, 45, 120, "Input", "ExpressionUUID" -> \
"6980fdea-56e8-4a3a-ac2e-0746b1fd1c90"],
Cell[356631, 8893, 3236, 69, 267, "Output", "ExpressionUUID" -> \
"677d3efd-1ca5-4fe7-85a9-a7a24588b004"]
}, Open  ]],
Cell[CellGroupData[{
Cell[359904, 8967, 1635, 44, 120, "Input", "ExpressionUUID" -> \
"fcca8763-3dd9-480d-8228-5a1e44d714e6"],
Cell[361542, 9013, 3305, 70, 271, "Output", "ExpressionUUID" -> \
"d836dcce-45e1-4cdf-8c2e-08339a845fde"]
}, Open  ]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[364908, 9090, 99, 0, 43, "Subsection", "ExpressionUUID" -> \
"950b21d5-e430-4037-a16d-9dabaf298a91"],
Cell[365010, 9092, 508, 15, 30, "Text", "ExpressionUUID" -> \
"9ec0bb37-8cd4-42b5-b56a-0ac385d138f0"],
Cell[365521, 9109, 3383, 86, 127, "Input", "ExpressionUUID" -> \
"73250f86-a20c-4933-b5bf-00e41087733c"],
Cell[368907, 9197, 3140, 80, 127, "Input", "ExpressionUUID" -> \
"6def2725-ed04-437b-88ac-25d08e2e6af2"],
Cell[CellGroupData[{
Cell[372072, 9281, 1553, 40, 104, "Input", "ExpressionUUID" -> \
"335030ec-e12c-4a05-be58-6670275707a4"],
Cell[373628, 9323, 17513, 345, 307, "Output", "ExpressionUUID" -> \
"b24f65f6-a96a-4bba-adb2-af354f2b4188"]
}, Open  ]],
Cell[CellGroupData[{
Cell[391178, 9673, 1527, 39, 104, "Input", "ExpressionUUID" -> \
"4c648c49-36b0-40fd-8f62-93014ca38ea0"],
Cell[392708, 9714, 17477, 343, 308, "Output", "ExpressionUUID" -> \
"fe59f460-dc5c-4552-991d-31b7b56b82d4"]
}, Open  ]],
Cell[CellGroupData[{
Cell[410222, 10062, 1527, 39, 104, "Input", "ExpressionUUID" -> \
"6cc8bf07-f3a6-41ff-9642-b70b11c8b8f8"],
Cell[411752, 10103, 17649, 347, 308, "Output", "ExpressionUUID" -> \
"38ba066f-8ba9-45de-aed9-76af608f10fe"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[429450, 10456, 100, 0, 43, "Subsection", "ExpressionUUID" -> \
"010e8cdd-5ac1-4c13-9a1d-21de86172a2c"],
Cell[429553, 10458, 456, 14, 114, "Input", "ExpressionUUID" -> \
"ed483ced-de03-421d-8096-a479cfb3894d"],
Cell[430012, 10474, 2639, 70, 86, "Input", "ExpressionUUID" -> \
"b61ecb4f-3237-4d3d-896c-38d95fe01b86"],
Cell[CellGroupData[{
Cell[432676, 10548, 3809, 92, 192, "Input", "ExpressionUUID" -> \
"dadb3d9b-5abf-44e7-b3d4-f40fac550110"],
Cell[436488, 10642, 7714, 147, 275, "Output", "ExpressionUUID" -> \
"ffff3329-ebde-4f54-ae69-1ccf9f4e20f2"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[444251, 10795, 121, 0, 43, "Subsection", "ExpressionUUID" -> \
"46ba174b-70d9-4bee-89d5-7a5b5d5fea87"],
Cell[444375, 10797, 97, 0, 30, "Text", "ExpressionUUID" -> \
"aabd5506-5222-4436-973f-bc499c4c88c5"],
Cell[444475, 10799, 269, 8, 53, "Input", "ExpressionUUID" -> \
"5f0bfd56-d494-444d-b0c2-29bcb68542f0"],
Cell[CellGroupData[{
Cell[444769, 10811, 213, 4, 34, "Subsubsection", "ExpressionUUID" -> \
"85ceee48-c03f-487b-a05b-62415b03ba9d"],
Cell[444985, 10817, 997, 27, 74, "Input", "ExpressionUUID" -> \
"38c69884-e07c-4431-bd24-50f83fdfcad0"],
Cell[CellGroupData[{
Cell[446007, 10848, 3536, 88, 175, "Input", "ExpressionUUID" -> \
"634f7056-0e54-49a6-aef1-5e539c100c2b"],
Cell[449546, 10938, 7781, 147, 267, "Output", "ExpressionUUID" -> \
"ee5c1cc0-92d2-4013-b63f-30a541cf0f02"]
}, Open  ]],
Cell[CellGroupData[{
Cell[457364, 11090, 3536, 88, 175, "Input", "ExpressionUUID" -> \
"edcd2923-d480-4acc-bcce-d2bcff874a60"],
Cell[460903, 11180, 7762, 146, 267, "Output", "ExpressionUUID" -> \
"3e820df3-eb6d-4efe-aab7-3c456c343479"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[468714, 11332, 308, 8, 37, "Subsubsection", "ExpressionUUID" -> \
"c33fd817-ea70-4fd9-b116-5e2a90f43877"],
Cell[469025, 11342, 703, 20, 53, "Input", "ExpressionUUID" -> \
"afbc8897-5912-4eec-ba1e-3ba8ca9e4a5b"],
Cell[CellGroupData[{
Cell[469753, 11366, 3024, 75, 150, "Input", "ExpressionUUID" -> \
"dae5a6ac-6f24-4a82-b968-34e96b39f0d8"],
Cell[472780, 11443, 7769, 145, 270, "Output", "ExpressionUUID" -> \
"dfc1b241-48ba-4cb6-8b2b-839312ad1ebb"]
}, Open  ]],
Cell[CellGroupData[{
Cell[480586, 11593, 3024, 75, 150, "Input", "ExpressionUUID" -> \
"f93fce11-5089-4714-ba3c-1a3a75478b36"],
Cell[483613, 11670, 7766, 145, 267, "Output", "ExpressionUUID" -> \
"81253e55-4dcf-4066-a728-10cb263bc535"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[491428, 11821, 232, 5, 34, "Subsubsection", "ExpressionUUID" -> \
"eb73b21a-1fc7-484a-a253-9c0178f82fcf"],
Cell[491663, 11828, 1355, 38, 76, "Input", "ExpressionUUID" -> \
"ead2e417-f063-4e4d-b789-673e3ca636f4"],
Cell[CellGroupData[{
Cell[493043, 11870, 3530, 88, 175, "Input", "ExpressionUUID" -> \
"2d7dd873-6cab-499d-84cf-986ae83852bc"],
Cell[496576, 11960, 7851, 149, 267, "Output", "ExpressionUUID" -> \
"69be601b-fff7-48a5-982d-d275303e9d08"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[504476, 12115, 95, 0, 34, "Subsubsection", "ExpressionUUID" -> \
"592c7efb-a74d-4462-acf6-ce2c75aea2a4"],
Cell[504574, 12117, 593, 17, 53, "Input", "ExpressionUUID" -> \
"e7485dc6-bedc-4109-880e-ec7c6c579479"],
Cell[CellGroupData[{
Cell[505192, 12138, 2848, 74, 102, "Input", "ExpressionUUID" -> \
"939d9854-0cdc-4d04-804c-30bb20975231"],
Cell[508043, 12214, 4345, 91, 272, "Output", "ExpressionUUID" -> \
"154ec8b5-dc92-41a9-87aa-924c731917e1"]
}, Open  ]],
Cell[CellGroupData[{
Cell[512425, 12310, 2759, 71, 89, "Input", "ExpressionUUID" -> \
"38b4995b-7649-4269-89e3-8e1f9124fcf5"],
Cell[515187, 12383, 4295, 90, 264, "Output", "ExpressionUUID" -> \
"b9aebc64-e6de-4d39-acaf-d4cdb7f1438b"]
}, Open  ]],
Cell[CellGroupData[{
Cell[519519, 12478, 1110, 32, 79, "Input", "ExpressionUUID" -> \
"2e414694-f4b4-44a9-8d9d-65b0d5ff7d11"],
Cell[520632, 12512, 101, 0, 30, "Output", "ExpressionUUID" -> \
"8d337306-b071-4e71-9a99-dbb3cfc0d802"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[520782, 12518, 96, 0, 34, "Subsubsection", "ExpressionUUID" -> \
"a8a7e194-7534-4caf-b8e5-636e61f728c5"],
Cell[520881, 12520, 870, 25, 59, "Input", "ExpressionUUID" -> \
"17c4a040-b6f4-4555-bac0-40dbfdb151ee"],
Cell[CellGroupData[{
Cell[521776, 12549, 1469, 37, 53, "Input", "ExpressionUUID" -> \
"ad863224-06cc-4651-8db8-202831999f8a"],
Cell[523248, 12588, 2554, 58, 263, "Output", "ExpressionUUID" -> \
"f037071b-6824-4438-ae36-e4673e27bf14"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[525851, 12652, 98, 0, 34, "Subsubsection", "ExpressionUUID" -> \
"2092d6b7-d5d8-44dd-9008-e9db0a46f174"],
Cell[525952, 12654, 523, 15, 81, "Input", "ExpressionUUID" -> \
"74282bbb-0efe-42cc-90d2-15247113d9e5"],
Cell[CellGroupData[{
Cell[526500, 12673, 3532, 88, 175, "Input", "ExpressionUUID" -> \
"d2bc93cf-4be1-4dd3-a3d3-cd852962590c"],
Cell[530035, 12763, 7876, 148, 267, "Output", "ExpressionUUID" -> \
"1b213790-0614-4a06-8410-a775a1afce55"]
}, Open  ]],
Cell[CellGroupData[{
Cell[537948, 12916, 3532, 88, 175, "Input", "ExpressionUUID" -> \
"e3b3cdf5-aa28-4f84-aabf-0716a49c66c5"],
Cell[541483, 13006, 7892, 148, 267, "Output", "ExpressionUUID" -> \
"08d93bbb-3ee1-48b8-869d-fadb2d074cf0"]
}, Open  ]],
Cell[549390, 13157, 645, 19, 52, "Input", "ExpressionUUID" -> \
"b44e5f7e-ab7b-4ad6-b019-9ff70744c6aa"],
Cell[CellGroupData[{
Cell[550060, 13180, 3560, 88, 175, "Input", "ExpressionUUID" -> \
"276498a8-983f-441f-a53e-9fe48d12d628"],
Cell[553623, 13270, 7923, 150, 267, "Output", "ExpressionUUID" -> \
"d5f6434d-4da8-48e0-9b6b-1156b4570a23"]
}, Open  ]],
Cell[CellGroupData[{
Cell[561583, 13425, 3560, 88, 175, "Input", "ExpressionUUID" -> \
"66e06bbd-3177-4991-a436-8bb4e480b146"],
Cell[565146, 13515, 7923, 150, 267, "Output", "ExpressionUUID" -> \
"49a7a767-5cf0-488f-8fb7-1a278d1e485d"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[573118, 13671, 92, 0, 34, "Subsubsection", "ExpressionUUID" -> \
"94b1fa9a-8dc2-4f03-8dc5-dbbbdd9908a5"],
Cell[573213, 13673, 1826, 50, 54, "Input", "ExpressionUUID" -> \
"de0b9b6c-20fc-4c6b-97c0-84761802f294"],
Cell[CellGroupData[{
Cell[575064, 13727, 3404, 86, 178, "Input", "ExpressionUUID" -> \
"c7aa2a3b-8b49-4ace-99c3-da035ba0c82b"],
Cell[578471, 13815, 6570, 124, 274, "Output", "ExpressionUUID" -> \
"afe7b1ea-81ad-49c1-a083-8dd577597f17"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[585090, 13945, 142, 1, 34, "Subsubsection", "ExpressionUUID" -> \
"0eb04a56-11ec-48db-8b43-de957c633233"],
Cell[CellGroupData[{
Cell[585257, 13950, 2689, 79, 105, "Input", "ExpressionUUID" -> \
"827a5e15-8122-43f7-9288-23885bce92d7"],
Cell[587949, 14031, 4667, 96, 263, "Output", "ExpressionUUID" -> \
"59f67ce3-67cb-43a4-80c7-82a4fb4803e0"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* NotebookSignature @xpxalu2erqZ3AKo5p7FN1d9 *)
