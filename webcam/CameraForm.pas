unit CameraForm;

interface

uses
  Windows, Classes, Controls, Forms, ExtCtrls, Frame_Video, Menus,
  StdCtrls, Buttons, ExtDlgs, Dialogs, pngimage, jpeg, Variants, Graphics,
  Messages,  SysUtils, BarMenus, Mask, DBCtrls, PDJSillyLabel, DsFancyButton,
  DB, MemDS, DBAccess, MyAccess, NxCollection, NxEdit, Grids, DBGrids,
  CRGrid, CRDBGrid1;

type
  TCamerafrm = class(TForm)
    Panel_Left: TPanel;
    Frame_Video1: TFrame1;
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    OpenPictureDialog1: TOpenPictureDialog;
    SavePictureDialog1: TSavePictureDialog;
    Panel3: TPanel;
    Image1: TImage;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Frame_Video1SpeedButton2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    SplitterRatio : double;
  public
    { Public declarations }
  end;


var
  Camerafrm: TCamerafrm;


implementation

uses Data;

{$R *.dfm}







procedure TCamerafrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  Screen.Cursor := crHourGlass;
  Application.ProcessMessages;
  Frame_Video1.Stop;

  Screen.Cursor := crdefault;
end;



procedure TCamerafrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Frame_Video1.Close;

end;

procedure TCamerafrm.FormShow(Sender: TObject);
begin
  Frame_Video1.InitFrame;

end;

procedure TCamerafrm.Frame_Video1SpeedButton2Click(Sender: TObject);
var
  Bitmap: TBitmap;
  Source: TRect;
  Dest: TRect;
begin
 Bitmap := TBitmap.Create;
  try
    with bitmap do
    begin
      Width := Frame_Video1.PaintBox_Video.Width;
      Height := Frame_Video1.PaintBox_Video.Height;
      Dest := Rect(0, 0, Width, Height);
    end;
    with Frame_Video1.PaintBox_Video do
      Source := Rect(0, 0, Width, Height);
      bitmap.Canvas.CopyRect(Dest, Frame_Video1.PaintBox_Video.Canvas, Source);
if not DirectoryExists('c:\pic') then MkDir('c:\pic');
      Bitmap.SaveToFile('c:\pic\tmppic.bmp');
  finally
    Bitmap.Free;
  end;
  image1.AutoSize := true;
  image1.Picture.LoadFromFile('c:\pic\tmppic.bmp');

end;

procedure TCamerafrm.SpeedButton2Click(Sender: TObject);
begin
with isddata do
  begin
  if label4.Caption = 'Member' then
    begin
      MemberMasterMemberPic.LoadFromFile('c:\pic\tmppic.bmp');
      Camerafrm.Close;
  end else if Label4.Caption = 'Members Spouse' then
    begin
      MemberMasterSpousePic.LoadFromFile('c:\pic\tmppic.bmp');
      Camerafrm.Close;
    end;
  end;
end;

end.
