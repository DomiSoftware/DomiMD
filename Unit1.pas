unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.IOUtils, System.UITypes, System.Classes,
  System.Variants, StrUtils,
{$IFDEF WINDOWS}
  MSHTML,
{$ENDIF}
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Memo.Types,
  FMX.Edit, FMX.StdCtrls, FMX.Layouts, FMX.Objects, FMX.Controls.Presentation,
  FMX.ScrollBox, FMX.Memo, FMX.TabControl, FMX.WebBrowser, Math, FMX.ListBox,
  FMX.DialogService, FMX.ComboEdit, FMX.ExtCtrls;

type
  TForm1 = class(TForm)
    TabControl1: TTabControl;
    tsShow: TTabItem;
    Rectangle4: TRectangle;
    WebBrowser1: TWebBrowser;
    tsHTML: TTabItem;
    Rectangle1: TRectangle;
    mH: TMemo;
    TabItem1: TTabItem;
    Rectangle8: TRectangle;
    Text1: TText;
    TrackBar1: TTrackBar;
    Text3: TText;
    mS: TMemo;
    ListBox1: TListBox;
    btnHload: TButton;
    btnHsave: TButton;
    eHfile: TEdit;
    Rectangle3: TRectangle;
    Rectangle7: TRectangle;
    Rectangle11: TRectangle;
    btnDelete: TButton;
    mMD: TMemo;
    Rectangle2: TRectangle;
    GridPanelLayout1: TGridPanelLayout;
    btnH1: TButton;
    btnH2: TButton;
    btnH3: TButton;
    btnH4: TButton;
    btnLI: TButton;
    btnFG: TButton;
    btnBG: TButton;
    ComboEdit1: TComboEdit;
    btnLF: TButton;
    btnBQ: TButton;
    btnCode: TButton;
    bTBL: TButton;
    btnTHR: TButton;
    btnFS: TButton;
    ComboEdit2: TComboEdit;
    btnTB: TButton;
    btnTI: TButton;
    btnTS: TButton;
    btnTU: TButton;
    btnReset: TButton;
    Text2: TText;
    Rectangle5: TRectangle;
    rcSecurity: TRectangle;
    loHeader: TLayout;
    loFooter: TLayout;
    loEntry: TLayout;
    Text4: TText;
    GridPanelLayout2: TGridPanelLayout;
    kp1: TText;
    kp2: TText;
    kp3: TText;
    kp4: TText;
    kp5: TText;
    kp6: TText;
    kp7: TText;
    kp8: TText;
    kp9: TText;
    kpReset: TText;
    kp0: TText;
    kpEnter: TText;
    sStatus: TText;
    kpA: TText;
    kpB: TText;
    kpC: TText;
    kpD: TText;
    kpE: TText;
    kpF: TText;
    kpHash: TText;
    kpDash: TText;
    ImageViewer1: TImageViewer;
    Text5: TText;
    procedure btnHloadClick(Sender: TObject);
    procedure btnHsaveClick(Sender: TObject);
    procedure btnHresetClick(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tsShowClick(Sender: TObject);
    procedure btnH1Click(Sender: TObject);
    procedure btnH2Click(Sender: TObject);
    procedure btnH3Click(Sender: TObject);
    procedure btnH4Click(Sender: TObject);
    procedure btnLIClick(Sender: TObject);
    procedure FormVirtualKeyboardShown(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure btnBRClick(Sender: TObject);
    procedure Text2Click(Sender: TObject);
    procedure ListBox1ItemClick(const Sender: TCustomListBox;
      const Item: TListBoxItem);
    procedure FormSaveState(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure btnCodeClick(Sender: TObject);
    procedure Text5Click(Sender: TObject);
    procedure btnTBClick(Sender: TObject);
    procedure btnTHRClick(Sender: TObject);
    procedure btnTIClick(Sender: TObject);
    procedure btnTSClick(Sender: TObject);
    procedure btnTUClick(Sender: TObject);
    procedure bTBLClick(Sender: TObject);
    procedure bTBLCAPTIONClick(Sender: TObject);
    procedure btnBQClick(Sender: TObject);
    procedure btnFGClick(Sender: TObject);
    procedure btnBGClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnLFClick(Sender: TObject);
    procedure btnFSClick(Sender: TObject);
    procedure WebBrowser1Gesture(Sender: TObject;
      const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure btnResetClick(Sender: TObject);
    procedure kp1Click(Sender: TObject);
    procedure kp2Click(Sender: TObject);
    procedure kp3Click(Sender: TObject);
    procedure kp4Click(Sender: TObject);
    procedure kp5Click(Sender: TObject);
    procedure kp6Click(Sender: TObject);
    procedure kp7Click(Sender: TObject);
    procedure kp8Click(Sender: TObject);
    procedure kp9Click(Sender: TObject);
    procedure kp0Click(Sender: TObject);
    procedure kpResetClick(Sender: TObject);
    procedure kpEnterClick(Sender: TObject);
    procedure kpHashClick(Sender: TObject);
    procedure kpDashClick(Sender: TObject);
    procedure kpAClick(Sender: TObject);
    procedure kpBClick(Sender: TObject);
    procedure kpCClick(Sender: TObject);
    procedure kpDClick(Sender: TObject);
    procedure kpEClick(Sender: TObject);
    procedure kpFClick(Sender: TObject);
    procedure Text4Click(Sender: TObject);
  private
    procedure MyMemoAddatCaret(mymemo: TMemo; Text: string);
    procedure loadlist(Sender: TObject);
    function ConvertMarkdownTable(const TableText: string;
      ishead: Boolean): string;
    procedure MD2HTML;
    procedure mMDadd(new: string);
    procedure mMDreset;
    procedure mMDhead;
    procedure mMDclose;
    function MarkdownHeaders(const markdownText: string): string;
    function MarkdownStyles(const markdownText: string): string;
    function MDTableLine(mymemo: TMemo; lno: integer): string;
    { Private declarations }
  public
    { Public declarations }
  end;

const
  sExpect = '854789EF'; // password

var
  Form1: TForm1;
  fPath: string;
  // fcar: string;
  lfile: string;
  tsHeight: single;
  bTHR, bTBold, bTItal, bTStrk, bTUlne, bFcode: Boolean;
  bFG, bBG, bFS,bShowEntry: Boolean;
  InBlockquote: Boolean;
  InList, InList2: Boolean;
  InOrdList: Boolean;
  InCodeBlock: Boolean;
  InParaBlock: Boolean;
  InTable: Boolean;
  InBold, InItal, InStrike, InUnder: Boolean;
  fBold, fItal, fStrike, fUnder, fCodeBlock, fCode: Boolean;
  sPass: string;

implementation

{$R *.fmx}

procedure TForm1.MyMemoAddatCaret(mymemo: TMemo; Text: string);
var
  ps, ln, ls, lc: integer;
  s, sn, mytext: string;
begin
  mytext := Text;
  ln := (mymemo as TMemo).CaretPosition.Line;
  ps := (mymemo as TMemo).CaretPosition.Pos;
  lc := (mymemo as TMemo).Lines.Count;
  if lc > 0 then
  begin
    s := (mymemo as TMemo).Lines[ln];
    ls := Length(s);
  end
  else
  begin
    ls := 0;
    s := '';
  end;
  lc := (mymemo as TMemo).Lines.Count;
  // if new memo
  if lc = 0 then
    (mymemo as TMemo).Lines.Add(mytext);
  //
  if lc > 0 then
  begin
    sn := '';
    if ps = 0 then // start of line
    begin
      if ls = 0 then
        sn := mytext;
      if ls > 0 then
        sn := mytext + s;
    end;
    if ((ps > 0) and (ps < ls)) then
      sn := leftstr(s, ps) + mytext + RightStr(s, (Length(s) - ps));
    if ps = ls then // end of line
      sn := s + mytext;
  end;
  (mymemo as TMemo).Lines[ln] := sn;
  (mymemo as TMemo).CaretPosition := Point(ps + Length(mytext), ln);
end;

procedure TForm1.btnDeleteClick(Sender: TObject);
var
  lfile: string;
begin
  if eHfile.Text = '' then
    exit;
  lfile := System.IOUtils.TPath.Combine(fPath, eHfile.Text + '.md');
  System.IOUtils.TFile.Delete(lfile);
  ListBox1.Items.Clear;
  loadlist(self);
end;

procedure TForm1.btnH1Click(Sender: TObject);
var
  new: string;
begin
  new := '# ';
  MyMemoAddatCaret(mH, new);
end;

procedure TForm1.btnH2Click(Sender: TObject);
var
  new: string;
begin
  new := '## ';
  MyMemoAddatCaret(mH, new);
end;

procedure TForm1.btnH3Click(Sender: TObject);
var
  new: string;
begin
  new := '### ';
  MyMemoAddatCaret(mH, new);
end;

procedure TForm1.btnH4Click(Sender: TObject);
var
  new: string;
begin
  new := '#### ';
  MyMemoAddatCaret(mH, new);
end;

procedure TForm1.btnHloadClick(Sender: TObject);
begin
  if eHfile.Text = '' then
    exit;
  mH.Lines.Clear;
  mMD.Lines.Clear;
  lfile := System.IOUtils.TPath.Combine(fPath, eHfile.Text + '.md');
  mH.Lines.LoadFromFile(lfile);
  WebBrowser1.LoadFromStrings('', '');
  TabControl1.ActiveTab := tsHTML;
end;

procedure TForm1.btnHresetClick(Sender: TObject);
begin
  btnHsaveClick(self);
  // reset
  mH.Lines.Clear;
  mH.Lines.Add('# Header');
  mH.Lines.Add('---');
  mH.Lines.Add('## subhead');
  mH.Lines.Add('---');
  mH.Lines.Add('### subhead2');
  mH.Lines.Add('- a');
  mH.Lines.Add('- + b');
  mH.Lines.Add('- c');
  mH.Lines.Add('- d');
  mH.Lines.Add('');
  mH.Lines.Add('---');
  mH.Lines.Add('### block');
  mH.Lines.Add('> top');
  mH.Lines.Add('> aa');
  mH.Lines.Add('> bbb ccc ddd');
  mH.Lines.Add('');
  mH.Lines.Add('---');
  mH.Lines.Add('| **Date** | **Value** | **Total** |');
  mH.Lines.Add('| a | b | c |');
  mH.Lines.Add('| a | b | c |');
  mH.Lines.Add('| a | b | c |');
  mH.Lines.Add('| a | b | c |');
  mH.Lines.Add('| a | b | c |');
  mH.Lines.Add('');
  mH.Lines.Add('---');
end;

procedure TForm1.btnHsaveClick(Sender: TObject);
var
  lfile: string;
begin
  if eHfile.Text = '' then
    exit;
  lfile := System.IOUtils.TPath.Combine(fPath, eHfile.Text + '.md');
  mH.Lines.SaveToFile(lfile);
  loadlist(self);
end;

procedure TForm1.btnLFClick(Sender: TObject);
var
  new: string;
begin
  new := '||';
  MyMemoAddatCaret(mH, new);
end;

procedure TForm1.btnLIClick(Sender: TObject);
var
  new: string;
begin
  new := '- ';
  MyMemoAddatCaret(mH, new);
end;

procedure TForm1.btnResetClick(Sender: TObject);
begin
  if eHfile.Text <> '' then
    btnHsaveClick(self);
  eHfile.Text := '';
  // reset
  mH.Lines.Clear;
  mH.Lines.Add('# Header');
  mH.Lines.Add('---');
  mH.Lines.Add('## subhead');
  mH.Lines.Add('---');
  mH.Lines.Add('### subhead');
  mH.Lines.Add('- a');
  mH.Lines.Add('- + b');
  mH.Lines.Add('- c');
  mH.Lines.Add('- d');
  mH.Lines.Add('');
  mH.Lines.Add('---');
  mH.Lines.Add('### block');
  mH.Lines.Add('> **top**');
  mH.Lines.Add('> __aa__');
  mH.Lines.Add('> ==bbb== ~~ccc~~ ddd');
  mH.Lines.Add('');
  mH.Lines.Add('---');
  mH.Lines.Add('| **Date** | **Value** | **Total** |');
  mH.Lines.Add('| a | b | c |');
  mH.Lines.Add('| a | b | c |');
  mH.Lines.Add('| a | b | c |');
  mH.Lines.Add('| a | b | c |');
  mH.Lines.Add('| a | b | c |');
  mH.Lines.Add('');
  mH.Lines.Add('---');
end;

procedure TForm1.btnFGClick(Sender: TObject);
var
  new: string;
begin
  if bFG = false then
    new := '{' + ComboEdit1.Text + ':'
  else
    new := '}';
  bFG := Not(bFG);
  if bFG = false then
    btnFG.TextSettings.FontColor := TAlphaColorRec.Black
  else
    btnFG.TextSettings.FontColor := TAlphaColorRec.Red;
  MyMemoAddatCaret(mH, new);
end;

procedure TForm1.btnFSClick(Sender: TObject);
var
  new: string;
begin
  if ComboEdit2.Index = 7 then
    exit;
  if bFS = false then
    new := '{' + ComboEdit2.Text + ':'
  else
    new := '}';
  bFS := Not(bFS);
  if bFS = false then
    btnFS.TextSettings.FontColor := TAlphaColorRec.Black
  else
    btnFS.TextSettings.FontColor := TAlphaColorRec.Red;
  MyMemoAddatCaret(mH, new);
end;

procedure TForm1.btnBGClick(Sender: TObject);
var
  new: string;
begin
  if bBG = false then
    new := '{' + ComboEdit1.Text + '.B:'
    // begin
    // case ComboEdit1.Index of
    // 0:
    // new := '{RED.B:';
    // 1:
    // new := '{BLU.B:';
    // 2:
    // new := '{GRN.B:';
    // 3:
    // new := '{ORG.B:';
    // 4:
    // new := '{CYN.B:';
    // 5:
    // new := '{LME.B:';
    // end;
    // end
  else
    new := '}';
  bBG := Not(bBG);
  if bBG = false then
    btnBG.TextSettings.FontColor := TAlphaColorRec.Black
  else
    btnBG.TextSettings.FontColor := TAlphaColorRec.Red;
  MyMemoAddatCaret(mH, new);

end;

procedure TForm1.btnBQClick(Sender: TObject);
var
  new: string;
begin
  new := '> ';
  MyMemoAddatCaret(mH, new);
end;

procedure TForm1.btnTBClick(Sender: TObject);
var
  new: string;
begin
  new := '**';
  bTBold := Not(bTBold);
  if bTBold = false then
    btnTB.TextSettings.FontColor := TAlphaColorRec.Black
  else
    btnTB.TextSettings.FontColor := TAlphaColorRec.Red;
  MyMemoAddatCaret(mH, new);

end;

procedure TForm1.btnTHRClick(Sender: TObject);
var
  new: string;
begin
  new := '---' + sLineBreak;
  MyMemoAddatCaret(mH, new);
end;

procedure TForm1.btnTIClick(Sender: TObject);
var
  new: string;
begin
  new := '__';
  bTItal := Not(bTItal);
  if bTItal = false then
    btnTI.TextSettings.FontColor := TAlphaColorRec.Black
  else
    btnTI.TextSettings.FontColor := TAlphaColorRec.Red;
  MyMemoAddatCaret(mH, new);
end;

procedure TForm1.btnTSClick(Sender: TObject);
var
  new: string;
begin
  new := '~~';
  bTStrk := Not(bTStrk);
  if bTStrk = false then
    btnTS.TextSettings.FontColor := TAlphaColorRec.Black
  else
    btnTS.TextSettings.FontColor := TAlphaColorRec.Red;
  MyMemoAddatCaret(mH, new);
end;

procedure TForm1.btnTUClick(Sender: TObject);
var
  new: string;
begin
  new := '==';
  bTUlne := Not(bTUlne);
  if bTUlne = false then
    btnTU.TextSettings.FontColor := TAlphaColorRec.Black
  else
    btnTU.TextSettings.FontColor := TAlphaColorRec.Red;
  MyMemoAddatCaret(mH, new);

end;

procedure TForm1.btnBRClick(Sender: TObject);
var
  new: string;
begin
  new := '<br>' + sLineBreak;
  MyMemoAddatCaret(mH, new);
end;

procedure TForm1.btnCodeClick(Sender: TObject);
var
  new: string;
begin
  if bFcode = false then
    new := '```' + sLineBreak
  else
    new := '```' + sLineBreak;
  bFcode := Not(bFcode);
  if bFcode = false then
    btnCode.TextSettings.FontColor := TAlphaColorRec.Black
  else
    btnCode.TextSettings.FontColor := TAlphaColorRec.Red;
  MyMemoAddatCaret(mH, new);
end;

procedure TForm1.bTBLCAPTIONClick(Sender: TObject);
var
  new: string;
begin
  new := '|---|---|';
  MyMemoAddatCaret(mH, new);
end;

procedure TForm1.bTBLClick(Sender: TObject);
var
  new: string;
begin
  new := '| | |';
  MyMemoAddatCaret(mH, new);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  btnHsaveClick(self);
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  btnHsaveClick(self);
  sPass := '';
  sStatus.Text := '';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  mH.Font.Size := TrackBar1.Value;
  mS.Font.Size := TrackBar1.Value;
  tsHeight := TabControl1.Height;
{$IFDEF ANDROID}
  fPath := System.IOUtils.TPath.GetPublicPath;
{$ENDIF}
{$IFDEF MSWINDOWS}
  fPath := ExtractFilePath(ParamStr(0));
{$ENDIF}
  loadlist(self);
  sPass := '';
  sStatus.Text := '';
  rcSecurity.Visible := True;
end;

procedure TForm1.FormDeactivate(Sender: TObject);
begin
  btnHsaveClick(self);
  rcSecurity.Visible := True;
end;

procedure TForm1.FormSaveState(Sender: TObject);
begin
  btnHsaveClick(self);
end;

procedure TForm1.FormVirtualKeyboardHidden(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin
  TabControl1.Align := TAlignLayout.Client;
  // if KeyboardVisible = true then
  // begin
  // kh := Bounds.Height + 1;
  // end;
end;

procedure TForm1.FormVirtualKeyboardShown(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin
  if KeyboardVisible = True then
  begin
    tsHeight := TabControl1.Height;
    TabControl1.Align := TAlignLayout.Top;
    TabControl1.Height := tsHeight - (Bounds.Height + 1);
  end;
end;

procedure TForm1.kp0Click(Sender: TObject);
begin
  sStatus.Text := sStatus.Text + '*';
  sPass := sPass + '0';
end;

procedure TForm1.kp1Click(Sender: TObject);
begin
  sStatus.Text := sStatus.Text + '*';
  sPass := sPass + '1';
end;

procedure TForm1.kp2Click(Sender: TObject);
begin
  sStatus.Text := sStatus.Text + '*';
  sPass := sPass + '2';
end;

procedure TForm1.kp3Click(Sender: TObject);
begin
  sStatus.Text := sStatus.Text + '*';
  sPass := sPass + '3';

end;

procedure TForm1.kp4Click(Sender: TObject);
begin
  sStatus.Text := sStatus.Text + '*';
  sPass := sPass + '4';

end;

procedure TForm1.kp5Click(Sender: TObject);
begin
  sStatus.Text := sStatus.Text + '*';
  sPass := sPass + '5';
end;

procedure TForm1.kp6Click(Sender: TObject);
begin
  sStatus.Text := sStatus.Text + '*';
  sPass := sPass + '6';

end;

procedure TForm1.kp7Click(Sender: TObject);
begin
  sStatus.Text := sStatus.Text + '*';
  sPass := sPass + '7';

end;

procedure TForm1.kp8Click(Sender: TObject);
begin
  sStatus.Text := sStatus.Text + '*';
  sPass := sPass + '8';

end;

procedure TForm1.kp9Click(Sender: TObject);
begin
  sStatus.Text := sStatus.Text + '*';
  sPass := sPass + '9';
end;

procedure TForm1.kpAClick(Sender: TObject);
begin
  sStatus.Text := sStatus.Text + '*';
  sPass := sPass + 'A';
end;

procedure TForm1.kpBClick(Sender: TObject);
begin
   sStatus.Text := sStatus.Text + '*';
  sPass := sPass + 'B';
end;

procedure TForm1.kpCClick(Sender: TObject);
begin
   sStatus.Text := sStatus.Text + '*';
  sPass := sPass + 'C';
end;

procedure TForm1.kpDashClick(Sender: TObject);
begin
  sStatus.Text := sStatus.Text + '*';
  sPass := sPass + '-';
end;

procedure TForm1.kpDClick(Sender: TObject);
begin
  sStatus.Text := sStatus.Text + '*';
  sPass := sPass + 'D';
end;

procedure TForm1.kpEClick(Sender: TObject);
begin
  sStatus.Text := sStatus.Text + '*';
  sPass := sPass + 'E';
end;

procedure TForm1.kpEnterClick(Sender: TObject);
begin
  sStatus.Text := sStatus.Text + '*';
  if sPass = sExpect then
  begin
    rcSecurity.Visible := false;
    sPass := '';
    sStatus.Text := '';
  end
  else
  begin
    sPass := '';
    sStatus.Text := '';
  end;

end;

procedure TForm1.kpFClick(Sender: TObject);
begin
  sStatus.Text := sStatus.Text + '*';
  sPass := sPass + 'F';
end;

procedure TForm1.kpHashClick(Sender: TObject);
begin
  sStatus.Text := sStatus.Text + '*';
  sPass := sPass + '#';
end;

procedure TForm1.kpResetClick(Sender: TObject);
begin
  sStatus.Text := '';
  sPass := sPass + '';
end;

procedure TForm1.ListBox1ItemClick(const Sender: TCustomListBox;
  const Item: TListBoxItem);
begin
  eHfile.Text := leftstr(ListBox1.Selected.Text,
    (Length(ListBox1.Selected.Text) - 3));
end;

procedure TForm1.Text2Click(Sender: TObject);
begin
  MD2HTML;
  WebBrowser1.LoadFromStrings('', '');
  WebBrowser1.LoadFromStrings(mMD.Lines.Text, '');
  TabControl1.ActiveTab := tsHTML;
end;

procedure TForm1.Text4Click(Sender: TObject);
begin
  bShowEntry:=not(bShowEntry);
end;

procedure TForm1.Text5Click(Sender: TObject);
begin
  TabControl1.ActiveTab := TabItem1;
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  Text1.Text := IntToStr(floor(TrackBar1.Value));
  mH.Font.Size := TrackBar1.Value;
  mS.Font.Size := TrackBar1.Value;
end;

procedure TForm1.tsShowClick(Sender: TObject);
begin
  // Markdown
  MD2HTML;
  WebBrowser1.LoadFromStrings('', '');
  WebBrowser1.LoadFromStrings(mMD.Lines.Text, '');
end;

procedure TForm1.WebBrowser1Gesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  MD2HTML;
  WebBrowser1.LoadFromStrings('', '');
  WebBrowser1.LoadFromStrings(mMD.Lines.Text, '');
end;

procedure TForm1.loadlist(Sender: TObject);
var
  FileList: TStringDynArray;
  s: string;
begin
{$IFDEF ANDROID}
  fPath := System.IOUtils.TPath.GetPublicPath;
{$ENDIF}
{$IFDEF MSWINDOWS}
  fPath := ExtractFilePath(ParamStr(0));
{$ENDIF}
  FileList := System.IOUtils.TDirectory.GetFiles(fPath, '*.md');
  ListBox1.Items.Clear;
  for s in FileList do
    if s > ' ' then
      ListBox1.Items.Add(ExtractFileName(s));
end;

procedure TForm1.mMDreset;
begin
  mMD.Lines.Clear;
end;

procedure TForm1.mMDhead;
begin
  mMD.Lines.Add('<!DOCTYPE html>');
  mMD.Lines.Add('<html lang="en">');
  mMD.Lines.Add('<head>');
  mMD.Lines.Add('<meta charset="utf-8">');
  mMD.Lines.Add
    ('<meta name="viewport" content="width=device-width, initial-scale=1">');
  mMD.Lines.Add('<meta http-equiv="X-UA-Compatible" content="IE=ie9,chrome=1"');
  // mMD.Lines.Add('<style>');
  // mMD.Lines.Add('body {max-width: 100%; word-wrap: break-word; }');
  // mMD.Lines.Add('</style>');
  mMD.Lines.Add('</head>');
  mMD.Lines.Add('<body style="max-width: 100%; word-wrap: break-word;">');
end;

procedure TForm1.mMDclose;
begin
  mMD.Lines.Add('</body>');
  mMD.Lines.Add('</html>');
end;

procedure TForm1.mMDadd(new: string);
begin
  mMD.Lines.Add(new);
end;

procedure TForm1.MD2HTML;
var
  Lines: TStringList;
  workg, ncar, lhs, rhs: string;
  i, fpos: integer;
begin
  Lines := TStringList.Create;
  Lines.Text := mH.Lines.Text;
  //
  mMDreset;
  mMDhead;
  // Result := '';
  try
    InBlockquote := false;
    InList := false;
    InCodeBlock := false;
    InTable := false;
    for i := 0 to Lines.Count - 1 do
    begin
      workg := Lines[i];
      // List
      if StartsText('- ', workg) then
      begin
        if StartsText('- + ', workg) then
        begin
          if not InList2 then
          begin
            mMDadd('<ul>');
            InList2 := True;
          end;
          workg := '<li>' + RightStr(workg, Length(workg) - 4) + '</li>';
        end
        else
        begin
          if InList2 = True then
          begin
            mMDadd('</ul>');
            InList2 := false;
          end;
          if not InList then
          begin
            mMDadd('<ul>');
            InList := True;
          end;
          workg := '<li>' + RightStr(workg, Length(workg) - 2) + '</li>';
        end;
      end;
      // blockquote
      if StartsText('> ', workg) then
      begin
        if not InBlockquote then
        begin
          InBlockquote := True;
          mMDadd('<blockquote>');
        end;
        // need to account for internal formatting;
        workg := RightStr(workg, Length(workg) - 1);
        // Trim(Copy(workg, 2, length(workg)));
      end;
      // Headers
      if StartsText('#', workg) then
        workg := MarkdownHeaders(workg);
      if StartsText('---', workg) then
        workg := '<hr>';
      if StartsText('```', workg) then
      begin
        if not InCodeBlock then
        begin
          workg := RightStr(workg, Length(workg) - 3);
          InCodeBlock := True;
          mMDadd('<pre><code>');
        end
        else
        begin
          workg := '</code></pre>';
          InCodeBlock := false;
        end;
      end;
      // Table
      if StartsText('|', workg) then
      begin
        if not InTable then
        begin
          mMDadd('<table border="1px">');
          InTable := True;
        end;
        workg := MDTableLine(mH, i);
        // mMDadd(wHTML);
      end;
      if workg = '' then
      begin
        if i < Lines.Count - 2 then
          ncar := leftstr(Lines[i + 1], 1);
        // if tag open then close
        if InList2 then
        begin
          InList2 := false;
          mMDadd('</ul>');
        end;
        if InOrdList then
        begin
          InOrdList := false;
          mMDadd('</ol>');
        end;
        if InList then
        begin
          InList := false;
          mMDadd('</ul>');
        end;
        if InBlockquote then
        begin
          InBlockquote := false;
          mMDadd('</blockquote>');
        end;
      end;
      if not StartsText('<', workg) then
        workg := '<p>' + workg + '</p>';
      // // so need to set formating
      // workg := MarkdownStyles(workg);
      //
      // colours
      workg := ReplaceStr(workg, '{RED:', '<span style="color:red"> ');
      workg := ReplaceStr(workg, '{BLU:', '<span style="color:blue"> ');
      workg := ReplaceStr(workg, '{GRN:', '<span style="color:green"> ');
      workg := ReplaceStr(workg, '{ORG:', '<span style="color:orange"> ');
      workg := ReplaceStr(workg, '{CYN:', '<span style="color:cyan"> ');
      workg := ReplaceStr(workg, '{YEL:', '<span style="color:yellow"> ');
      workg := ReplaceStr(workg, '{WHT:', '<span style="color:white"> ');
      workg := ReplaceStr(workg, '{GRY:', '<span style="color:gainsboro"> ');
      workg := ReplaceStr(workg, '{LME:', '<span style="color:lime"> ');
      workg := ReplaceStr(workg, '{PNK:', '<span style="color:pink"> ');
      //
      workg := ReplaceStr(workg, '{RED.B:',
        '<span style="background-color:red"> ');
      workg := ReplaceStr(workg, '{BLU.B:',
        '<span style="background-color:blue"> ');
      workg := ReplaceStr(workg, '{GRN.B:',
        '<span style="background-color:green"> ');
      workg := ReplaceStr(workg, '{CYN.B:',
        '<span style="background-color:cyan"> ');
      workg := ReplaceStr(workg, '{YEL.B:',
        '<span style="background-color:yellow"> ');
      workg := ReplaceStr(workg, '{ORG.B:',
        '<span style="background-color:orange"> ');
      workg := ReplaceStr(workg, '{SMK.B:',
        '<span style="background-color:whitesmoke"> ');
      workg := ReplaceStr(workg, '{LME.B:',
        '<span style="background-color:lime"> ');
      workg := ReplaceStr(workg, '{BLK.B:',
        '<span style="background-color:black"> ');
      workg := ReplaceStr(workg, '{GRY.B:',
        '<span style="background-color:gainsboro"> ');
      workg := ReplaceStr(workg, '{PNK.B:',
        '<span style="background-color:pink"> ');
      //
      workg := ReplaceStr(workg, '{5em:', '<span style="font-size:5em"> ');
      workg := ReplaceStr(workg, '{4.75em:',
        '<span style="font-size:4.75em"> ');
      workg := ReplaceStr(workg, '{4.5em:', '<span style="font-size:4.5em"> ');
      workg := ReplaceStr(workg, '{4.25em:',
        '<span style="font-size:4.25em"> ');
      workg := ReplaceStr(workg, '{4em:', '<span style="font-size:4em"> ');
      workg := ReplaceStr(workg, '{3.75em:',
        '<span style="font-size:3.75em"> ');
      workg := ReplaceStr(workg, '{3.5em:', '<span style="font-size:3.5em"> ');
      workg := ReplaceStr(workg, '{3.25em:',
        '<span style="font-size:3.25em"> ');
      workg := ReplaceStr(workg, '{3em:', '<span style="font-size:3em"> ');
      workg := ReplaceStr(workg, '{2.75em:',
        '<span style="font-size:2.75em"> ');
      workg := ReplaceStr(workg, '{2.9em:', '<span style="font-size:2.9em"> ');
      workg := ReplaceStr(workg, '{2.8em:', '<span style="font-size:2.8em"> ');
      workg := ReplaceStr(workg, '{2.7em:', '<span style="font-size:2.7em"> ');
      workg := ReplaceStr(workg, '{2.6em:', '<span style="font-size:2.6em"> ');
      workg := ReplaceStr(workg, '{2.5em:', '<span style="font-size:2.5em"> ');
      workg := ReplaceStr(workg, '{2.4em:', '<span style="font-size:2.4em"> ');
      workg := ReplaceStr(workg, '{2.3em:', '<span style="font-size:2.3em"> ');
      workg := ReplaceStr(workg, '{2.2em:', '<span style="font-size:2.2em"> ');
      workg := ReplaceStr(workg, '{2.1em:', '<span style="font-size:2.1em"> ');
      workg := ReplaceStr(workg, '{2.25em:',
        '<span style="font-size:2.25em"> ');
      workg := ReplaceStr(workg, '{2em:', '<span style="font-size:2em"> ');
      workg := ReplaceStr(workg, '{1.9em:', '<span style="font-size:1.9em"> ');
      workg := ReplaceStr(workg, '{1.8em:', '<span style="font-size:1.8em"> ');
      workg := ReplaceStr(workg, '{1.7em:', '<span style="font-size:1.7em"> ');
      workg := ReplaceStr(workg, '{1.6em:', '<span style="font-size:1.6em"> ');
      workg := ReplaceStr(workg, '{1.5em:', '<span style="font-size:1.5em"> ');
      workg := ReplaceStr(workg, '{1.4em:', '<span style="font-size:1.4em"> ');
      workg := ReplaceStr(workg, '{1.3em:', '<span style="font-size:1.3em"> ');
      workg := ReplaceStr(workg, '{1.2em:', '<span style="font-size:1.2em"> ');
      workg := ReplaceStr(workg, '{1.1em:', '<span style="font-size:1.1em"> ');
      workg := ReplaceStr(workg, '{1.75em:',
        '<span style="font-size:1.75em"> ');
      workg := ReplaceStr(workg, '{1.25em:',
        '<span style="font-size:1.25em"> ');
      workg := ReplaceStr(workg, '{1em:', '<span style="font-size:1em"> ');
      workg := ReplaceStr(workg, '{0.75em:',
        '<span style="font-size:0.75em"> ');
      workg := ReplaceStr(workg, '{0.25em:',
        '<span style="font-size:0.25em"> ');
      workg := ReplaceStr(workg, '{0.9em:', '<span style="font-size:0.9em"> ');
      workg := ReplaceStr(workg, '{0.8em:', '<span style="font-size:0.8em"> ');
      workg := ReplaceStr(workg, '{0.7em:', '<span style="font-size:0.7em"> ');
      workg := ReplaceStr(workg, '{0.6em:', '<span style="font-size:0.6em"> ');
      workg := ReplaceStr(workg, '{0.5em:', '<span style="font-size:0.5em"> ');
      workg := ReplaceStr(workg, '{0.4em:', '<span style="font-size:0.4em"> ');
      workg := ReplaceStr(workg, '{0.3em:', '<span style="font-size:0.3em"> ');
      workg := ReplaceStr(workg, '{0.2em:', '<span style="font-size:0.2em"> ');
      workg := ReplaceStr(workg, '{0.1em:', '<span style="font-size:0.1em"> ');

      workg := ReplaceStr(workg, '}', '</span>');

      // do bold italic
      while Pos('***', workg) > 0 do
      begin
        fpos := Pos('***', workg);
        if fpos > 0 then
        begin
          fBold := not(fBold);
          fItal := not(fItal);
          lhs := leftstr(workg, fpos - 1);
          rhs := RightStr(workg, (Length(workg) - (fpos + 1)));
          if ((fBold = false) and (fItal = false)) then
            workg := lhs + '</b></i>' + rhs
          else
            workg := lhs + '<i><b>' + rhs;
        end;
      end;
      // do bold italic
      while Pos('**', workg) > 0 do
      begin
        fpos := Pos('**', workg);
        if fpos > 0 then
        begin
          fBold := not(fBold);
          fItal := not(fItal);
          lhs := leftstr(workg, fpos - 1);
          rhs := RightStr(workg, (Length(workg) - (fpos + 1)));
          if ((fBold = false) and (fItal = false)) then
            workg := lhs + '</b>' + rhs
          else
            workg := lhs + '<b>' + rhs;
        end;
      end;
      // do bold italic
      while Pos('__', workg) > 0 do
      begin
        fpos := Pos('__', workg);
        if fpos > 0 then
        begin
          fBold := not(fBold);
          fItal := not(fItal);
          lhs := leftstr(workg, fpos - 1);
          rhs := RightStr(workg, (Length(workg) - (fpos + 1)));
          if ((fBold = false) and (fItal = false)) then
            workg := lhs + '</i>' + rhs
          else
            workg := lhs + '<i>' + rhs;
        end;
      end;
      // do underscore
      while Pos('==', workg) > 0 do
      begin
        fpos := Pos('==', workg);
        if fpos > 0 then
        begin
          fUnder := not(fUnder);
          lhs := leftstr(workg, fpos - 1);
          rhs := RightStr(workg, (Length(workg) - (fpos + 1)));
          if (fUnder = false) then
            workg := lhs + '</u>' + rhs
          else
            workg := lhs + '<u>' + rhs;
        end;
      end;
      // do strike
      while Pos('~~', workg) > 0 do
      begin
        fpos := Pos('~~', workg);
        if fpos > 0 then
        begin
          fBold := not(fBold);
          fItal := not(fItal);
          lhs := leftstr(workg, fpos - 1);
          rhs := RightStr(workg, (Length(workg) - (fpos + 1)));
          if ((fBold = false) and (fItal = false)) then
            workg := lhs + '</s>' + rhs
          else
            workg := lhs + '<s>' + rhs;
        end;
      end;
      // do strike
      workg := ReplaceStr(workg, '||', '<br>');
      // if LeftStr(workg,1) <> '<' then workg:='<p>'+workg+'</p>';
      // workg := ReplaceStr(workg, '<br></p>', '<br>');

      //
      mMDadd(workg);
    end;

  finally
    Lines.Free;
  end;
  // Close any remaining blocks
  if InBlockquote then
    mMDadd('</blockquote>');
  if InTable then
    mMDadd('</table>');
  if InList2 then
    mMDadd('</ul>');
  if InList then
    mMDadd('</ul>');
  if InCodeBlock then
    mMDadd('</code></pre>');
  mMDclose;
end;

function TForm1.ConvertMarkdownTable(const TableText: string;
  ishead: Boolean): string;
var
  Row, oup: string;
begin
  Row := Trim(TableText);
  oup := '<tr>';
  if ishead = True then
  begin
    Row := ReplaceStr(Row, '|', '</th><th>');
    oup := oup + '<th>' + Row + '</th>';
  end
  else
  begin
    Row := ReplaceStr(Row, '|', '</td><td>');
    oup := oup + '<td>' + Row + '</td>';
  end;
  while ContainsStr(oup, '> ') do
    oup := ReplaceStr(oup, '> ', '>');
  while ContainsStr(oup, ' <') do
    oup := ReplaceStr(oup, ' <', '<');
  Result := oup + '</tr>';
end;

function TForm1.MarkdownHeaders(const markdownText: string): string;
var
  wip, zz: string;
begin
  wip := markdownText;
  if StartsText('# ', wip) then
    zz := '<h1>' + RightStr(wip, Length(wip) - 2) + '</h1>';
  if StartsText('## ', wip) then
    zz := '<h2>' + RightStr(wip, Length(wip) - 3) + '</h2>';
  if StartsText('### ', wip) then
    zz := '<h3>' + RightStr(wip, Length(wip) - 4) + '</h3>';
  if StartsText('#### ', wip) then
    zz := '<h4>' + RightStr(wip, Length(wip) - 5) + '</h4>';
  if StartsText('##### ', wip) then
    zz := '<h5>' + RightStr(wip, Length(wip) - 6) + '</h5>';
  if StartsText('###### ', wip) then
    zz := '<h6>' + RightStr(wip, Length(wip) - 7) + '</h6>';
  if wip = '---' then
    zz := '<hr>';
  Result := zz;
end;

function TForm1.MarkdownStyles(const markdownText: string): string;
var
  wip, zz, lhs, rhs: string;
  fpos: integer;
begin
  zz := '';
  wip := markdownText;
  // do bold italic
  while Pos('***', wip) > 0 do
  begin
    fpos := Pos('***', wip);
    if fpos > 0 then
    begin
      InBold := not(InBold);
      InItal := not(InItal);
      lhs := leftstr(wip, fpos - 1);
      rhs := RightStr(wip, (Length(wip) - (fpos + 1)));
      // if ((InBold = true) and (InItal = true)) then
      // zz := lhs + '<b><i>' + rhs;
      if ((InBold = false) and (InItal = false)) then
        zz := lhs + '</b></i>' + rhs
      else
        zz := lhs + '<i><b>' + rhs;
    end;
  end;
  if zz > '' then
    wip := zz;
  // do bold
  InBold := false;
  while Pos('**', wip) > 0 do
  begin
    fpos := Pos('**', wip);
    if fpos > 0 then
    begin
      InBold := not(InBold);
      lhs := leftstr(wip, fpos - 1);
      rhs := RightStr(wip, (Length(wip) - (fpos + 1)));
      if InBold = True then
        zz := lhs + '<b>' + rhs
      else
        zz := lhs + '</b>' + rhs;
    end;
  end;
  if zz > '' then
    wip := zz;
  // do strike
  InStrike := false;
  while Pos('~~', wip) > 0 do
  begin
    fpos := Pos('~~', wip);
    if fpos > 0 then
    begin
      InStrike := not(InStrike);
      lhs := leftstr(wip, fpos - 1);
      rhs := RightStr(wip, (Length(wip) - (fpos + 1)));
      if InStrike = True then
        zz := lhs + '<s>' + rhs
      else
        zz := lhs + '</s>' + rhs;
    end;
  end;
  //
  while Pos('||', wip) > 0 do
  begin
    fpos := Pos('||', wip);
    if fpos = (Length(wip) - 2) then
    begin
      rhs := RightStr(wip, (Length(wip) - 2));
      zz := rhs + '<br>';
    end;
  end;

  if zz > '' then
    wip := zz;
  // do italics
  InItal := false;
  while Pos('*', wip) > 0 do
  begin
    fpos := Pos('*', wip);
    if fpos > 0 then
    begin
      InItal := not(InItal);
      lhs := leftstr(wip, fpos - 1);
      rhs := RightStr(wip, (Length(wip) - (fpos)));
      if InItal = True then
        zz := lhs + '<i>' + rhs
      else
        zz := lhs + '</i>' + rhs;
    end;
  end;
  if zz > '' then
    wip := zz;

  Result := wip;
end;

function TForm1.MDTableLine(mymemo: TMemo; lno: integer): string;
var
  Row, nRow, oup: string;
  nl, mc: integer;
begin
  if StartsText('|-', nRow) then
  begin
    Result := '';
    exit;
  end;
  nl := lno + 1;
  mc := (mymemo as TMemo).Lines.Count;
  Row := (mymemo as TMemo).Lines[lno];
  oup := '<tr>';
  if nl <= mc then
  begin
    if StartsText('|-', nRow) then
    begin
      Row := leftstr(Row, Length(Row) - 2);
      Row := RightStr(Row, Length(Row) - 2);
      Row := ReplaceStr(Row, '|', '</th><th>');
      oup := oup + '<th>' + Row + '</th>';
    end
    else
    begin
      Row := leftstr(Row, Length(Row) - 2);
      Row := RightStr(Row, Length(Row) - 2);
      Row := ReplaceStr(Row, '|', '</td><td>');
      oup := oup + '<td>' + Row + '</td>';
    end;
  end
  else
  begin
    Row := leftstr(Row, Length(Row) - 2);
    Row := RightStr(Row, Length(Row) - 2);
    Row := ReplaceStr(Row, '|', '</td><td>');
    oup := oup + '<td>' + Row + '</td>';
  end;
  nRow := (mymemo as TMemo).Lines[nl];
  oup := oup + '<tr>';
  Result := oup;
end;

end.
