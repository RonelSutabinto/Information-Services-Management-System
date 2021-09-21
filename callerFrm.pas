unit callerFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvSmoothButton, AdvSmoothLabel,
  Vcl.ExtCtrls, AdvPanel, Data.DB, MemDS, DBAccess, MyAccess;

type
  Tcaller_from = class(TForm)
    AdvPanel1: TAdvPanel;
    AdvSmoothLabel1: TAdvSmoothLabel;
    AdvSmoothLabel2: TAdvSmoothLabel;
    cntrServe_lb: TAdvSmoothLabel;
    numberServe_lb: TAdvSmoothLabel;
    AdvPanel2: TAdvPanel;
    number_lb2: TAdvSmoothLabel;
    AdvSmoothButton13: TAdvSmoothButton;
    AdvSmoothButton23: TAdvSmoothButton;
    cntr_RC_lb: TAdvSmoothLabel;
    cntr_SC_lb: TAdvSmoothLabel;
    cntr_C_lb: TAdvSmoothLabel;
    queCntrQ: TMyQuery;
    queCntrQregularC: TLargeintField;
    queCntrQseniorC: TLargeintField;
    queCntrQcashier: TLargeintField;
    queCntrQflg: TStringField;
    manageOutQ: TMyQuery;
    manageOutQentry: TIntegerField;
    manageOutQtype: TStringField;
    manageOutQnumber: TIntegerField;
    manageOutQdate: TDateField;
    manageOutQtime: TTimeField;
    manageOutQcode: TStringField;
    manageOutQqueid: TIntegerField;
    manageOutQgroupno: TIntegerField;
    manageOutQexecutedby: TStringField;
    manageOutQDepartment: TStringField;
    manageOutQuserid: TStringField;
    manageOutQcounter: TStringField;
    manageOutQnumber_c: TStringField;
    insertMngoutQ: TMyQuery;
    queCall_Q: TMyQuery;
    queCall_QqueID: TIntegerField;
    queCall_Qtype: TStringField;
    queCall_Qnumber: TIntegerField;
    queCall_Qdate: TDateField;
    queCall_Qtime: TTimeField;
    queCall_Qcode: TStringField;
    queCall_Qgroupno: TIntegerField;
    deleteQueQ: TMyQuery;
    AdvSmoothButton26: TAdvSmoothButton;
    updateCallBeepQ: TMyQuery;
    AdvSmoothButton30: TAdvSmoothButton;
    AdvSmoothButton29: TAdvSmoothButton;
    procedure AdvSmoothButton13Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    //procedure callNumber(grpNo:Integer);
    procedure AdvSmoothButton23Click(Sender: TObject);
    procedure AdvSmoothButton26Click(Sender: TObject);
    //procedure Tcaller_frm.callNumber( grpNo: Integer; sample: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  caller_from: Tcaller_from;

implementation

{$R *.dfm}

uses Data;

procedure Tcaller_from.AdvSmoothButton13Click(Sender: TObject);
begin
  close;
end;

procedure Tcaller_from.AdvSmoothButton23Click(Sender: TObject);
VAR
  typ : String;
begin
  typ := 'NA';
  //callNumber(3,typ);
end;

procedure Tcaller_from.AdvSmoothButton26Click(Sender: TObject);
begin
  updateCallBeepQ.Execute;
end;



procedure Tcaller_from.FormShow(Sender: TObject);
begin
  queCntrQ.Close;
  queCntrQ.Open;

  manageOutQ.Close;
  manageOutQ.Open;

  cntrServe_lb.Caption.Text   := manageOutQcounter.Text;
  numberServe_lb.Caption.Text := manageOutQnumber_c.Text;

  cntr_RC_lb.Caption.Text     := queCntrQregularC.Text;
  cntr_SC_lb.Caption.Text     := queCntrQseniorC.Text;
  cntr_C_lb.Caption.Text      := queCntrQcashier.Text;
end;

end.
